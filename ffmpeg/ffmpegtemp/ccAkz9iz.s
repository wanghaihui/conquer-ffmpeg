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
	.file	"qpeldsp.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.type	avg_pixels8_l2_8, %function
avg_pixels8_l2_8:
.LFB74:
	.file 1 "libavcodec/hpel_template.c"
	.loc 1 103 0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 0
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
	.loc 1 103 0
	ldr	r5, [sp, #44]
	ldr	r7, [sp, #36]
	.loc 1 103 0 is_stmt 0 discriminator 1
	cmp	r5, #0
	.loc 1 103 0
	ldr	r8, [sp, #40]
	.loc 1 103 0 discriminator 1
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	mov	r6, #0
.LVL1:
.L3:
.LBB232:
	.loc 1 103 0 discriminator 6
	ldrb	fp, [r1, #1]	@ zero_extendqisi2
	ldrb	r10, [r2, #1]	@ zero_extendqisi2
	ldrb	r4, [r1]	@ zero_extendqisi2
	ldrb	r9, [r2]	@ zero_extendqisi2
	ldrb	lr, [r1, #2]	@ zero_extendqisi2
	ldrb	ip, [r2, #2]	@ zero_extendqisi2
	orr	r4, r4, fp, asl #8
	orr	r9, r9, r10, asl #8
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	orr	r4, r4, lr, asl #16
	orr	r9, r9, ip, asl #16
	orr	lr, r4, fp, asl #24
.LVL2:
	orr	ip, r9, r10, asl #24
.LVL3:
.LBB233:
.LBB234:
	.file 2 "libavcodec/rnd_avg.h"
	.loc 2 33 0 is_stmt 1
	ldr	r4, .L8
	eor	r9, ip, lr
	and	r4, r4, r9
	orr	lr, ip, lr
.LVL4:
.LBE234:
.LBE233:
	.loc 1 103 0 discriminator 6
	ldr	r9, [r0]
.LVL5:
.LBB236:
.LBB235:
	.loc 2 33 0
	sub	ip, lr, r4, lsr #1
.LVL6:
.LBE235:
.LBE236:
.LBB237:
.LBB238:
	ldr	lr, .L8
	eor	r4, r9, ip
	and	lr, lr, r4
	orr	ip, r9, ip
.LVL7:
	sub	ip, ip, lr, lsr #1
.LBE238:
.LBE237:
	.loc 1 103 0 discriminator 6
	str	ip, [r0]
.LVL8:
	ldrb	fp, [r1, #5]	@ zero_extendqisi2
	ldrb	r10, [r2, #5]	@ zero_extendqisi2
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	r9, [r2, #4]	@ zero_extendqisi2
.LVL9:
	ldrb	lr, [r1, #6]	@ zero_extendqisi2
	ldrb	ip, [r2, #6]	@ zero_extendqisi2
	orr	r4, r4, fp, asl #8
	orr	r9, r9, r10, asl #8
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	ldrb	r10, [r2, #7]	@ zero_extendqisi2
	orr	r4, r4, lr, asl #16
	orr	r9, r9, ip, asl #16
	orr	lr, r4, fp, asl #24
.LVL10:
	orr	ip, r9, r10, asl #24
.LVL11:
.LBB239:
.LBB240:
	.loc 2 33 0
	ldr	r4, .L8
	eor	r9, ip, lr
	and	r4, r4, r9
	orr	lr, ip, lr
.LVL12:
.LBE240:
.LBE239:
	.loc 1 103 0 discriminator 6
	ldr	r9, [r0, #4]
.LVL13:
.LBB242:
.LBB241:
	.loc 2 33 0
	sub	ip, lr, r4, lsr #1
.LVL14:
.LBE241:
.LBE242:
.LBB243:
.LBB244:
	ldr	lr, .L8
	eor	r4, r9, ip
.LBE244:
.LBE243:
.LBE232:
	.loc 1 103 0 discriminator 6
	add	r6, r6, #1
.LVL15:
.LBB247:
.LBB246:
.LBB245:
	.loc 2 33 0
	orr	ip, r9, ip
.LVL16:
	and	lr, lr, r4
.LVL17:
	sub	ip, ip, lr, lsr #1
.LBE245:
.LBE246:
.LBE247:
	.loc 1 103 0 discriminator 1
	cmp	r6, r5
.LBB248:
	.loc 1 103 0 is_stmt 0 discriminator 6
	str	ip, [r0, #4]
.LVL18:
	add	r1, r1, r7
	add	r2, r2, r8
	add	r0, r0, r3
.LBE248:
	.loc 1 103 0 discriminator 1
	bne	.L3
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L9:
	.align	2
.L8:
	.word	-16843010
	.cfi_endproc
.LFE74:
	.size	avg_pixels8_l2_8, .-avg_pixels8_l2_8
	.align	2
	.type	put_pixels8_l2_8, %function
put_pixels8_l2_8:
.LFB78:
	.loc 1 104 0 is_stmt 1
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL19:
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
	.loc 1 104 0
	ldr	r4, [sp, #44]
	ldr	r6, [sp, #36]
	.loc 1 104 0 is_stmt 0 discriminator 1
	cmp	r4, #0
	.loc 1 104 0
	ldr	r7, [sp, #40]
	.loc 1 104 0 discriminator 1
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	mov	r5, #0
.LVL20:
.L12:
.LBB254:
	.loc 1 104 0 discriminator 4
	ldrb	r10, [r1, #1]	@ zero_extendqisi2
	ldrb	r9, [r2, #1]	@ zero_extendqisi2
	ldrb	lr, [r1]	@ zero_extendqisi2
	ldrb	r8, [r2]	@ zero_extendqisi2
	ldrb	ip, [r1, #2]	@ zero_extendqisi2
	ldrb	fp, [r2, #2]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #8
	orr	r8, r8, r9, asl #8
	ldrb	r10, [r1, #3]	@ zero_extendqisi2
	ldrb	r9, [r2, #3]	@ zero_extendqisi2
	orr	r8, r8, fp, asl #16
	orr	lr, lr, ip, asl #16
	orr	ip, lr, r10, asl #24
.LVL21:
	orr	lr, r8, r9, asl #24
.LVL22:
.LBB255:
.LBB256:
	.loc 2 33 0 is_stmt 1
	ldr	r8, .L16
	eor	r9, lr, ip
	and	r8, r8, r9
	orr	ip, lr, ip
.LVL23:
	sub	ip, ip, r8, lsr #1
.LBE256:
.LBE255:
	.loc 1 104 0 discriminator 4
	str	ip, [r0]
.LVL24:
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r9, [r2, #5]	@ zero_extendqisi2
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
.LVL25:
	ldrb	r8, [r2, #4]	@ zero_extendqisi2
	ldrb	ip, [r1, #6]	@ zero_extendqisi2
	ldrb	fp, [r2, #6]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #8
	orr	r8, r8, r9, asl #8
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	ldrb	r9, [r2, #7]	@ zero_extendqisi2
	orr	lr, lr, ip, asl #16
	orr	r8, r8, fp, asl #16
	orr	ip, lr, r10, asl #24
.LVL26:
	orr	lr, r8, r9, asl #24
.LVL27:
.LBB257:
.LBB258:
	.loc 2 33 0
	ldr	r8, .L16
	eor	r9, lr, ip
.LBE258:
.LBE257:
.LBE254:
	.loc 1 104 0 discriminator 4
	add	r5, r5, #1
.LVL28:
.LBB261:
.LBB260:
.LBB259:
	.loc 2 33 0
	orr	ip, lr, ip
.LVL29:
	and	r8, r8, r9
	sub	ip, ip, r8, lsr #1
.LBE259:
.LBE260:
.LBE261:
	.loc 1 104 0 discriminator 1
	cmp	r5, r4
.LBB262:
	.loc 1 104 0 is_stmt 0 discriminator 4
	str	ip, [r0, #4]
.LVL30:
	add	r1, r1, r6
	add	r2, r2, r7
	add	r0, r0, r3
.LBE262:
	.loc 1 104 0 discriminator 1
	bne	.L12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L17:
	.align	2
.L16:
	.word	-16843010
	.cfi_endproc
.LFE78:
	.size	put_pixels8_l2_8, .-put_pixels8_l2_8
	.align	2
	.type	put_pixels16_8_c, %function
put_pixels16_8_c:
.LFB89:
	.file 3 "libavcodec/pel_template.c"
	.loc 3 78 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL31:
.LBB267:
.LBB268:
	.loc 3 78 0 is_stmt 0 discriminator 1
	cmp	r3, #0
.LVL32:
	bxle	lr
.LBE268:
.LBE267:
	.loc 3 78 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
.LBB270:
.LBB269:
	.loc 3 78 0 is_stmt 1 discriminator 1
	mov	ip, r1
	mov	r5, r0
	mov	r6, #0
.LVL33:
.L20:
	.loc 3 78 0 is_stmt 0 discriminator 3
	ldrb	r7, [ip, #1]	@ zero_extendqisi2
	ldrb	r4, [ip]	@ zero_extendqisi2
	ldrb	lr, [ip, #2]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #8
	ldrb	r7, [ip, #3]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #16
	orr	lr, lr, r7, asl #24
	str	lr, [r5]
	ldrb	r7, [ip, #5]	@ zero_extendqisi2
	ldrb	r4, [ip, #4]	@ zero_extendqisi2
	ldrb	lr, [ip, #6]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #8
	ldrb	r7, [ip, #7]	@ zero_extendqisi2
	add	r6, r6, #1
.LVL34:
	orr	lr, r4, lr, asl #16
	orr	lr, lr, r7, asl #24
	.loc 3 78 0 discriminator 1
	cmp	r6, r3
	.loc 3 78 0 discriminator 3
	str	lr, [r5, #4]
	add	ip, ip, r2
.LVL35:
	add	r5, r5, r2
.LVL36:
	.loc 3 78 0 discriminator 1
	bne	.L20
.LBE269:
.LBE270:
	.loc 3 78 0
	add	r0, r0, #8
.LVL37:
	add	r1, r1, #8
.LVL38:
	mov	r4, #0
.LVL39:
.L22:
.LBB271:
.LBB272:
	.loc 3 78 0 discriminator 3
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	ldrb	lr, [r1]	@ zero_extendqisi2
	ldrb	ip, [r1, #2]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #8
	ldrb	r5, [r1, #3]	@ zero_extendqisi2
	orr	ip, lr, ip, asl #16
	orr	ip, ip, r5, asl #24
	str	ip, [r0]
	ldrb	r5, [r1, #5]	@ zero_extendqisi2
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
	ldrb	ip, [r1, #6]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #8
	ldrb	r5, [r1, #7]	@ zero_extendqisi2
	add	r4, r4, #1
.LVL40:
	orr	ip, lr, ip, asl #16
	orr	ip, ip, r5, asl #24
	.loc 3 78 0 discriminator 1
	cmp	r4, r3
	.loc 3 78 0 discriminator 3
	str	ip, [r0, #4]
	add	r1, r1, r2
.LVL41:
	add	r0, r0, r2
.LVL42:
	.loc 3 78 0 discriminator 1
	bne	.L22
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LBE272:
.LBE271:
	.cfi_endproc
.LFE89:
	.size	put_pixels16_8_c, .-put_pixels16_8_c
	.align	2
	.type	avg_pixels8_l4_8, %function
avg_pixels8_l4_8:
.LFB92:
	.file 4 "libavcodec/qpel_template.c"
	.loc 4 218 0 is_stmt 1
	.cfi_startproc
	@ args = 28, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL43:
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
	.loc 4 218 0 discriminator 1
	ldr	ip, [sp, #60]
	cmp	ip, #0
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	ldr	r6, [sp, #36]
	mov	r7, #0
.LVL44:
.L32:
.LBB273:
	.loc 4 218 0 is_stmt 0 discriminator 4
	ldrb	ip, [r1]	@ zero_extendqisi2
	ldrb	lr, [r2]	@ zero_extendqisi2
	ldrb	r8, [r1, #1]	@ zero_extendqisi2
	ldrb	r5, [r2, #1]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	ldrb	r9, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	orr	r8, ip, r8, asl #8
	orr	r5, lr, r5, asl #8
	orr	ip, r8, r4, asl #16
	ldrb	lr, [r3]	@ zero_extendqisi2
	ldrb	r4, [r3, #1]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	ldr	r9, .L36
	ldrb	r10, [r3, #2]	@ zero_extendqisi2
	orr	r4, lr, r4, asl #8
	orr	r8, ip, fp, asl #24
.LVL45:
	ldrb	lr, [r6]	@ zero_extendqisi2
	mov	ip, r9
	orr	r4, r4, r10, asl #16
	ldrb	r10, [r6, #1]	@ zero_extendqisi2
	ldrb	fp, [r3, #3]	@ zero_extendqisi2
	and	r9, r9, r8
	and	ip, ip, r5
	add	ip, r9, ip
	orr	lr, lr, r10, asl #8
	ldr	r9, .L36+4
	ldrb	r10, [r6, #2]	@ zero_extendqisi2
	orr	r4, r4, fp, asl #24
.LVL46:
	ldrb	fp, [r6, #3]	@ zero_extendqisi2
	add	r9, ip, r9
	orr	r10, lr, r10, asl #16
	ldr	ip, .L36+8
	orr	r10, r10, fp, asl #24
.LVL47:
	ldr	lr, .L36
	ldr	fp, .L36+8
	and	ip, ip, r8
	ldr	r8, .L36
.LVL48:
	and	fp, fp, r5
	and	lr, lr, r4
	ldr	r5, .L36+8
.LVL49:
	and	r8, r8, r10
	add	lr, r9, lr
	mov	ip, ip, lsr #2
.LVL50:
	add	lr, lr, r8
	add	ip, ip, fp, lsr #2
.LVL51:
	mov	r8, r5
	ldr	r9, .L36+12
.LVL52:
	and	r5, r5, r4
	and	r8, r8, r10
	mov	lr, lr, lsr #2
	add	ip, ip, r5, lsr #2
	ldr	r4, [r0]
.LVL53:
	add	ip, ip, r8, lsr #2
	and	r9, r9, lr
	add	r9, ip, r9
.LVL54:
.LBB274:
.LBB275:
	.loc 2 33 0 is_stmt 1
	ldr	lr, .L36+16
	eor	r10, r4, r9
.LVL55:
	and	lr, lr, r10
	orr	r9, r4, r9
.LVL56:
	sub	r9, r9, lr, lsr #1
.LBE275:
.LBE274:
	.loc 4 218 0 discriminator 4
	str	r9, [r0]
.LVL57:
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
	ldrb	r8, [r1, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #5]	@ zero_extendqisi2
	ldrb	r4, [r1, #6]	@ zero_extendqisi2
.LVL58:
	ldrb	r9, [r2, #6]	@ zero_extendqisi2
	ldrb	r10, [r2, #7]	@ zero_extendqisi2
	orr	r8, ip, r8, asl #8
	orr	r5, lr, r5, asl #8
	orr	ip, r8, r4, asl #16
	ldrb	lr, [r3, #4]	@ zero_extendqisi2
	ldrb	r4, [r3, #5]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	ldr	r9, .L36
	ldrb	r10, [r3, #6]	@ zero_extendqisi2
	orr	r4, lr, r4, asl #8
	orr	r8, ip, fp, asl #24
.LVL59:
	ldrb	lr, [r6, #4]	@ zero_extendqisi2
	mov	ip, r9
	orr	r4, r4, r10, asl #16
	ldrb	r10, [r6, #5]	@ zero_extendqisi2
	and	r9, r9, r8
	ldrb	fp, [r3, #7]	@ zero_extendqisi2
	and	ip, ip, r5
	add	ip, r9, ip
	orr	lr, lr, r10, asl #8
	ldr	r9, .L36+4
	ldrb	r10, [r6, #6]	@ zero_extendqisi2
	orr	r4, r4, fp, asl #24
.LVL60:
	ldrb	fp, [r6, #7]	@ zero_extendqisi2
	add	r9, ip, r9
	orr	r10, lr, r10, asl #16
	ldr	ip, .L36+8
	orr	r10, r10, fp, asl #24
.LVL61:
	ldr	lr, .L36
	ldr	fp, .L36+8
	and	ip, ip, r8
	ldr	r8, .L36
.LVL62:
	and	lr, lr, r4
	and	fp, fp, r5
	ldr	r5, .L36+8
.LVL63:
	and	r8, r8, r10
	add	lr, r9, lr
	mov	ip, ip, lsr #2
.LVL64:
	add	lr, lr, r8
	ldr	r9, .L36+12
.LVL65:
	mov	r8, r5
	add	ip, ip, fp, lsr #2
.LVL66:
	and	r5, r5, r4
	mov	lr, lr, lsr #2
	and	r8, r8, r10
	add	ip, ip, r5, lsr #2
	and	r9, r9, lr
	add	ip, ip, r8, lsr #2
	add	r9, ip, r9
.LBE273:
	.loc 4 218 0 is_stmt 0 discriminator 1
	ldr	ip, [sp, #60]
	.loc 4 218 0 discriminator 4
	add	r7, r7, #1
.LVL67:
	.loc 4 218 0 discriminator 1
	cmp	r7, ip
	ldr	ip, [sp, #44]
.LBB278:
	.loc 4 218 0 discriminator 4
	ldr	r4, [r0, #4]
.LVL68:
	add	r1, r1, ip
.LVL69:
	ldr	ip, [sp, #48]
.LBB276:
.LBB277:
	.loc 2 33 0 is_stmt 1
	ldr	lr, .L36+16
	add	r2, r2, ip
.LVL70:
	ldr	ip, [sp, #52]
	eor	r10, r4, r9
.LVL71:
	add	r3, r3, ip
.LVL72:
	ldr	ip, [sp, #56]
	orr	r9, r4, r9
.LVL73:
	and	lr, lr, r10
	add	r6, r6, ip
.LVL74:
	ldr	ip, [sp, #40]
	sub	r9, r9, lr, lsr #1
.LBE277:
.LBE276:
	.loc 4 218 0 discriminator 4
	str	r9, [r0, #4]
	add	r0, r0, ip
.LBE278:
	.loc 4 218 0 is_stmt 0 discriminator 1
	bne	.L32
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L37:
	.align	2
.L36:
	.word	50529027
	.word	33686018
	.word	-50529028
	.word	252645135
	.word	-16843010
	.cfi_endproc
.LFE92:
	.size	avg_pixels8_l4_8, .-avg_pixels8_l4_8
	.align	2
	.type	put_no_rnd_pixels8_l2_8, %function
put_no_rnd_pixels8_l2_8:
.LFB96:
	.loc 4 219 0 is_stmt 1
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL75:
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
	.loc 4 219 0
	ldr	r4, [sp, #44]
	ldr	r6, [sp, #36]
	.loc 4 219 0 is_stmt 0 discriminator 1
	cmp	r4, #0
	.loc 4 219 0
	ldr	r7, [sp, #40]
	.loc 4 219 0 discriminator 1
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	mov	r5, #0
.LVL76:
.L40:
.LBB284:
	.loc 4 219 0 discriminator 4
	ldrb	r10, [r1, #1]	@ zero_extendqisi2
	ldrb	r9, [r2, #1]	@ zero_extendqisi2
	ldrb	lr, [r1]	@ zero_extendqisi2
	ldrb	r8, [r2]	@ zero_extendqisi2
	ldrb	ip, [r1, #2]	@ zero_extendqisi2
	ldrb	fp, [r2, #2]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #8
	orr	r8, r8, r9, asl #8
	ldrb	r10, [r1, #3]	@ zero_extendqisi2
	ldrb	r9, [r2, #3]	@ zero_extendqisi2
	orr	r8, r8, fp, asl #16
	orr	lr, lr, ip, asl #16
	orr	ip, lr, r10, asl #24
.LVL77:
	orr	lr, r8, r9, asl #24
.LVL78:
.LBB285:
.LBB286:
	.loc 2 38 0 is_stmt 1
	ldr	r8, .L44
	eor	r9, lr, ip
	and	r8, r8, r9
	and	ip, ip, lr
.LVL79:
	add	ip, ip, r8, lsr #1
.LBE286:
.LBE285:
	.loc 4 219 0 discriminator 4
	str	ip, [r0]
.LVL80:
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r9, [r2, #5]	@ zero_extendqisi2
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
.LVL81:
	ldrb	r8, [r2, #4]	@ zero_extendqisi2
	ldrb	ip, [r1, #6]	@ zero_extendqisi2
	ldrb	fp, [r2, #6]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #8
	orr	r8, r8, r9, asl #8
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	ldrb	r9, [r2, #7]	@ zero_extendqisi2
	orr	lr, lr, ip, asl #16
	orr	r8, r8, fp, asl #16
	orr	ip, lr, r10, asl #24
.LVL82:
	orr	lr, r8, r9, asl #24
.LVL83:
.LBB287:
.LBB288:
	.loc 2 38 0
	ldr	r8, .L44
	eor	r9, lr, ip
.LBE288:
.LBE287:
.LBE284:
	.loc 4 219 0 discriminator 4
	add	r5, r5, #1
.LVL84:
.LBB291:
.LBB290:
.LBB289:
	.loc 2 38 0
	and	ip, ip, lr
.LVL85:
	and	r8, r8, r9
	add	ip, ip, r8, lsr #1
.LBE289:
.LBE290:
.LBE291:
	.loc 4 219 0 discriminator 1
	cmp	r5, r4
.LBB292:
	.loc 4 219 0 is_stmt 0 discriminator 4
	str	ip, [r0, #4]
.LVL86:
	add	r1, r1, r6
	add	r2, r2, r7
	add	r0, r0, r3
.LBE292:
	.loc 4 219 0 discriminator 1
	bne	.L40
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L45:
	.align	2
.L44:
	.word	-16843010
	.cfi_endproc
.LFE96:
	.size	put_no_rnd_pixels8_l2_8, .-put_no_rnd_pixels8_l2_8
	.align	2
	.type	put_pixels8_l4_8, %function
put_pixels8_l4_8:
.LFB98:
	.loc 4 219 0 is_stmt 1
	.cfi_startproc
	@ args = 28, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL87:
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
	.loc 4 219 0 discriminator 1
	ldr	ip, [sp, #60]
	cmp	ip, #0
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	ldr	r6, [sp, #36]
	mov	r7, #0
.LVL88:
.L48:
.LBB293:
	.loc 4 219 0 is_stmt 0 discriminator 3
	ldrb	ip, [r1]	@ zero_extendqisi2
	ldrb	lr, [r2]	@ zero_extendqisi2
	ldrb	r8, [r1, #1]	@ zero_extendqisi2
	ldrb	r5, [r2, #1]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	ldrb	r9, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	orr	r8, ip, r8, asl #8
	orr	r5, lr, r5, asl #8
	orr	ip, r8, r4, asl #16
	ldrb	lr, [r3]	@ zero_extendqisi2
	ldrb	r4, [r3, #1]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	ldr	r9, .L52
	ldrb	r10, [r3, #2]	@ zero_extendqisi2
	orr	r4, lr, r4, asl #8
	orr	r8, ip, fp, asl #24
.LVL89:
	ldrb	lr, [r6]	@ zero_extendqisi2
	mov	ip, r9
	orr	r4, r4, r10, asl #16
	ldrb	r10, [r6, #1]	@ zero_extendqisi2
	ldrb	fp, [r3, #3]	@ zero_extendqisi2
	and	r9, r9, r8
	and	ip, ip, r5
	add	ip, r9, ip
	orr	lr, lr, r10, asl #8
	ldr	r9, .L52+4
	ldrb	r10, [r6, #2]	@ zero_extendqisi2
	orr	r4, r4, fp, asl #24
.LVL90:
	ldrb	fp, [r6, #3]	@ zero_extendqisi2
	add	r9, ip, r9
	orr	r10, lr, r10, asl #16
	ldr	ip, .L52+8
	orr	r10, r10, fp, asl #24
.LVL91:
	ldr	lr, .L52
	ldr	fp, .L52+8
	and	ip, ip, r8
	ldr	r8, .L52
.LVL92:
	and	fp, fp, r5
	and	lr, lr, r4
	ldr	r5, .L52+8
.LVL93:
	and	r8, r8, r10
	add	lr, r9, lr
	mov	ip, ip, lsr #2
.LVL94:
	add	lr, lr, r8
	add	ip, ip, fp, lsr #2
.LVL95:
	mov	r8, r5
	ldr	r9, .L52+12
.LVL96:
	and	r5, r5, r4
	and	r8, r8, r10
	mov	lr, lr, lsr #2
	add	ip, ip, r5, lsr #2
	add	ip, ip, r8, lsr #2
	and	r9, r9, lr
	add	r9, ip, r9
	str	r9, [r0]
.LVL97:
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
	ldrb	r8, [r1, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #5]	@ zero_extendqisi2
	ldrb	r4, [r1, #6]	@ zero_extendqisi2
.LVL98:
	ldrb	r9, [r2, #6]	@ zero_extendqisi2
	ldrb	r10, [r2, #7]	@ zero_extendqisi2
.LVL99:
	orr	r8, ip, r8, asl #8
	orr	r5, lr, r5, asl #8
	orr	ip, r8, r4, asl #16
	ldrb	lr, [r3, #4]	@ zero_extendqisi2
	ldrb	r4, [r3, #5]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	ldr	r9, .L52
	ldrb	r10, [r3, #6]	@ zero_extendqisi2
	orr	r4, lr, r4, asl #8
	orr	r8, ip, fp, asl #24
.LVL100:
	ldrb	lr, [r6, #4]	@ zero_extendqisi2
	mov	ip, r9
	orr	r4, r4, r10, asl #16
	ldrb	r10, [r6, #5]	@ zero_extendqisi2
	ldrb	fp, [r3, #7]	@ zero_extendqisi2
	and	r9, r9, r8
	and	ip, ip, r5
	add	ip, r9, ip
	orr	lr, lr, r10, asl #8
	ldr	r9, .L52+4
	ldrb	r10, [r6, #6]	@ zero_extendqisi2
	orr	r4, r4, fp, asl #24
.LVL101:
	ldrb	fp, [r6, #7]	@ zero_extendqisi2
	add	r9, ip, r9
	orr	r10, lr, r10, asl #16
	ldr	ip, .L52+8
	orr	r10, r10, fp, asl #24
.LVL102:
	ldr	lr, .L52
	ldr	fp, .L52+8
	and	ip, ip, r8
	ldr	r8, .L52
.LVL103:
	and	fp, fp, r5
	and	lr, lr, r4
	ldr	r5, .L52+8
.LVL104:
	add	lr, r9, lr
	and	r8, r8, r10
	mov	ip, ip, lsr #2
.LVL105:
	add	lr, lr, r8
	ldr	r9, .L52+12
.LVL106:
	mov	r8, r5
	add	ip, ip, fp, lsr #2
.LVL107:
	and	r5, r5, r4
	mov	lr, lr, lsr #2
	add	ip, ip, r5, lsr #2
	and	r8, r8, r10
	and	r9, r9, lr
	add	ip, ip, r8, lsr #2
.LBE293:
	.loc 4 219 0 discriminator 1
	ldr	lr, [sp, #60]
.LBB294:
	.loc 4 219 0 discriminator 3
	add	r9, ip, r9
	ldr	ip, [sp, #44]
.LBE294:
	add	r7, r7, #1
.LVL108:
	add	r1, r1, ip
.LVL109:
	ldr	ip, [sp, #48]
	.loc 4 219 0 discriminator 1
	cmp	r7, lr
	add	r2, r2, ip
.LVL110:
	ldr	ip, [sp, #52]
.LBB295:
	.loc 4 219 0 discriminator 3
	str	r9, [r0, #4]
.LVL111:
	add	r3, r3, ip
	ldr	ip, [sp, #56]
	add	r6, r6, ip
	ldr	ip, [sp, #40]
	add	r0, r0, ip
.LBE295:
	.loc 4 219 0 discriminator 1
	bne	.L48
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L53:
	.align	2
.L52:
	.word	50529027
	.word	33686018
	.word	-50529028
	.word	252645135
	.cfi_endproc
.LFE98:
	.size	put_pixels8_l4_8, .-put_pixels8_l4_8
	.align	2
	.type	put_no_rnd_pixels8_l4_8, %function
put_no_rnd_pixels8_l4_8:
.LFB99:
	.loc 4 219 0 is_stmt 1
	.cfi_startproc
	@ args = 28, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL112:
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
	.loc 4 219 0 discriminator 1
	ldr	ip, [sp, #60]
	cmp	ip, #0
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	ldr	r6, [sp, #36]
	mov	r7, #0
.LVL113:
.L56:
.LBB296:
	.loc 4 219 0 is_stmt 0 discriminator 3
	ldrb	ip, [r1]	@ zero_extendqisi2
	ldrb	lr, [r2]	@ zero_extendqisi2
	ldrb	r8, [r1, #1]	@ zero_extendqisi2
	ldrb	r5, [r2, #1]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	ldrb	r9, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	orr	r8, ip, r8, asl #8
	orr	r5, lr, r5, asl #8
	orr	ip, r8, r4, asl #16
	ldrb	lr, [r3]	@ zero_extendqisi2
	ldrb	r4, [r3, #1]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	ldr	r9, .L60
	ldrb	r10, [r3, #2]	@ zero_extendqisi2
	orr	r4, lr, r4, asl #8
	orr	r8, ip, fp, asl #24
.LVL114:
	ldrb	lr, [r6]	@ zero_extendqisi2
	mov	ip, r9
	orr	r4, r4, r10, asl #16
	ldrb	r10, [r6, #1]	@ zero_extendqisi2
	ldrb	fp, [r3, #3]	@ zero_extendqisi2
	and	r9, r9, r8
	and	ip, ip, r5
	add	ip, r9, ip
	orr	lr, lr, r10, asl #8
	ldr	r9, .L60+4
	ldrb	r10, [r6, #2]	@ zero_extendqisi2
	orr	r4, r4, fp, asl #24
.LVL115:
	ldrb	fp, [r6, #3]	@ zero_extendqisi2
	add	r9, ip, r9
	orr	r10, lr, r10, asl #16
	ldr	ip, .L60+8
	orr	r10, r10, fp, asl #24
.LVL116:
	ldr	lr, .L60
	ldr	fp, .L60+8
	and	ip, ip, r8
	ldr	r8, .L60
.LVL117:
	and	fp, fp, r5
	and	lr, lr, r4
	ldr	r5, .L60+8
.LVL118:
	and	r8, r8, r10
	add	lr, r9, lr
	mov	ip, ip, lsr #2
.LVL119:
	add	lr, lr, r8
	add	ip, ip, fp, lsr #2
.LVL120:
	mov	r8, r5
	ldr	r9, .L60+12
.LVL121:
	and	r5, r5, r4
	and	r8, r8, r10
	mov	lr, lr, lsr #2
	add	ip, ip, r5, lsr #2
	add	ip, ip, r8, lsr #2
	and	r9, r9, lr
	add	r9, ip, r9
	str	r9, [r0]
.LVL122:
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
	ldrb	r8, [r1, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #5]	@ zero_extendqisi2
	ldrb	r4, [r1, #6]	@ zero_extendqisi2
.LVL123:
	ldrb	r9, [r2, #6]	@ zero_extendqisi2
	ldrb	r10, [r2, #7]	@ zero_extendqisi2
.LVL124:
	orr	r8, ip, r8, asl #8
	orr	r5, lr, r5, asl #8
	orr	ip, r8, r4, asl #16
	ldrb	lr, [r3, #4]	@ zero_extendqisi2
	ldrb	r4, [r3, #5]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	ldr	r9, .L60
	ldrb	r10, [r3, #6]	@ zero_extendqisi2
	orr	r4, lr, r4, asl #8
	orr	r8, ip, fp, asl #24
.LVL125:
	ldrb	lr, [r6, #4]	@ zero_extendqisi2
	mov	ip, r9
	orr	r4, r4, r10, asl #16
	ldrb	r10, [r6, #5]	@ zero_extendqisi2
	ldrb	fp, [r3, #7]	@ zero_extendqisi2
	and	r9, r9, r8
	and	ip, ip, r5
	add	ip, r9, ip
	orr	lr, lr, r10, asl #8
	ldr	r9, .L60+4
	ldrb	r10, [r6, #6]	@ zero_extendqisi2
	orr	r4, r4, fp, asl #24
.LVL126:
	ldrb	fp, [r6, #7]	@ zero_extendqisi2
	add	r9, ip, r9
	orr	r10, lr, r10, asl #16
	ldr	ip, .L60+8
	orr	r10, r10, fp, asl #24
.LVL127:
	ldr	lr, .L60
	ldr	fp, .L60+8
	and	ip, ip, r8
	ldr	r8, .L60
.LVL128:
	and	fp, fp, r5
	and	lr, lr, r4
	ldr	r5, .L60+8
.LVL129:
	add	lr, r9, lr
	and	r8, r8, r10
	mov	ip, ip, lsr #2
.LVL130:
	add	lr, lr, r8
	ldr	r9, .L60+12
.LVL131:
	mov	r8, r5
	add	ip, ip, fp, lsr #2
.LVL132:
	and	r5, r5, r4
	mov	lr, lr, lsr #2
	add	ip, ip, r5, lsr #2
	and	r8, r8, r10
	and	r9, r9, lr
	add	ip, ip, r8, lsr #2
.LBE296:
	.loc 4 219 0 discriminator 1
	ldr	lr, [sp, #60]
.LBB297:
	.loc 4 219 0 discriminator 3
	add	r9, ip, r9
	ldr	ip, [sp, #44]
.LBE297:
	add	r7, r7, #1
.LVL133:
	add	r1, r1, ip
.LVL134:
	ldr	ip, [sp, #48]
	.loc 4 219 0 discriminator 1
	cmp	r7, lr
	add	r2, r2, ip
.LVL135:
	ldr	ip, [sp, #52]
.LBB298:
	.loc 4 219 0 discriminator 3
	str	r9, [r0, #4]
.LVL136:
	add	r3, r3, ip
	ldr	ip, [sp, #56]
	add	r6, r6, ip
	ldr	ip, [sp, #40]
	add	r0, r0, ip
.LBE298:
	.loc 4 219 0 discriminator 1
	bne	.L56
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L61:
	.align	2
.L60:
	.word	50529027
	.word	16843009
	.word	-50529028
	.word	252645135
	.cfi_endproc
.LFE99:
	.size	put_no_rnd_pixels8_l4_8, .-put_no_rnd_pixels8_l4_8
	.align	2
	.type	put_mpeg4_qpel8_h_lowpass, %function
put_mpeg4_qpel8_h_lowpass:
.LFB102:
	.file 5 "libavcodec/qpeldsp.c"
	.loc 5 695 0 is_stmt 1
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL137:
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
	.loc 5 695 0
	ldr	r7, [sp, #36]
	.loc 5 695 0 is_stmt 0 discriminator 1
	cmp	r7, #0
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	ldr	r6, .L68
	add	r8, r1, #1
.LPIC9:
	ldr	r6, [pc, r6]		@ tls_load_dot_plus_eight
	mov	r9, #0
	.loc 5 695 0 discriminator 3
	add	r6, r6, #1024
.LVL138:
.L64:
	ldrb	fp, [r1, #2]	@ zero_extendqisi2
	ldrb	ip, [r8, #-1]	@ zero_extendqisi2
	ldrb	r10, [r1, #1]	@ zero_extendqisi2
	ldrb	lr, [r1, #3]	@ zero_extendqisi2
	add	r4, ip, fp
	sub	r4, r4, r4, asl #2
	add	ip, ip, r10
	mov	r5, r4, asl #1
	add	r10, r10, lr
	add	r4, ip, ip, asl #2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	add	r4, r5, r4, asl #2
	add	r10, r10, r10, asl #1
	add	lr, r4, r10
	add	ip, fp, ip
	rsb	ip, ip, lr
	add	ip, ip, #16
	ldrb	ip, [r6, ip, asr #5]	@ zero_extendqisi2
	strb	ip, [r0]
	ldrb	r5, [r8, #-1]	@ zero_extendqisi2
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	r10, [r1, #1]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
	add	fp, r5, fp
	sub	fp, fp, fp, asl #2
	add	r4, r10, r4
	mov	ip, fp, asl #1
	add	r5, r5, lr
	ldrb	fp, [r1, #5]	@ zero_extendqisi2
	add	r4, r4, r4, asl #2
	add	r4, ip, r4, asl #2
	add	r5, r5, r5, asl #1
	add	lr, r4, r5
	add	ip, r10, fp
	rsb	ip, ip, lr
	add	ip, ip, #16
	ldrb	ip, [r6, ip, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #1]
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	ldrb	r5, [r1, #4]	@ zero_extendqisi2
	ldrb	ip, [r1, #2]	@ zero_extendqisi2
	ldrb	lr, [r1, #3]	@ zero_extendqisi2
	ldrb	fp, [r8, #-1]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	add	r5, r4, r5
	add	lr, ip, lr
	sub	r5, r5, r5, asl #2
	ldrb	ip, [r1, #6]	@ zero_extendqisi2
	mov	r5, r5, asl #1
	add	lr, lr, lr, asl #2
	add	r10, fp, r10
	add	r4, r5, lr, asl #2
	add	r10, r10, r10, asl #1
	add	lr, r4, r10
	add	ip, fp, ip
	rsb	ip, ip, lr
	add	ip, ip, #16
	ldrb	ip, [r6, ip, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #2]
	ldrb	lr, [r1, #2]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #3]	@ zero_extendqisi2
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	fp, [r1, #6]	@ zero_extendqisi2
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	add	r10, lr, r10
	sub	r10, r10, r10, asl #2
	add	r4, ip, r4
	add	r5, r5, fp
	mov	ip, r10, asl #1
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	ldrb	r10, [r8, #-1]	@ zero_extendqisi2
	add	r4, r4, r4, asl #2
	add	r4, ip, r4, asl #2
	add	r5, r5, r5, asl #1
	add	lr, r4, r5
	add	ip, r10, fp
	rsb	ip, ip, lr
	add	ip, ip, #16
	ldrb	ip, [r6, ip, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #3]
	ldrb	lr, [r1, #3]	@ zero_extendqisi2
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	ldrb	r4, [r1, #5]	@ zero_extendqisi2
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	ldrb	r5, [r1, #2]	@ zero_extendqisi2
	add	r10, lr, r10
	sub	r10, r10, r10, asl #2
	add	r4, ip, r4
	add	r5, r5, fp
	mov	ip, r10, asl #1
	ldrb	fp, [r1, #8]	@ zero_extendqisi2
	ldrb	r10, [r1, #1]	@ zero_extendqisi2
	add	r4, r4, r4, asl #2
	add	r4, ip, r4, asl #2
	add	r5, r5, r5, asl #1
	add	lr, r4, r5
	add	ip, r10, fp
	rsb	ip, ip, lr
	add	ip, ip, #16
	ldrb	ip, [r6, ip, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #4]
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	r5, [r1, #7]	@ zero_extendqisi2
	ldrb	ip, [r1, #5]	@ zero_extendqisi2
	ldrb	lr, [r1, #6]	@ zero_extendqisi2
	ldrb	fp, [r1, #8]	@ zero_extendqisi2
	ldrb	r10, [r1, #3]	@ zero_extendqisi2
	add	r5, r4, r5
	add	lr, ip, lr
	sub	r5, r5, r5, asl #2
	ldrb	ip, [r1, #2]	@ zero_extendqisi2
	mov	r5, r5, asl #1
	add	lr, lr, lr, asl #2
	add	r10, r10, fp
	add	r4, r5, lr, asl #2
	add	r10, r10, r10, asl #1
	add	lr, r4, r10
	add	ip, fp, ip
	rsb	ip, ip, lr
	add	ip, ip, #16
	ldrb	ip, [r6, ip, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #5]
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
	ldrb	fp, [r1, #5]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	ldrb	r4, [r1, #6]	@ zero_extendqisi2
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
	add	fp, fp, r5
	sub	fp, fp, fp, asl #2
	add	r4, r4, r10
	mov	ip, fp, asl #1
	add	r5, r5, lr
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	add	r4, r4, r4, asl #2
	add	r4, ip, r4, asl #2
	add	r5, r5, r5, asl #1
	add	lr, r4, r5
	add	ip, r10, fp
	rsb	ip, ip, lr
	add	ip, ip, #16
	ldrb	ip, [r6, ip, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #6]
	ldrb	ip, [r1, #8]	@ zero_extendqisi2
	ldrb	fp, [r1, #6]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	ldrb	lr, [r1, #5]	@ zero_extendqisi2
	add	r4, ip, fp
	sub	r4, r4, r4, asl #2
	add	ip, r10, ip
	mov	r5, r4, asl #1
	add	r10, r10, lr
	add	r4, ip, ip, asl #2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	add	r4, r5, r4, asl #2
	add	r10, r10, r10, asl #1
	add	lr, r4, r10
	add	ip, fp, ip
	rsb	ip, ip, lr
	add	r9, r9, #1
.LVL139:
	add	ip, ip, #16
	ldrb	ip, [r6, ip, asr #5]	@ zero_extendqisi2
	.loc 5 695 0 discriminator 1
	cmp	r9, r7
	.loc 5 695 0 discriminator 3
	strb	ip, [r0, #7]
	add	r8, r8, r3
	add	r1, r1, r3
.LVL140:
	add	r0, r0, r2
.LVL141:
	.loc 5 695 0 discriminator 1
	bne	.L64
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L69:
	.align	2
.L68:
	.word	ff_crop_tab(GOT_PREL)+(.-(.LPIC9+8))
	.cfi_endproc
.LFE102:
	.size	put_mpeg4_qpel8_h_lowpass, .-put_mpeg4_qpel8_h_lowpass
	.align	2
	.type	put_mpeg4_qpel8_v_lowpass, %function
put_mpeg4_qpel8_v_lowpass:
.LFB103:
	.loc 5 695 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL142:
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
	add	ip, r1, r3
	sub	sp, sp, #84
	.cfi_def_cfa_offset 120
	str	ip, [sp, #16]
	add	ip, ip, r3
	mov	lr, ip
	.loc 5 695 0
	str	r0, [sp, #8]
.LVL143:
	str	ip, [sp, #20]
	mov	ip, r0
	add	r0, r0, r2
.LVL144:
	mov	r4, r0
	str	r0, [sp, #60]
	add	r0, lr, r3
	mov	lr, r0
	str	r0, [sp, #24]
	add	r0, r4, r2
	mov	r4, r0
	str	r0, [sp, #56]
	add	r0, lr, r3
	mov	lr, r0
	str	r0, [sp, #28]
	add	r0, r4, r2
	add	lr, lr, r3
	mov	r4, r0
	mov	r5, lr
	str	lr, [sp, #32]
	add	lr, r4, r2
	mov	r4, lr
	str	lr, [sp, #48]
	add	lr, r5, r3
	mov	r5, lr
	str	r0, [sp, #52]
	str	lr, [sp, #72]
	ldr	r0, .L74
	add	lr, r4, r2
	mov	r4, lr
	str	lr, [sp, #44]
	add	lr, r5, r3
	mov	r5, lr
.LPIC11:
	ldr	r0, [pc, r0]		@ tls_load_dot_plus_eight
	str	lr, [sp, #68]
	add	lr, r4, r2
	add	r3, r5, r3
.LVL145:
	mov	r4, lr
	str	r3, [sp, #64]
	add	r3, r4, r2
.LBB299:
	.loc 5 695 0 is_stmt 0 discriminator 3
	add	r2, r0, #1024
.LVL146:
	sub	r1, r1, #1
.LVL147:
	str	r3, [sp, #36]
	mov	r10, r2
	add	r3, ip, #8
	str	lr, [sp, #40]
	str	r1, [sp, #12]
	str	r3, [sp, #76]
.LVL148:
.L71:
	ldr	r3, [sp, #12]
	ldr	r7, [sp, #72]
	ldrb	r1, [r3, #1]!	@ zero_extendqisi2
.LVL149:
	str	r3, [sp, #12]
.LVL150:
	ldr	r3, [sp, #20]
.LVL151:
	ldrb	r8, [r3], #1	@ zero_extendqisi2
	str	r3, [sp, #20]
	ldr	r3, [sp, #16]
	add	r5, r1, r8
	ldrb	r9, [r3], #1	@ zero_extendqisi2
	str	r3, [sp, #16]
.LVL152:
	ldr	r3, [sp, #24]
	add	r4, r1, r9
	ldrb	fp, [r3], #1	@ zero_extendqisi2
	str	r3, [sp, #24]
.LVL153:
	ldr	r3, [sp, #28]
	sub	r5, r5, r5, asl #2
	ldrb	lr, [r3], #1	@ zero_extendqisi2
	str	r3, [sp, #28]
.LVL154:
	ldr	r3, [sp, #32]
	mov	r5, r5, asl #1
	add	r2, r9, fp
	add	r4, r4, r4, asl #2
	ldrb	r0, [r3], #1	@ zero_extendqisi2
	add	r4, r5, r4, asl #2
	add	r2, r2, r2, asl #1
	str	r3, [sp, #32]
.LVL155:
	add	ip, r1, fp
	ldrb	r3, [r7], #1	@ zero_extendqisi2
	add	r2, r4, r2
	add	r4, r8, lr
	str	r3, [sp, #4]
	rsb	r2, r4, r2
	add	r3, r9, r8
	ldr	r4, [sp, #64]
	sub	ip, ip, ip, asl #2
	mov	ip, ip, asl #1
	add	r3, r3, r3, asl #2
	add	r3, ip, r3, asl #2
	ldrb	ip, [r4], #1	@ zero_extendqisi2
	ldr	r5, [sp, #68]
	str	r4, [sp, #64]
	add	r4, r1, lr
	add	r6, r9, lr
	add	r4, r4, r4, asl #1
	str	r7, [sp, #72]
.LVL156:
	sub	r6, r6, r6, asl #2
	ldrb	r7, [r5], #1	@ zero_extendqisi2
	add	r3, r3, r4
	add	r4, r8, fp
	str	r5, [sp, #68]
.LVL157:
	add	r4, r4, r4, asl #2
	mov	r5, r6, asl #1
	add	r6, r5, r4, asl #2
	add	r4, r1, r0
	add	r5, r8, r0
	str	r7, [sp]
.LVL158:
	add	r2, r2, #16
	ldr	r7, [sp, #8]
	add	r4, r4, r4, asl #1
	ldrb	r2, [r10, r2, asr #5]	@ zero_extendqisi2
	add	r4, r6, r4
	sub	r5, r5, r5, asl #2
	add	r6, fp, lr
	strb	r2, [r7], #1
	add	r6, r6, r6, asl #2
	add	r2, r9, r0
	mov	r5, r5, asl #1
	add	r5, r5, r6, asl #2
	rsb	r3, r2, r3
	ldr	r6, [sp, #4]
	str	r7, [sp, #8]
.LVL159:
	ldr	r2, [sp, #4]
	add	r6, fp, r6
	add	r2, r9, r2
	add	r2, r2, r2, asl #1
	ldr	r7, [sp]
.LVL160:
	add	r5, r5, r2
	sub	r6, r6, r6, asl #2
	add	r2, lr, r0
	add	r2, r2, r2, asl #2
	mov	r6, r6, asl #1
	add	r6, r6, r2, asl #2
	add	r3, r3, #16
	add	r2, lr, r7
	ldr	r7, [sp, #60]
	ldrb	r3, [r10, r3, asr #5]	@ zero_extendqisi2
	strb	r3, [r7], #1
	str	r7, [sp, #60]
	ldr	r7, [sp, #4]
	sub	r2, r2, r2, asl #2
	add	r3, r1, r7
	rsb	r4, r3, r4
	ldr	r3, [sp]
	mov	r2, r2, asl #1
	add	r1, r1, r3
.LVL161:
	add	r3, r8, r3
	add	r3, r3, r3, asl #1
	add	r6, r6, r3
	add	r3, r0, r7
	rsb	r5, r1, r5
	add	r3, r3, r3, asl #2
	add	r1, fp, ip
	add	r2, r2, r3, asl #2
	add	r1, r1, r1, asl #1
	add	r2, r2, r1
	mov	r1, r7
	ldr	r7, [sp]
	add	r9, r9, ip
.LVL162:
	add	r3, r0, ip
	rsb	r6, r9, r6
	add	r0, r0, r7
.LVL163:
	add	r9, r1, r7
	add	r4, r4, #16
	ldr	r7, [sp, #56]
	ldrb	r4, [r10, r4, asr #5]	@ zero_extendqisi2
	sub	r3, r3, r3, asl #2
	strb	r4, [r7], #1
	add	r9, r9, r9, asl #2
	str	r7, [sp, #56]
	mov	r3, r3, asl #1
	ldr	r7, [sp]
	add	r5, r5, #16
	add	r3, r3, r9, asl #2
	mov	r9, r1
	add	r1, r1, ip
	ldrb	r4, [r10, r5, asr #5]	@ zero_extendqisi2
	sub	r1, r1, r1, asl #2
	add	r5, r7, ip
	mov	r1, r1, asl #1
	add	r5, r5, r5, asl #2
	add	r5, r1, r5, asl #2
	ldr	r1, [sp, #52]
	add	r8, r8, ip
.LVL164:
	strb	r4, [r1], #1
	add	r6, r6, #16
	str	r1, [sp, #52]
	ldr	r1, [sp, #48]
	ldrb	r4, [r10, r6, asr #5]	@ zero_extendqisi2
	add	ip, lr, ip
.LVL165:
	rsb	r2, r8, r2
	strb	r4, [r1], #1
	add	ip, ip, ip, asl #1
	str	r1, [sp, #48]
	add	r2, r2, #16
	ldr	r1, [sp, #44]
	ldrb	r2, [r10, r2, asr #5]	@ zero_extendqisi2
	add	r7, fp, r7
	add	r3, r3, ip
	strb	r2, [r1], #1
	rsb	r3, r7, r3
.LBE299:
	.loc 5 695 0 discriminator 1
	ldr	r2, [sp, #76]
	ldr	r7, [sp, #8]
.LBB300:
	.loc 5 695 0 discriminator 3
	add	r0, r0, r0, asl #1
	add	r0, r5, r0
	add	lr, lr, r9
.LVL166:
	add	r3, r3, #16
	rsb	r0, lr, r0
.LBE300:
	.loc 5 695 0 discriminator 1
	cmp	r7, r2
.LBB301:
	.loc 5 695 0 discriminator 3
	ldr	r2, [sp, #40]
	ldrb	r3, [r10, r3, asr #5]	@ zero_extendqisi2
	add	r0, r0, #16
	strb	r3, [r2], #1
	str	r1, [sp, #44]
	ldrb	r3, [r10, r0, asr #5]	@ zero_extendqisi2
	str	r2, [sp, #40]
	ldr	r2, [sp, #36]
	strb	r3, [r2], #1
	str	r2, [sp, #36]
.LVL167:
.LBE301:
	.loc 5 695 0 discriminator 1
	bne	.L71
	.loc 5 695 0
	add	sp, sp, #84
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL168:
.L75:
	.align	2
.L74:
	.word	ff_crop_tab(GOT_PREL)+(.-(.LPIC11+8))
	.cfi_endproc
.LFE103:
	.size	put_mpeg4_qpel8_v_lowpass, .-put_mpeg4_qpel8_v_lowpass
	.align	2
	.type	put_mpeg4_qpel16_h_lowpass, %function
put_mpeg4_qpel16_h_lowpass:
.LFB104:
	.loc 5 695 0 is_stmt 1
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL169:
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
	.loc 5 695 0 discriminator 1
	ldr	ip, [sp, #36]
	cmp	ip, #0
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	ldr	r7, .L82
	add	fp, r1, r3
.LPIC13:
	ldr	r7, [pc, r7]		@ tls_load_dot_plus_eight
	mov	r8, fp
	.loc 5 695 0 is_stmt 0 discriminator 3
	add	r7, r7, #1024
	.loc 5 695 0 discriminator 1
	mov	r10, #0
	rsb	r9, r3, #0
.LVL170:
.L78:
	.loc 5 695 0 discriminator 3
	ldrb	lr, [r8, r9]	@ zero_extendqisi2
	ldrb	r6, [r1, #2]	@ zero_extendqisi2
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	ldrb	ip, [r1, #3]	@ zero_extendqisi2
	add	r5, lr, r6
	sub	r5, r5, r5, asl #2
	add	lr, lr, r4
	mov	r5, r5, asl #1
	add	ip, r4, ip
	add	lr, lr, lr, asl #2
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	add	lr, r5, lr, asl #2
	add	ip, ip, ip, asl #1
	add	lr, lr, ip
	add	r6, r6, r4
	rsb	r6, r6, lr
	add	r6, r6, #16
	ldrb	ip, [r7, r6, asr #5]	@ zero_extendqisi2
	strb	ip, [r0]
	ldrb	r5, [r8, r9]	@ zero_extendqisi2
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	ldrb	r6, [r1, #1]	@ zero_extendqisi2
	ldrb	lr, [r1, #2]	@ zero_extendqisi2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	add	r4, r5, r4
	add	lr, r6, lr
	sub	r4, r4, r4, asl #2
	mov	r4, r4, asl #1
	add	ip, r5, ip
	add	lr, lr, lr, asl #2
	ldrb	r5, [r1, #5]	@ zero_extendqisi2
	add	lr, r4, lr, asl #2
	add	ip, ip, ip, asl #1
	add	lr, lr, ip
	add	r6, r6, r5
	rsb	r6, r6, lr
	add	r6, r6, #16
	ldrb	ip, [r7, r6, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #1]
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	ldrb	r6, [r1, #2]	@ zero_extendqisi2
	ldrb	lr, [r1, #3]	@ zero_extendqisi2
	ldrb	r5, [r8, r9]	@ zero_extendqisi2
	add	r4, r4, ip
	ldrb	ip, [r1, #5]	@ zero_extendqisi2
	add	lr, r6, lr
	sub	r4, r4, r4, asl #2
	ldrb	r6, [r1, #6]	@ zero_extendqisi2
	mov	r4, r4, asl #1
	add	ip, r5, ip
	add	lr, lr, lr, asl #2
	add	lr, r4, lr, asl #2
	add	ip, ip, ip, asl #1
	add	lr, lr, ip
	add	r5, r5, r6
	rsb	r5, r5, lr
	add	r5, r5, #16
	ldrb	ip, [r7, r5, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #2]
	ldrb	ip, [r1, #5]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	ldrb	r6, [r1, #3]	@ zero_extendqisi2
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	add	r4, r4, ip
	ldrb	ip, [r1, #6]	@ zero_extendqisi2
	add	lr, r6, lr
	sub	r4, r4, r4, asl #2
	ldrb	r6, [r1, #7]	@ zero_extendqisi2
	mov	r4, r4, asl #1
	add	ip, r5, ip
	add	lr, lr, lr, asl #2
	ldrb	r5, [r8, r9]	@ zero_extendqisi2
	add	lr, r4, lr, asl #2
	add	ip, ip, ip, asl #1
	add	lr, lr, ip
	add	r5, r5, r6
	rsb	r5, r5, lr
	add	r5, r5, #16
	ldrb	ip, [r7, r5, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #3]
	ldrb	ip, [r1, #6]	@ zero_extendqisi2
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	ldrb	r6, [r1, #4]	@ zero_extendqisi2
	ldrb	lr, [r1, #5]	@ zero_extendqisi2
	ldrb	r5, [r1, #2]	@ zero_extendqisi2
	add	r4, r4, ip
	ldrb	ip, [r1, #7]	@ zero_extendqisi2
	add	lr, r6, lr
	sub	r4, r4, r4, asl #2
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	mov	r4, r4, asl #1
	add	ip, r5, ip
	add	lr, lr, lr, asl #2
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	add	lr, r4, lr, asl #2
	add	ip, ip, ip, asl #1
	add	lr, lr, ip
	add	r5, r5, r6
	rsb	r5, r5, lr
	add	r5, r5, #16
	ldrb	ip, [r7, r5, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #4]
	ldrb	ip, [r1, #7]	@ zero_extendqisi2
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	r6, [r1, #5]	@ zero_extendqisi2
	ldrb	lr, [r1, #6]	@ zero_extendqisi2
	ldrb	r5, [r1, #3]	@ zero_extendqisi2
	add	r4, r4, ip
	ldrb	ip, [r1, #8]	@ zero_extendqisi2
	add	lr, r6, lr
	sub	r4, r4, r4, asl #2
	ldrb	r6, [r1, #9]	@ zero_extendqisi2
	mov	r4, r4, asl #1
	add	ip, r5, ip
	add	lr, lr, lr, asl #2
	ldrb	r5, [r1, #2]	@ zero_extendqisi2
	add	lr, r4, lr, asl #2
	add	ip, ip, ip, asl #1
	add	lr, lr, ip
	add	r5, r5, r6
	rsb	r5, r5, lr
	add	r5, r5, #16
	ldrb	ip, [r7, r5, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #5]
	ldrb	ip, [r1, #8]	@ zero_extendqisi2
	ldrb	r4, [r1, #5]	@ zero_extendqisi2
	ldrb	r6, [r1, #6]	@ zero_extendqisi2
	ldrb	lr, [r1, #7]	@ zero_extendqisi2
	ldrb	r5, [r1, #4]	@ zero_extendqisi2
	add	r4, r4, ip
	ldrb	ip, [r1, #9]	@ zero_extendqisi2
	add	lr, r6, lr
	sub	r4, r4, r4, asl #2
	ldrb	r6, [r1, #10]	@ zero_extendqisi2
	mov	r4, r4, asl #1
	add	ip, r5, ip
	add	lr, lr, lr, asl #2
	ldrb	r5, [r1, #3]	@ zero_extendqisi2
	add	lr, r4, lr, asl #2
	add	ip, ip, ip, asl #1
	add	lr, lr, ip
	add	r5, r5, r6
	rsb	r5, r5, lr
	add	r5, r5, #16
	ldrb	ip, [r7, r5, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #6]
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	ldrb	r4, [r1, #7]	@ zero_extendqisi2
	ldrb	lr, [r1, #6]	@ zero_extendqisi2
	ldrb	ip, [r1, #9]	@ zero_extendqisi2
	ldrb	r5, [r1, #5]	@ zero_extendqisi2
	add	lr, lr, ip
	ldrb	ip, [r1, #10]	@ zero_extendqisi2
	add	r4, r4, r6
	sub	lr, lr, lr, asl #2
	ldrb	r6, [r1, #11]	@ zero_extendqisi2
	mov	lr, lr, asl #1
	add	ip, r5, ip
	add	r4, r4, r4, asl #2
	ldrb	r5, [r1, #4]	@ zero_extendqisi2
	add	r4, lr, r4, asl #2
	add	ip, ip, ip, asl #1
	add	r4, r4, ip
	add	r5, r5, r6
	rsb	r5, r5, r4
	add	r5, r5, #16
	ldrb	ip, [r7, r5, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #7]
	ldrb	ip, [r1, #10]	@ zero_extendqisi2
	ldrb	r5, [r1, #7]	@ zero_extendqisi2
	ldrb	r4, [r1, #8]	@ zero_extendqisi2
	ldrb	lr, [r1, #9]	@ zero_extendqisi2
	ldrb	r6, [r1, #6]	@ zero_extendqisi2
	add	r5, r5, ip
	ldrb	ip, [r1, #11]	@ zero_extendqisi2
	add	lr, r4, lr
	sub	r5, r5, r5, asl #2
	ldrb	r4, [r1, #5]	@ zero_extendqisi2
	add	lr, lr, lr, asl #2
	add	ip, r6, ip
	mov	r5, r5, asl #1
	ldrb	r6, [r1, #12]	@ zero_extendqisi2
	add	r5, r5, lr, asl #2
	add	ip, ip, ip, asl #1
	add	r5, r5, ip
	add	r4, r4, r6
	rsb	r4, r4, r5
	add	r4, r4, #16
	ldrb	ip, [r7, r4, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #8]
	ldrb	ip, [r1, #11]	@ zero_extendqisi2
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
	ldrb	r4, [r1, #9]	@ zero_extendqisi2
	ldrb	lr, [r1, #10]	@ zero_extendqisi2
	ldrb	r6, [r1, #7]	@ zero_extendqisi2
	add	r5, r5, ip
	ldrb	ip, [r1, #12]	@ zero_extendqisi2
	add	lr, r4, lr
	sub	r5, r5, r5, asl #2
	ldrb	r4, [r1, #6]	@ zero_extendqisi2
	add	lr, lr, lr, asl #2
	add	ip, r6, ip
	mov	r5, r5, asl #1
	ldrb	r6, [r1, #13]	@ zero_extendqisi2
	add	r5, r5, lr, asl #2
	add	ip, ip, ip, asl #1
	add	r5, r5, ip
	add	r4, r4, r6
	rsb	r4, r4, r5
	add	r4, r4, #16
	ldrb	ip, [r7, r4, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #9]
	ldrb	ip, [r1, #12]	@ zero_extendqisi2
	ldrb	r5, [r1, #9]	@ zero_extendqisi2
	ldrb	r4, [r1, #10]	@ zero_extendqisi2
	ldrb	lr, [r1, #11]	@ zero_extendqisi2
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	add	r5, r5, ip
	ldrb	ip, [r1, #13]	@ zero_extendqisi2
	add	lr, r4, lr
	sub	r5, r5, r5, asl #2
	ldrb	r4, [r1, #7]	@ zero_extendqisi2
	add	lr, lr, lr, asl #2
	add	ip, r6, ip
	mov	r5, r5, asl #1
	ldrb	r6, [r1, #14]	@ zero_extendqisi2
	add	r5, r5, lr, asl #2
	add	ip, ip, ip, asl #1
	add	r5, r5, ip
	add	r4, r4, r6
	rsb	r4, r4, r5
	add	r4, r4, #16
	ldrb	ip, [r7, r4, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #10]
	ldrb	ip, [r1, #13]	@ zero_extendqisi2
	ldrb	r5, [r1, #10]	@ zero_extendqisi2
	ldrb	r4, [r1, #11]	@ zero_extendqisi2
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	ldrb	r6, [r1, #9]	@ zero_extendqisi2
	add	r5, r5, ip
	ldrb	ip, [r1, #14]	@ zero_extendqisi2
	add	lr, r4, lr
	sub	r5, r5, r5, asl #2
	ldrb	r4, [r1, #8]	@ zero_extendqisi2
	add	lr, lr, lr, asl #2
	add	ip, r6, ip
	mov	r5, r5, asl #1
	ldrb	r6, [r1, #15]	@ zero_extendqisi2
	add	r5, r5, lr, asl #2
	add	ip, ip, ip, asl #1
	add	r5, r5, ip
	add	r4, r4, r6
	rsb	r4, r4, r5
	add	r4, r4, #16
	ldrb	ip, [r7, r4, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #11]
	ldrb	ip, [r1, #14]	@ zero_extendqisi2
	ldrb	r5, [r1, #11]	@ zero_extendqisi2
	ldrb	r4, [r1, #12]	@ zero_extendqisi2
	ldrb	lr, [r1, #13]	@ zero_extendqisi2
	ldrb	r6, [r1, #10]	@ zero_extendqisi2
	add	r5, r5, ip
	ldrb	ip, [r1, #15]	@ zero_extendqisi2
	add	lr, r4, lr
	sub	r5, r5, r5, asl #2
	ldrb	r4, [r1, #9]	@ zero_extendqisi2
	add	lr, lr, lr, asl #2
	add	ip, r6, ip
	mov	r5, r5, asl #1
	ldrb	r6, [r1, #16]	@ zero_extendqisi2
	add	r5, r5, lr, asl #2
	add	ip, ip, ip, asl #1
	add	r5, r5, ip
	add	r4, r4, r6
	rsb	r4, r4, r5
	add	r4, r4, #16
	ldrb	ip, [r7, r4, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #12]
	ldrb	ip, [r1, #15]	@ zero_extendqisi2
	ldrb	r4, [r1, #12]	@ zero_extendqisi2
	ldrb	r6, [r1, #13]	@ zero_extendqisi2
	ldrb	lr, [r1, #14]	@ zero_extendqisi2
	ldrb	r5, [r1, #16]	@ zero_extendqisi2
	add	r4, r4, ip
	ldrb	ip, [r1, #11]	@ zero_extendqisi2
	add	lr, r6, lr
	sub	r4, r4, r4, asl #2
	ldrb	r6, [r1, #10]	@ zero_extendqisi2
	mov	r4, r4, asl #1
	add	ip, ip, r5
	add	lr, lr, lr, asl #2
	add	lr, r4, lr, asl #2
	add	ip, ip, ip, asl #1
	add	lr, lr, ip
	add	r5, r5, r6
	rsb	r5, r5, lr
	add	r5, r5, #16
	ldrb	ip, [r7, r5, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #13]
	ldrb	r6, [r1, #15]	@ zero_extendqisi2
	ldrb	r4, [r1, #16]	@ zero_extendqisi2
	ldrb	ip, [r1, #13]	@ zero_extendqisi2
	ldrb	r5, [r1, #14]	@ zero_extendqisi2
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	add	ip, ip, r4
	add	r5, r5, r6
	sub	ip, ip, ip, asl #2
	add	r5, r5, r5, asl #2
	add	lr, r4, lr
	mov	ip, ip, asl #1
	ldrb	r4, [r1, #11]	@ zero_extendqisi2
	add	ip, ip, r5, asl #2
	add	lr, lr, lr, asl #1
	add	lr, ip, lr
	add	r6, r6, r4
	rsb	r6, r6, lr
	add	r6, r6, #16
	ldrb	ip, [r7, r6, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #14]
	ldrb	ip, [r1, #16]	@ zero_extendqisi2
	ldrb	r5, [r1, #14]	@ zero_extendqisi2
	ldrb	r6, [r1, #15]	@ zero_extendqisi2
	add	lr, ip, r5
	ldrb	r4, [r1, #13]	@ zero_extendqisi2
	sub	lr, lr, lr, asl #2
	add	ip, r6, ip
	ldrb	r1, [r1, #12]	@ zero_extendqisi2
.LVL171:
	mov	lr, lr, asl #1
	add	ip, ip, ip, asl #2
	add	r4, r6, r4
	add	ip, lr, ip, asl #2
	add	r4, r4, r4, asl #1
	add	r5, r5, r1
	add	r4, ip, r4
	.loc 5 695 0 discriminator 1
	ldr	r1, [sp, #36]
	.loc 5 695 0 discriminator 3
	rsb	r5, r5, r4
	add	r10, r10, #1
.LVL172:
	add	r5, r5, #16
	.loc 5 695 0 discriminator 1
	cmp	r10, r1
	.loc 5 695 0 discriminator 3
	ldrb	r1, [r7, r5, asr #5]	@ zero_extendqisi2
	strb	r1, [r0, #15]
	add	r8, r8, r3
	mov	r1, fp
	add	r0, r0, r2
.LVL173:
	.loc 5 695 0 discriminator 1
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL174:
	add	fp, fp, r3
.LVL175:
	b	.L78
.L83:
	.align	2
.L82:
	.word	ff_crop_tab(GOT_PREL)+(.-(.LPIC13+8))
	.cfi_endproc
.LFE104:
	.size	put_mpeg4_qpel16_h_lowpass, .-put_mpeg4_qpel16_h_lowpass
	.align	2
	.type	put_mpeg4_qpel16_v_lowpass, %function
put_mpeg4_qpel16_v_lowpass:
.LFB105:
	.loc 5 695 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 184
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL176:
	mov	ip, r2, asl #2
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
	mov	lr, r2, asl #1
	mov	r4, ip
	add	fp, lr, r2
	add	r7, r4, r2
	sub	sp, sp, #188
	.cfi_def_cfa_offset 224
.LVL177:
	mov	r9, r7
	mov	r10, fp, asl #2
	str	r10, [sp, #24]
	str	r9, [sp, #56]
	mov	r10, r9, asl #1
	mov	r9, r3, asl #3
	str	lr, [sp, #36]
	str	r9, [sp, #8]
	ldr	lr, .L88
	str	lr, [sp, #16]
	.loc 5 695 0
	str	r1, [sp, #4]
	mov	lr, r10
	ldr	r1, [sp, #8]
.LVL178:
	mov	r10, r3, asl #4
	str	lr, [sp, #72]
	add	lr, lr, r2
	str	r10, [sp, #20]
	str	r0, [sp, #44]
.LVL179:
	str	lr, [sp, #76]
	ldr	r0, [sp, #24]
	rsb	lr, r3, r1
	mov	r10, r2, asl #3
	str	lr, [sp, #28]
	add	lr, r1, r3
	ldr	r1, [sp, #20]
	str	r10, [sp, #12]
	add	r0, r0, r2
	str	lr, [sp, #32]
	sub	r0, r0, #1
	rsb	lr, r3, r1
	ldr	r1, [sp, #12]
	str	r0, [sp, #92]
	ldr	r0, [sp, #24]
	str	r4, [sp, #48]
	str	lr, [sp, #40]
	rsb	lr, r2, r1
	str	lr, [sp, #64]
	add	lr, r1, r2
	sub	r1, r0, #1
	ldr	r0, [sp, #48]
	str	lr, [sp, #68]
	rsb	lr, r2, r2, asl #4
	str	lr, [sp, #96]
	str	r1, [sp, #84]
	ldr	lr, [sp, #16]
	sub	r1, r0, #1
	ldr	r0, [sp, #56]
.LPIC15:
	ldr	lr, [pc, lr]		@ tls_load_dot_plus_eight
	str	r1, [sp, #52]
	sub	r1, r0, #1
	str	lr, [sp, #16]
	ldr	lr, [sp, #36]
	str	r1, [sp, #60]
	ldr	r0, [sp, #76]
	mov	r8, r3, asl #1
	sub	r1, r0, #1
	ldr	r0, [sp, #72]
	add	ip, r8, r3
	str	r1, [sp, #80]
	sub	r1, r0, #1
	str	r1, [sp, #72]
	sub	r1, ip, #1
	str	r1, [sp, #24]
	ldr	r1, [sp, #4]
	mov	r7, ip, asl #2
	add	ip, r1, ip, asl #1
	sub	r1, fp, #1
	str	r1, [sp, #48]
	ldr	r1, [sp, #44]
	mov	r6, r3, asl #2
	add	fp, r1, fp, asl #1
	str	fp, [sp, #76]
	ldr	fp, [sp, #28]
	add	r5, r6, r3
	sub	r0, fp, #1
	str	r0, [sp, #28]
	ldr	r0, [sp, #4]
	mov	r4, r5, asl #1
	add	fp, r0, fp, asl #1
	ldr	r0, [sp, #32]
	add	r10, r7, r3
	sub	r0, r0, #1
	str	r0, [sp, #36]
	ldr	r0, [sp, #8]
	add	r9, r4, r3
	sub	r0, r0, #1
	str	r0, [sp, #32]
	ldr	r0, [sp, #40]
	sub	r3, r3, #1
.LVL180:
	sub	r0, r0, #1
	str	r0, [sp, #40]
	ldr	r0, [sp, #20]
	str	r3, [sp, #8]
	sub	r0, r0, #1
	str	r0, [sp, #20]
	ldr	r0, [sp, #64]
	sub	r8, r8, #1
	sub	r3, r0, #1
.LVL181:
	add	r0, r1, r0, asl #1
	str	r0, [sp, #112]
	ldr	r0, [sp, #68]
	sub	r10, r10, #1
	sub	r0, r0, #1
	str	r0, [sp, #88]
	ldr	r0, [sp, #12]
	sub	r7, r7, #1
	sub	r0, r0, #1
	str	r0, [sp, #12]
	ldr	r0, [sp, #96]
	sub	r6, r6, #1
	sub	r0, r0, #1
	str	r0, [sp, #144]
	ldr	r0, [sp, #4]
	sub	r5, r5, #1
	add	r8, r0, r8
	add	r5, r0, r5
	str	r8, [sp, #56]
	add	r7, r0, r7
	add	r8, r0, r10
	add	r6, r0, r6
	sub	r9, r9, #1
	sub	r4, r4, #1
	str	r8, [sp, #160]
	str	r7, [sp, #164]
	str	r6, [sp, #64]
	str	r5, [sp, #68]
	add	r5, r0, r9
	add	r4, r0, r4
	sub	lr, lr, #1
	str	r5, [sp, #168]
	mov	r5, r0
	ldr	r0, [sp, #92]
	str	r4, [sp, #172]
	add	r4, r1, lr
	str	r4, [sp, #140]
	add	r4, r1, r0
	ldr	r0, [sp, #84]
	str	r4, [sp, #96]
	add	r4, r1, r0
	ldr	r0, [sp, #52]
	str	r4, [sp, #100]
	add	r4, r1, r0
	ldr	r0, [sp, #60]
	str	r4, [sp, #132]
	add	r4, r1, r0
	ldr	r0, [sp, #80]
	str	r4, [sp, #128]
	add	r4, r1, r0
	ldr	r0, [sp, #72]
	str	r4, [sp, #104]
	add	r4, r1, r0
	ldr	r0, [sp, #24]
	str	r4, [sp, #108]
	add	r4, r5, r0
	ldr	r0, [sp, #48]
	sub	ip, ip, #1
	str	ip, [sp, #72]
	add	ip, r1, r0
	ldr	r0, [sp, #76]
	str	ip, [sp, #136]
	sub	ip, r0, #1
	ldr	r0, [sp, #28]
	str	ip, [sp, #124]
	add	ip, r5, r0
	ldr	r0, [sp, #36]
	str	ip, [sp, #76]
	sub	ip, fp, #1
	str	ip, [sp, #156]
	add	ip, r5, r0
	ldr	r0, [sp, #32]
	str	ip, [sp, #84]
	add	ip, r5, r0
	ldr	r0, [sp, #40]
	str	ip, [sp, #80]
	add	ip, r5, r0
	ldr	r0, [sp, #20]
	str	ip, [sp, #152]
	add	ip, r5, r0
	str	r4, [sp, #60]
	str	ip, [sp, #148]
	ldr	r0, [sp, #112]
	add	r3, r1, r3
	str	r3, [sp, #120]
	sub	r3, r0, #1
	ldr	r0, [sp, #88]
	str	r3, [sp, #92]
	add	r3, r1, r0
	ldr	r0, [sp, #12]
	ldr	lr, [sp, #8]
	str	r3, [sp, #112]
	add	r3, r1, r0
	ldr	r0, [sp, #144]
	add	ip, r5, lr
	sub	r2, r2, #1
.LVL182:
	str	r3, [sp, #116]
.LBB302:
	.loc 5 695 0 is_stmt 0 discriminator 3
	ldr	lr, [sp, #16]
	add	r3, r1, r0
	str	r3, [sp, #88]
	add	r3, r1, r2
	str	ip, [sp, #52]
	str	r3, [sp, #144]
	sub	ip, r5, #1
	add	r3, lr, #1024
	add	r2, r1, #16
.LVL183:
	str	ip, [sp, #48]
	str	r2, [sp, #180]
	str	r3, [sp, #4]
.LVL184:
.L85:
	ldr	r3, [sp, #48]
	ldrb	r0, [r3, #1]!	@ zero_extendqisi2
.LVL185:
	str	r3, [sp, #48]
.LVL186:
	ldr	r3, [sp, #56]
.LVL187:
	ldrb	r7, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #56]
	ldr	r3, [sp, #52]
	add	ip, r0, r7
	ldrb	r8, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #52]
.LVL188:
	ldr	r3, [sp, #60]
	add	r1, r0, r8
	ldrb	r6, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #60]
.LVL189:
	ldr	r3, [sp, #64]
	sub	ip, ip, ip, asl #2
	ldrb	r5, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #64]
.LVL190:
	ldr	r3, [sp, #68]
	mov	ip, ip, asl #1
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #68]
	ldr	r3, [sp, #72]
	add	r1, r1, r1, asl #2
	ldrb	r4, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #72]
	ldr	r3, [sp, #76]
	add	r1, ip, r1, asl #2
	ldrb	ip, [r3, #1]!	@ zero_extendqisi2
	add	r10, r0, r6
	str	r3, [sp, #76]
	ldr	r3, [sp, #80]
	mov	lr, r2
.LVL191:
	sub	r10, r10, r10, asl #2
	add	r2, r8, r7
.LVL192:
	add	r9, r8, r6
	str	ip, [sp, #8]
.LVL193:
	add	r2, r2, r2, asl #2
	ldrb	ip, [r3, #1]!	@ zero_extendqisi2
	mov	r10, r10, asl #1
	add	r10, r10, r2, asl #2
	add	r9, r9, r9, asl #1
	add	r2, r0, r5
	str	r3, [sp, #80]
.LVL194:
	ldr	r3, [sp, #84]
	add	r1, r1, r9
	add	r2, r2, r2, asl #1
	add	r9, r7, r5
	add	fp, r8, r5
	add	r2, r10, r2
	rsb	r1, r9, r1
	ldrb	r9, [r3, #1]!	@ zero_extendqisi2
	add	r10, r7, lr
	str	r9, [sp, #36]
	str	r2, [sp, #176]
	add	r9, r7, r6
	sub	fp, fp, fp, asl #2
	str	r3, [sp, #84]
.LVL195:
	ldr	r3, [sp, #172]
	mov	fp, fp, asl #1
	sub	r10, r10, r10, asl #2
	add	r9, r9, r9, asl #2
	add	r9, fp, r9, asl #2
	mov	fp, r10, asl #1
	ldrb	r10, [r3, #1]!	@ zero_extendqisi2
	str	r10, [sp, #16]
	add	r10, r0, lr
	add	r10, r10, r10, asl #1
	add	r9, r9, r10
	add	r10, r6, r5
	add	r10, r10, r10, asl #2
	add	r10, fp, r10, asl #2
	str	r4, [sp, #12]
	add	fp, r6, r4
	ldr	r4, [sp, #4]
.LVL196:
	str	r3, [sp, #172]
.LVL197:
	add	r1, r1, #16
	ldr	r3, [sp, #168]
	ldrb	r1, [r4, r1, asr #5]	@ zero_extendqisi2
	ldr	r4, [sp, #164]
	ldr	r2, [sp, #160]
	str	lr, [sp, #24]
	ldrb	lr, [r3, #1]!	@ zero_extendqisi2
.LVL198:
	str	r3, [sp, #168]
.LVL199:
	ldrb	r3, [r4, #1]!	@ zero_extendqisi2
	str	r4, [sp, #164]
.LVL200:
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	str	r2, [sp, #160]
.LVL201:
	ldr	r2, [sp, #156]
	str	r4, [sp, #32]
.LVL202:
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	str	r2, [sp, #156]
.LVL203:
	ldr	r2, [sp, #152]
	str	r4, [sp, #20]
.LVL204:
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	str	r2, [sp, #152]
.LVL205:
	ldr	r2, [sp, #148]
	str	r4, [sp, #28]
.LVL206:
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	str	r4, [sp, #40]
	ldr	r4, [sp, #44]
	str	r2, [sp, #148]
.LVL207:
	strb	r1, [r4], #1
	str	r4, [sp, #44]
.LVL208:
	ldr	r4, [sp, #24]
.LVL209:
	ldr	r2, [sp, #176]
	add	r1, r8, r4
	rsb	r2, r1, r2
	ldr	r1, [sp, #12]
	add	r2, r2, #16
	add	r1, r8, r1
	add	r1, r1, r1, asl #1
	add	r10, r10, r1
	add	r1, r5, r4
	ldr	r4, [sp, #4]
	sub	fp, fp, fp, asl #2
	ldrb	r2, [r4, r2, asr #5]	@ zero_extendqisi2
	ldr	r4, [sp, #144]
	add	r1, r1, r1, asl #2
	strb	r2, [r4, #1]!
	str	r4, [sp, #144]
	ldr	r4, [sp, #12]
	mov	fp, fp, asl #1
	add	r2, r0, r4
	rsb	r9, r2, r9
	ldr	r2, [sp, #8]
	add	fp, fp, r1, asl #2
	add	r0, r0, r2
.LVL210:
	add	r2, r7, r2
	ldr	r1, [sp, #8]
	add	r2, r2, r2, asl #1
	add	fp, fp, r2
	ldr	r2, [sp, #24]
	add	r1, r5, r1
	add	r2, r2, r4
	sub	r1, r1, r1, asl #2
	ldr	r4, [sp, #4]
	rsb	r10, r0, r10
	add	r2, r2, r2, asl #2
	add	r0, r6, ip
	mov	r1, r1, asl #1
	add	r1, r1, r2, asl #2
	add	r0, r0, r0, asl #1
	ldr	r2, [sp, #24]
	add	r9, r9, #16
	ldrb	r9, [r4, r9, asr #5]	@ zero_extendqisi2
	add	r1, r1, r0
	ldr	r4, [sp, #12]
	ldr	r0, [sp, #8]
	add	r2, r2, ip
	add	r0, r4, r0
	sub	r2, r2, r2, asl #2
	add	r8, r8, ip
.LVL211:
	add	r0, r0, r0, asl #2
	mov	r2, r2, asl #1
	rsb	fp, r8, fp
	add	r2, r2, r0, asl #2
	ldr	r8, [sp, #36]
	ldr	r0, [sp, #12]
	mov	r4, r8
	add	r7, r7, r8
.LVL212:
	add	r8, r0, r8
	sub	r8, r8, r8, asl #2
	mov	r0, r8, asl #1
	ldr	r8, [sp, #140]
	add	r10, r10, #16
	strb	r9, [r8, #1]!
	str	r8, [sp, #140]
	ldr	r8, [sp, #4]
	rsb	r1, r7, r1
	ldrb	r9, [r8, r10, asr #5]	@ zero_extendqisi2
	mov	r7, r4
	add	r8, r5, r4
	ldr	r4, [sp, #8]
	add	r8, r8, r8, asl #1
	ldr	r10, [sp, #16]
	add	r2, r2, r8
	add	r8, r4, ip
	add	r8, r8, r8, asl #2
	add	r6, r6, r10
.LVL213:
	add	r0, r0, r8, asl #2
	mov	r8, r10
	add	r10, r4, r10
	ldr	r4, [sp, #136]
	add	fp, fp, #16
	strb	r9, [r4, #1]!
	ldr	r9, [sp, #24]
	str	r4, [sp, #136]
	ldr	r4, [sp, #4]
	add	r9, r9, r8
	ldrb	fp, [r4, fp, asr #5]	@ zero_extendqisi2
	sub	r10, r10, r10, asl #2
	mov	r4, r7
	add	r7, ip, r7
	add	r9, r9, r9, asl #1
	add	r7, r7, r7, asl #2
	mov	r10, r10, asl #1
	add	r0, r0, r9
	add	r10, r10, r7, asl #2
	ldr	r7, [sp, #12]
	ldr	r9, [sp, #132]
	rsb	r2, r6, r2
	strb	fp, [r9, #1]!
	str	r9, [sp, #132]
	ldr	r9, [sp, #16]
	add	r6, ip, lr
	add	fp, r4, r9
	sub	r6, r6, r6, asl #2
	add	fp, fp, fp, asl #2
	mov	r6, r6, asl #1
	add	r8, r7, lr
	add	r6, r6, fp, asl #2
	ldr	fp, [sp, #16]
	mov	r7, r4
	add	r8, r8, r8, asl #1
	ldr	r4, [sp, #4]
	add	r5, r5, lr
.LVL214:
	add	r9, r7, r3
	add	r10, r10, r8
	add	r7, fp, lr
	mov	r8, lr
	add	r1, r1, #16
	ldr	lr, [sp, #128]
.LVL215:
	ldrb	r1, [r4, r1, asr #5]	@ zero_extendqisi2
	strb	r1, [lr, #1]!
	rsb	r0, r5, r0
	str	lr, [sp, #128]
	ldr	r5, [sp, #24]
	ldr	lr, [sp, #32]
	add	r4, r5, r3
	add	r1, fp, lr
	ldr	r5, [sp, #8]
	ldr	fp, [sp, #4]
	sub	r9, r9, r9, asl #2
	add	r7, r7, r7, asl #2
	add	r2, r2, #16
	mov	r9, r9, asl #1
	ldrb	r2, [fp, r2, asr #5]	@ zero_extendqisi2
	add	r5, r5, r3
	add	fp, ip, lr
	rsb	r10, r4, r10
	str	ip, [sp, #24]
.LVL216:
	mov	r4, lr
	mov	ip, lr
.LVL217:
	add	r9, r9, r7, asl #2
	ldr	lr, [sp, #12]
	ldr	r7, [sp, #124]
	add	r5, r5, r5, asl #1
	strb	r2, [r7, #1]!
	add	lr, lr, r4
	add	r6, r6, r5
	add	r4, r8, r3
	str	r8, [sp, #12]
.LVL218:
	mov	r5, r8
	str	r7, [sp, #124]
	ldr	r8, [sp, #20]
.LVL219:
	ldr	r7, [sp, #36]
	add	r5, r5, r8
.LVL220:
	add	r2, r7, r8
	rsb	r6, lr, r6
	add	r8, r3, ip
	ldr	lr, [sp, #20]
	ldr	ip, [sp, #8]
	add	fp, fp, fp, asl #1
	ldr	r7, [sp, #4]
	add	ip, ip, lr
	add	r9, r9, fp
	ldr	lr, [sp, #28]
	ldr	fp, [sp, #16]
	add	r0, r0, #16
	ldrb	r0, [r7, r0, asr #5]	@ zero_extendqisi2
	sub	r1, r1, r1, asl #2
	add	r7, r3, lr
	add	lr, fp, lr
	ldr	fp, [sp, #120]
	add	r4, r4, r4, asl #2
	mov	r1, r1, asl #1
	strb	r0, [fp, #1]!
	add	r1, r1, r4, asl #2
	str	fp, [sp, #120]
	ldr	r4, [sp, #32]
	ldr	fp, [sp, #20]
	add	r10, r10, #16
	add	r0, r4, fp
	ldr	fp, [sp, #4]
	sub	r5, r5, r5, asl #2
	ldrb	r10, [fp, r10, asr #5]	@ zero_extendqisi2
	ldr	fp, [sp, #40]
	add	r2, r2, r2, asl #1
	add	r8, r8, r8, asl #2
	add	r6, r6, #16
	mov	r5, r5, asl #1
	str	r6, [sp, #8]
	rsb	r9, ip, r9
	ldr	r6, [sp, #28]
	add	fp, r4, fp
	ldr	ip, [sp, #24]
	ldr	r4, [sp, #12]
	add	r1, r1, r2
	add	r5, r5, r8, asl #2
	ldr	r2, [sp, #40]
	ldr	r8, [sp, #20]
	add	ip, ip, r6
	add	r2, r4, r2
	add	r4, r8, r6
	ldr	r6, [sp, #116]
	add	lr, lr, lr, asl #1
	strb	r10, [r6, #1]!
	mov	r10, r8
	ldr	r8, [sp, #40]
	str	r6, [sp, #116]
	add	r10, r10, r8
	ldmib	sp, {r6, r8}
	rsb	r1, ip, r1
	ldrb	r6, [r6, r8, asr #5]	@ zero_extendqisi2
	ldr	ip, [sp, #40]
	ldr	r8, [sp, #36]
	add	r5, r5, lr
	sub	r7, r7, r7, asl #2
	ldr	lr, [sp, #28]
	add	r8, r8, ip
	add	r0, r0, r0, asl #2
	mov	r7, r7, asl #1
	str	r8, [sp, #8]
	add	r7, r7, r0, asl #2
	add	r8, lr, ip
	mov	r0, ip
	add	lr, r3, ip
	ldr	ip, [sp, #112]
	add	r9, r9, #16
	strb	r6, [ip, #1]!
	str	ip, [sp, #112]
	ldr	ip, [sp, #4]
	add	r2, r2, r2, asl #1
	ldrb	r6, [ip, r9, asr #5]	@ zero_extendqisi2
	ldr	r9, [sp, #8]
	ldr	ip, [sp, #108]
	rsb	r5, r9, r5
	ldr	r9, [sp, #16]
	sub	fp, fp, fp, asl #2
	add	r4, r4, r4, asl #2
	add	r9, r9, r0
	add	r7, r7, r2
	ldr	r0, [sp, #32]
	ldr	r2, [sp, #28]
	mov	fp, fp, asl #1
	sub	r10, r10, r10, asl #2
	strb	r6, [ip, #1]!
	add	fp, fp, r4, asl #2
	add	r8, r8, r8, asl #2
	str	ip, [sp, #108]
	mov	r10, r10, asl #1
	ldr	r6, [sp, #4]
	ldr	r4, [sp, #12]
	add	r0, r0, r2
	add	r10, r10, r8, asl #2
	ldr	r8, [sp, #20]
	add	ip, r4, r2
	add	r0, r0, r0, asl #1
	ldr	r2, [sp, #104]
	add	r1, r1, #16
	ldrb	r1, [r6, r1, asr #5]	@ zero_extendqisi2
	add	r10, r10, r0
	add	r5, r5, #16
	add	r0, r3, r8
	ldr	r3, [sp, #100]
.LVL221:
	strb	r1, [r2, #1]!
	rsb	r7, r9, r7
	str	r2, [sp, #104]
	ldrb	r2, [r6, r5, asr #5]	@ zero_extendqisi2
	strb	r2, [r3, #1]!
	add	r7, r7, #16
	str	r3, [sp, #100]
	ldr	r3, [sp, #96]
	ldrb	r2, [r6, r7, asr #5]	@ zero_extendqisi2
	add	lr, lr, lr, asl #1
	strb	r2, [r3, #1]!
	add	fp, fp, lr
	str	r3, [sp, #96]
.LBE302:
	.loc 5 695 0 discriminator 1
	ldr	r4, [sp, #44]
	ldr	r3, [sp, #180]
.LBB303:
	.loc 5 695 0 discriminator 3
	rsb	fp, ip, fp
	add	fp, fp, #16
.LBE303:
	.loc 5 695 0 discriminator 1
	cmp	r4, r3
.LBB304:
	.loc 5 695 0 discriminator 3
	ldr	r3, [sp, #92]
	ldrb	r2, [r6, fp, asr #5]	@ zero_extendqisi2
	rsb	r10, r0, r10
	strb	r2, [r3, #1]!
	add	r10, r10, #16
	str	r3, [sp, #92]
	ldr	r3, [sp, #88]
	ldrb	r2, [r6, r10, asr #5]	@ zero_extendqisi2
	strb	r2, [r3, #1]!
	str	r3, [sp, #88]
.LVL222:
.LBE304:
	.loc 5 695 0 discriminator 1
	bne	.L85
	.loc 5 695 0
	add	sp, sp, #188
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L89:
	.align	2
.L88:
	.word	ff_crop_tab(GOT_PREL)+(.-(.LPIC15+8))
	.cfi_endproc
.LFE105:
	.size	put_mpeg4_qpel16_v_lowpass, .-put_mpeg4_qpel16_v_lowpass
	.align	2
	.type	put_qpel8_mc20_c, %function
put_qpel8_mc20_c:
.LFB107:
	.loc 5 695 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL223:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	mov	r3, #8
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 5 695 0
	str	r3, [sp]
	mov	r3, r2
	bl	put_mpeg4_qpel8_h_lowpass(PLT)
.LVL224:
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE107:
	.size	put_qpel8_mc20_c, .-put_qpel8_mc20_c
	.align	2
	.type	put_qpel8_mc02_c, %function
put_qpel8_mc02_c:
.LFB110:
	.loc 5 695 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL225:
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
.LBB305:
.LBB306:
	.file 6 "libavcodec/copy_block.h"
	.loc 6 64 0
	add	lr, r1, r2
	add	ip, lr, r2
	.loc 6 61 0
	ldrb	r7, [r1, r2]	@ zero_extendqisi2
	ldrb	r5, [ip, #4]	@ zero_extendqisi2
	ldrb	r9, [lr, #1]	@ zero_extendqisi2
	ldrb	r8, [ip, #5]	@ zero_extendqisi2
	ldrb	r6, [lr, #4]	@ zero_extendqisi2
	ldrb	r10, [lr, #5]	@ zero_extendqisi2
	orr	r8, r5, r8, asl #8
	orr	r7, r7, r9, asl #8
	ldrb	r5, [r1]	@ zero_extendqisi2
	ldrb	r9, [r1, #1]	@ zero_extendqisi2
	ldrb	r4, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	fp, [ip, #1]	@ zero_extendqisi2
	orr	r10, r6, r10, asl #8
	orr	r9, r5, r9, asl #8
	ldrb	r6, [r1, #4]	@ zero_extendqisi2
	ldrb	r5, [r1, #5]	@ zero_extendqisi2
.LBE306:
.LBE305:
	.loc 5 695 0
	sub	sp, sp, #156
	.cfi_def_cfa_offset 192
.LVL226:
.LBB309:
.LBB307:
	.loc 6 61 0
	orr	r5, r6, r5, asl #8
	orr	r4, r4, fp, asl #8
	ldrb	r6, [ip, #6]	@ zero_extendqisi2
	ldrb	fp, [ip, #2]	@ zero_extendqisi2
	str	r5, [sp, #4]
	ldrb	r5, [lr, #2]	@ zero_extendqisi2
	orr	r8, r8, r6, asl #16
	orr	r4, r4, fp, asl #16
	ldrb	r6, [lr, #6]	@ zero_extendqisi2
	ldrb	fp, [ip, #3]	@ zero_extendqisi2
	orr	r7, r7, r5, asl #16
	ldrb	r5, [r1, #2]	@ zero_extendqisi2
	orr	r4, r4, fp, asl #24
	orr	r6, r10, r6, asl #16
	ldr	fp, [sp, #4]
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	r5, r9, r5, asl #16
	ldrb	r9, [ip, #7]	@ zero_extendqisi2
	orr	r10, fp, r10, asl #16
	ldrb	fp, [lr, #3]	@ zero_extendqisi2
	orr	r9, r8, r9, asl #24
	ldrb	r8, [lr, #7]	@ zero_extendqisi2
	orr	r7, r7, fp, asl #24
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [r1, #7]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #24
	.loc 6 64 0
	add	fp, ip, r2
	.loc 6 61 0
	orr	r10, r10, r8, asl #24
	str	r4, [sp, #40]
	.loc 6 62 0
	ldrb	r8, [r1, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r4, fp, r2
	.loc 6 62 0
	ldrb	r1, [lr, #8]	@ zero_extendqisi2
.LVL227:
	.loc 6 61 0
	str	r7, [sp, #24]
	str	r6, [sp, #28]
	str	r5, [sp, #8]
	str	r10, [sp, #12]
	ldrb	r7, [fp, #1]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r1, [sp, #32]
	.loc 6 61 0
	str	r9, [sp, #44]
	ldrb	r1, [lr, r2, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r4, #5]	@ zero_extendqisi2
	ldrb	r5, [r4, #4]	@ zero_extendqisi2
	ldrb	r6, [ip, r2, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r4, #1]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r8, [sp, #16]
.LVL228:
	.loc 6 61 0
	ldrb	lr, [fp, #4]	@ zero_extendqisi2
	ldrb	r8, [fp, #5]	@ zero_extendqisi2
	orr	r1, r1, r7, asl #8
	orr	r5, r5, r9, asl #8
	ldrb	r7, [fp, #2]	@ zero_extendqisi2
	ldrb	r9, [r4, #6]	@ zero_extendqisi2
	orr	r6, r6, r10, asl #8
	orr	lr, lr, r8, asl #8
	ldrb	r10, [r4, #2]	@ zero_extendqisi2
	ldrb	r8, [fp, #6]	@ zero_extendqisi2
	orr	r1, r1, r7, asl #16
	orr	r5, r5, r9, asl #16
	ldrb	r7, [fp, #3]	@ zero_extendqisi2
	ldrb	r9, [r4, #7]	@ zero_extendqisi2
	orr	r6, r6, r10, asl #16
	orr	lr, lr, r8, asl #16
	ldrb	r10, [r4, #3]	@ zero_extendqisi2
	ldrb	r8, [fp, #7]	@ zero_extendqisi2
	orr	r7, r1, r7, asl #24
	.loc 6 62 0
	ldrb	ip, [ip, #8]	@ zero_extendqisi2
.LVL229:
	.loc 6 64 0
	add	r1, r4, r2
	.loc 6 61 0
	orr	r5, r5, r9, asl #24
	.loc 6 62 0
	ldrb	r9, [r4, #8]	@ zero_extendqisi2
	.loc 6 61 0
	orr	r6, r6, r10, asl #24
	orr	lr, lr, r8, asl #24
	str	r7, [sp, #56]
	.loc 6 62 0
	strb	ip, [sp, #48]
.LVL230:
	.loc 6 61 0
	ldrb	r7, [r1, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r9, [sp, #80]
	ldrb	r9, [fp, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r10, r1, r2
	.loc 6 61 0
	str	r6, [sp, #72]
	str	r5, [sp, #76]
	str	lr, [sp, #60]
	ldrb	r5, [r1, #2]	@ zero_extendqisi2
	ldrb	lr, [r1, #3]	@ zero_extendqisi2
	ldrb	r6, [r1, #1]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r9, [sp, #64]
.LVL231:
	.loc 6 61 0
	ldrb	r9, [fp, r2, asl #1]	@ zero_extendqisi2
	.loc 6 64 0
	add	r8, r10, r2
	.loc 6 61 0
	orr	ip, ip, r7, asl #8
	ldrb	r7, [r1, #7]	@ zero_extendqisi2
	str	r7, [sp, #4]
	orr	r6, r9, r6, asl #8
	ldrb	r7, [r8, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	fp, [r1, #6]	@ zero_extendqisi2
	ldrb	r4, [r4, r2, asl #1]	@ zero_extendqisi2
	orr	r7, r9, r7, asl #8
	ldrb	r9, [r10, #1]	@ zero_extendqisi2
	orr	ip, ip, fp, asl #16
	orr	r4, r4, r9, asl #8
	ldrb	fp, [r8, #4]	@ zero_extendqisi2
	ldrb	r9, [r8, #5]	@ zero_extendqisi2
	orr	r6, r6, r5, asl #16
	orr	fp, fp, r9, asl #8
	ldrb	r5, [r10, #4]	@ zero_extendqisi2
	ldrb	r9, [r10, #5]	@ zero_extendqisi2
	orr	r6, r6, lr, asl #24
	orr	r5, r5, r9, asl #8
	ldrb	r9, [r10, #2]	@ zero_extendqisi2
	ldrb	lr, [r8, #2]	@ zero_extendqisi2
	orr	r9, r4, r9, asl #16
	ldrb	r4, [r10, #6]	@ zero_extendqisi2
	orr	r7, r7, lr, asl #16
	orr	r5, r5, r4, asl #16
	ldrb	lr, [r8, #6]	@ zero_extendqisi2
	ldr	r4, [sp, #4]
	orr	fp, fp, lr, asl #16
	orr	ip, ip, r4, asl #24
	ldrb	lr, [r8, #3]	@ zero_extendqisi2
	ldrb	r4, [r10, #3]	@ zero_extendqisi2
	orr	r7, r7, lr, asl #24
	orr	r4, r9, r4, asl #24
	ldrb	lr, [r8, #7]	@ zero_extendqisi2
	ldrb	r9, [r10, #7]	@ zero_extendqisi2
	.loc 6 62 0
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
.LVL232:
	.loc 6 61 0
	orr	fp, fp, lr, asl #24
	orr	r5, r5, r9, asl #24
	.loc 6 62 0
	ldrb	lr, [r8, #8]	@ zero_extendqisi2
	ldrb	r9, [r10, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r8, r8, r2
	.loc 6 61 0
	str	r6, [sp, #88]
	str	ip, [sp, #92]
	.loc 6 62 0
	strb	r1, [sp, #96]
.LVL233:
	.loc 6 61 0
	str	r4, [sp, #104]
	str	r5, [sp, #108]
	ldrb	r4, [r10, r2, asl #1]	@ zero_extendqisi2
	.loc 6 62 0
	strb	lr, [sp, #128]
	.loc 6 61 0
	str	r7, [sp, #120]
	str	fp, [sp, #124]
	.loc 6 62 0
	strb	r9, [sp, #112]
.LVL234:
	.loc 6 61 0
	ldrb	r5, [r8, #1]	@ zero_extendqisi2
	ldrb	r1, [r8, #4]	@ zero_extendqisi2
	ldrb	r3, [r8, #5]	@ zero_extendqisi2
	ldrb	lr, [r8, #2]	@ zero_extendqisi2
	ldrb	ip, [r8, #6]	@ zero_extendqisi2
	ldrb	r6, [r8, #3]	@ zero_extendqisi2
	orr	r4, r4, r5, asl #8
	orr	r3, r1, r3, asl #8
	ldrb	r5, [r8, #7]	@ zero_extendqisi2
	orr	r1, r4, lr, asl #16
	orr	r3, r3, ip, asl #16
	orr	lr, r1, r6, asl #24
	orr	ip, r3, r5, asl #24
	.loc 6 62 0
	ldrb	r4, [r8, #8]	@ zero_extendqisi2
.LBE307:
.LBE309:
	.loc 5 695 0 discriminator 1
	add	r1, sp, #8
	mov	r3, #16
.LBB310:
.LBB308:
	.loc 6 61 0
	str	lr, [sp, #136]
	str	ip, [sp, #140]
	.loc 6 62 0
	strb	r4, [sp, #144]
.LVL235:
.LBE308:
.LBE310:
	.loc 5 695 0 discriminator 1
	bl	put_mpeg4_qpel8_v_lowpass(PLT)
.LVL236:
	.loc 5 695 0 is_stmt 0
	add	sp, sp, #156
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.cfi_endproc
.LFE110:
	.size	put_qpel8_mc02_c, .-put_qpel8_mc02_c
	.align	2
	.type	put_qpel8_mc22_c, %function
put_qpel8_mc22_c:
.LFB126:
	.loc 5 695 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL237:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	sub	sp, sp, #80
	.cfi_def_cfa_offset 96
	.loc 5 695 0
	mov	r5, r2
	add	r4, sp, #8
	mov	r2, #9
.LVL238:
	mov	r6, r0
	mov	r3, r5
	mov	r0, r4
.LVL239:
	str	r2, [sp]
	mov	r2, #8
	bl	put_mpeg4_qpel8_h_lowpass(PLT)
.LVL240:
	.loc 5 695 0 is_stmt 0 discriminator 1
	mov	r0, r6
	mov	r1, r4
	mov	r2, r5
	mov	r3, #8
	bl	put_mpeg4_qpel8_v_lowpass(PLT)
.LVL241:
	.loc 5 695 0
	add	sp, sp, #80
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
	.cfi_endproc
.LFE126:
	.size	put_qpel8_mc22_c, .-put_qpel8_mc22_c
	.align	2
	.type	put_qpel16_mc20_c, %function
put_qpel16_mc20_c:
.LFB128:
	.loc 5 695 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL242:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	mov	r3, #16
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 5 695 0
	str	r3, [sp]
	mov	r3, r2
	bl	put_mpeg4_qpel16_h_lowpass(PLT)
.LVL243:
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE128:
	.size	put_qpel16_mc20_c, .-put_qpel16_mc20_c
	.align	2
	.type	put_qpel16_mc02_c, %function
put_qpel16_mc02_c:
.LFB131:
	.loc 5 695 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 416
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL244:
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
.LBB311:
.LBB312:
	.loc 6 82 0
	ldrb	r10, [r1, #1]	@ zero_extendqisi2
	ldrb	r8, [r1]	@ zero_extendqisi2
	ldrb	r5, [r1, #12]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #8
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	.loc 6 85 0
	add	lr, r1, r2
	.loc 6 82 0
	ldrb	r9, [lr, #1]	@ zero_extendqisi2
	ldrb	r3, [r1, r2]	@ zero_extendqisi2
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	fp, [r1, #9]	@ zero_extendqisi2
	ldrb	r7, [r1, #5]	@ zero_extendqisi2
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #8
	ldrb	r10, [r1, #2]	@ zero_extendqisi2
	orr	r3, r3, r9, asl #8
	orr	r7, r4, r7, asl #8
	ldrb	r9, [lr, #2]	@ zero_extendqisi2
	ldrb	r4, [lr, #4]	@ zero_extendqisi2
	orr	r6, r6, fp, asl #8
	orr	r8, r8, r10, asl #16
	ldrb	fp, [lr, #5]	@ zero_extendqisi2
	ldrb	r10, [r1, #10]	@ zero_extendqisi2
	orr	r4, r4, fp, asl #8
	orr	r3, r3, r9, asl #16
	ldrb	fp, [r1, #6]	@ zero_extendqisi2
	ldrb	r9, [lr, #3]	@ zero_extendqisi2
	orr	r6, r6, r10, asl #16
	ldrb	r10, [lr, #6]	@ zero_extendqisi2
	orr	r3, r3, r9, asl #24
	orr	r7, r7, fp, asl #16
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	ldrb	fp, [r1, #14]	@ zero_extendqisi2
	orr	r4, r4, r10, asl #16
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
.LBE312:
.LBE311:
	.loc 5 695 0
	sub	sp, sp, #420
	.cfi_def_cfa_offset 456
.LVL245:
.LBB315:
.LBB313:
	.loc 6 82 0
	orr	r7, r7, r10, asl #24
	orr	r6, r6, r9, asl #24
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	ldrb	r9, [lr, #7]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #16
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	str	r3, [sp]
	orr	r8, r8, fp, asl #24
	add	r3, sp, #16
	.loc 6 85 0
	add	fp, lr, r2
	.loc 6 82 0
	orr	r5, r5, r10, asl #24
	orr	r4, r4, r9, asl #24
	.loc 6 83 0
	ldrb	r10, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	ldr	r9, [sp]
	str	r9, [r3, #16]
	str	r8, [r3, #-8]
	str	r7, [r3, #-4]
	str	r6, [r3, #0]
	str	r5, [r3, #4]
	str	r4, [r3, #20]
	ldrb	r6, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r8, [lr, #13]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r10, [sp, #24]
.LVL246:
	.loc 6 82 0
	ldrb	r1, [lr, #12]	@ zero_extendqisi2
.LVL247:
	ldrb	r10, [fp, #1]	@ zero_extendqisi2
	ldrb	r7, [fp, #5]	@ zero_extendqisi2
	ldrb	r5, [fp, #4]	@ zero_extendqisi2
	orr	r6, r6, r10, asl #8
	orr	r1, r1, r8, asl #8
	ldrb	r10, [fp, #8]	@ zero_extendqisi2
	ldrb	r8, [fp, #9]	@ zero_extendqisi2
	orr	r5, r5, r7, asl #8
	orr	r10, r10, r8, asl #8
	ldrb	r7, [fp, #12]	@ zero_extendqisi2
	ldrb	r8, [fp, #13]	@ zero_extendqisi2
	ldrb	r9, [lr, #8]	@ zero_extendqisi2
	ldrb	r4, [lr, #9]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	str	r7, [sp]
	orr	r4, r9, r4, asl #8
	ldrb	r7, [fp, #2]	@ zero_extendqisi2
	ldrb	r9, [lr, #10]	@ zero_extendqisi2
	ldrb	r8, [lr, #14]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #16
	orr	r6, r6, r7, asl #16
	ldrb	r9, [lr, #11]	@ zero_extendqisi2
	ldrb	r7, [fp, #6]	@ zero_extendqisi2
	orr	r1, r1, r8, asl #16
	ldrb	r8, [fp, #10]	@ zero_extendqisi2
	orr	r5, r5, r7, asl #16
	orr	r4, r4, r9, asl #24
	ldrb	r7, [fp, #14]	@ zero_extendqisi2
	ldr	r9, [sp]
	orr	r10, r10, r8, asl #16
	ldrb	r8, [fp, #3]	@ zero_extendqisi2
	orr	r7, r9, r7, asl #16
	ldrb	r9, [lr, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [fp, #7]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #24
	ldrb	r9, [fp, #11]	@ zero_extendqisi2
	orr	r8, r5, r8, asl #24
	ldrb	r5, [fp, #15]	@ zero_extendqisi2
	orr	r10, r10, r9, asl #24
	.loc 6 85 0
	add	r9, fp, r2
	.loc 6 82 0
	orr	r7, r7, r5, asl #24
	str	r6, [r3, #40]
	.loc 6 83 0
	ldrb	r5, [fp, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	r6, r9, r2
	.loc 6 82 0
	str	r4, [r3, #24]
	str	r1, [r3, #28]
	.loc 6 83 0
	ldrb	r4, [lr, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r8, [r3, #44]
	str	r10, [r3, #48]
	str	r7, [r3, #52]
	ldrb	r1, [lr, r2, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r9, #5]	@ zero_extendqisi2
	ldrb	lr, [fp, r2, asl #1]	@ zero_extendqisi2
.LVL248:
	.loc 6 83 0
	strb	r5, [sp, #72]
	.loc 6 82 0
	ldrb	r7, [r6, #1]	@ zero_extendqisi2
	ldrb	r5, [r9, #4]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r4, [sp, #48]
.LVL249:
	.loc 6 82 0
	ldrb	r10, [r9, #9]	@ zero_extendqisi2
	ldrb	r4, [r9, #8]	@ zero_extendqisi2
	orr	r7, lr, r7, asl #8
	orr	r5, r5, r8, asl #8
	ldrb	lr, [r9, #12]	@ zero_extendqisi2
	ldrb	r8, [r9, #13]	@ zero_extendqisi2
	orr	r10, r4, r10, asl #8
	orr	r8, lr, r8, asl #8
	ldrb	r4, [r6, #4]	@ zero_extendqisi2
	ldrb	lr, [r6, #5]	@ zero_extendqisi2
	ldrb	fp, [r9, #1]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #8
	str	lr, [sp]
	ldrb	r4, [r6, #2]	@ zero_extendqisi2
	ldrb	lr, [r9, #6]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #8
	ldrb	fp, [r9, #2]	@ zero_extendqisi2
	orr	r7, r7, r4, asl #16
	orr	r1, r1, fp, asl #16
	ldrb	r4, [r9, #10]	@ zero_extendqisi2
	ldrb	fp, [r9, #3]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #16
	ldrb	lr, [r9, #14]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #24
	orr	lr, r8, lr, asl #16
	ldr	fp, [sp]
	ldrb	r8, [r6, #3]	@ zero_extendqisi2
	orr	r4, r10, r4, asl #16
	ldrb	r10, [r6, #6]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #24
	orr	fp, fp, r10, asl #16
	ldrb	r8, [r9, #11]	@ zero_extendqisi2
	ldrb	r10, [r9, #7]	@ zero_extendqisi2
	orr	r4, r4, r8, asl #24
	orr	r5, r5, r10, asl #24
	ldrb	r8, [r6, #7]	@ zero_extendqisi2
	ldrb	r10, [r9, #15]	@ zero_extendqisi2
	orr	fp, fp, r8, asl #24
	orr	r10, lr, r10, asl #24
	.loc 6 85 0
	add	lr, r6, r2
	.loc 6 83 0
	ldrb	r8, [r9, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r1, [r3, #64]
	str	r7, [r3, #88]
	str	r5, [r3, #68]
	str	r4, [r3, #72]
	ldrb	r7, [r9, r2, asl #1]	@ zero_extendqisi2
	str	fp, [r3, #92]
	ldrb	r9, [r6, #13]	@ zero_extendqisi2
.LVL250:
	ldrb	fp, [lr, #1]	@ zero_extendqisi2
	ldrb	r4, [r6, #12]	@ zero_extendqisi2
	str	r10, [r3, #76]
	ldrb	r5, [lr, #4]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r8, [sp, #96]
.LVL251:
	.loc 6 82 0
	orr	r7, r7, fp, asl #8
	ldrb	r8, [lr, #5]	@ zero_extendqisi2
	ldrb	fp, [lr, #8]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #8
	ldrb	r9, [lr, #9]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #8
	orr	fp, fp, r9, asl #8
	ldrb	r8, [lr, #12]	@ zero_extendqisi2
	ldrb	r9, [lr, #13]	@ zero_extendqisi2
	ldrb	r10, [r6, #8]	@ zero_extendqisi2
	ldrb	r1, [r6, #9]	@ zero_extendqisi2
	orr	r8, r8, r9, asl #8
	str	r8, [sp]
	orr	r1, r10, r1, asl #8
	ldrb	r8, [lr, #2]	@ zero_extendqisi2
	ldrb	r10, [r6, #10]	@ zero_extendqisi2
	ldrb	r9, [r6, #14]	@ zero_extendqisi2
	orr	r1, r1, r10, asl #16
	orr	r7, r7, r8, asl #16
	ldrb	r10, [r6, #11]	@ zero_extendqisi2
	ldrb	r8, [lr, #6]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #16
	ldrb	r9, [lr, #10]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	orr	r1, r1, r10, asl #24
	ldrb	r8, [lr, #14]	@ zero_extendqisi2
	ldr	r10, [sp]
	orr	fp, fp, r9, asl #16
	ldrb	r9, [lr, #3]	@ zero_extendqisi2
	orr	r8, r10, r8, asl #16
	ldrb	r10, [r6, #15]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #24
	ldrb	r9, [lr, #7]	@ zero_extendqisi2
	orr	r4, r4, r10, asl #24
	ldrb	r10, [lr, #11]	@ zero_extendqisi2
	orr	r9, r5, r9, asl #24
	ldrb	r5, [lr, #15]	@ zero_extendqisi2
	orr	fp, fp, r10, asl #24
	.loc 6 85 0
	add	r10, lr, r2
	.loc 6 82 0
	orr	r8, r8, r5, asl #24
	str	r1, [r3, #96]
	.loc 6 83 0
	ldrb	r5, [lr, #16]	@ zero_extendqisi2
	ldrb	r1, [r6, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r7, [r3, #112]
	.loc 6 85 0
	add	r7, r10, r2
	.loc 6 82 0
	str	r4, [r3, #100]
	str	r8, [r3, #124]
	ldrb	lr, [lr, r2, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r10, #5]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r5, [sp, #144]
	strb	r1, [sp, #120]
.LVL252:
	.loc 6 82 0
	ldrb	r5, [r10, #4]	@ zero_extendqisi2
	ldrb	r1, [r6, r2, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r7, #1]	@ zero_extendqisi2
	ldrb	r4, [r10, #8]	@ zero_extendqisi2
	str	r9, [r3, #116]
	orr	r6, lr, r6, asl #8
	ldrb	r9, [r10, #9]	@ zero_extendqisi2
	ldrb	lr, [r10, #12]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #8
	ldrb	r8, [r10, #13]	@ zero_extendqisi2
	orr	r9, r4, r9, asl #8
	orr	r8, lr, r8, asl #8
	ldrb	r4, [r7, #4]	@ zero_extendqisi2
	ldrb	lr, [r7, #5]	@ zero_extendqisi2
	str	fp, [r3, #120]
	ldrb	fp, [r10, #1]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #8
	str	lr, [sp]
	ldrb	r4, [r7, #2]	@ zero_extendqisi2
	ldrb	lr, [r10, #6]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #8
	ldrb	fp, [r10, #2]	@ zero_extendqisi2
	orr	r6, r6, r4, asl #16
	orr	r1, r1, fp, asl #16
	ldrb	r4, [r10, #10]	@ zero_extendqisi2
	ldrb	fp, [r10, #3]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #16
	ldrb	lr, [r10, #14]	@ zero_extendqisi2
	orr	r4, r9, r4, asl #16
	orr	r1, r1, fp, asl #24
	ldrb	r9, [r7, #6]	@ zero_extendqisi2
	ldr	fp, [sp]
	orr	lr, r8, lr, asl #16
	ldrb	r8, [r7, #3]	@ zero_extendqisi2
	orr	fp, fp, r9, asl #16
	orr	r6, r6, r8, asl #24
	ldrb	r9, [r10, #7]	@ zero_extendqisi2
	ldrb	r8, [r10, #11]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	orr	r8, r4, r8, asl #24
	ldrb	r9, [r10, #15]	@ zero_extendqisi2
	ldrb	r4, [r7, #7]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #24
	orr	fp, fp, r4, asl #24
	.loc 6 85 0
	add	r4, r7, r2
	.loc 6 83 0
	ldrb	r9, [r10, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r1, [r3, #136]
	str	r6, [r3, #160]
	ldrb	r1, [r10, r2, asl #1]	@ zero_extendqisi2
	str	lr, [r3, #148]
	str	r5, [r3, #140]
	ldrb	lr, [r7, #8]	@ zero_extendqisi2
	str	r8, [r3, #144]
	ldrb	r6, [r7, #9]	@ zero_extendqisi2
	ldrb	r8, [r7, #13]	@ zero_extendqisi2
	ldrb	r10, [r4, #1]	@ zero_extendqisi2
.LVL253:
	ldrb	r5, [r7, #12]	@ zero_extendqisi2
	str	fp, [r3, #164]
	.loc 6 83 0
	strb	r9, [sp, #168]
.LVL254:
	.loc 6 82 0
	ldrb	fp, [r4, #5]	@ zero_extendqisi2
	ldrb	r9, [r4, #4]	@ zero_extendqisi2
	orr	r6, lr, r6, asl #8
	orr	r10, r1, r10, asl #8
	ldrb	lr, [r7, #10]	@ zero_extendqisi2
	ldrb	r1, [r4, #8]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #8
	ldrb	r8, [r4, #9]	@ zero_extendqisi2
	orr	lr, r6, lr, asl #16
	orr	r9, r9, fp, asl #8
	orr	r1, r1, r8, asl #8
	ldrb	fp, [r4, #12]	@ zero_extendqisi2
	ldrb	r8, [r4, #13]	@ zero_extendqisi2
	str	lr, [sp]
	ldrb	lr, [r4, #2]	@ zero_extendqisi2
	orr	r8, fp, r8, asl #8
	str	r8, [sp, #4]
	orr	lr, r10, lr, asl #16
	ldrb	r8, [r7, #14]	@ zero_extendqisi2
	ldrb	r10, [r4, #6]	@ zero_extendqisi2
	ldrb	r6, [r7, #11]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	orr	r9, r9, r10, asl #16
	ldrb	r8, [r4, #10]	@ zero_extendqisi2
	ldr	r10, [sp]
	orr	r1, r1, r8, asl #16
	orr	r10, r10, r6, asl #24
	ldrb	r8, [r4, #14]	@ zero_extendqisi2
	ldr	r6, [sp, #4]
	ldrb	fp, [r4, #3]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #16
	ldrb	r8, [r7, #15]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	ldrb	fp, [r4, #7]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #24
	ldrb	r8, [r4, #11]	@ zero_extendqisi2
	orr	r9, r9, fp, asl #24
	ldrb	fp, [r4, #15]	@ zero_extendqisi2
	orr	r8, r1, r8, asl #24
	.loc 6 85 0
	add	r1, r4, r2
	.loc 6 82 0
	orr	r6, r6, fp, asl #24
	.loc 6 83 0
	ldrb	fp, [r4, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	lr, [r3, #184]
	.loc 6 85 0
	add	lr, r1, r2
	.loc 6 82 0
	str	r5, [r3, #172]
	str	r6, [r3, #196]
	ldrb	r5, [r4, r2, asl #1]	@ zero_extendqisi2
	str	r10, [r3, #168]
	str	r9, [r3, #188]
	.loc 6 83 0
	ldrb	r10, [r7, #16]	@ zero_extendqisi2
	.loc 6 82 0
	ldrb	r9, [r1, #5]	@ zero_extendqisi2
	str	r8, [r3, #192]
	.loc 6 83 0
	strb	fp, [sp, #216]
	.loc 6 82 0
	ldrb	r8, [lr, #1]	@ zero_extendqisi2
	ldrb	fp, [r7, r2, asl #1]	@ zero_extendqisi2
	ldrb	r7, [r1, #4]	@ zero_extendqisi2
.LVL255:
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r10, [sp, #192]
.LVL256:
	.loc 6 82 0
	orr	r8, r5, r8, asl #8
	ldrb	r10, [r1, #9]	@ zero_extendqisi2
	ldrb	r5, [r1, #12]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #8
	ldrb	r9, [r1, #13]	@ zero_extendqisi2
	orr	r10, r6, r10, asl #8
	orr	r9, r5, r9, asl #8
	ldrb	r6, [lr, #4]	@ zero_extendqisi2
	ldrb	r5, [lr, #5]	@ zero_extendqisi2
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	orr	r5, r6, r5, asl #8
	str	r5, [sp]
	ldrb	r6, [lr, #2]	@ zero_extendqisi2
	ldrb	r5, [r1, #6]	@ zero_extendqisi2
	orr	r4, fp, r4, asl #8
	ldrb	fp, [r1, #2]	@ zero_extendqisi2
	orr	r8, r8, r6, asl #16
	orr	r4, r4, fp, asl #16
	ldrb	r6, [r1, #10]	@ zero_extendqisi2
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	orr	r7, r7, r5, asl #16
	ldrb	r5, [r1, #14]	@ zero_extendqisi2
	orr	r4, r4, fp, asl #24
	orr	r5, r9, r5, asl #16
	ldr	fp, [sp]
	ldrb	r9, [lr, #3]	@ zero_extendqisi2
	orr	r6, r10, r6, asl #16
	ldrb	r10, [lr, #6]	@ zero_extendqisi2
	orr	r8, r8, r9, asl #24
	orr	fp, fp, r10, asl #16
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r7, r7, r10, asl #24
	orr	r6, r6, r9, asl #24
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	ldrb	r9, [lr, #7]	@ zero_extendqisi2
	orr	r10, r5, r10, asl #24
	orr	fp, fp, r9, asl #24
	.loc 6 85 0
	add	r5, lr, r2
	.loc 6 83 0
	ldrb	r9, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r10, [r3, #220]
	str	r6, [r3, #216]
	ldrb	r10, [lr, #13]	@ zero_extendqisi2
	str	fp, [r3, #236]
	ldrb	r1, [r1, r2, asl #1]	@ zero_extendqisi2
.LVL257:
	ldrb	fp, [r5, #1]	@ zero_extendqisi2
	ldrb	r6, [lr, #12]	@ zero_extendqisi2
	str	r8, [r3, #232]
	.loc 6 83 0
	strb	r9, [sp, #240]
.LVL258:
	.loc 6 82 0
	ldrb	r8, [r5, #4]	@ zero_extendqisi2
	ldrb	r9, [r5, #5]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #8
	orr	r6, r6, r10, asl #8
	ldrb	fp, [r5, #8]	@ zero_extendqisi2
	ldrb	r10, [r5, #9]	@ zero_extendqisi2
	str	r4, [r3, #208]
	str	r7, [r3, #212]
	ldrb	r4, [lr, #9]	@ zero_extendqisi2
	ldrb	r7, [lr, #8]	@ zero_extendqisi2
	orr	fp, fp, r10, asl #8
	orr	r8, r8, r9, asl #8
	ldrb	r10, [r5, #13]	@ zero_extendqisi2
	ldrb	r9, [r5, #12]	@ zero_extendqisi2
	orr	r4, r7, r4, asl #8
	ldrb	r7, [lr, #10]	@ zero_extendqisi2
	orr	r10, r9, r10, asl #8
	ldrb	r9, [r5, #2]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #16
	str	r4, [sp]
	orr	r1, r1, r9, asl #16
	ldrb	r4, [lr, #14]	@ zero_extendqisi2
	ldrb	r9, [r5, #6]	@ zero_extendqisi2
	ldrb	r7, [lr, #11]	@ zero_extendqisi2
	orr	r6, r6, r4, asl #16
	orr	r8, r8, r9, asl #16
	ldrb	r4, [r5, #10]	@ zero_extendqisi2
	ldr	r9, [sp]
	str	r10, [sp, #4]
	orr	r4, fp, r4, asl #16
	ldrb	r10, [r5, #14]	@ zero_extendqisi2
	orr	fp, r9, r7, asl #24
	ldrb	r9, [r5, #3]	@ zero_extendqisi2
	ldr	r7, [sp, #4]
	orr	r1, r1, r9, asl #24
	orr	r10, r7, r10, asl #16
	ldrb	r9, [r5, #7]	@ zero_extendqisi2
	ldrb	r7, [lr, #15]	@ zero_extendqisi2
	orr	r8, r8, r9, asl #24
	orr	r6, r6, r7, asl #24
	ldrb	r9, [r5, #15]	@ zero_extendqisi2
	ldrb	r7, [r5, #11]	@ zero_extendqisi2
	orr	r9, r10, r9, asl #24
	orr	r7, r4, r7, asl #24
	.loc 6 83 0
	ldrb	r10, [r5, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	r4, r5, r2
	.loc 6 82 0
	str	r7, [sp, #280]
	.loc 6 83 0
	strb	r10, [sp, #288]
	.loc 6 82 0
	ldrb	r7, [lr, r2, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r4, #1]	@ zero_extendqisi2
	str	r6, [r3, #244]
	str	r1, [sp, #272]
	.loc 6 83 0
	ldrb	r6, [lr, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	r1, r4, r2
	.loc 6 82 0
	str	fp, [r3, #240]
	str	r8, [sp, #276]
	ldrb	r3, [r4, #4]	@ zero_extendqisi2
	ldrb	r8, [r5, r2, asl #1]	@ zero_extendqisi2
	str	r9, [sp, #284]
	.loc 6 83 0
	strb	r6, [sp, #264]
.LVL259:
	.loc 6 82 0
	ldrb	r9, [r4, #13]	@ zero_extendqisi2
	ldrb	r6, [r4, #5]	@ zero_extendqisi2
	ldrb	lr, [r4, #12]	@ zero_extendqisi2
	ldrb	r5, [r1, #4]	@ zero_extendqisi2
	orr	r7, r7, r10, asl #8
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	fp, [r1, #1]	@ zero_extendqisi2
	orr	r6, r3, r6, asl #8
	orr	lr, lr, r9, asl #8
	ldrb	r3, [r4, #8]	@ zero_extendqisi2
	ldrb	r9, [r4, #9]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #8
	ldrb	r10, [r4, #2]	@ zero_extendqisi2
	orr	r8, r8, fp, asl #8
	orr	r3, r3, r9, asl #8
	ldrb	fp, [r1, #2]	@ zero_extendqisi2
	ldrb	r9, [r4, #6]	@ zero_extendqisi2
	orr	r7, r7, r10, asl #16
	ldrb	r10, [r4, #14]	@ zero_extendqisi2
	orr	r8, r8, fp, asl #16
	orr	r6, r6, r9, asl #16
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	ldrb	r10, [r4, #10]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	orr	r3, r3, r10, asl #16
	ldrb	r9, [r4, #3]	@ zero_extendqisi2
	ldrb	r10, [r4, #7]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #24
	orr	r6, r6, r10, asl #24
	ldrb	r9, [r1, #7]	@ zero_extendqisi2
	ldrb	r10, [r4, #11]	@ zero_extendqisi2
	orr	r8, r8, fp, asl #24
	orr	r9, r5, r9, asl #24
	ldrb	fp, [r4, #15]	@ zero_extendqisi2
	orr	r10, r3, r10, asl #24
	.loc 6 85 0
	add	r3, r1, r2
	.loc 6 82 0
	str	r7, [sp, #296]
	str	r9, [sp, #324]
	ldrb	r7, [r4, r2, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r3, #1]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	str	r6, [sp, #300]
	.loc 6 83 0
	ldrb	fp, [r4, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	lr, [sp, #308]
	str	r10, [sp, #304]
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	ldrb	r10, [r3, #5]	@ zero_extendqisi2
	ldrb	r6, [r1, #13]	@ zero_extendqisi2
	ldrb	r5, [r3, #4]	@ zero_extendqisi2
	ldrb	r4, [r3, #12]	@ zero_extendqisi2
.LVL260:
	orr	r7, r7, r9, asl #8
	ldrb	r9, [r3, #13]	@ zero_extendqisi2
	str	r8, [sp, #320]
	.loc 6 83 0
	strb	fp, [sp, #312]
.LVL261:
	.loc 6 82 0
	ldrb	r8, [r1, #8]	@ zero_extendqisi2
	ldrb	fp, [r1, #9]	@ zero_extendqisi2
	orr	r6, lr, r6, asl #8
	orr	r5, r5, r10, asl #8
	ldrb	lr, [r3, #8]	@ zero_extendqisi2
	ldrb	r10, [r3, #9]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #8
	ldrb	r9, [r3, #2]	@ zero_extendqisi2
	orr	r8, r8, fp, asl #8
	orr	lr, lr, r10, asl #8
	ldrb	fp, [r1, #10]	@ zero_extendqisi2
	ldrb	r10, [r1, #14]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #16
	ldrb	r9, [r3, #6]	@ zero_extendqisi2
	orr	r8, r8, fp, asl #16
	orr	r6, r6, r10, asl #16
	ldrb	fp, [r1, #11]	@ zero_extendqisi2
	ldrb	r10, [r3, #14]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	ldrb	r9, [r3, #10]	@ zero_extendqisi2
	orr	r8, r8, fp, asl #24
	orr	lr, lr, r9, asl #16
	ldrb	r9, [r1, #15]	@ zero_extendqisi2
	orr	r4, r4, r10, asl #16
	ldrb	r10, [r3, #3]	@ zero_extendqisi2
	str	r8, [sp]
	orr	r6, r6, r9, asl #24
	ldrb	r8, [r3, #7]	@ zero_extendqisi2
	ldrb	r9, [r3, #11]	@ zero_extendqisi2
	orr	r7, r7, r10, asl #24
	ldrb	r10, [r3, #15]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #24
	orr	lr, lr, r9, asl #24
	.loc 6 85 0
	add	r8, r3, r2
	.loc 6 82 0
	ldr	r9, [sp]
	orr	r4, r4, r10, asl #24
	str	r9, [sp, #328]
	str	r7, [sp, #344]
	.loc 6 83 0
	ldrb	r9, [r3, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	r7, r8, r2
	.loc 6 82 0
	ldrb	fp, [r8, #1]	@ zero_extendqisi2
	ldrb	r10, [r7, #5]	@ zero_extendqisi2
	str	r4, [sp, #356]
	str	lr, [sp, #352]
	ldrb	r4, [r1, r2, asl #1]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #360]
	.loc 6 82 0
	ldrb	lr, [r7, #4]	@ zero_extendqisi2
	ldrb	r9, [r8, #5]	@ zero_extendqisi2
	ldrb	ip, [r8, #4]	@ zero_extendqisi2
	str	r6, [sp, #332]
	str	r5, [sp, #348]
	.loc 6 83 0
	ldrb	r6, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	ldrb	r5, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r3, r2, asl #1]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r6, [sp, #336]
.LVL262:
	.loc 6 82 0
	ldrb	r1, [r8, #8]	@ zero_extendqisi2
	ldrb	r6, [r8, #9]	@ zero_extendqisi2
	orr	r4, r4, fp, asl #8
	orr	lr, lr, r10, asl #8
	ldrb	fp, [r8, #12]	@ zero_extendqisi2
	ldrb	r10, [r8, #13]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #8
	ldrb	r9, [r8, #2]	@ zero_extendqisi2
	orr	r3, r3, r5, asl #8
	ldrb	r5, [r7, #2]	@ zero_extendqisi2
	orr	r10, fp, r10, asl #8
	orr	r1, r1, r6, asl #8
	orr	r9, r4, r9, asl #16
	ldrb	r6, [r7, #6]	@ zero_extendqisi2
	ldrb	fp, [r8, #6]	@ zero_extendqisi2
	ldrb	r4, [r8, #10]	@ zero_extendqisi2
	orr	r3, r3, r5, asl #16
	ldrb	r5, [r7, #3]	@ zero_extendqisi2
	orr	r1, r1, r4, asl #16
	ldrb	r4, [r7, #7]	@ zero_extendqisi2
	orr	r3, r3, r5, asl #24
	orr	lr, lr, r6, asl #16
	ldrb	r6, [r8, #14]	@ zero_extendqisi2
	str	r3, [sp]
	orr	lr, lr, r4, asl #24
	ldrb	r3, [r8, #11]	@ zero_extendqisi2
	ldrb	r4, [r8, #15]	@ zero_extendqisi2
	orr	r6, r10, r6, asl #16
	ldrb	r10, [r8, #7]	@ zero_extendqisi2
	orr	r1, r1, r3, asl #24
	orr	r6, r6, r4, asl #24
	.loc 6 83 0
	ldrb	r3, [r8, #16]	@ zero_extendqisi2
	.loc 6 82 0
	ldr	r4, [sp]
	orr	ip, ip, fp, asl #16
	orr	ip, ip, r10, asl #24
	str	r4, [sp, #392]
	str	r1, [sp, #376]
	ldrb	r4, [r7, #12]	@ zero_extendqisi2
	ldrb	r1, [r7, #8]	@ zero_extendqisi2
	str	r6, [sp, #380]
	.loc 6 83 0
	strb	r3, [sp, #384]
.LVL263:
	.loc 6 82 0
	ldrb	r6, [r7, #13]	@ zero_extendqisi2
	ldrb	r3, [r7, #9]	@ zero_extendqisi2
	str	lr, [sp, #396]
	str	ip, [sp, #372]
	ldrb	lr, [r7, #14]	@ zero_extendqisi2
	ldrb	ip, [r7, #10]	@ zero_extendqisi2
	ldrb	fp, [r8, #3]	@ zero_extendqisi2
	orr	r3, r1, r3, asl #8
	orr	r1, r4, r6, asl #8
	ldrb	r4, [r7, #11]	@ zero_extendqisi2
	ldrb	r6, [r7, #15]	@ zero_extendqisi2
	orr	r1, r1, lr, asl #16
	orr	r3, r3, ip, asl #16
	orr	ip, r3, r4, asl #24
	orr	lr, r1, r6, asl #24
	.loc 6 83 0
	ldrb	r4, [r7, #16]	@ zero_extendqisi2
	.loc 6 82 0
	orr	r9, r9, fp, asl #24
.LBE313:
.LBE315:
	.loc 5 695 0 discriminator 1
	add	r1, sp, #8
	mov	r3, #24
.LBB316:
.LBB314:
	.loc 6 82 0
	str	r9, [sp, #368]
	str	lr, [sp, #404]
	str	ip, [sp, #400]
	.loc 6 83 0
	strb	r4, [sp, #408]
.LVL264:
.LBE314:
.LBE316:
	.loc 5 695 0 discriminator 1
	bl	put_mpeg4_qpel16_v_lowpass(PLT)
.LVL265:
	.loc 5 695 0 is_stmt 0
	add	sp, sp, #420
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.cfi_endproc
.LFE131:
	.size	put_qpel16_mc02_c, .-put_qpel16_mc02_c
	.align	2
	.type	put_qpel16_mc22_c, %function
put_qpel16_mc22_c:
.LFB147:
	.loc 5 695 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 272
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL266:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	sub	sp, sp, #280
	.cfi_def_cfa_offset 296
	.loc 5 695 0
	mov	r5, r2
	add	r4, sp, #8
	mov	r2, #17
.LVL267:
	mov	r6, r0
	mov	r3, r5
	mov	r0, r4
.LVL268:
	str	r2, [sp]
	mov	r2, #16
	bl	put_mpeg4_qpel16_h_lowpass(PLT)
.LVL269:
	.loc 5 695 0 is_stmt 0 discriminator 1
	mov	r0, r6
	mov	r1, r4
	mov	r2, r5
	mov	r3, #16
	bl	put_mpeg4_qpel16_v_lowpass(PLT)
.LVL270:
	.loc 5 695 0
	add	sp, sp, #280
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
	.cfi_endproc
.LFE147:
	.size	put_qpel16_mc22_c, .-put_qpel16_mc22_c
	.align	2
	.type	put_no_rnd_mpeg4_qpel8_h_lowpass, %function
put_no_rnd_mpeg4_qpel8_h_lowpass:
.LFB148:
	.loc 5 696 0 is_stmt 1
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL271:
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
	.loc 5 696 0
	ldr	r7, [sp, #36]
	.loc 5 696 0 is_stmt 0 discriminator 1
	cmp	r7, #0
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	ldr	r6, .L108
	add	r8, r1, #1
.LPIC17:
	ldr	r6, [pc, r6]		@ tls_load_dot_plus_eight
	mov	r9, #0
	.loc 5 696 0 discriminator 3
	add	r6, r6, #1024
.LVL272:
.L104:
	ldrb	fp, [r1, #2]	@ zero_extendqisi2
	ldrb	ip, [r8, #-1]	@ zero_extendqisi2
	ldrb	r10, [r1, #1]	@ zero_extendqisi2
	ldrb	lr, [r1, #3]	@ zero_extendqisi2
	add	r4, ip, fp
	sub	r4, r4, r4, asl #2
	add	ip, ip, r10
	mov	r5, r4, asl #1
	add	r10, r10, lr
	add	r4, ip, ip, asl #2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	add	r4, r5, r4, asl #2
	add	r10, r10, r10, asl #1
	add	lr, r4, r10
	add	ip, fp, ip
	rsb	ip, ip, lr
	add	ip, ip, #15
	ldrb	ip, [r6, ip, asr #5]	@ zero_extendqisi2
	strb	ip, [r0]
	ldrb	r5, [r8, #-1]	@ zero_extendqisi2
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	r10, [r1, #1]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
	add	fp, r5, fp
	sub	fp, fp, fp, asl #2
	add	r4, r10, r4
	mov	ip, fp, asl #1
	add	r5, r5, lr
	ldrb	fp, [r1, #5]	@ zero_extendqisi2
	add	r4, r4, r4, asl #2
	add	r4, ip, r4, asl #2
	add	r5, r5, r5, asl #1
	add	lr, r4, r5
	add	ip, r10, fp
	rsb	ip, ip, lr
	add	ip, ip, #15
	ldrb	ip, [r6, ip, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #1]
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	ldrb	r5, [r1, #4]	@ zero_extendqisi2
	ldrb	ip, [r1, #2]	@ zero_extendqisi2
	ldrb	lr, [r1, #3]	@ zero_extendqisi2
	ldrb	fp, [r8, #-1]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	add	r5, r4, r5
	add	lr, ip, lr
	sub	r5, r5, r5, asl #2
	ldrb	ip, [r1, #6]	@ zero_extendqisi2
	mov	r5, r5, asl #1
	add	lr, lr, lr, asl #2
	add	r10, fp, r10
	add	r4, r5, lr, asl #2
	add	r10, r10, r10, asl #1
	add	lr, r4, r10
	add	ip, fp, ip
	rsb	ip, ip, lr
	add	ip, ip, #15
	ldrb	ip, [r6, ip, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #2]
	ldrb	lr, [r1, #2]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #3]	@ zero_extendqisi2
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	fp, [r1, #6]	@ zero_extendqisi2
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	add	r10, lr, r10
	sub	r10, r10, r10, asl #2
	add	r4, ip, r4
	add	r5, r5, fp
	mov	ip, r10, asl #1
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	ldrb	r10, [r8, #-1]	@ zero_extendqisi2
	add	r4, r4, r4, asl #2
	add	r4, ip, r4, asl #2
	add	r5, r5, r5, asl #1
	add	lr, r4, r5
	add	ip, r10, fp
	rsb	ip, ip, lr
	add	ip, ip, #15
	ldrb	ip, [r6, ip, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #3]
	ldrb	lr, [r1, #3]	@ zero_extendqisi2
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	ldrb	r4, [r1, #5]	@ zero_extendqisi2
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	ldrb	r5, [r1, #2]	@ zero_extendqisi2
	add	r10, lr, r10
	sub	r10, r10, r10, asl #2
	add	r4, ip, r4
	add	r5, r5, fp
	mov	ip, r10, asl #1
	ldrb	fp, [r1, #8]	@ zero_extendqisi2
	ldrb	r10, [r1, #1]	@ zero_extendqisi2
	add	r4, r4, r4, asl #2
	add	r4, ip, r4, asl #2
	add	r5, r5, r5, asl #1
	add	lr, r4, r5
	add	ip, r10, fp
	rsb	ip, ip, lr
	add	ip, ip, #15
	ldrb	ip, [r6, ip, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #4]
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	r5, [r1, #7]	@ zero_extendqisi2
	ldrb	ip, [r1, #5]	@ zero_extendqisi2
	ldrb	lr, [r1, #6]	@ zero_extendqisi2
	ldrb	fp, [r1, #8]	@ zero_extendqisi2
	ldrb	r10, [r1, #3]	@ zero_extendqisi2
	add	r5, r4, r5
	add	lr, ip, lr
	sub	r5, r5, r5, asl #2
	ldrb	ip, [r1, #2]	@ zero_extendqisi2
	mov	r5, r5, asl #1
	add	lr, lr, lr, asl #2
	add	r10, r10, fp
	add	r4, r5, lr, asl #2
	add	r10, r10, r10, asl #1
	add	lr, r4, r10
	add	ip, fp, ip
	rsb	ip, ip, lr
	add	ip, ip, #15
	ldrb	ip, [r6, ip, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #5]
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
	ldrb	fp, [r1, #5]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	ldrb	r4, [r1, #6]	@ zero_extendqisi2
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
	add	fp, fp, r5
	sub	fp, fp, fp, asl #2
	add	r4, r4, r10
	mov	ip, fp, asl #1
	add	r5, r5, lr
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	add	r4, r4, r4, asl #2
	add	r4, ip, r4, asl #2
	add	r5, r5, r5, asl #1
	add	lr, r4, r5
	add	ip, r10, fp
	rsb	ip, ip, lr
	add	ip, ip, #15
	ldrb	ip, [r6, ip, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #6]
	ldrb	ip, [r1, #8]	@ zero_extendqisi2
	ldrb	fp, [r1, #6]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	ldrb	lr, [r1, #5]	@ zero_extendqisi2
	add	r4, ip, fp
	sub	r4, r4, r4, asl #2
	add	ip, r10, ip
	mov	r5, r4, asl #1
	add	r10, r10, lr
	add	r4, ip, ip, asl #2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	add	r4, r5, r4, asl #2
	add	r10, r10, r10, asl #1
	add	lr, r4, r10
	add	ip, fp, ip
	rsb	ip, ip, lr
	add	r9, r9, #1
.LVL273:
	add	ip, ip, #15
	ldrb	ip, [r6, ip, asr #5]	@ zero_extendqisi2
	.loc 5 696 0 discriminator 1
	cmp	r9, r7
	.loc 5 696 0 discriminator 3
	strb	ip, [r0, #7]
	add	r8, r8, r3
	add	r1, r1, r3
.LVL274:
	add	r0, r0, r2
.LVL275:
	.loc 5 696 0 discriminator 1
	bne	.L104
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L109:
	.align	2
.L108:
	.word	ff_crop_tab(GOT_PREL)+(.-(.LPIC17+8))
	.cfi_endproc
.LFE148:
	.size	put_no_rnd_mpeg4_qpel8_h_lowpass, .-put_no_rnd_mpeg4_qpel8_h_lowpass
	.align	2
	.type	put_no_rnd_mpeg4_qpel8_v_lowpass, %function
put_no_rnd_mpeg4_qpel8_v_lowpass:
.LFB149:
	.loc 5 696 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL276:
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
	add	ip, r1, r3
	sub	sp, sp, #84
	.cfi_def_cfa_offset 120
	str	ip, [sp, #16]
	add	ip, ip, r3
	mov	lr, ip
	.loc 5 696 0
	str	r0, [sp, #8]
.LVL277:
	str	ip, [sp, #20]
	mov	ip, r0
	add	r0, r0, r2
.LVL278:
	mov	r4, r0
	str	r0, [sp, #60]
	add	r0, lr, r3
	mov	lr, r0
	str	r0, [sp, #24]
	add	r0, r4, r2
	mov	r4, r0
	str	r0, [sp, #56]
	add	r0, lr, r3
	mov	lr, r0
	str	r0, [sp, #28]
	add	r0, r4, r2
	add	lr, lr, r3
	mov	r4, r0
	mov	r5, lr
	str	lr, [sp, #32]
	add	lr, r4, r2
	mov	r4, lr
	str	lr, [sp, #48]
	add	lr, r5, r3
	mov	r5, lr
	str	r0, [sp, #52]
	str	lr, [sp, #72]
	ldr	r0, .L114
	add	lr, r4, r2
	mov	r4, lr
	str	lr, [sp, #44]
	add	lr, r5, r3
	mov	r5, lr
.LPIC19:
	ldr	r0, [pc, r0]		@ tls_load_dot_plus_eight
	str	lr, [sp, #68]
	add	lr, r4, r2
	add	r3, r5, r3
.LVL279:
	mov	r4, lr
	str	r3, [sp, #64]
	add	r3, r4, r2
.LBB317:
	.loc 5 696 0 is_stmt 0 discriminator 3
	add	r2, r0, #1024
.LVL280:
	sub	r1, r1, #1
.LVL281:
	str	r3, [sp, #36]
	mov	r10, r2
	add	r3, ip, #8
	str	lr, [sp, #40]
	str	r1, [sp, #12]
	str	r3, [sp, #76]
.LVL282:
.L111:
	ldr	r3, [sp, #12]
	ldr	r7, [sp, #72]
	ldrb	r1, [r3, #1]!	@ zero_extendqisi2
.LVL283:
	str	r3, [sp, #12]
.LVL284:
	ldr	r3, [sp, #20]
.LVL285:
	ldrb	r8, [r3], #1	@ zero_extendqisi2
	str	r3, [sp, #20]
	ldr	r3, [sp, #16]
	add	r5, r1, r8
	ldrb	r9, [r3], #1	@ zero_extendqisi2
	str	r3, [sp, #16]
.LVL286:
	ldr	r3, [sp, #24]
	add	r4, r1, r9
	ldrb	fp, [r3], #1	@ zero_extendqisi2
	str	r3, [sp, #24]
.LVL287:
	ldr	r3, [sp, #28]
	sub	r5, r5, r5, asl #2
	ldrb	lr, [r3], #1	@ zero_extendqisi2
	str	r3, [sp, #28]
.LVL288:
	ldr	r3, [sp, #32]
	mov	r5, r5, asl #1
	add	r2, r9, fp
	add	r4, r4, r4, asl #2
	ldrb	r0, [r3], #1	@ zero_extendqisi2
	add	r4, r5, r4, asl #2
	add	r2, r2, r2, asl #1
	str	r3, [sp, #32]
.LVL289:
	add	ip, r1, fp
	ldrb	r3, [r7], #1	@ zero_extendqisi2
	add	r2, r4, r2
	add	r4, r8, lr
	str	r3, [sp, #4]
	rsb	r2, r4, r2
	add	r3, r9, r8
	ldr	r4, [sp, #64]
	sub	ip, ip, ip, asl #2
	mov	ip, ip, asl #1
	add	r3, r3, r3, asl #2
	add	r3, ip, r3, asl #2
	ldrb	ip, [r4], #1	@ zero_extendqisi2
	ldr	r5, [sp, #68]
	str	r4, [sp, #64]
	add	r4, r1, lr
	add	r6, r9, lr
	add	r4, r4, r4, asl #1
	str	r7, [sp, #72]
.LVL290:
	sub	r6, r6, r6, asl #2
	ldrb	r7, [r5], #1	@ zero_extendqisi2
	add	r3, r3, r4
	add	r4, r8, fp
	str	r5, [sp, #68]
.LVL291:
	add	r4, r4, r4, asl #2
	mov	r5, r6, asl #1
	add	r6, r5, r4, asl #2
	add	r4, r1, r0
	add	r5, r8, r0
	str	r7, [sp]
.LVL292:
	add	r2, r2, #15
	ldr	r7, [sp, #8]
	add	r4, r4, r4, asl #1
	ldrb	r2, [r10, r2, asr #5]	@ zero_extendqisi2
	add	r4, r6, r4
	sub	r5, r5, r5, asl #2
	add	r6, fp, lr
	strb	r2, [r7], #1
	add	r6, r6, r6, asl #2
	add	r2, r9, r0
	mov	r5, r5, asl #1
	add	r5, r5, r6, asl #2
	rsb	r3, r2, r3
	ldr	r6, [sp, #4]
	str	r7, [sp, #8]
.LVL293:
	ldr	r2, [sp, #4]
	add	r6, fp, r6
	add	r2, r9, r2
	add	r2, r2, r2, asl #1
	ldr	r7, [sp]
.LVL294:
	add	r5, r5, r2
	sub	r6, r6, r6, asl #2
	add	r2, lr, r0
	add	r2, r2, r2, asl #2
	mov	r6, r6, asl #1
	add	r6, r6, r2, asl #2
	add	r3, r3, #15
	add	r2, lr, r7
	ldr	r7, [sp, #60]
	ldrb	r3, [r10, r3, asr #5]	@ zero_extendqisi2
	strb	r3, [r7], #1
	str	r7, [sp, #60]
	ldr	r7, [sp, #4]
	sub	r2, r2, r2, asl #2
	add	r3, r1, r7
	rsb	r4, r3, r4
	ldr	r3, [sp]
	mov	r2, r2, asl #1
	add	r1, r1, r3
.LVL295:
	add	r3, r8, r3
	add	r3, r3, r3, asl #1
	add	r6, r6, r3
	add	r3, r0, r7
	rsb	r5, r1, r5
	add	r3, r3, r3, asl #2
	add	r1, fp, ip
	add	r2, r2, r3, asl #2
	add	r1, r1, r1, asl #1
	add	r2, r2, r1
	mov	r1, r7
	ldr	r7, [sp]
	add	r9, r9, ip
.LVL296:
	add	r3, r0, ip
	rsb	r6, r9, r6
	add	r0, r0, r7
.LVL297:
	add	r9, r1, r7
	add	r4, r4, #15
	ldr	r7, [sp, #56]
	ldrb	r4, [r10, r4, asr #5]	@ zero_extendqisi2
	sub	r3, r3, r3, asl #2
	strb	r4, [r7], #1
	add	r9, r9, r9, asl #2
	str	r7, [sp, #56]
	mov	r3, r3, asl #1
	ldr	r7, [sp]
	add	r5, r5, #15
	add	r3, r3, r9, asl #2
	mov	r9, r1
	add	r1, r1, ip
	ldrb	r4, [r10, r5, asr #5]	@ zero_extendqisi2
	sub	r1, r1, r1, asl #2
	add	r5, r7, ip
	mov	r1, r1, asl #1
	add	r5, r5, r5, asl #2
	add	r5, r1, r5, asl #2
	ldr	r1, [sp, #52]
	add	r8, r8, ip
.LVL298:
	strb	r4, [r1], #1
	add	r6, r6, #15
	str	r1, [sp, #52]
	ldr	r1, [sp, #48]
	ldrb	r4, [r10, r6, asr #5]	@ zero_extendqisi2
	add	ip, lr, ip
.LVL299:
	rsb	r2, r8, r2
	strb	r4, [r1], #1
	add	ip, ip, ip, asl #1
	str	r1, [sp, #48]
	add	r2, r2, #15
	ldr	r1, [sp, #44]
	ldrb	r2, [r10, r2, asr #5]	@ zero_extendqisi2
	add	r7, fp, r7
	add	r3, r3, ip
	strb	r2, [r1], #1
	rsb	r3, r7, r3
.LBE317:
	.loc 5 696 0 discriminator 1
	ldr	r2, [sp, #76]
	ldr	r7, [sp, #8]
.LBB318:
	.loc 5 696 0 discriminator 3
	add	r0, r0, r0, asl #1
	add	r0, r5, r0
	add	lr, lr, r9
.LVL300:
	add	r3, r3, #15
	rsb	r0, lr, r0
.LBE318:
	.loc 5 696 0 discriminator 1
	cmp	r7, r2
.LBB319:
	.loc 5 696 0 discriminator 3
	ldr	r2, [sp, #40]
	ldrb	r3, [r10, r3, asr #5]	@ zero_extendqisi2
	add	r0, r0, #15
	strb	r3, [r2], #1
	str	r1, [sp, #44]
	ldrb	r3, [r10, r0, asr #5]	@ zero_extendqisi2
	str	r2, [sp, #40]
	ldr	r2, [sp, #36]
	strb	r3, [r2], #1
	str	r2, [sp, #36]
.LVL301:
.LBE319:
	.loc 5 696 0 discriminator 1
	bne	.L111
	.loc 5 696 0
	add	sp, sp, #84
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL302:
.L115:
	.align	2
.L114:
	.word	ff_crop_tab(GOT_PREL)+(.-(.LPIC19+8))
	.cfi_endproc
.LFE149:
	.size	put_no_rnd_mpeg4_qpel8_v_lowpass, .-put_no_rnd_mpeg4_qpel8_v_lowpass
	.align	2
	.type	put_no_rnd_mpeg4_qpel16_h_lowpass, %function
put_no_rnd_mpeg4_qpel16_h_lowpass:
.LFB150:
	.loc 5 696 0 is_stmt 1
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL303:
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
	.loc 5 696 0 discriminator 1
	ldr	ip, [sp, #36]
	cmp	ip, #0
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	ldr	r7, .L122
	add	fp, r1, r3
.LPIC21:
	ldr	r7, [pc, r7]		@ tls_load_dot_plus_eight
	mov	r8, fp
	.loc 5 696 0 is_stmt 0 discriminator 3
	add	r7, r7, #1024
	.loc 5 696 0 discriminator 1
	mov	r10, #0
	rsb	r9, r3, #0
.LVL304:
.L118:
	.loc 5 696 0 discriminator 3
	ldrb	lr, [r8, r9]	@ zero_extendqisi2
	ldrb	r6, [r1, #2]	@ zero_extendqisi2
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	ldrb	ip, [r1, #3]	@ zero_extendqisi2
	add	r5, lr, r6
	sub	r5, r5, r5, asl #2
	add	lr, lr, r4
	mov	r5, r5, asl #1
	add	ip, r4, ip
	add	lr, lr, lr, asl #2
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	add	lr, r5, lr, asl #2
	add	ip, ip, ip, asl #1
	add	lr, lr, ip
	add	r6, r6, r4
	rsb	r6, r6, lr
	add	r6, r6, #15
	ldrb	ip, [r7, r6, asr #5]	@ zero_extendqisi2
	strb	ip, [r0]
	ldrb	r5, [r8, r9]	@ zero_extendqisi2
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	ldrb	r6, [r1, #1]	@ zero_extendqisi2
	ldrb	lr, [r1, #2]	@ zero_extendqisi2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	add	r4, r5, r4
	add	lr, r6, lr
	sub	r4, r4, r4, asl #2
	mov	r4, r4, asl #1
	add	ip, r5, ip
	add	lr, lr, lr, asl #2
	ldrb	r5, [r1, #5]	@ zero_extendqisi2
	add	lr, r4, lr, asl #2
	add	ip, ip, ip, asl #1
	add	lr, lr, ip
	add	r6, r6, r5
	rsb	r6, r6, lr
	add	r6, r6, #15
	ldrb	ip, [r7, r6, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #1]
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	ldrb	r6, [r1, #2]	@ zero_extendqisi2
	ldrb	lr, [r1, #3]	@ zero_extendqisi2
	ldrb	r5, [r8, r9]	@ zero_extendqisi2
	add	r4, r4, ip
	ldrb	ip, [r1, #5]	@ zero_extendqisi2
	add	lr, r6, lr
	sub	r4, r4, r4, asl #2
	ldrb	r6, [r1, #6]	@ zero_extendqisi2
	mov	r4, r4, asl #1
	add	ip, r5, ip
	add	lr, lr, lr, asl #2
	add	lr, r4, lr, asl #2
	add	ip, ip, ip, asl #1
	add	lr, lr, ip
	add	r5, r5, r6
	rsb	r5, r5, lr
	add	r5, r5, #15
	ldrb	ip, [r7, r5, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #2]
	ldrb	ip, [r1, #5]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	ldrb	r6, [r1, #3]	@ zero_extendqisi2
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	add	r4, r4, ip
	ldrb	ip, [r1, #6]	@ zero_extendqisi2
	add	lr, r6, lr
	sub	r4, r4, r4, asl #2
	ldrb	r6, [r1, #7]	@ zero_extendqisi2
	mov	r4, r4, asl #1
	add	ip, r5, ip
	add	lr, lr, lr, asl #2
	ldrb	r5, [r8, r9]	@ zero_extendqisi2
	add	lr, r4, lr, asl #2
	add	ip, ip, ip, asl #1
	add	lr, lr, ip
	add	r5, r5, r6
	rsb	r5, r5, lr
	add	r5, r5, #15
	ldrb	ip, [r7, r5, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #3]
	ldrb	ip, [r1, #6]	@ zero_extendqisi2
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	ldrb	r6, [r1, #4]	@ zero_extendqisi2
	ldrb	lr, [r1, #5]	@ zero_extendqisi2
	ldrb	r5, [r1, #2]	@ zero_extendqisi2
	add	r4, r4, ip
	ldrb	ip, [r1, #7]	@ zero_extendqisi2
	add	lr, r6, lr
	sub	r4, r4, r4, asl #2
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	mov	r4, r4, asl #1
	add	ip, r5, ip
	add	lr, lr, lr, asl #2
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	add	lr, r4, lr, asl #2
	add	ip, ip, ip, asl #1
	add	lr, lr, ip
	add	r5, r5, r6
	rsb	r5, r5, lr
	add	r5, r5, #15
	ldrb	ip, [r7, r5, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #4]
	ldrb	ip, [r1, #7]	@ zero_extendqisi2
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	r6, [r1, #5]	@ zero_extendqisi2
	ldrb	lr, [r1, #6]	@ zero_extendqisi2
	ldrb	r5, [r1, #3]	@ zero_extendqisi2
	add	r4, r4, ip
	ldrb	ip, [r1, #8]	@ zero_extendqisi2
	add	lr, r6, lr
	sub	r4, r4, r4, asl #2
	ldrb	r6, [r1, #9]	@ zero_extendqisi2
	mov	r4, r4, asl #1
	add	ip, r5, ip
	add	lr, lr, lr, asl #2
	ldrb	r5, [r1, #2]	@ zero_extendqisi2
	add	lr, r4, lr, asl #2
	add	ip, ip, ip, asl #1
	add	lr, lr, ip
	add	r5, r5, r6
	rsb	r5, r5, lr
	add	r5, r5, #15
	ldrb	ip, [r7, r5, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #5]
	ldrb	ip, [r1, #8]	@ zero_extendqisi2
	ldrb	r4, [r1, #5]	@ zero_extendqisi2
	ldrb	r6, [r1, #6]	@ zero_extendqisi2
	ldrb	lr, [r1, #7]	@ zero_extendqisi2
	ldrb	r5, [r1, #4]	@ zero_extendqisi2
	add	r4, r4, ip
	ldrb	ip, [r1, #9]	@ zero_extendqisi2
	add	lr, r6, lr
	sub	r4, r4, r4, asl #2
	ldrb	r6, [r1, #10]	@ zero_extendqisi2
	mov	r4, r4, asl #1
	add	ip, r5, ip
	add	lr, lr, lr, asl #2
	ldrb	r5, [r1, #3]	@ zero_extendqisi2
	add	lr, r4, lr, asl #2
	add	ip, ip, ip, asl #1
	add	lr, lr, ip
	add	r5, r5, r6
	rsb	r5, r5, lr
	add	r5, r5, #15
	ldrb	ip, [r7, r5, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #6]
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	ldrb	r4, [r1, #7]	@ zero_extendqisi2
	ldrb	lr, [r1, #6]	@ zero_extendqisi2
	ldrb	ip, [r1, #9]	@ zero_extendqisi2
	ldrb	r5, [r1, #5]	@ zero_extendqisi2
	add	lr, lr, ip
	ldrb	ip, [r1, #10]	@ zero_extendqisi2
	add	r4, r4, r6
	sub	lr, lr, lr, asl #2
	ldrb	r6, [r1, #11]	@ zero_extendqisi2
	mov	lr, lr, asl #1
	add	ip, r5, ip
	add	r4, r4, r4, asl #2
	ldrb	r5, [r1, #4]	@ zero_extendqisi2
	add	r4, lr, r4, asl #2
	add	ip, ip, ip, asl #1
	add	r4, r4, ip
	add	r5, r5, r6
	rsb	r5, r5, r4
	add	r5, r5, #15
	ldrb	ip, [r7, r5, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #7]
	ldrb	ip, [r1, #10]	@ zero_extendqisi2
	ldrb	r5, [r1, #7]	@ zero_extendqisi2
	ldrb	r4, [r1, #8]	@ zero_extendqisi2
	ldrb	lr, [r1, #9]	@ zero_extendqisi2
	ldrb	r6, [r1, #6]	@ zero_extendqisi2
	add	r5, r5, ip
	ldrb	ip, [r1, #11]	@ zero_extendqisi2
	add	lr, r4, lr
	sub	r5, r5, r5, asl #2
	ldrb	r4, [r1, #5]	@ zero_extendqisi2
	add	lr, lr, lr, asl #2
	add	ip, r6, ip
	mov	r5, r5, asl #1
	ldrb	r6, [r1, #12]	@ zero_extendqisi2
	add	r5, r5, lr, asl #2
	add	ip, ip, ip, asl #1
	add	r5, r5, ip
	add	r4, r4, r6
	rsb	r4, r4, r5
	add	r4, r4, #15
	ldrb	ip, [r7, r4, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #8]
	ldrb	ip, [r1, #11]	@ zero_extendqisi2
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
	ldrb	r4, [r1, #9]	@ zero_extendqisi2
	ldrb	lr, [r1, #10]	@ zero_extendqisi2
	ldrb	r6, [r1, #7]	@ zero_extendqisi2
	add	r5, r5, ip
	ldrb	ip, [r1, #12]	@ zero_extendqisi2
	add	lr, r4, lr
	sub	r5, r5, r5, asl #2
	ldrb	r4, [r1, #6]	@ zero_extendqisi2
	add	lr, lr, lr, asl #2
	add	ip, r6, ip
	mov	r5, r5, asl #1
	ldrb	r6, [r1, #13]	@ zero_extendqisi2
	add	r5, r5, lr, asl #2
	add	ip, ip, ip, asl #1
	add	r5, r5, ip
	add	r4, r4, r6
	rsb	r4, r4, r5
	add	r4, r4, #15
	ldrb	ip, [r7, r4, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #9]
	ldrb	ip, [r1, #12]	@ zero_extendqisi2
	ldrb	r5, [r1, #9]	@ zero_extendqisi2
	ldrb	r4, [r1, #10]	@ zero_extendqisi2
	ldrb	lr, [r1, #11]	@ zero_extendqisi2
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	add	r5, r5, ip
	ldrb	ip, [r1, #13]	@ zero_extendqisi2
	add	lr, r4, lr
	sub	r5, r5, r5, asl #2
	ldrb	r4, [r1, #7]	@ zero_extendqisi2
	add	lr, lr, lr, asl #2
	add	ip, r6, ip
	mov	r5, r5, asl #1
	ldrb	r6, [r1, #14]	@ zero_extendqisi2
	add	r5, r5, lr, asl #2
	add	ip, ip, ip, asl #1
	add	r5, r5, ip
	add	r4, r4, r6
	rsb	r4, r4, r5
	add	r4, r4, #15
	ldrb	ip, [r7, r4, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #10]
	ldrb	ip, [r1, #13]	@ zero_extendqisi2
	ldrb	r5, [r1, #10]	@ zero_extendqisi2
	ldrb	r4, [r1, #11]	@ zero_extendqisi2
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	ldrb	r6, [r1, #9]	@ zero_extendqisi2
	add	r5, r5, ip
	ldrb	ip, [r1, #14]	@ zero_extendqisi2
	add	lr, r4, lr
	sub	r5, r5, r5, asl #2
	ldrb	r4, [r1, #8]	@ zero_extendqisi2
	add	lr, lr, lr, asl #2
	add	ip, r6, ip
	mov	r5, r5, asl #1
	ldrb	r6, [r1, #15]	@ zero_extendqisi2
	add	r5, r5, lr, asl #2
	add	ip, ip, ip, asl #1
	add	r5, r5, ip
	add	r4, r4, r6
	rsb	r4, r4, r5
	add	r4, r4, #15
	ldrb	ip, [r7, r4, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #11]
	ldrb	ip, [r1, #14]	@ zero_extendqisi2
	ldrb	r5, [r1, #11]	@ zero_extendqisi2
	ldrb	r4, [r1, #12]	@ zero_extendqisi2
	ldrb	lr, [r1, #13]	@ zero_extendqisi2
	ldrb	r6, [r1, #10]	@ zero_extendqisi2
	add	r5, r5, ip
	ldrb	ip, [r1, #15]	@ zero_extendqisi2
	add	lr, r4, lr
	sub	r5, r5, r5, asl #2
	ldrb	r4, [r1, #9]	@ zero_extendqisi2
	add	lr, lr, lr, asl #2
	add	ip, r6, ip
	mov	r5, r5, asl #1
	ldrb	r6, [r1, #16]	@ zero_extendqisi2
	add	r5, r5, lr, asl #2
	add	ip, ip, ip, asl #1
	add	r5, r5, ip
	add	r4, r4, r6
	rsb	r4, r4, r5
	add	r4, r4, #15
	ldrb	ip, [r7, r4, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #12]
	ldrb	ip, [r1, #15]	@ zero_extendqisi2
	ldrb	r4, [r1, #12]	@ zero_extendqisi2
	ldrb	r6, [r1, #13]	@ zero_extendqisi2
	ldrb	lr, [r1, #14]	@ zero_extendqisi2
	ldrb	r5, [r1, #16]	@ zero_extendqisi2
	add	r4, r4, ip
	ldrb	ip, [r1, #11]	@ zero_extendqisi2
	add	lr, r6, lr
	sub	r4, r4, r4, asl #2
	ldrb	r6, [r1, #10]	@ zero_extendqisi2
	mov	r4, r4, asl #1
	add	ip, ip, r5
	add	lr, lr, lr, asl #2
	add	lr, r4, lr, asl #2
	add	ip, ip, ip, asl #1
	add	lr, lr, ip
	add	r5, r5, r6
	rsb	r5, r5, lr
	add	r5, r5, #15
	ldrb	ip, [r7, r5, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #13]
	ldrb	r6, [r1, #15]	@ zero_extendqisi2
	ldrb	r4, [r1, #16]	@ zero_extendqisi2
	ldrb	ip, [r1, #13]	@ zero_extendqisi2
	ldrb	r5, [r1, #14]	@ zero_extendqisi2
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	add	ip, ip, r4
	add	r5, r5, r6
	sub	ip, ip, ip, asl #2
	add	r5, r5, r5, asl #2
	add	lr, r4, lr
	mov	ip, ip, asl #1
	ldrb	r4, [r1, #11]	@ zero_extendqisi2
	add	ip, ip, r5, asl #2
	add	lr, lr, lr, asl #1
	add	lr, ip, lr
	add	r6, r6, r4
	rsb	r6, r6, lr
	add	r6, r6, #15
	ldrb	ip, [r7, r6, asr #5]	@ zero_extendqisi2
	strb	ip, [r0, #14]
	ldrb	ip, [r1, #16]	@ zero_extendqisi2
	ldrb	r5, [r1, #14]	@ zero_extendqisi2
	ldrb	r6, [r1, #15]	@ zero_extendqisi2
	add	lr, ip, r5
	ldrb	r4, [r1, #13]	@ zero_extendqisi2
	sub	lr, lr, lr, asl #2
	add	ip, r6, ip
	ldrb	r1, [r1, #12]	@ zero_extendqisi2
.LVL305:
	mov	lr, lr, asl #1
	add	ip, ip, ip, asl #2
	add	r4, r6, r4
	add	ip, lr, ip, asl #2
	add	r4, r4, r4, asl #1
	add	r5, r5, r1
	add	r4, ip, r4
	.loc 5 696 0 discriminator 1
	ldr	r1, [sp, #36]
	.loc 5 696 0 discriminator 3
	rsb	r5, r5, r4
	add	r10, r10, #1
.LVL306:
	add	r5, r5, #15
	.loc 5 696 0 discriminator 1
	cmp	r10, r1
	.loc 5 696 0 discriminator 3
	ldrb	r1, [r7, r5, asr #5]	@ zero_extendqisi2
	strb	r1, [r0, #15]
	add	r8, r8, r3
	mov	r1, fp
	add	r0, r0, r2
.LVL307:
	.loc 5 696 0 discriminator 1
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL308:
	add	fp, fp, r3
.LVL309:
	b	.L118
.L123:
	.align	2
.L122:
	.word	ff_crop_tab(GOT_PREL)+(.-(.LPIC21+8))
	.cfi_endproc
.LFE150:
	.size	put_no_rnd_mpeg4_qpel16_h_lowpass, .-put_no_rnd_mpeg4_qpel16_h_lowpass
	.align	2
	.type	put_no_rnd_mpeg4_qpel16_v_lowpass, %function
put_no_rnd_mpeg4_qpel16_v_lowpass:
.LFB151:
	.loc 5 696 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 184
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL310:
	mov	ip, r2, asl #2
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
	mov	lr, r2, asl #1
	mov	r4, ip
	add	fp, lr, r2
	add	r7, r4, r2
	sub	sp, sp, #188
	.cfi_def_cfa_offset 224
.LVL311:
	mov	r9, r7
	mov	r10, fp, asl #2
	str	r10, [sp, #24]
	str	r9, [sp, #56]
	mov	r10, r9, asl #1
	mov	r9, r3, asl #3
	str	lr, [sp, #36]
	str	r9, [sp, #8]
	ldr	lr, .L128
	str	lr, [sp, #16]
	.loc 5 696 0
	str	r1, [sp, #4]
	mov	lr, r10
	ldr	r1, [sp, #8]
.LVL312:
	mov	r10, r3, asl #4
	str	lr, [sp, #72]
	add	lr, lr, r2
	str	r10, [sp, #20]
	str	r0, [sp, #44]
.LVL313:
	str	lr, [sp, #76]
	ldr	r0, [sp, #24]
	rsb	lr, r3, r1
	mov	r10, r2, asl #3
	str	lr, [sp, #28]
	add	lr, r1, r3
	ldr	r1, [sp, #20]
	str	r10, [sp, #12]
	add	r0, r0, r2
	str	lr, [sp, #32]
	sub	r0, r0, #1
	rsb	lr, r3, r1
	ldr	r1, [sp, #12]
	str	r0, [sp, #92]
	ldr	r0, [sp, #24]
	str	r4, [sp, #48]
	str	lr, [sp, #40]
	rsb	lr, r2, r1
	str	lr, [sp, #64]
	add	lr, r1, r2
	sub	r1, r0, #1
	ldr	r0, [sp, #48]
	str	lr, [sp, #68]
	rsb	lr, r2, r2, asl #4
	str	lr, [sp, #96]
	str	r1, [sp, #84]
	ldr	lr, [sp, #16]
	sub	r1, r0, #1
	ldr	r0, [sp, #56]
.LPIC23:
	ldr	lr, [pc, lr]		@ tls_load_dot_plus_eight
	str	r1, [sp, #52]
	sub	r1, r0, #1
	str	lr, [sp, #16]
	ldr	lr, [sp, #36]
	str	r1, [sp, #60]
	ldr	r0, [sp, #76]
	mov	r8, r3, asl #1
	sub	r1, r0, #1
	ldr	r0, [sp, #72]
	add	ip, r8, r3
	str	r1, [sp, #80]
	sub	r1, r0, #1
	str	r1, [sp, #72]
	sub	r1, ip, #1
	str	r1, [sp, #24]
	ldr	r1, [sp, #4]
	mov	r7, ip, asl #2
	add	ip, r1, ip, asl #1
	sub	r1, fp, #1
	str	r1, [sp, #48]
	ldr	r1, [sp, #44]
	mov	r6, r3, asl #2
	add	fp, r1, fp, asl #1
	str	fp, [sp, #76]
	ldr	fp, [sp, #28]
	add	r5, r6, r3
	sub	r0, fp, #1
	str	r0, [sp, #28]
	ldr	r0, [sp, #4]
	mov	r4, r5, asl #1
	add	fp, r0, fp, asl #1
	ldr	r0, [sp, #32]
	add	r10, r7, r3
	sub	r0, r0, #1
	str	r0, [sp, #36]
	ldr	r0, [sp, #8]
	add	r9, r4, r3
	sub	r0, r0, #1
	str	r0, [sp, #32]
	ldr	r0, [sp, #40]
	sub	r3, r3, #1
.LVL314:
	sub	r0, r0, #1
	str	r0, [sp, #40]
	ldr	r0, [sp, #20]
	str	r3, [sp, #8]
	sub	r0, r0, #1
	str	r0, [sp, #20]
	ldr	r0, [sp, #64]
	sub	r8, r8, #1
	sub	r3, r0, #1
.LVL315:
	add	r0, r1, r0, asl #1
	str	r0, [sp, #112]
	ldr	r0, [sp, #68]
	sub	r10, r10, #1
	sub	r0, r0, #1
	str	r0, [sp, #88]
	ldr	r0, [sp, #12]
	sub	r7, r7, #1
	sub	r0, r0, #1
	str	r0, [sp, #12]
	ldr	r0, [sp, #96]
	sub	r6, r6, #1
	sub	r0, r0, #1
	str	r0, [sp, #144]
	ldr	r0, [sp, #4]
	sub	r5, r5, #1
	add	r8, r0, r8
	add	r5, r0, r5
	str	r8, [sp, #56]
	add	r7, r0, r7
	add	r8, r0, r10
	add	r6, r0, r6
	sub	r9, r9, #1
	sub	r4, r4, #1
	str	r8, [sp, #160]
	str	r7, [sp, #164]
	str	r6, [sp, #64]
	str	r5, [sp, #68]
	add	r5, r0, r9
	add	r4, r0, r4
	sub	lr, lr, #1
	str	r5, [sp, #168]
	mov	r5, r0
	ldr	r0, [sp, #92]
	str	r4, [sp, #172]
	add	r4, r1, lr
	str	r4, [sp, #140]
	add	r4, r1, r0
	ldr	r0, [sp, #84]
	str	r4, [sp, #96]
	add	r4, r1, r0
	ldr	r0, [sp, #52]
	str	r4, [sp, #100]
	add	r4, r1, r0
	ldr	r0, [sp, #60]
	str	r4, [sp, #132]
	add	r4, r1, r0
	ldr	r0, [sp, #80]
	str	r4, [sp, #128]
	add	r4, r1, r0
	ldr	r0, [sp, #72]
	str	r4, [sp, #104]
	add	r4, r1, r0
	ldr	r0, [sp, #24]
	str	r4, [sp, #108]
	add	r4, r5, r0
	ldr	r0, [sp, #48]
	sub	ip, ip, #1
	str	ip, [sp, #72]
	add	ip, r1, r0
	ldr	r0, [sp, #76]
	str	ip, [sp, #136]
	sub	ip, r0, #1
	ldr	r0, [sp, #28]
	str	ip, [sp, #124]
	add	ip, r5, r0
	ldr	r0, [sp, #36]
	str	ip, [sp, #76]
	sub	ip, fp, #1
	str	ip, [sp, #156]
	add	ip, r5, r0
	ldr	r0, [sp, #32]
	str	ip, [sp, #84]
	add	ip, r5, r0
	ldr	r0, [sp, #40]
	str	ip, [sp, #80]
	add	ip, r5, r0
	ldr	r0, [sp, #20]
	str	ip, [sp, #152]
	add	ip, r5, r0
	str	r4, [sp, #60]
	str	ip, [sp, #148]
	ldr	r0, [sp, #112]
	add	r3, r1, r3
	str	r3, [sp, #120]
	sub	r3, r0, #1
	ldr	r0, [sp, #88]
	str	r3, [sp, #92]
	add	r3, r1, r0
	ldr	r0, [sp, #12]
	ldr	lr, [sp, #8]
	str	r3, [sp, #112]
	add	r3, r1, r0
	ldr	r0, [sp, #144]
	add	ip, r5, lr
	sub	r2, r2, #1
.LVL316:
	str	r3, [sp, #116]
.LBB320:
	.loc 5 696 0 is_stmt 0 discriminator 3
	ldr	lr, [sp, #16]
	add	r3, r1, r0
	str	r3, [sp, #88]
	add	r3, r1, r2
	str	ip, [sp, #52]
	str	r3, [sp, #144]
	sub	ip, r5, #1
	add	r3, lr, #1024
	add	r2, r1, #16
.LVL317:
	str	ip, [sp, #48]
	str	r2, [sp, #180]
	str	r3, [sp, #4]
.LVL318:
.L125:
	ldr	r3, [sp, #48]
	ldrb	r0, [r3, #1]!	@ zero_extendqisi2
.LVL319:
	str	r3, [sp, #48]
.LVL320:
	ldr	r3, [sp, #56]
.LVL321:
	ldrb	r7, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #56]
	ldr	r3, [sp, #52]
	add	ip, r0, r7
	ldrb	r8, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #52]
.LVL322:
	ldr	r3, [sp, #60]
	add	r1, r0, r8
	ldrb	r6, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #60]
.LVL323:
	ldr	r3, [sp, #64]
	sub	ip, ip, ip, asl #2
	ldrb	r5, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #64]
.LVL324:
	ldr	r3, [sp, #68]
	mov	ip, ip, asl #1
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #68]
	ldr	r3, [sp, #72]
	add	r1, r1, r1, asl #2
	ldrb	r4, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #72]
	ldr	r3, [sp, #76]
	add	r1, ip, r1, asl #2
	ldrb	ip, [r3, #1]!	@ zero_extendqisi2
	add	r10, r0, r6
	str	r3, [sp, #76]
	ldr	r3, [sp, #80]
	mov	lr, r2
.LVL325:
	sub	r10, r10, r10, asl #2
	add	r2, r8, r7
.LVL326:
	add	r9, r8, r6
	str	ip, [sp, #8]
.LVL327:
	add	r2, r2, r2, asl #2
	ldrb	ip, [r3, #1]!	@ zero_extendqisi2
	mov	r10, r10, asl #1
	add	r10, r10, r2, asl #2
	add	r9, r9, r9, asl #1
	add	r2, r0, r5
	str	r3, [sp, #80]
.LVL328:
	ldr	r3, [sp, #84]
	add	r1, r1, r9
	add	r2, r2, r2, asl #1
	add	r9, r7, r5
	add	fp, r8, r5
	add	r2, r10, r2
	rsb	r1, r9, r1
	ldrb	r9, [r3, #1]!	@ zero_extendqisi2
	add	r10, r7, lr
	str	r9, [sp, #36]
	str	r2, [sp, #176]
	add	r9, r7, r6
	sub	fp, fp, fp, asl #2
	str	r3, [sp, #84]
.LVL329:
	ldr	r3, [sp, #172]
	mov	fp, fp, asl #1
	sub	r10, r10, r10, asl #2
	add	r9, r9, r9, asl #2
	add	r9, fp, r9, asl #2
	mov	fp, r10, asl #1
	ldrb	r10, [r3, #1]!	@ zero_extendqisi2
	str	r10, [sp, #16]
	add	r10, r0, lr
	add	r10, r10, r10, asl #1
	add	r9, r9, r10
	add	r10, r6, r5
	add	r10, r10, r10, asl #2
	add	r10, fp, r10, asl #2
	str	r4, [sp, #12]
	add	fp, r6, r4
	ldr	r4, [sp, #4]
.LVL330:
	str	r3, [sp, #172]
.LVL331:
	add	r1, r1, #15
	ldr	r3, [sp, #168]
	ldrb	r1, [r4, r1, asr #5]	@ zero_extendqisi2
	ldr	r4, [sp, #164]
	ldr	r2, [sp, #160]
	str	lr, [sp, #24]
	ldrb	lr, [r3, #1]!	@ zero_extendqisi2
.LVL332:
	str	r3, [sp, #168]
.LVL333:
	ldrb	r3, [r4, #1]!	@ zero_extendqisi2
	str	r4, [sp, #164]
.LVL334:
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	str	r2, [sp, #160]
.LVL335:
	ldr	r2, [sp, #156]
	str	r4, [sp, #32]
.LVL336:
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	str	r2, [sp, #156]
.LVL337:
	ldr	r2, [sp, #152]
	str	r4, [sp, #20]
.LVL338:
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	str	r2, [sp, #152]
.LVL339:
	ldr	r2, [sp, #148]
	str	r4, [sp, #28]
.LVL340:
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	str	r4, [sp, #40]
	ldr	r4, [sp, #44]
	str	r2, [sp, #148]
.LVL341:
	strb	r1, [r4], #1
	str	r4, [sp, #44]
.LVL342:
	ldr	r4, [sp, #24]
.LVL343:
	ldr	r2, [sp, #176]
	add	r1, r8, r4
	rsb	r2, r1, r2
	ldr	r1, [sp, #12]
	add	r2, r2, #15
	add	r1, r8, r1
	add	r1, r1, r1, asl #1
	add	r10, r10, r1
	add	r1, r5, r4
	ldr	r4, [sp, #4]
	sub	fp, fp, fp, asl #2
	ldrb	r2, [r4, r2, asr #5]	@ zero_extendqisi2
	ldr	r4, [sp, #144]
	add	r1, r1, r1, asl #2
	strb	r2, [r4, #1]!
	str	r4, [sp, #144]
	ldr	r4, [sp, #12]
	mov	fp, fp, asl #1
	add	r2, r0, r4
	rsb	r9, r2, r9
	ldr	r2, [sp, #8]
	add	fp, fp, r1, asl #2
	add	r0, r0, r2
.LVL344:
	add	r2, r7, r2
	ldr	r1, [sp, #8]
	add	r2, r2, r2, asl #1
	add	fp, fp, r2
	ldr	r2, [sp, #24]
	add	r1, r5, r1
	add	r2, r2, r4
	sub	r1, r1, r1, asl #2
	ldr	r4, [sp, #4]
	rsb	r10, r0, r10
	add	r2, r2, r2, asl #2
	add	r0, r6, ip
	mov	r1, r1, asl #1
	add	r1, r1, r2, asl #2
	add	r0, r0, r0, asl #1
	ldr	r2, [sp, #24]
	add	r9, r9, #15
	ldrb	r9, [r4, r9, asr #5]	@ zero_extendqisi2
	add	r1, r1, r0
	ldr	r4, [sp, #12]
	ldr	r0, [sp, #8]
	add	r2, r2, ip
	add	r0, r4, r0
	sub	r2, r2, r2, asl #2
	add	r8, r8, ip
.LVL345:
	add	r0, r0, r0, asl #2
	mov	r2, r2, asl #1
	rsb	fp, r8, fp
	add	r2, r2, r0, asl #2
	ldr	r8, [sp, #36]
	ldr	r0, [sp, #12]
	mov	r4, r8
	add	r7, r7, r8
.LVL346:
	add	r8, r0, r8
	sub	r8, r8, r8, asl #2
	mov	r0, r8, asl #1
	ldr	r8, [sp, #140]
	add	r10, r10, #15
	strb	r9, [r8, #1]!
	str	r8, [sp, #140]
	ldr	r8, [sp, #4]
	rsb	r1, r7, r1
	ldrb	r9, [r8, r10, asr #5]	@ zero_extendqisi2
	mov	r7, r4
	add	r8, r5, r4
	ldr	r4, [sp, #8]
	add	r8, r8, r8, asl #1
	ldr	r10, [sp, #16]
	add	r2, r2, r8
	add	r8, r4, ip
	add	r8, r8, r8, asl #2
	add	r6, r6, r10
.LVL347:
	add	r0, r0, r8, asl #2
	mov	r8, r10
	add	r10, r4, r10
	ldr	r4, [sp, #136]
	add	fp, fp, #15
	strb	r9, [r4, #1]!
	ldr	r9, [sp, #24]
	str	r4, [sp, #136]
	ldr	r4, [sp, #4]
	add	r9, r9, r8
	ldrb	fp, [r4, fp, asr #5]	@ zero_extendqisi2
	sub	r10, r10, r10, asl #2
	mov	r4, r7
	add	r7, ip, r7
	add	r9, r9, r9, asl #1
	add	r7, r7, r7, asl #2
	mov	r10, r10, asl #1
	add	r0, r0, r9
	add	r10, r10, r7, asl #2
	ldr	r7, [sp, #12]
	ldr	r9, [sp, #132]
	rsb	r2, r6, r2
	strb	fp, [r9, #1]!
	str	r9, [sp, #132]
	ldr	r9, [sp, #16]
	add	r6, ip, lr
	add	fp, r4, r9
	sub	r6, r6, r6, asl #2
	add	fp, fp, fp, asl #2
	mov	r6, r6, asl #1
	add	r8, r7, lr
	add	r6, r6, fp, asl #2
	ldr	fp, [sp, #16]
	mov	r7, r4
	add	r8, r8, r8, asl #1
	ldr	r4, [sp, #4]
	add	r5, r5, lr
.LVL348:
	add	r9, r7, r3
	add	r10, r10, r8
	add	r7, fp, lr
	mov	r8, lr
	add	r1, r1, #15
	ldr	lr, [sp, #128]
.LVL349:
	ldrb	r1, [r4, r1, asr #5]	@ zero_extendqisi2
	strb	r1, [lr, #1]!
	rsb	r0, r5, r0
	str	lr, [sp, #128]
	ldr	r5, [sp, #24]
	ldr	lr, [sp, #32]
	add	r4, r5, r3
	add	r1, fp, lr
	ldr	r5, [sp, #8]
	ldr	fp, [sp, #4]
	sub	r9, r9, r9, asl #2
	add	r7, r7, r7, asl #2
	add	r2, r2, #15
	mov	r9, r9, asl #1
	ldrb	r2, [fp, r2, asr #5]	@ zero_extendqisi2
	add	r5, r5, r3
	add	fp, ip, lr
	rsb	r10, r4, r10
	str	ip, [sp, #24]
.LVL350:
	mov	r4, lr
	mov	ip, lr
.LVL351:
	add	r9, r9, r7, asl #2
	ldr	lr, [sp, #12]
	ldr	r7, [sp, #124]
	add	r5, r5, r5, asl #1
	strb	r2, [r7, #1]!
	add	lr, lr, r4
	add	r6, r6, r5
	add	r4, r8, r3
	str	r8, [sp, #12]
.LVL352:
	mov	r5, r8
	str	r7, [sp, #124]
	ldr	r8, [sp, #20]
.LVL353:
	ldr	r7, [sp, #36]
	add	r5, r5, r8
.LVL354:
	add	r2, r7, r8
	rsb	r6, lr, r6
	add	r8, r3, ip
	ldr	lr, [sp, #20]
	ldr	ip, [sp, #8]
	add	fp, fp, fp, asl #1
	ldr	r7, [sp, #4]
	add	ip, ip, lr
	add	r9, r9, fp
	ldr	lr, [sp, #28]
	ldr	fp, [sp, #16]
	add	r0, r0, #15
	ldrb	r0, [r7, r0, asr #5]	@ zero_extendqisi2
	sub	r1, r1, r1, asl #2
	add	r7, r3, lr
	add	lr, fp, lr
	ldr	fp, [sp, #120]
	add	r4, r4, r4, asl #2
	mov	r1, r1, asl #1
	strb	r0, [fp, #1]!
	add	r1, r1, r4, asl #2
	str	fp, [sp, #120]
	ldr	r4, [sp, #32]
	ldr	fp, [sp, #20]
	add	r10, r10, #15
	add	r0, r4, fp
	ldr	fp, [sp, #4]
	sub	r5, r5, r5, asl #2
	ldrb	r10, [fp, r10, asr #5]	@ zero_extendqisi2
	ldr	fp, [sp, #40]
	add	r2, r2, r2, asl #1
	add	r8, r8, r8, asl #2
	add	r6, r6, #15
	mov	r5, r5, asl #1
	str	r6, [sp, #8]
	rsb	r9, ip, r9
	ldr	r6, [sp, #28]
	add	fp, r4, fp
	ldr	ip, [sp, #24]
	ldr	r4, [sp, #12]
	add	r1, r1, r2
	add	r5, r5, r8, asl #2
	ldr	r2, [sp, #40]
	ldr	r8, [sp, #20]
	add	ip, ip, r6
	add	r2, r4, r2
	add	r4, r8, r6
	ldr	r6, [sp, #116]
	add	lr, lr, lr, asl #1
	strb	r10, [r6, #1]!
	mov	r10, r8
	ldr	r8, [sp, #40]
	str	r6, [sp, #116]
	add	r10, r10, r8
	ldmib	sp, {r6, r8}
	rsb	r1, ip, r1
	ldrb	r6, [r6, r8, asr #5]	@ zero_extendqisi2
	ldr	ip, [sp, #40]
	ldr	r8, [sp, #36]
	add	r5, r5, lr
	sub	r7, r7, r7, asl #2
	ldr	lr, [sp, #28]
	add	r8, r8, ip
	add	r0, r0, r0, asl #2
	mov	r7, r7, asl #1
	str	r8, [sp, #8]
	add	r7, r7, r0, asl #2
	add	r8, lr, ip
	mov	r0, ip
	add	lr, r3, ip
	ldr	ip, [sp, #112]
	add	r9, r9, #15
	strb	r6, [ip, #1]!
	str	ip, [sp, #112]
	ldr	ip, [sp, #4]
	add	r2, r2, r2, asl #1
	ldrb	r6, [ip, r9, asr #5]	@ zero_extendqisi2
	ldr	r9, [sp, #8]
	ldr	ip, [sp, #108]
	rsb	r5, r9, r5
	ldr	r9, [sp, #16]
	sub	fp, fp, fp, asl #2
	add	r4, r4, r4, asl #2
	add	r9, r9, r0
	add	r7, r7, r2
	ldr	r0, [sp, #32]
	ldr	r2, [sp, #28]
	mov	fp, fp, asl #1
	sub	r10, r10, r10, asl #2
	strb	r6, [ip, #1]!
	add	fp, fp, r4, asl #2
	add	r8, r8, r8, asl #2
	str	ip, [sp, #108]
	mov	r10, r10, asl #1
	ldr	r6, [sp, #4]
	ldr	r4, [sp, #12]
	add	r0, r0, r2
	add	r10, r10, r8, asl #2
	ldr	r8, [sp, #20]
	add	ip, r4, r2
	add	r0, r0, r0, asl #1
	ldr	r2, [sp, #104]
	add	r1, r1, #15
	ldrb	r1, [r6, r1, asr #5]	@ zero_extendqisi2
	add	r10, r10, r0
	add	r5, r5, #15
	add	r0, r3, r8
	ldr	r3, [sp, #100]
.LVL355:
	strb	r1, [r2, #1]!
	rsb	r7, r9, r7
	str	r2, [sp, #104]
	ldrb	r2, [r6, r5, asr #5]	@ zero_extendqisi2
	strb	r2, [r3, #1]!
	add	r7, r7, #15
	str	r3, [sp, #100]
	ldr	r3, [sp, #96]
	ldrb	r2, [r6, r7, asr #5]	@ zero_extendqisi2
	add	lr, lr, lr, asl #1
	strb	r2, [r3, #1]!
	add	fp, fp, lr
	str	r3, [sp, #96]
.LBE320:
	.loc 5 696 0 discriminator 1
	ldr	r4, [sp, #44]
	ldr	r3, [sp, #180]
.LBB321:
	.loc 5 696 0 discriminator 3
	rsb	fp, ip, fp
	add	fp, fp, #15
.LBE321:
	.loc 5 696 0 discriminator 1
	cmp	r4, r3
.LBB322:
	.loc 5 696 0 discriminator 3
	ldr	r3, [sp, #92]
	ldrb	r2, [r6, fp, asr #5]	@ zero_extendqisi2
	rsb	r10, r0, r10
	strb	r2, [r3, #1]!
	add	r10, r10, #15
	str	r3, [sp, #92]
	ldr	r3, [sp, #88]
	ldrb	r2, [r6, r10, asr #5]	@ zero_extendqisi2
	strb	r2, [r3, #1]!
	str	r3, [sp, #88]
.LVL356:
.LBE322:
	.loc 5 696 0 discriminator 1
	bne	.L125
	.loc 5 696 0
	add	sp, sp, #188
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L129:
	.align	2
.L128:
	.word	ff_crop_tab(GOT_PREL)+(.-(.LPIC23+8))
	.cfi_endproc
.LFE151:
	.size	put_no_rnd_mpeg4_qpel16_v_lowpass, .-put_no_rnd_mpeg4_qpel16_v_lowpass
	.align	2
	.type	put_no_rnd_qpel8_mc20_c, %function
put_no_rnd_qpel8_mc20_c:
.LFB153:
	.loc 5 696 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL357:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	mov	r3, #8
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 5 696 0
	str	r3, [sp]
	mov	r3, r2
	bl	put_no_rnd_mpeg4_qpel8_h_lowpass(PLT)
.LVL358:
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE153:
	.size	put_no_rnd_qpel8_mc20_c, .-put_no_rnd_qpel8_mc20_c
	.align	2
	.type	put_no_rnd_qpel8_mc02_c, %function
put_no_rnd_qpel8_mc02_c:
.LFB156:
	.loc 5 696 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL359:
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
.LBB323:
.LBB324:
	.loc 6 64 0
	add	lr, r1, r2
	add	ip, lr, r2
	.loc 6 61 0
	ldrb	r7, [r1, r2]	@ zero_extendqisi2
	ldrb	r5, [ip, #4]	@ zero_extendqisi2
	ldrb	r9, [lr, #1]	@ zero_extendqisi2
	ldrb	r8, [ip, #5]	@ zero_extendqisi2
	ldrb	r6, [lr, #4]	@ zero_extendqisi2
	ldrb	r10, [lr, #5]	@ zero_extendqisi2
	orr	r8, r5, r8, asl #8
	orr	r7, r7, r9, asl #8
	ldrb	r5, [r1]	@ zero_extendqisi2
	ldrb	r9, [r1, #1]	@ zero_extendqisi2
	ldrb	r4, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	fp, [ip, #1]	@ zero_extendqisi2
	orr	r10, r6, r10, asl #8
	orr	r9, r5, r9, asl #8
	ldrb	r6, [r1, #4]	@ zero_extendqisi2
	ldrb	r5, [r1, #5]	@ zero_extendqisi2
.LBE324:
.LBE323:
	.loc 5 696 0
	sub	sp, sp, #156
	.cfi_def_cfa_offset 192
.LVL360:
.LBB327:
.LBB325:
	.loc 6 61 0
	orr	r5, r6, r5, asl #8
	orr	r4, r4, fp, asl #8
	ldrb	r6, [ip, #6]	@ zero_extendqisi2
	ldrb	fp, [ip, #2]	@ zero_extendqisi2
	str	r5, [sp, #4]
	ldrb	r5, [lr, #2]	@ zero_extendqisi2
	orr	r8, r8, r6, asl #16
	orr	r4, r4, fp, asl #16
	ldrb	r6, [lr, #6]	@ zero_extendqisi2
	ldrb	fp, [ip, #3]	@ zero_extendqisi2
	orr	r7, r7, r5, asl #16
	ldrb	r5, [r1, #2]	@ zero_extendqisi2
	orr	r4, r4, fp, asl #24
	orr	r6, r10, r6, asl #16
	ldr	fp, [sp, #4]
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	r5, r9, r5, asl #16
	ldrb	r9, [ip, #7]	@ zero_extendqisi2
	orr	r10, fp, r10, asl #16
	ldrb	fp, [lr, #3]	@ zero_extendqisi2
	orr	r9, r8, r9, asl #24
	ldrb	r8, [lr, #7]	@ zero_extendqisi2
	orr	r7, r7, fp, asl #24
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [r1, #7]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #24
	.loc 6 64 0
	add	fp, ip, r2
	.loc 6 61 0
	orr	r10, r10, r8, asl #24
	str	r4, [sp, #40]
	.loc 6 62 0
	ldrb	r8, [r1, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r4, fp, r2
	.loc 6 62 0
	ldrb	r1, [lr, #8]	@ zero_extendqisi2
.LVL361:
	.loc 6 61 0
	str	r7, [sp, #24]
	str	r6, [sp, #28]
	str	r5, [sp, #8]
	str	r10, [sp, #12]
	ldrb	r7, [fp, #1]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r1, [sp, #32]
	.loc 6 61 0
	str	r9, [sp, #44]
	ldrb	r1, [lr, r2, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r4, #5]	@ zero_extendqisi2
	ldrb	r5, [r4, #4]	@ zero_extendqisi2
	ldrb	r6, [ip, r2, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r4, #1]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r8, [sp, #16]
.LVL362:
	.loc 6 61 0
	ldrb	lr, [fp, #4]	@ zero_extendqisi2
	ldrb	r8, [fp, #5]	@ zero_extendqisi2
	orr	r1, r1, r7, asl #8
	orr	r5, r5, r9, asl #8
	ldrb	r7, [fp, #2]	@ zero_extendqisi2
	ldrb	r9, [r4, #6]	@ zero_extendqisi2
	orr	r6, r6, r10, asl #8
	orr	lr, lr, r8, asl #8
	ldrb	r10, [r4, #2]	@ zero_extendqisi2
	ldrb	r8, [fp, #6]	@ zero_extendqisi2
	orr	r1, r1, r7, asl #16
	orr	r5, r5, r9, asl #16
	ldrb	r7, [fp, #3]	@ zero_extendqisi2
	ldrb	r9, [r4, #7]	@ zero_extendqisi2
	orr	r6, r6, r10, asl #16
	orr	lr, lr, r8, asl #16
	ldrb	r10, [r4, #3]	@ zero_extendqisi2
	ldrb	r8, [fp, #7]	@ zero_extendqisi2
	orr	r7, r1, r7, asl #24
	.loc 6 62 0
	ldrb	ip, [ip, #8]	@ zero_extendqisi2
.LVL363:
	.loc 6 64 0
	add	r1, r4, r2
	.loc 6 61 0
	orr	r5, r5, r9, asl #24
	.loc 6 62 0
	ldrb	r9, [r4, #8]	@ zero_extendqisi2
	.loc 6 61 0
	orr	r6, r6, r10, asl #24
	orr	lr, lr, r8, asl #24
	str	r7, [sp, #56]
	.loc 6 62 0
	strb	ip, [sp, #48]
.LVL364:
	.loc 6 61 0
	ldrb	r7, [r1, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r9, [sp, #80]
	ldrb	r9, [fp, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r10, r1, r2
	.loc 6 61 0
	str	r6, [sp, #72]
	str	r5, [sp, #76]
	str	lr, [sp, #60]
	ldrb	r5, [r1, #2]	@ zero_extendqisi2
	ldrb	lr, [r1, #3]	@ zero_extendqisi2
	ldrb	r6, [r1, #1]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r9, [sp, #64]
.LVL365:
	.loc 6 61 0
	ldrb	r9, [fp, r2, asl #1]	@ zero_extendqisi2
	.loc 6 64 0
	add	r8, r10, r2
	.loc 6 61 0
	orr	ip, ip, r7, asl #8
	ldrb	r7, [r1, #7]	@ zero_extendqisi2
	str	r7, [sp, #4]
	orr	r6, r9, r6, asl #8
	ldrb	r7, [r8, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	fp, [r1, #6]	@ zero_extendqisi2
	ldrb	r4, [r4, r2, asl #1]	@ zero_extendqisi2
	orr	r7, r9, r7, asl #8
	ldrb	r9, [r10, #1]	@ zero_extendqisi2
	orr	ip, ip, fp, asl #16
	orr	r4, r4, r9, asl #8
	ldrb	fp, [r8, #4]	@ zero_extendqisi2
	ldrb	r9, [r8, #5]	@ zero_extendqisi2
	orr	r6, r6, r5, asl #16
	orr	fp, fp, r9, asl #8
	ldrb	r5, [r10, #4]	@ zero_extendqisi2
	ldrb	r9, [r10, #5]	@ zero_extendqisi2
	orr	r6, r6, lr, asl #24
	orr	r5, r5, r9, asl #8
	ldrb	r9, [r10, #2]	@ zero_extendqisi2
	ldrb	lr, [r8, #2]	@ zero_extendqisi2
	orr	r9, r4, r9, asl #16
	ldrb	r4, [r10, #6]	@ zero_extendqisi2
	orr	r7, r7, lr, asl #16
	orr	r5, r5, r4, asl #16
	ldrb	lr, [r8, #6]	@ zero_extendqisi2
	ldr	r4, [sp, #4]
	orr	fp, fp, lr, asl #16
	orr	ip, ip, r4, asl #24
	ldrb	lr, [r8, #3]	@ zero_extendqisi2
	ldrb	r4, [r10, #3]	@ zero_extendqisi2
	orr	r7, r7, lr, asl #24
	orr	r4, r9, r4, asl #24
	ldrb	lr, [r8, #7]	@ zero_extendqisi2
	ldrb	r9, [r10, #7]	@ zero_extendqisi2
	.loc 6 62 0
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
.LVL366:
	.loc 6 61 0
	orr	fp, fp, lr, asl #24
	orr	r5, r5, r9, asl #24
	.loc 6 62 0
	ldrb	lr, [r8, #8]	@ zero_extendqisi2
	ldrb	r9, [r10, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r8, r8, r2
	.loc 6 61 0
	str	r6, [sp, #88]
	str	ip, [sp, #92]
	.loc 6 62 0
	strb	r1, [sp, #96]
.LVL367:
	.loc 6 61 0
	str	r4, [sp, #104]
	str	r5, [sp, #108]
	ldrb	r4, [r10, r2, asl #1]	@ zero_extendqisi2
	.loc 6 62 0
	strb	lr, [sp, #128]
	.loc 6 61 0
	str	r7, [sp, #120]
	str	fp, [sp, #124]
	.loc 6 62 0
	strb	r9, [sp, #112]
.LVL368:
	.loc 6 61 0
	ldrb	r5, [r8, #1]	@ zero_extendqisi2
	ldrb	r1, [r8, #4]	@ zero_extendqisi2
	ldrb	r3, [r8, #5]	@ zero_extendqisi2
	ldrb	lr, [r8, #2]	@ zero_extendqisi2
	ldrb	ip, [r8, #6]	@ zero_extendqisi2
	ldrb	r6, [r8, #3]	@ zero_extendqisi2
	orr	r4, r4, r5, asl #8
	orr	r3, r1, r3, asl #8
	ldrb	r5, [r8, #7]	@ zero_extendqisi2
	orr	r1, r4, lr, asl #16
	orr	r3, r3, ip, asl #16
	orr	lr, r1, r6, asl #24
	orr	ip, r3, r5, asl #24
	.loc 6 62 0
	ldrb	r4, [r8, #8]	@ zero_extendqisi2
.LBE325:
.LBE327:
	.loc 5 696 0 discriminator 1
	add	r1, sp, #8
	mov	r3, #16
.LBB328:
.LBB326:
	.loc 6 61 0
	str	lr, [sp, #136]
	str	ip, [sp, #140]
	.loc 6 62 0
	strb	r4, [sp, #144]
.LVL369:
.LBE326:
.LBE328:
	.loc 5 696 0 discriminator 1
	bl	put_no_rnd_mpeg4_qpel8_v_lowpass(PLT)
.LVL370:
	.loc 5 696 0 is_stmt 0
	add	sp, sp, #156
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.cfi_endproc
.LFE156:
	.size	put_no_rnd_qpel8_mc02_c, .-put_no_rnd_qpel8_mc02_c
	.align	2
	.type	put_no_rnd_qpel8_mc22_c, %function
put_no_rnd_qpel8_mc22_c:
.LFB172:
	.loc 5 696 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL371:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	sub	sp, sp, #80
	.cfi_def_cfa_offset 96
	.loc 5 696 0
	mov	r5, r2
	add	r4, sp, #8
	mov	r2, #9
.LVL372:
	mov	r6, r0
	mov	r3, r5
	mov	r0, r4
.LVL373:
	str	r2, [sp]
	mov	r2, #8
	bl	put_no_rnd_mpeg4_qpel8_h_lowpass(PLT)
.LVL374:
	.loc 5 696 0 is_stmt 0 discriminator 1
	mov	r0, r6
	mov	r1, r4
	mov	r2, r5
	mov	r3, #8
	bl	put_no_rnd_mpeg4_qpel8_v_lowpass(PLT)
.LVL375:
	.loc 5 696 0
	add	sp, sp, #80
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
	.cfi_endproc
.LFE172:
	.size	put_no_rnd_qpel8_mc22_c, .-put_no_rnd_qpel8_mc22_c
	.align	2
	.type	put_no_rnd_qpel16_mc20_c, %function
put_no_rnd_qpel16_mc20_c:
.LFB174:
	.loc 5 696 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL376:
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	mov	r3, #16
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	.loc 5 696 0
	str	r3, [sp]
	mov	r3, r2
	bl	put_no_rnd_mpeg4_qpel16_h_lowpass(PLT)
.LVL377:
	add	sp, sp, #12
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE174:
	.size	put_no_rnd_qpel16_mc20_c, .-put_no_rnd_qpel16_mc20_c
	.align	2
	.type	put_no_rnd_qpel16_mc22_c, %function
put_no_rnd_qpel16_mc22_c:
.LFB193:
	.loc 5 696 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 272
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL378:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	sub	sp, sp, #280
	.cfi_def_cfa_offset 296
	.loc 5 696 0
	mov	r5, r2
	add	r4, sp, #8
	mov	r2, #17
.LVL379:
	mov	r6, r0
	mov	r3, r5
	mov	r0, r4
.LVL380:
	str	r2, [sp]
	mov	r2, #16
	bl	put_no_rnd_mpeg4_qpel16_h_lowpass(PLT)
.LVL381:
	.loc 5 696 0 is_stmt 0 discriminator 1
	mov	r0, r6
	mov	r1, r4
	mov	r2, r5
	mov	r3, #16
	bl	put_no_rnd_mpeg4_qpel16_v_lowpass(PLT)
.LVL382:
	.loc 5 696 0
	add	sp, sp, #280
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
	.cfi_endproc
.LFE193:
	.size	put_no_rnd_qpel16_mc22_c, .-put_no_rnd_qpel16_mc22_c
	.align	2
	.type	avg_qpel8_mc02_c, %function
avg_qpel8_mc02_c:
.LFB202:
	.loc 5 697 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 184
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL383:
.LBB334:
.LBB335:
	.loc 6 64 0
	add	r3, r1, r2
.LBE335:
.LBE334:
	.loc 5 697 0
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
.LBB340:
.LBB336:
	.loc 6 64 0
	add	r10, r3, r2
	.loc 6 61 0
	ldrb	r9, [r10, #5]	@ zero_extendqisi2
	ldrb	ip, [r10, #4]	@ zero_extendqisi2
	ldrb	r4, [r1, r2]	@ zero_extendqisi2
	ldrb	fp, [r3, #5]	@ zero_extendqisi2
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	ldrb	lr, [r3, #4]	@ zero_extendqisi2
	ldrb	r8, [r1]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #8
	ldrb	r9, [r1, #1]	@ zero_extendqisi2
	orr	r6, r4, r6, asl #8
	orr	lr, lr, fp, asl #8
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	fp, [r1, #5]	@ zero_extendqisi2
	orr	r8, r8, r9, asl #8
	ldrb	r9, [r10, #6]	@ zero_extendqisi2
	ldrb	r7, [r10, #1]	@ zero_extendqisi2
	ldrb	r5, [r1, r2, asl #1]	@ zero_extendqisi2
	orr	r4, r4, fp, asl #8
	orr	ip, ip, r9, asl #16
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	ldrb	r9, [r3, #6]	@ zero_extendqisi2
	orr	r5, r5, r7, asl #8
	ldrb	r7, [r10, #2]	@ zero_extendqisi2
	orr	r6, r6, fp, asl #16
	orr	lr, lr, r9, asl #16
	ldrb	fp, [r1, #2]	@ zero_extendqisi2
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	orr	r5, r5, r7, asl #16
	ldrb	r7, [r10, #3]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #16
	orr	r8, r8, fp, asl #16
	ldrb	r9, [r3, #3]	@ zero_extendqisi2
	ldrb	fp, [r10, #7]	@ zero_extendqisi2
	orr	r7, r5, r7, asl #24
	ldrb	r5, [r3, #7]	@ zero_extendqisi2
	orr	ip, ip, fp, asl #24
	orr	r6, r6, r9, asl #24
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	r9, [r1, #7]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #24
	.loc 6 64 0
	add	r5, r10, r2
.LBE336:
.LBE340:
	.loc 5 697 0
	sub	sp, sp, #188
	.cfi_def_cfa_offset 224
.LVL384:
.LBB341:
.LBB337:
	.loc 6 61 0
	orr	r8, r8, fp, asl #24
	orr	r9, r4, r9, asl #24
	.loc 6 62 0
	ldrb	fp, [r1, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r4, r5, r2
	.loc 6 62 0
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
.LVL385:
	.loc 6 61 0
	str	r7, [sp, #72]
	str	r6, [sp, #56]
	str	lr, [sp, #60]
	str	r8, [sp, #40]
	str	r9, [sp, #44]
	.loc 6 62 0
	strb	fp, [sp, #48]
.LVL386:
	strb	r1, [sp, #64]
.LVL387:
	.loc 6 61 0
	ldrb	r1, [r3, r2, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r4, #1]	@ zero_extendqisi2
	ldrb	r6, [r10, r2, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r5, #1]	@ zero_extendqisi2
	ldrb	lr, [r4, #5]	@ zero_extendqisi2
	str	ip, [sp, #76]
	ldrb	ip, [r4, #4]	@ zero_extendqisi2
	ldrb	r7, [r5, #5]	@ zero_extendqisi2
	ldrb	fp, [r5, #2]	@ zero_extendqisi2
	ldrb	r3, [r5, #4]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #8
	orr	r6, r6, r8, asl #8
	ldrb	r9, [r4, #2]	@ zero_extendqisi2
	ldrb	r8, [r4, #6]	@ zero_extendqisi2
	orr	lr, ip, lr, asl #8
	ldrb	ip, [r5, #6]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #16
	orr	r3, r3, r7, asl #8
	ldrb	fp, [r4, #3]	@ zero_extendqisi2
	ldrb	r7, [r5, #3]	@ zero_extendqisi2
	orr	r6, r6, r9, asl #16
	orr	lr, lr, r8, asl #16
	ldrb	r9, [r4, #7]	@ zero_extendqisi2
	ldrb	r8, [r5, #7]	@ zero_extendqisi2
	orr	r3, r3, ip, asl #16
	orr	r7, r1, r7, asl #24
	.loc 6 64 0
	add	ip, r4, r2
	.loc 6 62 0
	ldrb	r10, [r10, #8]	@ zero_extendqisi2
.LVL388:
	.loc 6 61 0
	orr	r6, r6, fp, asl #24
	orr	lr, lr, r9, asl #24
	orr	fp, r3, r8, asl #24
	.loc 6 62 0
	ldrb	r9, [r4, #8]	@ zero_extendqisi2
	ldrb	r8, [r5, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r1, ip, r2
	.loc 6 61 0
	str	r7, [sp, #88]
	.loc 6 62 0
	strb	r10, [sp, #80]
.LVL389:
	.loc 6 61 0
	ldrb	r7, [ip, #4]	@ zero_extendqisi2
	ldrb	r10, [ip, #3]	@ zero_extendqisi2
	str	r6, [sp, #104]
	str	lr, [sp, #108]
	ldrb	r6, [ip, #1]	@ zero_extendqisi2
	ldrb	lr, [ip, #2]	@ zero_extendqisi2
	str	fp, [sp, #92]
	.loc 6 62 0
	strb	r9, [sp, #112]
	.loc 6 61 0
	ldrb	fp, [ip, #5]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r8, [sp, #96]
.LVL390:
	.loc 6 61 0
	ldrb	r8, [ip, #6]	@ zero_extendqisi2
	ldrb	r5, [r5, r2, asl #1]	@ zero_extendqisi2
	.loc 6 64 0
	add	r3, r1, r2
	.loc 6 61 0
	ldrb	r9, [ip, #7]	@ zero_extendqisi2
	ldrb	r4, [r4, r2, asl #1]	@ zero_extendqisi2
	str	r9, [sp]
	orr	r5, r5, r6, asl #8
.LBE337:
.LBE341:
	.loc 5 697 0
	mov	r9, r0
.LBB342:
.LBB338:
	.loc 6 61 0
	ldrb	r6, [r1, #1]	@ zero_extendqisi2
	orr	r0, r7, fp, asl #8
.LVL391:
	ldrb	fp, [r3, #1]	@ zero_extendqisi2
	ldrb	r7, [ip, r2, asl #1]	@ zero_extendqisi2
	orr	r6, r4, r6, asl #8
	orr	r7, r7, fp, asl #8
	ldrb	r4, [r3, #4]	@ zero_extendqisi2
	ldrb	fp, [r3, #5]	@ zero_extendqisi2
	orr	r0, r0, r8, asl #16
	orr	fp, r4, fp, asl #8
	ldrb	r8, [r1, #5]	@ zero_extendqisi2
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	orr	lr, r5, lr, asl #16
	orr	r8, r4, r8, asl #8
	ldrb	r5, [r3, #2]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	orr	r7, r7, r5, asl #16
	orr	r6, r6, r4, asl #16
	ldrb	r5, [r3, #6]	@ zero_extendqisi2
	ldrb	r4, [r1, #6]	@ zero_extendqisi2
	orr	r5, fp, r5, asl #16
	orr	r4, r8, r4, asl #16
	ldrb	fp, [r3, #3]	@ zero_extendqisi2
	ldrb	r8, [r1, #3]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #24
	orr	r7, r7, fp, asl #24
	ldr	r10, [sp]
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	add	r8, r9, r2
	str	r8, [sp, #4]
	orr	r0, r0, r10, asl #24
	orr	r4, r4, fp, asl #24
	ldrb	r10, [r3, #7]	@ zero_extendqisi2
	ldr	fp, [sp, #4]
	.loc 6 62 0
	ldrb	ip, [ip, #8]	@ zero_extendqisi2
.LVL392:
	.loc 6 61 0
	orr	r5, r5, r10, asl #24
	str	lr, [sp, #120]
	.loc 6 62 0
	ldrb	r10, [r3, #8]	@ zero_extendqisi2
	add	lr, fp, r2
	.loc 6 64 0
	add	r3, r3, r2
	.loc 6 62 0
	ldrb	r8, [r1, #8]	@ zero_extendqisi2
	str	lr, [sp, #12]
	.loc 6 61 0
	str	r0, [sp, #124]
	.loc 6 62 0
	strb	ip, [sp, #128]
.LVL393:
	.loc 6 61 0
	str	r7, [sp, #152]
	str	r6, [sp, #136]
	str	r5, [sp, #156]
	str	r4, [sp, #140]
	.loc 6 62 0
	strb	r10, [sp, #160]
	.loc 6 61 0
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	ldrb	ip, [r1, r2, asl #1]	@ zero_extendqisi2
	add	r1, lr, r2
.LVL394:
	mov	r7, r1
	ldrb	lr, [r3, #5]	@ zero_extendqisi2
	orr	ip, ip, r0, asl #8
	str	r1, [sp, #16]
	add	r0, r7, r2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	ldrb	r6, [r3, #2]	@ zero_extendqisi2
	mov	r7, r0
	ldrb	r5, [r3, #6]	@ zero_extendqisi2
	str	r0, [sp, #20]
	orr	r0, r1, lr, asl #8
	add	r1, r7, r2
	orr	ip, ip, r6, asl #16
	.loc 6 62 0
	strb	r8, [sp, #144]
.LVL395:
	mov	r6, r1
	ldr	r8, .L144
	str	r1, [sp, #24]
	.loc 6 61 0
	orr	r1, r0, r5, asl #16
	add	r0, r6, r2
	ldrb	r4, [r3, #3]	@ zero_extendqisi2
	ldrb	lr, [r3, #7]	@ zero_extendqisi2
	mov	r5, r0
.LPIC25:
	ldr	r8, [pc, r8]		@ tls_load_dot_plus_eight
	add	r2, r5, r2
.LVL396:
	str	r0, [sp, #28]
	orr	r1, r1, lr, asl #24
	orr	r0, ip, r4, asl #24
	.loc 6 62 0
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
.LVL397:
	str	r2, [sp, #32]
.LBE338:
.LBE342:
.LBB343:
.LBB344:
.LBB345:
	.loc 5 697 0 discriminator 3
	add	r8, r8, #1024
	add	r2, r9, #8
.LBE345:
.LBE344:
.LBE343:
.LBB351:
.LBB339:
	.loc 6 62 0
	add	r7, sp, #40
	str	fp, [sp, #8]
	str	r2, [sp, #36]
	.loc 6 61 0
	str	r0, [sp, #168]
	str	r1, [sp, #172]
	.loc 6 62 0
	strb	r3, [sp, #176]
.LVL398:
	str	r9, [sp]
.LVL399:
.L141:
.LBE339:
.LBE351:
.LBB352:
.LBB350:
.LBB346:
	.loc 5 697 0 discriminator 3
	ldrb	r0, [r7]	@ zero_extendqisi2
.LVL400:
	ldrb	r4, [r7, #32]	@ zero_extendqisi2
	ldrb	r1, [r7, #16]	@ zero_extendqisi2
.LVL401:
	ldrb	lr, [r7, #48]	@ zero_extendqisi2
.LVL402:
	add	r5, r0, r4
	add	ip, r0, r1
	sub	r5, r5, r5, asl #2
	ldrb	r3, [r7, #64]	@ zero_extendqisi2
.LVL403:
	add	r2, r1, lr
	mov	r5, r5, asl #1
	add	ip, ip, ip, asl #2
	add	ip, r5, ip, asl #2
	add	r2, r2, r2, asl #1
	add	ip, ip, r2
	add	r2, r4, r3
	ldr	r9, [sp]
	rsb	ip, r2, ip
	add	ip, ip, #16
	ldrb	fp, [r9]	@ zero_extendqisi2
	ldrb	ip, [r8, ip, asr #5]	@ zero_extendqisi2
	add	r5, r0, lr
	add	r2, r1, r4
	add	ip, fp, ip
	sub	r5, r5, r5, asl #2
	ldrb	r6, [r7, #80]	@ zero_extendqisi2
.LVL404:
	add	r10, r0, r3
	mov	r5, r5, asl #1
	add	r2, r2, r2, asl #2
	add	ip, ip, #1
	add	r2, r5, r2, asl #2
	mov	ip, ip, asr #1
	add	r10, r10, r10, asl #1
	strb	ip, [r9], #1
	add	r5, r1, r6
	ldr	ip, [sp, #4]
	add	r10, r2, r10
	rsb	r10, r5, r10
	ldrb	fp, [ip], #1	@ zero_extendqisi2
	add	r2, r1, r3
	add	r10, r10, #16
	sub	r5, r2, r2, asl #2
	str	ip, [sp, #4]
	add	r2, r4, lr
	ldrb	ip, [r8, r10, asr #5]	@ zero_extendqisi2
	mov	r5, r5, asl #1
	add	r2, r2, r2, asl #2
	add	r2, r5, r2, asl #2
	add	r10, r0, r6
	ldrb	r5, [r7, #96]	@ zero_extendqisi2
.LVL405:
	add	fp, fp, ip
	str	r9, [sp]
.LVL406:
	add	r10, r10, r10, asl #1
	ldr	r9, [sp, #8]
.LVL407:
	add	fp, fp, #1
	add	ip, r2, r10
	mov	fp, fp, asr #1
	add	r10, r0, r5
	strb	fp, [r9], #1
	rsb	ip, r10, ip
	str	r9, [sp, #8]
	ldr	r9, [sp, #12]
	add	r10, r4, r6
	add	ip, ip, #16
	ldrb	fp, [r9]	@ zero_extendqisi2
	ldrb	ip, [r8, ip, asr #5]	@ zero_extendqisi2
	add	r2, lr, r3
	sub	r10, r10, r10, asl #2
	add	r2, r2, r2, asl #2
	mov	r10, r10, asl #1
	add	r10, r10, r2, asl #2
	add	fp, fp, ip
	add	r2, r1, r5
	ldrb	ip, [r7, #112]	@ zero_extendqisi2
.LVL408:
	add	r2, r2, r2, asl #1
	add	fp, fp, #1
	add	r2, r10, r2
	add	r0, r0, ip
.LVL409:
	mov	fp, fp, asr #1
	strb	fp, [r9], #1
	rsb	r0, r0, r2
	str	r9, [sp, #12]
	ldr	r9, [sp, #16]
	add	r10, lr, r5
	add	r0, r0, #16
	ldrb	fp, [r9]	@ zero_extendqisi2
	ldrb	r0, [r8, r0, asr #5]	@ zero_extendqisi2
	add	r2, r3, r6
	sub	r10, r10, r10, asl #2
	add	r2, r2, r2, asl #2
	mov	r10, r10, asl #1
	add	r10, r10, r2, asl #2
	add	fp, fp, r0
	add	r2, r4, ip
	ldrb	r0, [r7, #128]	@ zero_extendqisi2
.LVL410:
	add	r2, r2, r2, asl #1
	add	fp, fp, #1
	add	r2, r10, r2
	add	r1, r1, r0
.LVL411:
	mov	fp, fp, asr #1
	strb	fp, [r9], #1
	rsb	r1, r1, r2
	str	r9, [sp, #16]
	ldr	r9, [sp, #20]
	add	r2, r3, ip
	add	r1, r1, #16
	ldrb	fp, [r9]	@ zero_extendqisi2
	sub	r2, r2, r2, asl #2
	ldrb	r1, [r8, r1, asr #5]	@ zero_extendqisi2
	add	r10, r6, r5
	add	r10, r10, r10, asl #2
	mov	r2, r2, asl #1
	add	r2, r2, r10, asl #2
	add	r1, fp, r1
	add	r10, lr, r0
	add	r10, r10, r10, asl #1
	add	r1, r1, #1
	add	r4, r4, r0
.LVL412:
	add	r2, r2, r10
	mov	r1, r1, asr #1
	strb	r1, [r9], #1
	rsb	r2, r4, r2
	add	r10, r6, r0
	str	r9, [sp, #20]
	ldr	r9, [sp, #24]
	add	r2, r2, #16
	add	r4, r5, ip
	sub	r10, r10, r10, asl #2
	ldrb	fp, [r8, r2, asr #5]	@ zero_extendqisi2
	ldrb	r1, [r9]	@ zero_extendqisi2
	add	r2, r3, r0
	mov	r10, r10, asl #1
	add	r4, r4, r4, asl #2
	add	r2, r2, r2, asl #1
	add	r4, r10, r4, asl #2
	add	lr, lr, ip
.LVL413:
	add	r1, r1, fp
	add	r4, r4, r2
	rsb	r4, lr, r4
	add	fp, r5, r0
	ldr	lr, [sp, #28]
	add	r1, r1, #1
	mov	r2, r9
	mov	r1, r1, asr #1
	add	r0, ip, r0
.LVL414:
	add	r4, r4, #16
	sub	fp, fp, fp, asl #2
	strb	r1, [r2], #1
	add	ip, r6, ip
.LVL415:
	ldrb	r1, [r8, r4, asr #5]	@ zero_extendqisi2
	str	r2, [sp, #24]
	add	r0, r0, r0, asl #2
	ldrb	r2, [lr]	@ zero_extendqisi2
	mov	fp, fp, asl #1
	add	r0, fp, r0, asl #2
	add	ip, ip, ip, asl #1
	add	ip, r0, ip
	add	r3, r3, r5
.LVL416:
	add	r2, r2, r1
	rsb	ip, r3, ip
	ldr	r1, [sp, #32]
	add	r2, r2, #1
	mov	r3, lr
	add	ip, ip, #16
	mov	r2, r2, asr #1
	strb	r2, [r3], #1
	ldrb	r2, [r8, ip, asr #5]	@ zero_extendqisi2
	str	r3, [sp, #28]
	ldrb	r3, [r1]	@ zero_extendqisi2
.LBE346:
	.loc 5 697 0 is_stmt 0 discriminator 1
	ldr	r0, [sp, #36]
.LBB347:
	.loc 5 697 0 discriminator 3
	add	r3, r3, r2
.LBE347:
	.loc 5 697 0 discriminator 1
	ldr	ip, [sp]
.LBB348:
	.loc 5 697 0 discriminator 3
	add	r3, r3, #1
	mov	r2, r1
	mov	r3, r3, asr #1
.LBE348:
	.loc 5 697 0 discriminator 1
	cmp	ip, r0
.LBB349:
	.loc 5 697 0 discriminator 3
	strb	r3, [r2], #1
	add	r7, r7, #1
.LVL417:
	str	r2, [sp, #32]
.LVL418:
.LBE349:
	.loc 5 697 0 discriminator 1
	bne	.L141
.LBE350:
.LBE352:
	.loc 5 697 0
	add	sp, sp, #188
	.cfi_def_cfa_offset 36
.LVL419:
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL420:
.L145:
	.align	2
.L144:
	.word	ff_crop_tab(GOT_PREL)+(.-(.LPIC25+8))
	.cfi_endproc
.LFE202:
	.size	avg_qpel8_mc02_c, .-avg_qpel8_mc02_c
	.align	2
	.global	ff_put_pixels8x8_c
	.type	ff_put_pixels8x8_c, %function
ff_put_pixels8x8_c:
.LFB240:
	.loc 5 704 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL421:
	stmfd	sp!, {r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
.LBB353:
.LBB354:
	.loc 3 78 0 discriminator 3
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	ldrb	ip, [r1]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	ldrb	lr, [r1, #3]	@ zero_extendqisi2
	orr	ip, ip, r3, asl #8
	orr	r3, ip, r4, asl #16
	orr	r3, r3, lr, asl #24
	str	r3, [r0]
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	ldrb	r3, [r1, #5]	@ zero_extendqisi2
	ldrb	lr, [r1, #6]	@ zero_extendqisi2
	orr	r3, ip, r3, asl #8
	ldrb	ip, [r1, #7]	@ zero_extendqisi2
.LVL422:
	orr	r3, r3, lr, asl #16
	orr	r3, r3, ip, asl #24
	add	lr, r1, r2
.LVL423:
	str	r3, [r0, #4]
	ldrb	ip, [r1, r2]	@ zero_extendqisi2
	ldrb	r4, [lr, #1]	@ zero_extendqisi2
	ldrb	r3, [lr, #2]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #8
	ldrb	r4, [lr, #3]	@ zero_extendqisi2
	orr	r3, ip, r3, asl #16
	orr	r3, r3, r4, asl #24
	str	r3, [r0, r2]
	ldrb	r4, [lr, #5]	@ zero_extendqisi2
	ldrb	ip, [lr, #4]	@ zero_extendqisi2
	ldrb	r3, [lr, #6]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #8
	ldrb	r4, [lr, #7]	@ zero_extendqisi2
	orr	r3, ip, r3, asl #16
	add	r5, r0, r2
.LVL424:
	add	ip, lr, r2
.LVL425:
	orr	r3, r3, r4, asl #24
	str	r3, [r5, #4]
	ldrb	r4, [ip, #1]	@ zero_extendqisi2
	ldrb	r1, [r1, r2, asl #1]	@ zero_extendqisi2
.LVL426:
	ldrb	r3, [ip, #2]	@ zero_extendqisi2
	orr	r1, r1, r4, asl #8
	ldrb	r4, [ip, #3]	@ zero_extendqisi2
	orr	r3, r1, r3, asl #16
	orr	r3, r3, r4, asl #24
	str	r3, [r0, r2, asl #1]
	ldrb	r0, [ip, #4]	@ zero_extendqisi2
.LVL427:
	ldrb	r3, [ip, #5]	@ zero_extendqisi2
	ldrb	r1, [ip, #6]	@ zero_extendqisi2
	orr	r3, r0, r3, asl #8
	ldrb	r0, [ip, #7]	@ zero_extendqisi2
	orr	r3, r3, r1, asl #16
	add	r4, r5, r2
.LVL428:
	orr	r1, r3, r0, asl #24
	add	r3, ip, r2
.LVL429:
	str	r1, [r4, #4]
	ldrb	r0, [lr, r2, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r3, #1]	@ zero_extendqisi2
	ldrb	r1, [r3, #2]	@ zero_extendqisi2
	orr	r0, r0, lr, asl #8
	ldrb	lr, [r3, #3]	@ zero_extendqisi2
	orr	r1, r0, r1, asl #16
	orr	r1, r1, lr, asl #24
	str	r1, [r5, r2, asl #1]
	ldrb	lr, [r3, #4]	@ zero_extendqisi2
	ldrb	r1, [r3, #5]	@ zero_extendqisi2
	ldrb	r0, [r3, #6]	@ zero_extendqisi2
	orr	r1, lr, r1, asl #8
	ldrb	lr, [r3, #7]	@ zero_extendqisi2
	orr	r1, r1, r0, asl #16
	orr	r0, r1, lr, asl #24
	add	r1, r3, r2
	add	lr, r4, r2
.LVL430:
	str	r0, [lr, #4]
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	ldrb	ip, [ip, r2, asl #1]	@ zero_extendqisi2
	ldrb	r0, [r1, #2]	@ zero_extendqisi2
	orr	ip, ip, r5, asl #8
	ldrb	r5, [r1, #3]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #16
	orr	r0, r0, r5, asl #24
	str	r0, [r4, r2, asl #1]
	ldrb	r4, [r1, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	ldrb	r0, [r1, #6]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #8
	ldrb	r4, [r1, #7]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #16
	orr	r0, r0, r4, asl #24
	add	ip, r1, r2
	add	r4, lr, r2
.LVL431:
	str	r0, [r4, #4]
	ldrb	r0, [r3, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [ip, #1]	@ zero_extendqisi2
	ldrb	r3, [ip, #2]	@ zero_extendqisi2
	orr	r0, r0, r5, asl #8
	ldrb	r5, [ip, #3]	@ zero_extendqisi2
	orr	r3, r0, r3, asl #16
	orr	r3, r3, r5, asl #24
	str	r3, [lr, r2, asl #1]
	ldrb	lr, [ip, #4]	@ zero_extendqisi2
	ldrb	r3, [ip, #5]	@ zero_extendqisi2
	ldrb	r0, [ip, #6]	@ zero_extendqisi2
	orr	r3, lr, r3, asl #8
	ldrb	lr, [ip, #7]	@ zero_extendqisi2
	orr	r3, r3, r0, asl #16
	orr	r0, r3, lr, asl #24
	add	r3, ip, r2
	add	lr, r4, r2
.LVL432:
	str	r0, [lr, #4]
	ldrb	r0, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	r1, [r3, #2]	@ zero_extendqisi2
	orr	r0, r0, r5, asl #8
	ldrb	r5, [r3, #3]	@ zero_extendqisi2
	orr	r1, r0, r1, asl #16
	orr	r1, r1, r5, asl #24
	str	r1, [r4, r2, asl #1]
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	ldrb	r4, [r3, #5]	@ zero_extendqisi2
	ldrb	r1, [r3, #6]	@ zero_extendqisi2
	orr	r0, r0, r4, asl #8
	ldrb	r4, [r3, #7]	@ zero_extendqisi2
	orr	r1, r0, r1, asl #16
	orr	r1, r1, r4, asl #24
	add	r0, r3, r2
	add	r4, lr, r2
.LVL433:
	str	r1, [r4, #4]
	ldrb	r1, [ip, r2, asl #1]	@ zero_extendqisi2
	ldrb	ip, [r0, #1]	@ zero_extendqisi2
	ldrb	r3, [r0, #2]	@ zero_extendqisi2
	orr	r1, r1, ip, asl #8
	ldrb	ip, [r0, #3]	@ zero_extendqisi2
	orr	r3, r1, r3, asl #16
	orr	r3, r3, ip, asl #24
	str	r3, [lr, r2, asl #1]
	ldrb	r1, [r0, #4]	@ zero_extendqisi2
	ldrb	ip, [r0, #5]	@ zero_extendqisi2
	ldrb	r3, [r0, #6]	@ zero_extendqisi2
	orr	r1, r1, ip, asl #8
	ldrb	r0, [r0, #7]	@ zero_extendqisi2
.LVL434:
	orr	r3, r1, r3, asl #16
	add	r2, r4, r2
.LVL435:
	orr	r3, r3, r0, asl #24
	str	r3, [r2, #4]
.LVL436:
	ldmfd	sp!, {r4, r5, pc}
.LBE354:
.LBE353:
	.cfi_endproc
.LFE240:
	.size	ff_put_pixels8x8_c, .-ff_put_pixels8x8_c
	.align	2
	.type	avg_qpel16_mc02_c, %function
avg_qpel16_mc02_c:
.LFB223:
	.loc 5 697 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 504
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL437:
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
	sub	sp, sp, #508
	.cfi_def_cfa_offset 544
.LVL438:
.LBB360:
.LBB361:
	.loc 6 85 0
	add	ip, r1, r2
	.loc 6 82 0
	ldrb	r6, [r1, r2]	@ zero_extendqisi2
	str	r2, [sp]
	ldrb	r2, [r1, #12]	@ zero_extendqisi2
.LVL439:
	str	r2, [sp, #20]
	ldrb	r2, [ip, #2]	@ zero_extendqisi2
	str	r2, [sp, #28]
	ldrb	r2, [r1, #2]	@ zero_extendqisi2
	str	r2, [sp, #4]
	ldrb	r2, [r1, #6]	@ zero_extendqisi2
	str	r2, [sp, #12]
	ldrb	r2, [r1, #10]	@ zero_extendqisi2
	ldrb	fp, [ip, #1]	@ zero_extendqisi2
	ldrb	r8, [r1, #9]	@ zero_extendqisi2
	ldrb	lr, [r1, #8]	@ zero_extendqisi2
	str	r2, [sp, #16]
	ldrb	r2, [r1, #14]	@ zero_extendqisi2
	ldrb	r10, [r1, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #5]	@ zero_extendqisi2
	ldrb	r3, [ip, #4]	@ zero_extendqisi2
	ldrb	r5, [r1]	@ zero_extendqisi2
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	r7, [r1, #13]	@ zero_extendqisi2
	str	r2, [sp, #24]
	ldr	r2, [sp, #20]
	str	r3, [sp, #32]
	orr	r6, r6, fp, asl #8
	orr	lr, lr, r8, asl #8
	ldrb	fp, [ip, #6]	@ zero_extendqisi2
	ldrb	r8, [r1, #3]	@ zero_extendqisi2
	ldrb	r3, [ip, #5]	@ zero_extendqisi2
	str	fp, [sp, #36]
	orr	r5, r5, r10, asl #8
	ldrb	fp, [ip, #3]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #8
	str	r8, [sp, #8]
	orr	r2, r2, r7, asl #8
	ldr	r7, [sp, #32]
	ldr	r9, [sp, #4]
	orr	r3, r7, r3, asl #8
	orr	r5, r5, r9, asl #16
	ldrb	r7, [r1, #11]	@ zero_extendqisi2
	ldr	r9, [sp, #12]
	str	r7, [sp, #20]
	ldr	r7, [sp, #28]
	orr	r4, r4, r9, asl #16
	ldr	r9, [sp, #16]
	orr	r6, r6, r7, asl #16
	orr	r6, r6, fp, asl #24
	orr	lr, lr, r9, asl #16
	ldr	fp, [sp, #8]
	ldr	r9, [sp, #24]
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #16
	orr	r5, r5, fp, asl #24
	ldr	r9, [sp, #36]
	.loc 6 85 0
	ldr	fp, [sp]
	.loc 6 82 0
	orr	r4, r4, r10, asl #24
	ldr	r10, [sp, #20]
	ldrb	r7, [ip, #7]	@ zero_extendqisi2
	orr	r3, r3, r9, asl #16
	orr	lr, lr, r10, asl #24
	add	r9, sp, #104
	orr	r8, r2, r8, asl #24
	.loc 6 85 0
	add	r2, ip, fp
	.loc 6 82 0
	stmda	r9, {r4, lr}
	orr	r3, r3, r7, asl #24
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
	.loc 6 83 0
	ldrb	r7, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r5, [r9, #-8]
	ldrb	r5, [r1, fp, asl #1]	@ zero_extendqisi2
	ldrb	r1, [r2, #1]	@ zero_extendqisi2
.LVL440:
	str	r8, [r9, #4]
	ldrb	r10, [ip, #9]	@ zero_extendqisi2
	ldrb	r8, [ip, #13]	@ zero_extendqisi2
	str	r6, [r9, #16]
	str	r3, [r9, #20]
	ldrb	r6, [ip, #8]	@ zero_extendqisi2
	ldrb	r3, [r2, #8]	@ zero_extendqisi2
	ldrb	r4, [ip, #12]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r7, [sp, #112]
.LVL441:
	.loc 6 82 0
	str	lr, [sp, #20]
	ldrb	r7, [r2, #5]	@ zero_extendqisi2
	str	r1, [sp, #12]
	ldrb	r1, [r2, #9]	@ zero_extendqisi2
	ldrb	lr, [ip, #10]	@ zero_extendqisi2
	str	lr, [sp, #4]
	ldrb	lr, [r2, #2]	@ zero_extendqisi2
	str	lr, [sp, #16]
	ldrb	lr, [ip, #14]	@ zero_extendqisi2
	str	lr, [sp, #8]
	ldrb	lr, [r2, #6]	@ zero_extendqisi2
	str	lr, [sp, #24]
	orr	r6, r6, r10, asl #8
	ldr	lr, [sp, #20]
	ldrb	r10, [r2, #10]	@ zero_extendqisi2
	str	r10, [sp, #28]
	orr	r1, r3, r1, asl #8
	ldr	r10, [sp, #12]
	ldrb	r3, [ip, #15]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #8
	str	r3, [sp, #12]
	ldrb	r7, [ip, #11]	@ zero_extendqisi2
	ldr	r3, [sp, #8]
	ldrb	fp, [r2, #12]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #8
	orr	r4, r4, r8, asl #8
	ldrb	r10, [r2, #14]	@ zero_extendqisi2
	ldr	r8, [sp, #4]
	str	fp, [sp, #32]
	str	r10, [sp, #36]
	orr	r4, r4, r3, asl #16
	mov	r10, r7
	ldr	r3, [sp, #24]
	ldrb	r7, [r2, #3]	@ zero_extendqisi2
	ldrb	fp, [r2, #13]	@ zero_extendqisi2
	str	r7, [sp, #20]
	orr	r6, r6, r8, asl #16
	ldr	r7, [sp, #32]
	ldrb	r8, [r2, #11]	@ zero_extendqisi2
	str	r8, [sp, #4]
	orr	lr, lr, r3, asl #16
	ldr	r8, [sp, #16]
	ldr	r3, [sp, #28]
	orr	r7, r7, fp, asl #8
	ldrb	fp, [r2, #7]	@ zero_extendqisi2
	orr	r6, r6, r10, asl #24
	orr	r5, r5, r8, asl #16
	orr	r1, r1, r3, asl #16
	ldrb	r8, [r2, #15]	@ zero_extendqisi2
	ldr	r3, [sp, #36]
	ldr	r10, [sp, #20]
	orr	lr, lr, fp, asl #24
	ldr	fp, [sp, #4]
	orr	r5, r5, r10, asl #24
	ldr	r10, [sp, #12]
	orr	r1, r1, fp, asl #24
	orr	r7, r7, r3, asl #16
	.loc 6 85 0
	ldr	r3, [sp]
	.loc 6 82 0
	orr	r4, r4, r10, asl #24
	str	r1, [r9, #48]
	.loc 6 85 0
	ldr	r10, [sp]
	.loc 6 82 0
	ldr	r1, [sp]
	.loc 6 85 0
	add	r3, r2, r3
	add	r10, r3, r10
	.loc 6 83 0
	ldrb	fp, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	lr, [r9, #44]
	ldrb	lr, [r2, r1, asl #1]	@ zero_extendqisi2
	ldrb	r2, [r3, #12]	@ zero_extendqisi2
	str	r2, [sp, #16]
	ldrb	r2, [r10, #4]	@ zero_extendqisi2
	str	r2, [sp, #32]
	ldrb	r2, [r10, #5]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #24
	str	r2, [sp, #36]
	.loc 6 83 0
	ldrb	r8, [ip, #16]	@ zero_extendqisi2
	.loc 6 82 0
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	str	r4, [r9, #28]
	str	r7, [r9, #52]
	ldrb	r4, [ip, r1, asl #1]	@ zero_extendqisi2
	ldrb	r7, [r3, #5]	@ zero_extendqisi2
	str	r6, [r9, #24]
	str	r5, [r9, #40]
	ldrb	r6, [r3, #9]	@ zero_extendqisi2
	ldrb	r5, [r3, #13]	@ zero_extendqisi2
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
.LVL442:
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	fp, [sp, #160]
	strb	r8, [sp, #136]
.LVL443:
	.loc 6 82 0
	ldrb	fp, [r3, #1]	@ zero_extendqisi2
	ldrb	r8, [r10, #1]	@ zero_extendqisi2
	str	r2, [sp, #4]
	ldrb	r2, [r10, #2]	@ zero_extendqisi2
	str	r2, [sp, #28]
	ldrb	r2, [r3, #6]	@ zero_extendqisi2
	str	r2, [sp, #12]
	ldrb	r2, [r3, #10]	@ zero_extendqisi2
	str	r2, [sp, #20]
	ldr	r2, [sp, #16]
	orr	r1, r1, r6, asl #8
	orr	r2, r2, r5, asl #8
	ldr	r6, [sp, #36]
	ldr	r5, [sp, #32]
	orr	r4, r4, fp, asl #8
	orr	r5, r5, r6, asl #8
	ldr	r6, [sp, #4]
	orr	lr, lr, r8, asl #8
	orr	r4, r4, r6, asl #16
	ldr	r6, [sp, #28]
	orr	ip, ip, r7, asl #8
	orr	lr, lr, r6, asl #16
	str	lr, [sp, #4]
	ldr	lr, [sp, #12]
	ldrb	fp, [r3, #14]	@ zero_extendqisi2
	orr	ip, ip, lr, asl #16
	ldr	lr, [sp, #20]
	str	fp, [sp, #24]
	ldrb	r8, [r10, #6]	@ zero_extendqisi2
	orr	r1, r1, lr, asl #16
	ldr	lr, [sp, #24]
	str	r8, [sp, #40]
	ldrb	r7, [r3, #3]	@ zero_extendqisi2
	orr	r2, r2, lr, asl #16
	ldr	lr, [sp, #40]
	str	r7, [sp, #8]
	orr	r5, r5, lr, asl #16
	ldr	lr, [sp, #8]
	ldrb	fp, [r10, #3]	@ zero_extendqisi2
	ldrb	r7, [r3, #7]	@ zero_extendqisi2
	ldrb	r8, [r3, #11]	@ zero_extendqisi2
	orr	r4, r4, lr, asl #24
	ldr	lr, [sp, #4]
	str	r7, [sp, #16]
	orr	lr, lr, fp, asl #24
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	ldr	fp, [sp, #16]
	orr	r1, r1, r8, asl #24
	.loc 6 85 0
	ldr	r8, [sp]
	.loc 6 82 0
	ldrb	r6, [r10, #7]	@ zero_extendqisi2
	orr	ip, ip, fp, asl #24
	orr	r2, r2, r7, asl #24
	.loc 6 85 0
	add	fp, r10, r8
	.loc 6 82 0
	orr	r5, r5, r6, asl #24
	.loc 6 83 0
	ldrb	r6, [r3, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [r9, #64]
	str	r2, [r9, #76]
	ldrb	r2, [fp, #9]	@ zero_extendqisi2
	str	r2, [sp, #24]
	ldrb	r2, [fp, #13]	@ zero_extendqisi2
	str	r2, [sp, #32]
	ldrb	r2, [r10, #10]	@ zero_extendqisi2
	ldrb	r7, [r10, #9]	@ zero_extendqisi2
	str	lr, [r9, #88]
	ldrb	r4, [r10, #8]	@ zero_extendqisi2
	ldrb	lr, [r3, r8, asl #1]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r6, [sp, #184]
.LVL444:
	.loc 6 82 0
	str	r2, [sp, #4]
	ldrb	r6, [fp, #1]	@ zero_extendqisi2
	ldrb	r2, [fp, #2]	@ zero_extendqisi2
	ldrb	r3, [fp, #4]	@ zero_extendqisi2
	str	ip, [r9, #68]
	str	r5, [r9, #92]
	ldrb	ip, [r10, #12]	@ zero_extendqisi2
	ldrb	r5, [r10, #13]	@ zero_extendqisi2
	str	r2, [sp, #12]
	ldrb	r2, [r10, #14]	@ zero_extendqisi2
	str	r3, [sp, #16]
	str	r2, [sp, #8]
	orr	r4, r4, r7, asl #8
	ldrb	r2, [fp, #6]	@ zero_extendqisi2
	ldrb	r7, [fp, #10]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #8
	ldrb	r6, [fp, #14]	@ zero_extendqisi2
	ldrb	r8, [fp, #8]	@ zero_extendqisi2
	ldrb	r3, [fp, #12]	@ zero_extendqisi2
	str	r1, [r9, #72]
	str	r2, [sp, #20]
	ldrb	r1, [fp, #5]	@ zero_extendqisi2
	str	r7, [sp, #28]
	str	r6, [sp, #36]
	orr	ip, ip, r5, asl #8
	ldr	r5, [sp, #16]
	ldr	r2, [sp, #24]
	orr	r1, r5, r1, asl #8
	ldrb	r5, [r10, #11]	@ zero_extendqisi2
	ldrb	r7, [fp, #7]	@ zero_extendqisi2
	mov	r6, r5
	ldrb	r5, [fp, #3]	@ zero_extendqisi2
	str	r5, [sp, #16]
	ldr	r5, [sp, #32]
	str	r7, [sp, #24]
	orr	r5, r3, r5, asl #8
	ldr	r3, [sp, #4]
	orr	r2, r8, r2, asl #8
	orr	r4, r4, r3, asl #16
	ldr	r3, [sp, #12]
	orr	r4, r4, r6, asl #24
	orr	lr, lr, r3, asl #16
	ldrb	r3, [fp, #15]	@ zero_extendqisi2
	str	r3, [sp, #4]
	ldr	r3, [sp, #8]
	ldr	r6, [sp, #16]
	orr	ip, ip, r3, asl #16
	ldr	r3, [sp, #20]
	orr	lr, lr, r6, asl #24
	orr	r1, r1, r3, asl #16
	ldr	r3, [sp, #28]
	ldr	r6, [sp, #24]
	orr	r2, r2, r3, asl #16
	ldr	r3, [sp, #36]
	ldrb	r8, [r10, #15]	@ zero_extendqisi2
	ldrb	r7, [fp, #11]	@ zero_extendqisi2
	orr	r1, r1, r6, asl #24
	orr	r5, r5, r3, asl #16
	ldr	r6, [sp, #4]
	.loc 6 85 0
	ldr	r3, [sp]
	.loc 6 82 0
	orr	ip, ip, r8, asl #24
	.loc 6 85 0
	ldr	r8, [sp]
	add	r3, fp, r3
	.loc 6 82 0
	orr	r2, r2, r7, asl #24
	orr	r5, r5, r6, asl #24
	.loc 6 83 0
	ldrb	r7, [fp, #16]	@ zero_extendqisi2
	ldrb	r6, [r10, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	r8, r3, r8
	.loc 6 82 0
	str	ip, [r9, #100]
	str	r5, [r9, #124]
	str	r4, [r9, #96]
	str	lr, [r9, #112]
	str	r1, [r9, #116]
	str	r2, [r9, #120]
	.loc 6 83 0
	strb	r7, [sp, #232]
	strb	r6, [sp, #208]
.LVL445:
	.loc 6 82 0
	ldr	r2, [sp]
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
	str	r1, [sp, #8]
	ldrb	r1, [r8, #4]	@ zero_extendqisi2
	str	r1, [sp, #20]
	ldrb	r1, [r8, #5]	@ zero_extendqisi2
	str	r1, [sp, #32]
	ldrb	r1, [r3, #2]	@ zero_extendqisi2
	str	r1, [sp, #4]
	ldrb	r1, [r8, #2]	@ zero_extendqisi2
	str	r1, [sp, #28]
	ldrb	r1, [r3, #6]	@ zero_extendqisi2
	ldrb	r4, [r10, r2, asl #1]	@ zero_extendqisi2
	ldrb	lr, [fp, r2, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r3, #1]	@ zero_extendqisi2
	ldrb	fp, [r8, #1]	@ zero_extendqisi2
	ldrb	r7, [r3, #5]	@ zero_extendqisi2
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
	str	r1, [sp, #12]
	ldrb	r1, [r3, #10]	@ zero_extendqisi2
	ldrb	r5, [r3, #13]	@ zero_extendqisi2
	ldrb	r6, [r3, #9]	@ zero_extendqisi2
	ldrb	r2, [r3, #12]	@ zero_extendqisi2
	str	r1, [sp, #16]
	ldr	r1, [sp, #8]
	orr	r4, r4, r10, asl #8
	orr	lr, lr, fp, asl #8
	ldrb	r10, [r3, #14]	@ zero_extendqisi2
	ldrb	fp, [r8, #6]	@ zero_extendqisi2
	orr	ip, ip, r7, asl #8
	ldrb	r7, [r3, #3]	@ zero_extendqisi2
	str	r10, [sp, #24]
	str	fp, [sp, #36]
	orr	r1, r1, r6, asl #8
	ldrb	fp, [r8, #3]	@ zero_extendqisi2
	str	r7, [sp, #8]
	orr	r2, r2, r5, asl #8
	ldr	r5, [sp, #20]
	ldr	r6, [sp, #32]
	ldrb	r10, [r3, #7]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #8
	ldr	r6, [sp, #4]
	ldrb	r7, [r3, #11]	@ zero_extendqisi2
	orr	r4, r4, r6, asl #16
	ldr	r6, [sp, #28]
	str	r7, [sp, #20]
	orr	lr, lr, r6, asl #16
	str	lr, [sp, #4]
	ldr	lr, [sp, #12]
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	orr	ip, ip, lr, asl #16
	ldr	lr, [sp, #16]
	orr	ip, ip, r10, asl #24
	orr	r1, r1, lr, asl #16
	ldr	lr, [sp, #24]
	.loc 6 85 0
	ldr	r10, [sp]
	.loc 6 82 0
	orr	r2, r2, lr, asl #16
	ldr	lr, [sp, #36]
	ldrb	r6, [r8, #7]	@ zero_extendqisi2
	orr	r5, r5, lr, asl #16
	ldr	lr, [sp, #8]
	orr	r2, r2, r7, asl #24
	orr	r4, r4, lr, asl #24
	ldr	lr, [sp, #4]
	orr	r5, r5, r6, asl #24
	orr	lr, lr, fp, asl #24
	ldr	fp, [sp, #20]
	.loc 6 83 0
	ldrb	r6, [r3, #16]	@ zero_extendqisi2
	.loc 6 82 0
	orr	r1, r1, fp, asl #24
	.loc 6 85 0
	add	fp, r8, r10
	.loc 6 82 0
	str	r1, [r9, #144]
	ldrb	r1, [fp, #5]	@ zero_extendqisi2
	str	r2, [r9, #148]
	ldrb	r7, [r8, #9]	@ zero_extendqisi2
	str	r4, [r9, #136]
	str	lr, [r9, #160]
	str	ip, [r9, #140]
	ldrb	lr, [r3, r10, asl #1]	@ zero_extendqisi2
	str	r5, [r9, #164]
	ldrb	r3, [fp, #4]	@ zero_extendqisi2
.LVL446:
	ldrb	r5, [r8, #13]	@ zero_extendqisi2
	ldrb	r4, [r8, #8]	@ zero_extendqisi2
	ldrb	ip, [r8, #12]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r6, [sp, #256]
.LVL447:
	.loc 6 82 0
	ldrb	r6, [fp, #1]	@ zero_extendqisi2
	str	r1, [sp, #12]
	ldrb	r1, [r8, #10]	@ zero_extendqisi2
	str	r1, [sp, #4]
	ldrb	r1, [fp, #2]	@ zero_extendqisi2
	str	r1, [sp, #16]
	ldrb	r1, [r8, #14]	@ zero_extendqisi2
	str	r1, [sp, #8]
	ldrb	r1, [fp, #6]	@ zero_extendqisi2
	ldrb	r10, [fp, #8]	@ zero_extendqisi2
	str	r1, [sp, #24]
	ldr	r1, [sp, #12]
	str	r10, [sp, #20]
	ldrb	r2, [fp, #9]	@ zero_extendqisi2
	ldrb	r10, [fp, #12]	@ zero_extendqisi2
	orr	r1, r3, r1, asl #8
	ldr	r3, [sp, #20]
	str	r10, [sp, #32]
	orr	ip, ip, r5, asl #8
	ldrb	r5, [r8, #11]	@ zero_extendqisi2
	ldrb	r10, [fp, #13]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #8
	orr	r2, r3, r2, asl #8
	ldrb	r6, [fp, #14]	@ zero_extendqisi2
	ldr	r3, [sp, #32]
	str	r6, [sp, #36]
	mov	r6, r5
	ldrb	r5, [fp, #3]	@ zero_extendqisi2
	str	r5, [sp, #20]
	orr	r5, r3, r10, asl #8
	ldr	r3, [sp, #4]
	orr	r4, r4, r7, asl #8
	orr	r4, r4, r3, asl #16
	ldr	r3, [sp, #16]
	ldrb	r7, [fp, #10]	@ zero_extendqisi2
	orr	lr, lr, r3, asl #16
	ldrb	r3, [fp, #15]	@ zero_extendqisi2
	str	r3, [sp, #4]
	ldr	r3, [sp, #8]
	str	r7, [sp, #28]
	ldrb	r7, [r8, #15]	@ zero_extendqisi2
	ldrb	r10, [fp, #7]	@ zero_extendqisi2
	str	r7, [sp, #12]
	orr	ip, ip, r3, asl #16
	ldrb	r7, [fp, #11]	@ zero_extendqisi2
	ldr	r3, [sp, #24]
	orr	r4, r4, r6, asl #24
	orr	r1, r1, r3, asl #16
	ldr	r6, [sp, #20]
	ldr	r3, [sp, #28]
	orr	lr, lr, r6, asl #24
	orr	r2, r2, r3, asl #16
	ldr	r6, [sp, #12]
	ldr	r3, [sp, #36]
	orr	ip, ip, r6, asl #24
	orr	r5, r5, r3, asl #16
	.loc 6 85 0
	ldr	r3, [sp]
	.loc 6 82 0
	str	ip, [r9, #172]
	orr	r1, r1, r10, asl #24
	ldr	ip, [sp, #4]
	.loc 6 85 0
	ldr	r10, [sp]
	add	r3, fp, r3
	.loc 6 82 0
	orr	r5, r5, ip, asl #24
	str	r1, [r9, #188]
	.loc 6 85 0
	add	ip, r3, r10
	.loc 6 82 0
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
	str	r1, [sp, #8]
	ldrb	r1, [ip, #4]	@ zero_extendqisi2
	.loc 6 83 0
	ldrb	r6, [r8, #16]	@ zero_extendqisi2
	.loc 6 82 0
	orr	r2, r2, r7, asl #24
	str	r1, [sp, #20]
	.loc 6 83 0
	ldrb	r7, [fp, #16]	@ zero_extendqisi2
	.loc 6 82 0
	ldrb	r1, [ip, #5]	@ zero_extendqisi2
	str	r5, [r9, #196]
	str	r4, [r9, #168]
	ldrb	r5, [r8, r10, asl #1]	@ zero_extendqisi2
	ldrb	r4, [fp, r10, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r3, #5]	@ zero_extendqisi2
.LVL448:
	ldrb	r10, [r3, #1]	@ zero_extendqisi2
	ldrb	fp, [ip, #1]	@ zero_extendqisi2
	str	lr, [r9, #184]
	str	r2, [r9, #192]
	ldrb	lr, [r3, #4]	@ zero_extendqisi2
	ldrb	r2, [r3, #12]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r7, [sp, #304]
	strb	r6, [sp, #280]
.LVL449:
	.loc 6 82 0
	ldrb	r7, [r3, #9]	@ zero_extendqisi2
	ldrb	r6, [r3, #13]	@ zero_extendqisi2
	str	r1, [sp, #32]
	ldrb	r1, [r3, #2]	@ zero_extendqisi2
	str	r1, [sp, #4]
	ldrb	r1, [ip, #2]	@ zero_extendqisi2
	str	r1, [sp, #28]
	ldrb	r1, [r3, #6]	@ zero_extendqisi2
	str	r1, [sp, #12]
	ldrb	r1, [r3, #10]	@ zero_extendqisi2
	str	r1, [sp, #16]
	ldr	r1, [sp, #8]
	orr	r2, r2, r6, asl #8
	orr	r1, r1, r7, asl #8
	ldr	r6, [sp, #20]
	ldr	r7, [sp, #32]
	orr	r5, r5, r10, asl #8
	orr	r6, r6, r7, asl #8
	ldr	r7, [sp, #4]
	orr	r4, r4, fp, asl #8
	orr	r5, r5, r7, asl #16
	ldr	r7, [sp, #28]
	orr	lr, lr, r8, asl #8
	orr	r4, r4, r7, asl #16
	str	r4, [sp, #4]
	ldr	r4, [sp, #12]
	ldrb	r10, [r3, #14]	@ zero_extendqisi2
	orr	lr, lr, r4, asl #16
	ldr	r4, [sp, #16]
	str	r10, [sp, #24]
	orr	r1, r1, r4, asl #16
	ldrb	r10, [ip, #6]	@ zero_extendqisi2
	ldr	r4, [sp, #24]
	str	r10, [sp, #36]
	ldrb	r8, [r3, #3]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #16
	ldr	r4, [sp, #36]
	str	r8, [sp, #8]
	orr	r6, r6, r4, asl #16
	ldr	r4, [sp, #8]
	ldrb	r8, [r3, #11]	@ zero_extendqisi2
	ldrb	fp, [ip, #3]	@ zero_extendqisi2
	ldrb	r10, [r3, #7]	@ zero_extendqisi2
	str	r8, [sp, #20]
	orr	r5, r5, r4, asl #24
	ldrb	r8, [r3, #15]	@ zero_extendqisi2
	ldr	r4, [sp, #4]
	ldrb	r7, [ip, #7]	@ zero_extendqisi2
	orr	r4, r4, fp, asl #24
	orr	lr, lr, r10, asl #24
	orr	r2, r2, r8, asl #24
	ldr	r10, [sp, #20]
	.loc 6 83 0
	ldrb	r8, [r3, #16]	@ zero_extendqisi2
	.loc 6 85 0
	ldr	fp, [sp]
	.loc 6 82 0
	orr	r10, r1, r10, asl #24
	orr	r6, r6, r7, asl #24
	.loc 6 85 0
	add	r1, ip, fp
	.loc 6 82 0
	str	r6, [r9, #236]
	ldrb	r6, [r3, fp, asl #1]	@ zero_extendqisi2
	ldrb	r3, [r1, #9]	@ zero_extendqisi2
.LVL450:
	str	r3, [sp, #20]
	ldrb	r3, [r1, #12]	@ zero_extendqisi2
	str	r3, [sp, #28]
	ldrb	r3, [ip, #10]	@ zero_extendqisi2
	str	r3, [sp, #8]
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
	str	r2, [r9, #220]
	str	r3, [sp, #16]
	ldrb	r2, [ip, #9]	@ zero_extendqisi2
	ldrb	r3, [ip, #14]	@ zero_extendqisi2
	str	r2, [sp, #4]
	str	r3, [sp, #12]
	ldrb	r3, [r1, #6]	@ zero_extendqisi2
	ldrb	r7, [ip, #8]	@ zero_extendqisi2
	str	r3, [sp, #24]
	ldr	r3, [sp, #4]
	str	r5, [r9, #208]
	str	lr, [r9, #212]
	ldrb	r5, [ip, #13]	@ zero_extendqisi2
	ldrb	lr, [ip, #12]	@ zero_extendqisi2
	ldrb	r2, [r1, #4]	@ zero_extendqisi2
	ldrb	fp, [r1, #13]	@ zero_extendqisi2
	str	r4, [r9, #232]
	str	r10, [r9, #216]
	ldrb	r4, [r1, #5]	@ zero_extendqisi2
	ldrb	r10, [r1, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r8, [sp, #328]
.LVL451:
	.loc 6 82 0
	orr	r7, r7, r3, asl #8
	ldrb	r8, [r1, #1]	@ zero_extendqisi2
	ldrb	r3, [r1, #10]	@ zero_extendqisi2
	str	r3, [sp, #32]
	orr	r5, lr, r5, asl #8
	ldr	r3, [sp, #20]
	ldrb	lr, [ip, #11]	@ zero_extendqisi2
	str	lr, [sp, #4]
	orr	r6, r6, r8, asl #8
	ldr	lr, [sp, #28]
	ldrb	r8, [r1, #14]	@ zero_extendqisi2
	str	r8, [sp, #36]
	orr	r3, r10, r3, asl #8
	ldrb	r8, [r1, #3]	@ zero_extendqisi2
	ldr	r10, [sp, #8]
	str	r8, [sp, #20]
	orr	r4, r2, r4, asl #8
	orr	r8, lr, fp, asl #8
	ldr	r2, [sp, #12]
	ldrb	lr, [r1, #7]	@ zero_extendqisi2
	str	lr, [sp, #28]
	orr	r7, r7, r10, asl #16
	ldr	lr, [sp, #4]
	ldrb	r10, [r1, #11]	@ zero_extendqisi2
	str	r10, [sp, #8]
	orr	r5, r5, r2, asl #16
	ldr	r10, [sp, #16]
	ldr	r2, [sp, #24]
	orr	r7, r7, lr, asl #24
	ldr	lr, [sp, #20]
	orr	r6, r6, r10, asl #16
	orr	r4, r4, r2, asl #16
	ldr	r2, [sp, #32]
	orr	r6, r6, lr, asl #24
	ldr	lr, [sp, #28]
	orr	r3, r3, r2, asl #16
	ldr	r2, [sp, #36]
	orr	r4, r4, lr, asl #24
	ldr	lr, [sp, #8]
	orr	r8, r8, r2, asl #16
	.loc 6 85 0
	ldr	r2, [sp]
	.loc 6 82 0
	ldrb	fp, [ip, #15]	@ zero_extendqisi2
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	orr	lr, r3, lr, asl #24
	.loc 6 85 0
	ldr	r3, [sp]
	add	r2, r1, r2
	.loc 6 82 0
	orr	r5, r5, fp, asl #24
	orr	r8, r8, r10, asl #24
	add	fp, sp, #376
	.loc 6 85 0
	add	r10, r2, r3
	.loc 6 82 0
	str	r7, [r9, #240]
	str	fp, [sp, #8]
	.loc 6 85 0
	str	r10, [sp, #4]
	.loc 6 83 0
	ldrb	fp, [r1, #16]	@ zero_extendqisi2
	ldrb	r10, [ip, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r6, [sp, #360]
	str	r5, [r9, #244]
	ldrb	r6, [r1, r3, asl #1]	@ zero_extendqisi2
	ldrb	r5, [ip, r3, asl #1]	@ zero_extendqisi2
	ldr	r1, [sp, #4]
	ldrb	r3, [r2, #8]	@ zero_extendqisi2
	str	r4, [sp, #364]
	ldr	r4, [sp, #8]
	str	r3, [sp, #40]
	ldrb	r3, [r2, #9]	@ zero_extendqisi2
	str	r8, [r4, #-4]
	ldrb	r7, [r1, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
.LVL452:
	.loc 6 83 0
	strb	fp, [sp, #376]
	.loc 6 82 0
	str	r3, [sp, #16]
	ldrb	fp, [r1, #1]	@ zero_extendqisi2
	mov	r3, r1
	ldrb	r1, [r1, #2]	@ zero_extendqisi2
	str	r1, [sp, #28]
	ldrb	r1, [r2, #2]	@ zero_extendqisi2
	str	r1, [sp, #8]
	ldrb	r1, [r2, #6]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r10, [sp, #352]
.LVL453:
	.loc 6 82 0
	str	r1, [sp, #12]
	ldrb	r10, [r2, #1]	@ zero_extendqisi2
	ldrb	r1, [r2, #14]	@ zero_extendqisi2
	str	r1, [sp, #24]
	orr	r6, r6, fp, asl #8
	ldrb	r1, [r3, #6]	@ zero_extendqisi2
	ldrb	fp, [r2, #10]	@ zero_extendqisi2
	ldrb	r9, [r2, #5]	@ zero_extendqisi2
	ldrb	r8, [r2, #13]	@ zero_extendqisi2
	str	lr, [r4, #-8]
	str	r1, [sp, #36]
	ldrb	r4, [r2, #4]	@ zero_extendqisi2
	ldrb	lr, [r2, #12]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #8
	str	fp, [sp, #20]
	orr	ip, ip, r7, asl #8
	ldrb	r10, [r3, #3]	@ zero_extendqisi2
	ldr	r7, [sp, #16]
	ldr	r3, [sp, #40]
	orr	lr, lr, r8, asl #8
	orr	r1, r3, r7, asl #8
	ldr	r3, [sp, #4]
	orr	r4, r4, r9, asl #8
	ldrb	r8, [r3, #7]	@ zero_extendqisi2
	ldr	r3, [sp, #28]
	str	r10, [sp, #32]
	orr	r6, r6, r3, asl #16
	ldr	r3, [sp, #8]
	ldrb	r9, [r2, #15]	@ zero_extendqisi2
	orr	r5, r5, r3, asl #16
	ldr	r3, [sp, #12]
	ldrb	r7, [r2, #11]	@ zero_extendqisi2
	orr	r4, r4, r3, asl #16
	ldr	r3, [sp, #24]
.LBE361:
.LBE360:
	.loc 5 697 0
	str	r0, [sp, #8]
.LBB364:
.LBB362:
	.loc 6 82 0
	orr	lr, lr, r3, asl #16
	ldr	r3, [sp, #36]
	ldrb	r10, [r2, #7]	@ zero_extendqisi2
	orr	ip, ip, r3, asl #16
	ldr	r3, [sp, #20]
	ldrb	fp, [r2, #3]	@ zero_extendqisi2
	orr	r1, r1, r3, asl #16
	ldr	r3, [sp, #32]
	orr	lr, lr, r9, asl #24
	orr	r6, r6, r3, asl #24
	.loc 6 85 0
	ldr	r9, [sp]
	ldr	r3, [sp, #4]
	ldr	r0, [sp, #8]
	.loc 6 82 0
	orr	r7, r1, r7, asl #24
	orr	r5, r5, fp, asl #24
	.loc 6 85 0
	add	r1, r3, r9
	.loc 6 82 0
	orr	r4, r4, r10, asl #24
	orr	ip, ip, r8, asl #24
	ldrb	r10, [r3, #8]	@ zero_extendqisi2
	.loc 6 83 0
	ldrb	r8, [r2, #16]	@ zero_extendqisi2
	add	r0, r0, r9
.LVL454:
	.loc 6 82 0
	str	r7, [sp, #392]
	ldrb	r7, [r3, #9]	@ zero_extendqisi2
	str	r6, [sp, #408]
	str	r5, [sp, #384]
	ldrb	r6, [r2, r9, asl #1]	@ zero_extendqisi2
	str	r4, [sp, #388]
	str	lr, [sp, #396]
	str	ip, [sp, #412]
	.loc 6 83 0
	strb	r8, [sp, #400]
.LVL455:
	str	r0, [sp, #12]
	.loc 6 82 0
	ldrb	fp, [r1, #1]	@ zero_extendqisi2
	ldrb	r9, [r3, #13]	@ zero_extendqisi2
	ldrb	r5, [r3, #12]	@ zero_extendqisi2
	orr	r7, r10, r7, asl #8
	ldrb	r10, [r1, #14]	@ zero_extendqisi2
	ldrb	r8, [r1, #5]	@ zero_extendqisi2
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	str	r10, [sp, #40]
	orr	r5, r5, r9, asl #8
	ldr	r10, [sp, #12]
	ldr	r9, [sp]
	mov	ip, r3
	ldrb	r3, [r1, #12]	@ zero_extendqisi2
.LVL456:
	str	r3, [sp, #36]
	add	r10, r10, r9
	ldrb	r3, [ip, #10]	@ zero_extendqisi2
	orr	r4, r4, r8, asl #8
	ldrb	ip, [ip, #14]	@ zero_extendqisi2
.LVL457:
	ldr	r8, [sp, #4]
	ldrb	r2, [r1, #8]	@ zero_extendqisi2
	ldrb	lr, [r1, #13]	@ zero_extendqisi2
	str	ip, [sp, #20]
	str	r10, [sp, #16]
	ldrb	ip, [r1, #6]	@ zero_extendqisi2
	ldr	r10, [sp, #36]
	str	r2, [sp, #28]
	str	ip, [sp, #24]
	ldrb	ip, [r8, #11]	@ zero_extendqisi2
	ldrb	r8, [r8, #15]	@ zero_extendqisi2
	ldrb	r2, [r1, #2]	@ zero_extendqisi2
	orr	r6, r6, fp, asl #8
	orr	lr, r10, lr, asl #8
	ldrb	fp, [r1, #10]	@ zero_extendqisi2
	ldr	r10, [sp, #28]
	str	r8, [sp, #28]
	ldrb	r8, [r1, #7]	@ zero_extendqisi2
	ldrb	r0, [r1, #9]	@ zero_extendqisi2
	str	fp, [sp, #32]
	orr	r7, r7, r3, asl #16
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	str	r8, [sp, #36]
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	ldr	r3, [sp, #20]
	orr	r6, r6, r2, asl #16
	ldr	r2, [sp, #16]
	orr	r5, r5, r3, asl #16
	ldr	r3, [sp, #24]
	add	r2, r2, r9
	orr	r4, r4, r3, asl #16
	str	r2, [sp, #20]
	mov	r3, r2
	ldr	r2, [sp, #40]
	add	r3, r3, r9
	orr	r7, r7, ip, asl #24
	add	ip, sp, #424
	str	ip, [sp]
.LVL458:
	orr	lr, lr, r2, asl #16
	orr	ip, r6, fp, asl #24
	ldr	r2, [sp, #32]
	str	r3, [sp, #24]
	add	r3, r3, r9
	ldr	r6, [sp]
	str	ip, [sp, #32]
	ldr	fp, [sp, #36]
	ldr	ip, [sp, #28]
	orr	lr, lr, r8, asl #24
	orr	r0, r10, r0, asl #8
	.loc 6 83 0
	ldr	r8, [sp, #4]
	.loc 6 82 0
	ldrb	r10, [r1, #11]	@ zero_extendqisi2
	str	r3, [sp, #48]
	add	r3, r3, r9
	orr	r0, r0, r2, asl #16
	str	r3, [sp, #28]
	.loc 6 85 0
	add	r2, r1, r9
	.loc 6 82 0
	ldr	r3, [sp, #4]
	orr	r5, r5, ip, asl #24
	orr	r4, r4, fp, asl #24
	orr	r10, r0, r10, asl #24
	.loc 6 83 0
	ldrb	fp, [r1, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	r0, r2, r9
	.loc 6 83 0
	ldrb	r8, [r8, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r7, [r6, #-8]
	ldr	r7, [sp, #32]
	str	r5, [r6, #-4]
	str	r7, [sp, #432]
	ldrb	r6, [r2, #1]	@ zero_extendqisi2
	ldrb	r7, [r0, #1]	@ zero_extendqisi2
	str	r4, [sp, #436]
	str	lr, [sp, #444]
	ldrb	r4, [r1, r9, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r3, r9, asl #1]	@ zero_extendqisi2
	str	r10, [sp, #440]
	.loc 6 83 0
	strb	fp, [sp, #448]
	strb	r8, [sp, #424]
.LVL459:
	.loc 6 82 0
	mov	fp, r9
	ldrb	ip, [r0, #4]	@ zero_extendqisi2
	ldrb	r8, [r0, #5]	@ zero_extendqisi2
	ldrb	r9, [r2, #9]	@ zero_extendqisi2
.LVL460:
	ldrb	r3, [r2, #8]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	orr	r3, r3, r9, asl #8
	ldrb	r8, [r2, #2]	@ zero_extendqisi2
	ldrb	r5, [r2, #12]	@ zero_extendqisi2
	str	r3, [sp]
	orr	lr, lr, r6, asl #8
	ldr	r3, [sp, #28]
	ldrb	r6, [r2, #13]	@ zero_extendqisi2
	ldrb	r10, [r2, #5]	@ zero_extendqisi2
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #16
	ldrb	r8, [r2, #14]	@ zero_extendqisi2
	ldrb	r9, [r2, #6]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #8
	orr	r5, r5, r6, asl #8
	ldrb	r7, [r0, #2]	@ zero_extendqisi2
	add	r3, r3, fp
	ldrb	r6, [r2, #10]	@ zero_extendqisi2
	str	r3, [sp, #32]
	orr	r1, r1, r10, asl #8
	ldr	r3, [sp]
	orr	r5, r5, r8, asl #16
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	ldrb	r10, [r0, #6]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #16
	orr	r1, r1, r9, asl #16
	ldrb	r7, [r0, #3]	@ zero_extendqisi2
	orr	r1, r1, r8, asl #24
	orr	r3, r3, r6, asl #16
	ldr	r8, [sp, #32]
	ldrb	r6, [r0, #7]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #24
	orr	ip, ip, r10, asl #16
	ldrb	r7, [r2, #11]	@ zero_extendqisi2
	ldrb	r9, [r2, #3]	@ zero_extendqisi2
	orr	ip, ip, r6, asl #24
	add	r8, r8, fp
	ldrb	r6, [r2, #15]	@ zero_extendqisi2
	orr	r3, r3, r7, asl #24
	add	r7, r8, fp
	orr	r5, r5, r6, asl #24
	.loc 6 83 0
	ldrb	r2, [r2, #16]	@ zero_extendqisi2
.LVL461:
	.loc 6 82 0
	orr	lr, lr, r9, asl #24
	add	r6, r7, fp
	str	r4, [sp, #480]
	str	lr, [sp, #456]
	str	ip, [sp, #484]
	str	r1, [sp, #460]
	str	r8, [sp, #52]
	str	r7, [sp, #56]
	str	r6, [sp, #60]
	str	r3, [sp, #464]
	.loc 6 83 0
	strb	r2, [sp, #472]
.LVL462:
	add	r2, r6, fp
	.loc 6 82 0
	ldrb	r1, [r0, #9]	@ zero_extendqisi2
	ldrb	r4, [r0, #13]	@ zero_extendqisi2
	ldrb	r3, [r0, #8]	@ zero_extendqisi2
	str	r5, [sp, #468]
	str	r2, [sp, #64]
	mov	r5, r2
	ldrb	r2, [r0, #12]	@ zero_extendqisi2
	ldrb	lr, [r0, #14]	@ zero_extendqisi2
	orr	r3, r3, r1, asl #8
	orr	r2, r2, r4, asl #8
	ldrb	r1, [r0, #10]	@ zero_extendqisi2
	orr	r2, r2, lr, asl #16
	ldrb	lr, [r0, #15]	@ zero_extendqisi2
	add	r5, r5, fp
	orr	r3, r3, r1, asl #16
	ldrb	r1, [r0, #11]	@ zero_extendqisi2
	orr	r2, r2, lr, asl #24
	.loc 6 83 0
	ldr	ip, .L152
	add	lr, r5, fp
	.loc 6 82 0
	orr	r3, r3, r1, asl #24
	add	r1, lr, fp
.LPIC27:
	ldr	ip, [pc, ip]		@ tls_load_dot_plus_eight
	str	lr, [sp, #72]
	mov	lr, r1
	str	r1, [sp, #76]
	.loc 6 83 0
	ldrb	r1, [r0, #16]	@ zero_extendqisi2
	add	r0, lr, fp
.LVL463:
	ldr	r4, [sp, #8]
	str	r0, [sp, #44]
.LBE362:
.LBE364:
.LBB365:
.LBB366:
.LBB367:
	.loc 5 697 0 discriminator 3
	add	r0, ip, #1024
	str	r0, [sp]
.LBE367:
.LBE366:
.LBE365:
.LBB372:
.LBB363:
	.loc 6 83 0
	add	r0, sp, #96
	sub	r4, r4, #1
	.loc 6 82 0
	str	r2, [sp, #492]
	str	r3, [sp, #488]
	add	r2, sp, #112
	.loc 6 83 0
	mov	r3, r0
	str	r5, [sp, #68]
	str	r4, [sp, #36]
	str	r4, [sp, #40]
	str	r2, [sp, #92]
	strb	r1, [sp, #496]
.LVL464:
.L149:
.LBE363:
.LBE372:
.LBB373:
.LBB371:
.LBB368:
	.loc 5 697 0 discriminator 3
	ldrb	r0, [r3]	@ zero_extendqisi2
.LVL465:
	ldrb	r2, [r3, #48]	@ zero_extendqisi2
	ldrb	r1, [r3, #24]	@ zero_extendqisi2
.LVL466:
	ldrb	r8, [r3, #72]	@ zero_extendqisi2
.LVL467:
	add	r4, r0, r2
	add	lr, r0, r1
	sub	r4, r4, r4, asl #2
	ldrb	r7, [r3, #96]	@ zero_extendqisi2
.LVL468:
	add	ip, r1, r8
	mov	r4, r4, asl #1
	add	lr, lr, lr, asl #2
	add	lr, r4, lr, asl #2
	add	ip, ip, ip, asl #1
	add	lr, lr, ip
	add	ip, r2, r7
	ldr	fp, [sp]
	ldr	r5, [sp, #40]
	rsb	lr, ip, lr
	add	lr, lr, #16
	ldrb	r9, [r5, #1]!	@ zero_extendqisi2
	ldrb	lr, [fp, lr, asr #5]	@ zero_extendqisi2
	add	r4, r0, r8
	add	ip, r1, r2
	sub	r4, r4, r4, asl #2
	ldrb	r6, [r3, #120]	@ zero_extendqisi2
.LVL469:
	str	r5, [sp, #40]
	mov	r4, r4, asl #1
	add	r5, r0, r7
	add	lr, r9, lr
	add	ip, ip, ip, asl #2
	ldr	r9, [sp, #36]
	add	ip, r4, ip, asl #2
	add	r5, r5, r5, asl #1
	add	lr, lr, #1
	add	r10, r1, r6
	add	r5, ip, r5
	mov	lr, lr, asr #1
	strb	lr, [r9, #1]!
	rsb	r5, r10, r5
	ldr	lr, [sp, #12]
	add	r5, r5, #16
	ldrb	r10, [lr]	@ zero_extendqisi2
	add	r4, r1, r7
	ldrb	lr, [fp, r5, asr #5]	@ zero_extendqisi2
	add	ip, r2, r8
	sub	r4, r4, r4, asl #2
	ldrb	r5, [r3, #144]	@ zero_extendqisi2
.LVL470:
	str	r9, [sp, #36]
	mov	r4, r4, asl #1
	add	r9, r0, r6
	add	lr, r10, lr
	add	ip, ip, ip, asl #2
	add	ip, r4, ip, asl #2
	add	r9, r9, r9, asl #1
	ldr	r4, [sp, #12]
	add	lr, lr, #1
	add	fp, r0, r5
	add	ip, ip, r9
	mov	lr, lr, asr #1
	strb	lr, [r4], #1
	rsb	ip, fp, ip
	ldr	lr, [sp]
	str	r4, [sp, #12]
	ldr	r4, [sp, #16]
	add	ip, ip, #16
	ldrb	fp, [r4]	@ zero_extendqisi2
	ldrb	ip, [lr, ip, asr #5]	@ zero_extendqisi2
	add	r10, r2, r6
	add	r9, r8, r7
	sub	r10, r10, r10, asl #2
	ldrb	r4, [r3, #168]	@ zero_extendqisi2
.LVL471:
	add	lr, r1, r5
	mov	r10, r10, asl #1
	add	ip, fp, ip
	add	r9, r9, r9, asl #2
	ldr	fp, [sp, #16]
	add	r9, r10, r9, asl #2
	add	lr, lr, lr, asl #1
	add	ip, ip, #1
	add	r9, r9, lr
	mov	ip, ip, asr #1
	add	lr, r0, r4
	strb	ip, [fp], #1
	rsb	lr, lr, r9
	ldr	ip, [sp, #20]
	ldr	r0, [sp]
.LVL472:
	add	r10, r8, r5
	add	lr, lr, #16
	add	r9, r7, r6
	str	fp, [sp, #16]
	ldrb	r0, [r0, lr, asr #5]	@ zero_extendqisi2
	ldrb	fp, [ip]	@ zero_extendqisi2
	sub	r10, r10, r10, asl #2
	ldrb	lr, [r3, #192]	@ zero_extendqisi2
.LVL473:
	add	ip, r2, r4
	mov	r10, r10, asl #1
	add	r9, r9, r9, asl #2
	add	r9, r10, r9, asl #2
	add	ip, ip, ip, asl #1
	add	r0, fp, r0
	add	r9, r9, ip
	add	r0, r0, #1
	add	ip, r1, lr
	ldr	r1, [sp, #20]
.LVL474:
	mov	r0, r0, asr #1
	strb	r0, [r1], #1
	add	r10, r7, r4
	ldr	r0, [sp]
	rsb	ip, ip, r9
	str	r1, [sp, #20]
	ldr	r1, [sp, #24]
	add	r9, r6, r5
	add	ip, ip, #16
	sub	r10, r10, r10, asl #2
	ldrb	fp, [r1]	@ zero_extendqisi2
	mov	r10, r10, asl #1
	ldrb	r1, [r0, ip, asr #5]	@ zero_extendqisi2
	add	r9, r9, r9, asl #2
	ldrb	ip, [r3, #216]	@ zero_extendqisi2
.LVL475:
	add	r0, r8, lr
	add	r9, r10, r9, asl #2
	add	r0, r0, r0, asl #1
	add	r9, r9, r0
	add	r2, r2, ip
.LVL476:
	rsb	r2, r2, r9
	ldrb	r9, [r3, #288]	@ zero_extendqisi2
	str	r9, [sp, #4]
	ldrb	r9, [r3, #312]	@ zero_extendqisi2
	add	r1, fp, r1
	str	r9, [sp, #80]
	ldrb	r9, [r3, #336]	@ zero_extendqisi2
	ldr	fp, [sp, #24]
	str	r9, [sp, #84]
	add	r1, r1, #1
	ldrb	r9, [r3, #360]	@ zero_extendqisi2
	mov	r1, r1, asr #1
	str	r9, [sp, #8]
	ldrb	r9, [r3, #384]	@ zero_extendqisi2
	strb	r1, [fp], #1
	str	r9, [sp, #88]
	str	fp, [sp, #24]
	ldr	r9, [sp]
	ldr	fp, [sp, #48]
	add	r10, r6, lr
	add	r2, r2, #16
	ldrb	r1, [fp]	@ zero_extendqisi2
	ldrb	r2, [r9, r2, asr #5]	@ zero_extendqisi2
	sub	r10, r10, r10, asl #2
	add	r9, r5, r4
	str	r1, [sp, #48]
	mov	r10, r10, asl #1
	add	r9, r9, r9, asl #2
	add	r9, r10, r9, asl #2
	ldr	r10, [sp, #48]
	ldrb	r0, [r3, #240]	@ zero_extendqisi2
.LVL477:
	add	r2, r10, r2
	add	r10, r7, ip
	add	r10, r10, r10, asl #1
	add	r9, r9, r10
	add	r10, r2, #1
	add	r8, r8, r0
.LVL478:
	mov	r10, r10, asr #1
	strb	r10, [fp], #1
	add	r2, r5, ip
	rsb	r8, r8, r9
	ldr	r10, [sp]
	add	r9, r4, lr
	add	r8, r8, #16
	sub	r2, r2, r2, asl #2
	ldrb	r1, [r3, #264]	@ zero_extendqisi2
.LVL479:
	str	fp, [sp, #48]
	add	r9, r9, r9, asl #2
	ldrb	r8, [r10, r8, asr #5]	@ zero_extendqisi2
	mov	r2, r2, asl #1
	ldr	fp, [sp, #28]
	add	r2, r2, r9, asl #2
	add	r9, r6, r0
	ldrb	r10, [fp]	@ zero_extendqisi2
	add	r9, r9, r9, asl #1
	add	r2, r2, r9
	add	r7, r7, r1
.LVL480:
	add	r10, r10, r8
	rsb	r7, r7, r2
	add	r2, r4, r0
	sub	r8, r2, r2, asl #2
	add	r10, r10, #1
	add	r2, lr, ip
	mov	r10, r10, asr #1
	mov	r8, r8, asl #1
	add	r2, r2, r2, asl #2
	strb	r10, [fp], #1
	add	r9, r5, r1
	ldr	r10, [sp]
	str	fp, [sp, #28]
	add	r2, r8, r2, asl #2
	ldr	fp, [sp, #32]
	ldr	r8, [sp, #4]
	add	r9, r9, r9, asl #1
	add	r7, r7, #16
	ldrb	r7, [r10, r7, asr #5]	@ zero_extendqisi2
	add	r2, r2, r9
	ldrb	r10, [fp]	@ zero_extendqisi2
	add	r6, r6, r8
.LVL481:
	rsb	r6, r6, r2
	add	r2, lr, r1
	add	r10, r10, r7
	ldr	r8, [sp, #4]
	sub	r7, r2, r2, asl #2
	add	r2, ip, r0
	mov	r7, r7, asl #1
	add	r10, r10, #1
	add	r2, r2, r2, asl #2
	mov	r10, r10, asr #1
	add	r8, r4, r8
	add	r2, r7, r2, asl #2
	ldr	r7, [sp, #80]
	strb	r10, [fp], #1
	add	r8, r8, r8, asl #1
	ldr	r10, [sp]
	str	fp, [sp, #32]
	ldr	fp, [sp, #52]
	add	r2, r2, r8
	add	r5, r5, r7
.LVL482:
	add	r6, r6, #16
	ldrb	r6, [r10, r6, asr #5]	@ zero_extendqisi2
	ldrb	r9, [fp]	@ zero_extendqisi2
	rsb	r5, r5, r2
	ldr	r2, [sp, #4]
	add	r9, r9, r6
	add	r2, ip, r2
	sub	r6, r2, r2, asl #2
	add	r9, r9, #1
	add	r2, r0, r1
	mov	r8, fp
	mov	r9, r9, asr #1
	mov	r6, r6, asl #1
	add	r2, r2, r2, asl #2
	strb	r9, [r8], #1
	ldr	fp, [sp, #56]
	mov	r9, r7
	add	r2, r6, r2, asl #2
	add	r7, lr, r7
	ldr	r6, [sp, #84]
	add	r7, r7, r7, asl #1
	add	r5, r5, #16
	ldrb	r5, [r10, r5, asr #5]	@ zero_extendqisi2
	add	r2, r2, r7
	str	r8, [sp, #52]
	add	r4, r4, r6
.LVL483:
	ldrb	r8, [fp]	@ zero_extendqisi2
	rsb	r4, r4, r2
	add	r2, r0, r9
	add	r8, r8, r5
	sub	r5, r2, r2, asl #2
	ldr	r2, [sp, #4]
	add	r8, r8, #1
	add	r2, r1, r2
	mov	r7, fp
	mov	r8, r8, asr #1
	mov	r5, r5, asl #1
	add	r2, r2, r2, asl #2
	strb	r8, [r7], #1
	ldr	fp, [sp, #60]
	mov	r8, r6
	add	r2, r5, r2, asl #2
	add	r6, ip, r6
	ldr	r5, [sp, #8]
	add	r6, r6, r6, asl #1
	add	r4, r4, #16
	ldrb	r4, [r10, r4, asr #5]	@ zero_extendqisi2
	add	r2, r2, r6
	str	r7, [sp, #56]
	add	lr, lr, r5
.LVL484:
	ldrb	r7, [fp]	@ zero_extendqisi2
	rsb	lr, lr, r2
	add	r2, r1, r8
	add	r7, r7, r4
	sub	r4, r2, r2, asl #2
	ldr	r2, [sp, #4]
	add	r7, r7, #1
	add	r2, r2, r9
	mov	r6, fp
	mov	r7, r7, asr #1
	mov	r4, r4, asl #1
	add	r2, r2, r2, asl #2
	strb	r7, [r6], #1
	add	r2, r4, r2, asl #2
	mov	r7, r5
	ldr	r4, [sp, #88]
	add	r5, r0, r5
	ldr	fp, [sp, #64]
	add	r5, r5, r5, asl #1
	add	r2, r2, r5
	add	ip, ip, r4
.LVL485:
	add	lr, lr, #16
	ldrb	lr, [r10, lr, asr #5]	@ zero_extendqisi2
	rsb	ip, ip, r2
	str	r6, [sp, #60]
	ldr	r2, [sp, #4]
	ldrb	r6, [fp]	@ zero_extendqisi2
	add	r2, r2, r7
	add	r6, r6, lr
	mov	r7, r8
	sub	lr, r2, r2, asl #2
	add	r6, r6, #1
	add	r2, r9, r8
	mov	r8, fp
	ldr	fp, [sp, #68]
	mov	r6, r6, asr #1
	add	ip, ip, #16
	strb	r6, [r8], #1
	mov	lr, lr, asl #1
	ldrb	r5, [fp]	@ zero_extendqisi2
	ldrb	ip, [r10, ip, asr #5]	@ zero_extendqisi2
	str	r8, [sp, #64]
	add	r2, r2, r2, asl #2
	mov	r8, r4
	add	r4, r1, r4
	add	r2, lr, r2, asl #2
	add	r4, r4, r4, asl #1
	add	r2, r2, r4
	add	ip, r5, ip
	ldr	r4, [sp, #8]
	add	r0, r0, r8
.LVL486:
	add	ip, ip, #1
	rsb	r0, r0, r2
	add	r5, r9, r8
	mov	r2, fp
	ldr	r6, [sp, #4]
	ldr	fp, [sp, #72]
	mov	lr, ip, asr #1
	add	r0, r0, #16
	add	ip, r7, r4
	sub	r5, r5, r5, asl #2
	strb	lr, [r2], #1
	mov	r5, r5, asl #1
	ldrb	lr, [r10, r0, asr #5]	@ zero_extendqisi2
	str	r2, [sp, #68]
	ldrb	r0, [fp]	@ zero_extendqisi2
	add	ip, ip, ip, asl #2
	add	r2, r6, r8
	add	ip, r5, ip, asl #2
	add	r2, r2, r2, asl #1
	add	r1, r1, r4
.LVL487:
	add	r0, r0, lr
	add	ip, ip, r2
	mov	r5, r4
	rsb	ip, r1, ip
	add	r0, r0, #1
	add	r4, r7, r8
	mov	r2, fp
	mov	r0, r0, asr #1
	add	ip, ip, #16
	add	lr, r5, r8
	sub	r4, r4, r4, asl #2
	strb	r0, [r2], #1
	add	r1, r9, r5
	ldrb	r0, [r10, ip, asr #5]	@ zero_extendqisi2
	add	lr, lr, lr, asl #2
	ldr	ip, [sp, #76]
	mov	r4, r4, asl #1
	add	r1, r1, r1, asl #1
	add	r4, r4, lr, asl #2
	add	r4, r4, r1
	str	r2, [sp, #72]
	ldr	r1, [sp, #4]
	ldrb	r2, [ip]	@ zero_extendqisi2
	add	r1, r1, r7
	add	r2, r2, r0
	rsb	r4, r1, r4
	ldr	r0, [sp, #44]
	add	r2, r2, #1
	mov	r1, ip
	mov	r2, r2, asr #1
	add	r4, r4, #16
	strb	r2, [r1], #1
	ldrb	r2, [r0]	@ zero_extendqisi2
	str	r1, [sp, #76]
	ldrb	r1, [r10, r4, asr #5]	@ zero_extendqisi2
	add	r3, r3, #1
.LVL488:
	add	r2, r2, r1
.LBE368:
	.loc 5 697 0 is_stmt 0 discriminator 1
	ldr	r1, [sp, #92]
.LBB369:
	.loc 5 697 0 discriminator 3
	add	r2, r2, #1
.LBE369:
	.loc 5 697 0 discriminator 1
	cmp	r3, r1
.LBB370:
	.loc 5 697 0 discriminator 3
	mov	r2, r2, asr #1
	mov	r1, r0
	strb	r2, [r1], #1
	str	r1, [sp, #44]
.LVL489:
.LBE370:
	.loc 5 697 0 discriminator 1
	bne	.L149
.LBE371:
.LBE373:
	.loc 5 697 0
	add	sp, sp, #508
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L153:
	.align	2
.L152:
	.word	ff_crop_tab(GOT_PREL)+(.-(.LPIC27+8))
	.cfi_endproc
.LFE223:
	.size	avg_qpel16_mc02_c, .-avg_qpel16_mc02_c
	.align	2
	.type	avg_mpeg4_qpel16_v_lowpass.constprop.1, %function
avg_mpeg4_qpel16_v_lowpass.constprop.1:
.LFB273:
	.loc 5 697 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL490:
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
	add	r3, r0, r2
	sub	sp, sp, #116
	.cfi_def_cfa_offset 152
.LVL491:
	str	r3, [sp, #32]
	add	r3, r3, r2
	str	r3, [sp, #36]
	add	r3, r3, r2
	str	r3, [sp, #40]
	add	r3, r3, r2
	str	r3, [sp, #44]
	add	r3, r3, r2
	str	r3, [sp, #48]
	add	r3, r3, r2
	str	r3, [sp, #52]
	add	r3, r3, r2
	str	r3, [sp, #88]
	add	r3, r3, r2
	str	r3, [sp, #84]
	add	r3, r3, r2
	str	r3, [sp, #80]
	add	r3, r3, r2
	str	r3, [sp, #76]
	add	r3, r3, r2
	.loc 5 697 0
	str	r0, [sp, #92]
.LVL492:
	str	r3, [sp, #72]
	mov	r0, r3
	ldr	r3, .L158
	add	r0, r0, r2
	str	r0, [sp, #68]
.LPIC29:
	ldr	r3, [pc, r3]		@ tls_load_dot_plus_eight
	add	r0, r0, r2
	str	r0, [sp, #64]
	add	r0, r0, r2
	add	r2, r0, r2
.LVL493:
.LBB374:
	.loc 5 697 0 is_stmt 0 discriminator 3
	add	r3, r3, #1024
	str	r2, [sp, #56]
	mov	r2, r3
	mov	r3, r1
	str	r3, [sp]
	add	r1, r1, #16
.LVL494:
	mov	r3, r2
.LVL495:
	str	r0, [sp, #60]
	str	r1, [sp, #108]
.LVL496:
.L155:
	ldr	r2, [sp]
	ldr	lr, [sp]
	ldrb	r8, [r2]	@ zero_extendqisi2
.LVL497:
	ldrb	r6, [r2, #32]	@ zero_extendqisi2
	ldrb	r7, [r2, #16]	@ zero_extendqisi2
.LVL498:
	ldrb	r5, [r2, #48]	@ zero_extendqisi2
.LVL499:
	add	ip, r8, r6
	add	r0, r8, r7
	sub	ip, ip, ip, asl #2
	ldrb	r4, [r2, #64]	@ zero_extendqisi2
.LVL500:
	add	r1, r7, r5
	mov	ip, ip, asl #1
	add	r0, r0, r0, asl #2
	add	r0, ip, r0, asl #2
	add	r1, r1, r1, asl #1
	add	r0, r0, r1
	add	ip, r6, r4
	rsb	ip, ip, r0
	add	r0, r8, r5
	add	r1, r7, r6
	sub	r0, r0, r0, asl #2
	ldrb	lr, [lr, #80]	@ zero_extendqisi2
.LVL501:
	add	r9, r8, r4
	mov	r0, r0, asl #1
	add	r1, r1, r1, asl #2
	add	r1, r0, r1, asl #2
	add	r9, r9, r9, asl #1
	ldr	r2, [sp, #92]
	add	r1, r1, r9
	add	fp, r7, lr
	rsb	fp, fp, r1
	add	ip, ip, #16
	add	r1, r6, r5
	ldrb	ip, [r3, ip, asr #5]	@ zero_extendqisi2
	ldrb	r10, [r2]	@ zero_extendqisi2
	str	r1, [sp, #104]
	ldr	r1, [sp]
	add	r10, r10, ip
	ldrb	r0, [r1, #112]	@ zero_extendqisi2
	ldrb	ip, [r1, #96]	@ zero_extendqisi2
.LVL502:
	ldrb	r1, [r1, #128]	@ zero_extendqisi2
	str	r1, [sp, #96]
.LVL503:
	ldr	r1, [sp]
	add	r10, r10, #1
	ldrb	r1, [r1, #144]	@ zero_extendqisi2
	str	r1, [sp, #20]
.LVL504:
	ldr	r1, [sp]
	mov	r10, r10, asr #1
	ldrb	r1, [r1, #160]	@ zero_extendqisi2
	str	r1, [sp, #100]
.LVL505:
	ldr	r1, [sp]
	add	r9, r7, r4
	ldrb	r1, [r1, #176]	@ zero_extendqisi2
	str	r1, [sp, #28]
.LVL506:
	ldr	r1, [sp]
	add	fp, fp, #16
	ldrb	r1, [r1, #192]	@ zero_extendqisi2
	str	r1, [sp, #4]
.LVL507:
	ldr	r1, [sp]
	sub	r9, r9, r9, asl #2
	ldrb	r1, [r1, #208]	@ zero_extendqisi2
	str	r1, [sp, #8]
.LVL508:
	ldr	r1, [sp]
	mov	r9, r9, asl #1
	ldrb	r1, [r1, #224]	@ zero_extendqisi2
.LVL509:
	str	r1, [sp, #24]
.LVL510:
	ldr	r1, [sp]
	ldrb	r1, [r1, #240]	@ zero_extendqisi2
	str	r1, [sp, #12]
.LVL511:
	ldr	r1, [sp]
	ldrb	r1, [r1, #256]	@ zero_extendqisi2
	str	r1, [sp, #16]
.LVL512:
	mov	r1, r2
	ldr	r2, [sp, #104]
	strb	r10, [r1], #1
	str	r1, [sp, #92]
.LVL513:
	add	r1, r2, r2, asl #2
.LVL514:
	ldr	r2, [sp, #32]
	ldrb	fp, [r3, fp, asr #5]	@ zero_extendqisi2
	ldrb	r10, [r2]	@ zero_extendqisi2
	add	r1, r9, r1, asl #2
	add	r10, r10, fp
	add	r9, r8, lr
	add	r9, r9, r9, asl #1
	add	r10, r10, #1
	add	r9, r1, r9
	mov	r10, r10, asr #1
	add	r1, r8, ip
	strb	r10, [r2], #1
	rsb	r9, r1, r9
	str	r2, [sp, #32]
	ldr	r2, [sp, #36]
	add	r1, r6, lr
	add	r9, r9, #16
	ldrb	r10, [r2]	@ zero_extendqisi2
	ldrb	r9, [r3, r9, asr #5]	@ zero_extendqisi2
	sub	fp, r1, r1, asl #2
	add	r1, r5, r4
	mov	fp, fp, asl #1
	add	r1, r1, r1, asl #2
	add	r1, fp, r1, asl #2
	add	r10, r10, r9
	add	fp, r7, ip
	add	fp, fp, fp, asl #1
	add	r10, r10, #1
	add	r8, r8, r0
.LVL515:
	add	fp, r1, fp
	mov	r10, r10, asr #1
	strb	r10, [r2], #1
	rsb	fp, r8, fp
	str	r2, [sp, #36]
	ldr	r2, [sp, #40]
	add	r1, r5, ip
	add	fp, fp, #16
	ldrb	r8, [r3, fp, asr #5]	@ zero_extendqisi2
	sub	r9, r1, r1, asl #2
	ldrb	fp, [r2]	@ zero_extendqisi2
	add	r1, r4, lr
	mov	r9, r9, asl #1
	add	r1, r1, r1, asl #2
	add	r10, r6, r0
	add	r1, r9, r1, asl #2
	add	fp, fp, r8
	ldr	r9, [sp, #96]
	add	r10, r10, r10, asl #1
	add	fp, fp, #1
	add	r1, r1, r10
	add	r7, r7, r9
.LVL516:
	mov	fp, fp, asr #1
	strb	fp, [r2], #1
	rsb	r7, r7, r1
	str	r2, [sp, #40]
	ldr	r2, [sp, #44]
	add	r1, r4, r0
	add	r7, r7, #16
	ldrb	r10, [r2]	@ zero_extendqisi2
	ldrb	r7, [r3, r7, asr #5]	@ zero_extendqisi2
	sub	r8, r1, r1, asl #2
	add	r1, lr, ip
	mov	r8, r8, asl #1
	add	r1, r1, r1, asl #2
	mov	fp, r9
	add	r1, r8, r1, asl #2
	add	r9, r5, r9
	ldr	r8, [sp, #20]
	add	r7, r10, r7
	add	r9, r9, r9, asl #1
	add	r7, r7, #1
	add	r1, r1, r9
	add	r6, r6, r8
.LVL517:
	mov	r7, r7, asr #1
	mov	r9, fp
	strb	r7, [r2], #1
	rsb	r6, r6, r1
	add	fp, lr, fp
	str	r2, [sp, #44]
	ldr	r2, [sp, #48]
	add	r10, ip, r0
	add	r6, r6, #16
	sub	fp, fp, fp, asl #2
	ldrb	r1, [r3, r6, asr #5]	@ zero_extendqisi2
	add	r7, r4, r8
	mov	fp, fp, asl #1
	ldrb	r8, [r2]	@ zero_extendqisi2
	add	r10, r10, r10, asl #2
	add	r10, fp, r10, asl #2
	ldr	fp, [sp, #100]
	add	r7, r7, r7, asl #1
	add	r1, r8, r1
	add	r10, r10, r7
	add	r5, r5, fp
.LVL518:
	add	r1, r1, #1
	rsb	r5, r5, r10
	mov	r1, r1, asr #1
	ldr	r10, [sp, #20]
	strb	r1, [r2], #1
	str	r2, [sp, #48]
	ldr	r2, [sp, #52]
	add	r8, ip, r10
	add	r5, r5, #16
	ldrb	r1, [r3, r5, asr #5]	@ zero_extendqisi2
	mov	r7, r9
	ldrb	r5, [r2]	@ zero_extendqisi2
	add	r9, r0, r9
	sub	r8, r8, r8, asl #2
	mov	r8, r8, asl #1
	add	r9, r9, r9, asl #2
	add	r6, lr, fp
	add	r9, r8, r9, asl #2
	add	r1, r5, r1
	ldr	r8, [sp, #28]
	add	r6, r6, r6, asl #1
	add	r1, r1, #1
	add	r9, r9, r6
	add	r4, r4, r8
.LVL519:
	mov	r1, r1, asr #1
	strb	r1, [r2], #1
	rsb	r4, r4, r9
	str	r2, [sp, #52]
	ldr	r2, [sp, #88]
	mov	r6, fp
	add	r4, r4, #16
	add	fp, r0, fp
	ldrb	r1, [r3, r4, asr #5]	@ zero_extendqisi2
	mov	r5, r10
	ldrb	r4, [r2]	@ zero_extendqisi2
	ldr	r8, [sp, #28]
	add	r10, r7, r10
	sub	fp, fp, fp, asl #2
	mov	fp, fp, asl #1
	add	r10, r10, r10, asl #2
	mov	r9, r7
	add	r10, fp, r10, asl #2
	add	r7, ip, r8
	ldr	fp, [sp, #4]
	add	r1, r4, r1
	add	r7, r7, r7, asl #1
	add	r1, r1, #1
	add	r10, r10, r7
	add	lr, lr, fp
.LVL520:
	mov	r1, r1, asr #1
	strb	r1, [r2], #1
	rsb	lr, lr, r10
	str	r2, [sp, #88]
	ldr	r2, [sp, #84]
	mov	r7, r8
	add	lr, lr, #16
	add	r8, r9, r8
	mov	fp, r6
	ldrb	r1, [r3, lr, asr #5]	@ zero_extendqisi2
	mov	r4, r9
	ldrb	lr, [r2]	@ zero_extendqisi2
	ldr	r9, [sp, #4]
	add	r6, r5, r6
	sub	r8, r8, r8, asl #2
	mov	r8, r8, asl #1
	add	r6, r6, r6, asl #2
	mov	r10, r5
	add	r6, r8, r6, asl #2
	add	r5, r0, r9
	ldr	r8, [sp, #8]
	add	r1, lr, r1
	add	r5, r5, r5, asl #1
	add	r1, r1, #1
	add	r6, r6, r5
	add	ip, ip, r8
.LVL521:
	mov	r1, r1, asr #1
	strb	r1, [r2], #1
	rsb	ip, ip, r6
	str	r2, [sp, #84]
	ldr	r2, [sp, #80]
	add	r9, r10, r9
	add	ip, ip, #16
	mov	r8, r4
	mov	r5, r7
	ldrb	r1, [r3, ip, asr #5]	@ zero_extendqisi2
	add	r7, fp, r7
	ldrb	ip, [r2]	@ zero_extendqisi2
	ldr	r4, [sp, #8]
	sub	r9, r9, r9, asl #2
	mov	r9, r9, asl #1
	add	r7, r7, r7, asl #2
	add	r4, r8, r4
	add	r7, r9, r7, asl #2
	add	r1, ip, r1
	ldr	r9, [sp, #24]
	add	r4, r4, r4, asl #1
	add	r1, r1, #1
	add	r7, r7, r4
	add	r0, r0, r9
.LVL522:
	mov	r1, r1, asr #1
	ldr	r4, [sp, #8]
	rsb	r0, r0, r7
	ldr	lr, [sp, #4]
	strb	r1, [r2], #1
	str	r2, [sp, #80]
	ldr	r2, [sp, #76]
	mov	r6, fp
	add	r0, r0, #16
	ldrb	r1, [r3, r0, asr #5]	@ zero_extendqisi2
	mov	fp, r6
	ldrb	r0, [r2]	@ zero_extendqisi2
	add	r6, r6, r4
	sub	r6, r6, r6, asl #2
	mov	r4, r5
	add	r5, r5, lr
	mov	r6, r6, asl #1
	add	lr, r10, r9
	ldr	ip, [sp, #12]
	add	r1, r0, r1
	add	r5, r5, r5, asl #2
	add	r5, r6, r5, asl #2
	add	lr, lr, lr, asl #1
	add	r1, r1, #1
	add	ip, r8, ip
	add	r5, r5, lr
	mov	r1, r1, asr #1
	strb	r1, [r2], #1
	rsb	lr, ip, r5
	mov	r7, r9
	str	r2, [sp, #76]
	ldr	r2, [sp, #72]
	mov	r9, r4
	add	r7, r4, r7
	add	lr, lr, #16
	ldmib	sp, {r4, r5}
	ldrb	r0, [r2]	@ zero_extendqisi2
	ldrb	r1, [r3, lr, asr #5]	@ zero_extendqisi2
	mov	r8, fp
	ldr	fp, [sp, #12]
	add	r4, r5, r4
	sub	r7, r7, r7, asl #2
	add	ip, r8, fp
	mov	r7, r7, asl #1
	ldr	lr, [sp, #16]
	add	r1, r0, r1
	add	r4, r4, r4, asl #2
	add	r4, r7, r4, asl #2
	add	ip, ip, ip, asl #1
	add	r1, r1, #1
	add	lr, r10, lr
	add	r4, r4, ip
	ldr	r10, [sp, #4]
	mov	r1, r1, asr #1
	strb	r1, [r2], #1
	rsb	ip, lr, r4
	str	r2, [sp, #72]
	ldr	r2, [sp, #68]
	ldr	r4, [sp, #8]
	add	r6, r10, fp
	add	ip, ip, #16
	ldr	fp, [sp, #24]
	ldrb	r0, [r2]	@ zero_extendqisi2
	ldrb	r1, [r3, ip, asr #5]	@ zero_extendqisi2
	mov	r7, r9
	ldr	r9, [sp, #16]
	add	r5, r4, fp
	sub	r6, r6, r6, asl #2
	add	lr, r7, r9
	mov	r6, r6, asl #1
	add	r1, r0, r1
	add	r5, r5, r5, asl #2
	add	r5, r6, r5, asl #2
	add	lr, lr, lr, asl #1
	mov	r6, r8
	add	r1, r1, #1
	add	ip, r6, r9
	add	r5, r5, lr
	mov	r1, r1, asr #1
	strb	r1, [r2], #1
	rsb	lr, ip, r5
	str	r2, [sp, #68]
	ldr	r2, [sp, #64]
	ldr	r6, [sp, #12]
	mov	r8, r9
	add	lr, lr, #16
	ldrb	r0, [r2]	@ zero_extendqisi2
	ldrb	r1, [r3, lr, asr #5]	@ zero_extendqisi2
	mov	r9, r4
	add	r4, r4, r8
	mov	r8, r10
	ldr	r10, [sp, #16]
	add	ip, fp, r6
	sub	r4, r4, r4, asl #2
	mov	r4, r4, asl #1
	add	r1, r0, r1
	add	ip, ip, ip, asl #2
	add	r5, r8, r10
	add	ip, r4, ip, asl #2
	add	r5, r5, r5, asl #1
	add	r1, r1, #1
	add	lr, r7, r6
	mov	r1, r1, asr #1
	add	ip, ip, r5
	strb	r1, [r2], #1
	rsb	ip, lr, ip
	str	r2, [sp, #64]
	ldr	r2, [sp, #60]
	add	ip, ip, #16
	ldrb	ip, [r3, ip, asr #5]	@ zero_extendqisi2
	ldrb	r1, [r2]	@ zero_extendqisi2
	mov	r4, r6
	add	r6, fp, r10
	mov	r0, r4
	add	r7, r4, r10
	sub	r6, r6, r6, asl #2
	add	r1, r1, ip
	add	r0, r9, r0
	add	r7, r7, r7, asl #2
	mov	r6, r6, asl #1
	add	r0, r0, r0, asl #1
	add	r6, r6, r7, asl #2
	add	r1, r1, #1
	add	r6, r6, r0
	mov	r1, r1, asr #1
	add	r0, r8, fp
	strb	r1, [r2], #1
	rsb	r6, r0, r6
	str	r2, [sp, #60]
	ldr	r2, [sp, #56]
	add	r6, r6, #16
	ldrb	r0, [r3, r6, asr #5]	@ zero_extendqisi2
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	ip, [sp]
	add	r1, r1, r0
.LBE374:
	.loc 5 697 0 discriminator 1
	ldr	r0, [sp, #108]
.LBB375:
	.loc 5 697 0 discriminator 3
	add	ip, ip, #1
	add	r1, r1, #1
	mov	r1, r1, asr #1
.LBE375:
	.loc 5 697 0 discriminator 1
	cmp	ip, r0
.LBB376:
	.loc 5 697 0 discriminator 3
	strb	r1, [r2], #1
	mov	lr, r10
	str	ip, [sp]
.LVL523:
	str	r2, [sp, #56]
.LVL524:
.LBE376:
	.loc 5 697 0 discriminator 1
	bne	.L155
	.loc 5 697 0
	add	sp, sp, #116
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L159:
	.align	2
.L158:
	.word	ff_crop_tab(GOT_PREL)+(.-(.LPIC29+8))
	.cfi_endproc
.LFE273:
	.size	avg_mpeg4_qpel16_v_lowpass.constprop.1, .-avg_mpeg4_qpel16_v_lowpass.constprop.1
	.align	2
	.type	avg_qpel16_mc22_c, %function
avg_qpel16_mc22_c:
.LFB239:
	.loc 5 697 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 272
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL525:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	sub	sp, sp, #280
	.cfi_def_cfa_offset 296
	.loc 5 697 0
	mov	r5, r2
	add	r4, sp, #8
	mov	r2, #17
.LVL526:
	mov	r6, r0
	mov	r3, r5
	mov	r0, r4
.LVL527:
	str	r2, [sp]
	mov	r2, #16
	bl	put_mpeg4_qpel16_h_lowpass(PLT)
.LVL528:
	.loc 5 697 0 is_stmt 0 discriminator 1
	mov	r0, r6
	mov	r1, r4
	mov	r2, r5
	bl	avg_mpeg4_qpel16_v_lowpass.constprop.1(PLT)
.LVL529:
	.loc 5 697 0
	add	sp, sp, #280
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
	.cfi_endproc
.LFE239:
	.size	avg_qpel16_mc22_c, .-avg_qpel16_mc22_c
	.align	2
	.type	avg_qpel16_mc20_c, %function
avg_qpel16_mc20_c:
.LFB220:
	.loc 5 697 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL530:
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
	.loc 5 697 0
	ldr	r6, .L166
	mov	r3, r1
.LPIC31:
	ldr	r6, [pc, r6]		@ tls_load_dot_plus_eight
.LVL531:
	mov	ip, r0
.LBB379:
.LBB380:
	.loc 5 697 0 is_stmt 0 discriminator 3
	add	r6, r6, #1024
.LBE380:
.LBE379:
	.loc 5 697 0
	mov	r7, #0
	mov	r8, #16
.LVL532:
.L163:
.LBB382:
.LBB381:
	.loc 5 697 0 discriminator 3
	ldrb	r10, [r3, #2]	@ zero_extendqisi2
	ldrb	fp, [r1, r7]	@ zero_extendqisi2
	ldrb	r9, [r3, #1]	@ zero_extendqisi2
	ldrb	r4, [r3, #3]	@ zero_extendqisi2
	add	r5, fp, r10
	sub	r5, r5, r5, asl #2
	add	fp, fp, r9
	mov	lr, r5, asl #1
	add	r9, r9, r4
	add	r5, fp, fp, asl #2
	ldrb	fp, [r3, #4]	@ zero_extendqisi2
	add	r5, lr, r5, asl #2
	add	r9, r9, r9, asl #1
	add	r4, r5, r9
	add	lr, r10, fp
	rsb	lr, lr, r4
	add	lr, lr, #16
	ldrb	r4, [r6, lr, asr #5]	@ zero_extendqisi2
	ldrb	lr, [r0, r7]	@ zero_extendqisi2
	.loc 5 697 0 discriminator 1
	subs	r8, r8, #1
	.loc 5 697 0 discriminator 3
	add	lr, lr, r4
	add	lr, lr, #1
	mov	lr, lr, asr #1
	strb	lr, [r0, r7]
	ldrb	r9, [r1, r7]	@ zero_extendqisi2
	ldrb	fp, [r3, #3]	@ zero_extendqisi2
	ldrb	r10, [r3, #1]	@ zero_extendqisi2
	ldrb	r5, [r3, #2]	@ zero_extendqisi2
	ldrb	r4, [r3, #4]	@ zero_extendqisi2
	add	fp, r9, fp
	sub	fp, fp, fp, asl #2
	add	r5, r10, r5
	mov	lr, fp, asl #1
	add	r9, r9, r4
	ldrb	fp, [r3, #5]	@ zero_extendqisi2
	add	r5, r5, r5, asl #2
	add	r5, lr, r5, asl #2
	add	r9, r9, r9, asl #1
	add	r4, r5, r9
	add	lr, r10, fp
	rsb	lr, lr, r4
	add	lr, lr, #16
	ldrb	r4, [r6, lr, asr #5]	@ zero_extendqisi2
	ldrb	lr, [ip, #1]	@ zero_extendqisi2
	ldrb	r10, [ip, #2]	@ zero_extendqisi2
	add	lr, lr, r4
	add	lr, lr, #1
	mov	lr, lr, asr #1
	strb	lr, [ip, #1]
	ldrb	r4, [r3, #1]	@ zero_extendqisi2
	ldrb	r9, [r3, #4]	@ zero_extendqisi2
	ldrb	lr, [r3, #2]	@ zero_extendqisi2
	ldrb	r5, [r3, #3]	@ zero_extendqisi2
	ldrb	fp, [r1, r7]	@ zero_extendqisi2
	add	r9, r4, r9
	ldrb	r4, [r3, #5]	@ zero_extendqisi2
	add	r5, lr, r5
	sub	r9, r9, r9, asl #2
	ldrb	lr, [r3, #6]	@ zero_extendqisi2
	mov	r9, r9, asl #1
	add	r4, fp, r4
	add	r5, r5, r5, asl #2
	add	r5, r9, r5, asl #2
	add	r4, r4, r4, asl #1
	add	r4, r5, r4
	add	lr, fp, lr
	rsb	lr, lr, r4
	add	lr, lr, #16
	ldrb	lr, [r6, lr, asr #5]	@ zero_extendqisi2
	ldrb	r9, [ip, #3]	@ zero_extendqisi2
	add	r10, r10, lr
	add	r10, r10, #1
	mov	r10, r10, asr #1
	strb	r10, [ip, #2]
	ldrb	r4, [r3, #2]	@ zero_extendqisi2
	ldrb	r10, [r3, #5]	@ zero_extendqisi2
	ldrb	lr, [r3, #3]	@ zero_extendqisi2
	ldrb	r5, [r3, #4]	@ zero_extendqisi2
	add	r10, r4, r10
	ldrb	r4, [r3, #1]	@ zero_extendqisi2
	ldrb	fp, [r3, #6]	@ zero_extendqisi2
	add	r5, lr, r5
	sub	r10, r10, r10, asl #2
	ldrb	lr, [r3, #7]	@ zero_extendqisi2
	mov	r10, r10, asl #1
	add	r4, r4, fp
	add	r5, r5, r5, asl #2
	ldrb	fp, [r1, r7]	@ zero_extendqisi2
	add	r5, r10, r5, asl #2
	add	r4, r4, r4, asl #1
	add	r4, r5, r4
	add	lr, fp, lr
	rsb	lr, lr, r4
	add	lr, lr, #16
	ldrb	lr, [r6, lr, asr #5]	@ zero_extendqisi2
	ldrb	r10, [ip, #4]	@ zero_extendqisi2
	add	r9, r9, lr
	add	r9, r9, #1
	mov	r9, r9, asr #1
	strb	r9, [ip, #3]
	ldrb	r4, [r3, #3]	@ zero_extendqisi2
	ldrb	r9, [r3, #6]	@ zero_extendqisi2
	ldrb	lr, [r3, #4]	@ zero_extendqisi2
	ldrb	r5, [r3, #5]	@ zero_extendqisi2
	ldrb	fp, [r3, #7]	@ zero_extendqisi2
	add	r9, r4, r9
	ldrb	r4, [r3, #2]	@ zero_extendqisi2
	add	r5, lr, r5
	sub	r9, r9, r9, asl #2
	ldrb	lr, [r3, #8]	@ zero_extendqisi2
	mov	r9, r9, asl #1
	add	r4, r4, fp
	add	r5, r5, r5, asl #2
	ldrb	fp, [r3, #1]	@ zero_extendqisi2
	add	r5, r9, r5, asl #2
	add	r4, r4, r4, asl #1
	add	r4, r5, r4
	add	lr, fp, lr
	rsb	lr, lr, r4
	add	lr, lr, #16
	ldrb	lr, [r6, lr, asr #5]	@ zero_extendqisi2
	ldrb	r9, [ip, #5]	@ zero_extendqisi2
	add	r10, r10, lr
	add	r10, r10, #1
	mov	r10, r10, asr #1
	strb	r10, [ip, #4]
	ldrb	r4, [r3, #4]	@ zero_extendqisi2
	ldrb	r10, [r3, #7]	@ zero_extendqisi2
	ldrb	lr, [r3, #5]	@ zero_extendqisi2
	ldrb	r5, [r3, #6]	@ zero_extendqisi2
	ldrb	fp, [r3, #8]	@ zero_extendqisi2
	add	r10, r4, r10
	ldrb	r4, [r3, #3]	@ zero_extendqisi2
	add	r5, lr, r5
	sub	r10, r10, r10, asl #2
	ldrb	lr, [r3, #9]	@ zero_extendqisi2
	mov	r10, r10, asl #1
	add	r4, r4, fp
	add	r5, r5, r5, asl #2
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	add	r5, r10, r5, asl #2
	add	r4, r4, r4, asl #1
	add	r4, r5, r4
	add	lr, fp, lr
	rsb	lr, lr, r4
	add	lr, lr, #16
	ldrb	lr, [r6, lr, asr #5]	@ zero_extendqisi2
	ldrb	r10, [ip, #6]	@ zero_extendqisi2
	add	r9, r9, lr
	add	r9, r9, #1
	mov	r9, r9, asr #1
	strb	r9, [ip, #5]
	ldrb	r4, [r3, #5]	@ zero_extendqisi2
	ldrb	r9, [r3, #8]	@ zero_extendqisi2
	ldrb	lr, [r3, #6]	@ zero_extendqisi2
	ldrb	r5, [r3, #7]	@ zero_extendqisi2
	add	r9, r4, r9
	ldrb	r4, [r3, #4]	@ zero_extendqisi2
	ldrb	fp, [r3, #9]	@ zero_extendqisi2
	add	r5, lr, r5
	sub	r9, r9, r9, asl #2
	ldrb	lr, [r3, #10]	@ zero_extendqisi2
	mov	r9, r9, asl #1
	add	r4, r4, fp
	add	r5, r5, r5, asl #2
	ldrb	fp, [r3, #3]	@ zero_extendqisi2
	add	r5, r9, r5, asl #2
	add	r4, r4, r4, asl #1
	add	r4, r5, r4
	add	lr, fp, lr
	rsb	lr, lr, r4
	add	lr, lr, #16
	ldrb	lr, [r6, lr, asr #5]	@ zero_extendqisi2
	ldrb	r9, [ip, #7]	@ zero_extendqisi2
	add	r10, r10, lr
	add	r10, r10, #1
	mov	r10, r10, asr #1
	strb	r10, [ip, #6]
	ldrb	r4, [r3, #6]	@ zero_extendqisi2
	ldrb	r10, [r3, #9]	@ zero_extendqisi2
	ldrb	lr, [r3, #7]	@ zero_extendqisi2
	ldrb	r5, [r3, #8]	@ zero_extendqisi2
	ldrb	fp, [r3, #10]	@ zero_extendqisi2
	add	r10, r4, r10
	ldrb	r4, [r3, #5]	@ zero_extendqisi2
	add	r5, lr, r5
	sub	r10, r10, r10, asl #2
	ldrb	lr, [r3, #11]	@ zero_extendqisi2
	mov	r10, r10, asl #1
	add	r4, r4, fp
	add	r5, r5, r5, asl #2
	ldrb	fp, [r3, #4]	@ zero_extendqisi2
	add	r5, r10, r5, asl #2
	add	r4, r4, r4, asl #1
	add	r4, r5, r4
	add	lr, fp, lr
	rsb	lr, lr, r4
	add	lr, lr, #16
	ldrb	lr, [r6, lr, asr #5]	@ zero_extendqisi2
	ldrb	r10, [ip, #8]	@ zero_extendqisi2
	add	r9, r9, lr
	add	r9, r9, #1
	mov	r9, r9, asr #1
	strb	r9, [ip, #7]
	ldrb	r4, [r3, #7]	@ zero_extendqisi2
	ldrb	r9, [r3, #10]	@ zero_extendqisi2
	ldrb	lr, [r3, #8]	@ zero_extendqisi2
	ldrb	r5, [r3, #9]	@ zero_extendqisi2
	ldrb	fp, [r3, #11]	@ zero_extendqisi2
	add	r9, r4, r9
	ldrb	r4, [r3, #6]	@ zero_extendqisi2
	add	r5, lr, r5
	sub	r9, r9, r9, asl #2
	ldrb	lr, [r3, #12]	@ zero_extendqisi2
	mov	r9, r9, asl #1
	add	r4, r4, fp
	add	r5, r5, r5, asl #2
	ldrb	fp, [r3, #5]	@ zero_extendqisi2
	add	r5, r9, r5, asl #2
	add	r4, r4, r4, asl #1
	add	r4, r5, r4
	add	lr, fp, lr
	rsb	lr, lr, r4
	add	lr, lr, #16
	ldrb	lr, [r6, lr, asr #5]	@ zero_extendqisi2
	ldrb	r9, [ip, #9]	@ zero_extendqisi2
	add	r10, r10, lr
	add	r10, r10, #1
	mov	r10, r10, asr #1
	strb	r10, [ip, #8]
	ldrb	r4, [r3, #8]	@ zero_extendqisi2
	ldrb	r10, [r3, #11]	@ zero_extendqisi2
	ldrb	lr, [r3, #9]	@ zero_extendqisi2
	ldrb	r5, [r3, #10]	@ zero_extendqisi2
	add	r10, r4, r10
	ldrb	r4, [r3, #7]	@ zero_extendqisi2
	ldrb	fp, [r3, #12]	@ zero_extendqisi2
	add	r5, lr, r5
	sub	r10, r10, r10, asl #2
	ldrb	lr, [r3, #13]	@ zero_extendqisi2
	mov	r10, r10, asl #1
	add	r4, r4, fp
	add	r5, r5, r5, asl #2
	ldrb	fp, [r3, #6]	@ zero_extendqisi2
	add	r5, r10, r5, asl #2
	add	r4, r4, r4, asl #1
	add	r4, r5, r4
	add	lr, fp, lr
	rsb	lr, lr, r4
	add	lr, lr, #16
	ldrb	lr, [r6, lr, asr #5]	@ zero_extendqisi2
	ldrb	r10, [ip, #10]	@ zero_extendqisi2
	add	r9, r9, lr
	add	r9, r9, #1
	mov	r9, r9, asr #1
	strb	r9, [ip, #9]
	ldrb	r4, [r3, #9]	@ zero_extendqisi2
	ldrb	r9, [r3, #12]	@ zero_extendqisi2
	ldrb	lr, [r3, #10]	@ zero_extendqisi2
	ldrb	r5, [r3, #11]	@ zero_extendqisi2
	ldrb	fp, [r3, #13]	@ zero_extendqisi2
	add	r9, r4, r9
	ldrb	r4, [r3, #8]	@ zero_extendqisi2
	add	r5, lr, r5
	sub	r9, r9, r9, asl #2
	ldrb	lr, [r3, #14]	@ zero_extendqisi2
	mov	r9, r9, asl #1
	add	r4, r4, fp
	add	r5, r5, r5, asl #2
	ldrb	fp, [r3, #7]	@ zero_extendqisi2
	add	r5, r9, r5, asl #2
	add	r4, r4, r4, asl #1
	add	r4, r5, r4
	add	lr, fp, lr
	rsb	lr, lr, r4
	add	lr, lr, #16
	ldrb	lr, [r6, lr, asr #5]	@ zero_extendqisi2
	ldrb	r9, [ip, #11]	@ zero_extendqisi2
	add	r10, r10, lr
	add	r10, r10, #1
	mov	r10, r10, asr #1
	strb	r10, [ip, #10]
	ldrb	r4, [r3, #10]	@ zero_extendqisi2
	ldrb	r10, [r3, #13]	@ zero_extendqisi2
	ldrb	lr, [r3, #11]	@ zero_extendqisi2
	ldrb	r5, [r3, #12]	@ zero_extendqisi2
	ldrb	fp, [r3, #14]	@ zero_extendqisi2
	add	r10, r4, r10
	ldrb	r4, [r3, #9]	@ zero_extendqisi2
	add	r5, lr, r5
	sub	r10, r10, r10, asl #2
	ldrb	lr, [r3, #15]	@ zero_extendqisi2
	mov	r10, r10, asl #1
	add	r4, r4, fp
	add	r5, r5, r5, asl #2
	ldrb	fp, [r3, #8]	@ zero_extendqisi2
	add	r5, r10, r5, asl #2
	add	r4, r4, r4, asl #1
	add	r4, r5, r4
	add	lr, fp, lr
	rsb	lr, lr, r4
	add	lr, lr, #16
	ldrb	lr, [r6, lr, asr #5]	@ zero_extendqisi2
	ldrb	r10, [ip, #12]	@ zero_extendqisi2
	add	r9, r9, lr
	add	r9, r9, #1
	mov	r9, r9, asr #1
	strb	r9, [ip, #11]
	ldrb	r4, [r3, #11]	@ zero_extendqisi2
	ldrb	r9, [r3, #14]	@ zero_extendqisi2
	ldrb	lr, [r3, #12]	@ zero_extendqisi2
	ldrb	r5, [r3, #13]	@ zero_extendqisi2
	add	r9, r4, r9
	ldrb	r4, [r3, #10]	@ zero_extendqisi2
	ldrb	fp, [r3, #15]	@ zero_extendqisi2
	add	r5, lr, r5
	sub	r9, r9, r9, asl #2
	ldrb	lr, [r3, #16]	@ zero_extendqisi2
	mov	r9, r9, asl #1
	add	r4, r4, fp
	add	r5, r5, r5, asl #2
	ldrb	fp, [r3, #9]	@ zero_extendqisi2
	add	r5, r9, r5, asl #2
	add	r4, r4, r4, asl #1
	add	r4, r5, r4
	add	lr, fp, lr
	rsb	lr, lr, r4
	add	lr, lr, #16
	ldrb	lr, [r6, lr, asr #5]	@ zero_extendqisi2
	ldrb	r9, [ip, #13]	@ zero_extendqisi2
	add	r10, r10, lr
	add	r10, r10, #1
	mov	r10, r10, asr #1
	strb	r10, [ip, #12]
	ldrb	r4, [r3, #12]	@ zero_extendqisi2
	ldrb	r10, [r3, #15]	@ zero_extendqisi2
	ldrb	lr, [r3, #13]	@ zero_extendqisi2
	ldrb	r5, [r3, #14]	@ zero_extendqisi2
	ldrb	fp, [r3, #16]	@ zero_extendqisi2
	add	r10, r4, r10
	ldrb	r4, [r3, #11]	@ zero_extendqisi2
	add	r5, lr, r5
	sub	r10, r10, r10, asl #2
	ldrb	lr, [r3, #10]	@ zero_extendqisi2
	mov	r10, r10, asl #1
	add	r4, r4, fp
	add	r5, r5, r5, asl #2
	add	r5, r10, r5, asl #2
	add	r4, r4, r4, asl #1
	add	r4, r5, r4
	add	lr, fp, lr
	rsb	lr, lr, r4
	add	lr, lr, #16
	ldrb	lr, [r6, lr, asr #5]	@ zero_extendqisi2
	ldrb	r10, [ip, #14]	@ zero_extendqisi2
	add	r9, r9, lr
	add	r9, r9, #1
	mov	r9, r9, asr #1
	strb	r9, [ip, #13]
	ldrb	lr, [r3, #16]	@ zero_extendqisi2
	ldrb	r9, [r3, #13]	@ zero_extendqisi2
	ldrb	fp, [r3, #15]	@ zero_extendqisi2
	ldrb	r5, [r3, #14]	@ zero_extendqisi2
	ldrb	r4, [r3, #12]	@ zero_extendqisi2
	add	r9, r9, lr
	add	r5, r5, fp
	sub	r9, r9, r9, asl #2
	mov	r9, r9, asl #1
	add	r4, lr, r4
	add	r5, r5, r5, asl #2
	ldrb	lr, [r3, #11]	@ zero_extendqisi2
	add	r5, r9, r5, asl #2
	add	r4, r4, r4, asl #1
	add	r4, r5, r4
	add	lr, fp, lr
	rsb	lr, lr, r4
	add	lr, lr, #16
	ldrb	lr, [r6, lr, asr #5]	@ zero_extendqisi2
	ldrb	r9, [ip, #15]	@ zero_extendqisi2
	add	r10, r10, lr
	add	r10, r10, #1
	mov	r10, r10, asr #1
	strb	r10, [ip, #14]
	ldrb	r5, [r3, #16]	@ zero_extendqisi2
	ldrb	fp, [r3, #14]	@ zero_extendqisi2
	ldrb	lr, [r3, #15]	@ zero_extendqisi2
	ldrb	r4, [r3, #13]	@ zero_extendqisi2
	add	r10, r5, fp
	sub	r10, r10, r10, asl #2
	add	r5, lr, r5
	add	r4, lr, r4
	mov	r10, r10, asl #1
	ldrb	lr, [r3, #12]	@ zero_extendqisi2
	add	r5, r5, r5, asl #2
	add	r5, r10, r5, asl #2
	add	r4, r4, r4, asl #1
	add	r4, r5, r4
	add	lr, fp, lr
	rsb	lr, lr, r4
	add	lr, lr, #16
	ldrb	lr, [r6, lr, asr #5]	@ zero_extendqisi2
	add	r7, r7, r2
	add	lr, r9, lr
	add	lr, lr, #1
	mov	lr, lr, asr #1
	strb	lr, [ip, #15]
	add	r3, r3, r2
.LVL533:
	add	ip, ip, r2
.LVL534:
	.loc 5 697 0 discriminator 1
	bne	.L163
.LBE381:
.LBE382:
	.loc 5 697 0
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L167:
	.align	2
.L166:
	.word	ff_crop_tab(GOT_PREL)+(.-(.LPIC31+8))
	.cfi_endproc
.LFE220:
	.size	avg_qpel16_mc20_c, .-avg_qpel16_mc20_c
	.align	2
	.type	avg_mpeg4_qpel8_v_lowpass.constprop.3, %function
avg_mpeg4_qpel8_v_lowpass.constprop.3:
.LFB271:
	.loc 5 697 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL535:
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
	add	r3, r0, r2
	sub	sp, sp, #68
	.cfi_def_cfa_offset 104
	str	r3, [sp, #44]
	add	r3, r3, r2
	str	r3, [sp, #40]
	add	r3, r3, r2
	mov	ip, r3
	str	r3, [sp, #36]
	.loc 5 697 0
	ldr	r3, .L172
	add	ip, ip, r2
.LPIC33:
	ldr	r3, [pc, r3]		@ tls_load_dot_plus_eight
	str	ip, [sp, #32]
.LBB383:
	.loc 5 697 0 is_stmt 0 discriminator 3
	add	r3, r3, #1024
	str	r3, [sp, #56]
	add	r3, r1, #15
	add	ip, ip, r2
	str	r3, [sp, #8]
	add	r3, r1, #23
	str	ip, [sp, #28]
	str	r3, [sp, #12]
	add	ip, ip, r2
	add	r3, r1, #31
	sub	r0, r0, #1
.LVL536:
	add	r2, ip, r2
.LVL537:
	str	r3, [sp, #16]
	add	r3, r1, #8
	str	r0, [sp, #48]
	str	ip, [sp, #24]
	str	r2, [sp, #20]
.LBE383:
	.loc 5 697 0
	str	r0, [sp, #52]
	str	r3, [sp, #60]
.LVL538:
.L169:
.LBB384:
	.loc 5 697 0 discriminator 3
	ldr	r3, [sp, #8]
	ldrb	r6, [r1]	@ zero_extendqisi2
.LVL539:
	ldrb	r4, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #8]
	ldr	r3, [sp, #12]
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
.LVL540:
	ldrb	lr, [r3, #1]!	@ zero_extendqisi2
	ldr	r7, [sp, #16]
	add	ip, r6, r4
	add	r0, r6, r5
	sub	ip, ip, ip, asl #2
	add	r2, r5, lr
	str	r3, [sp, #12]
.LVL541:
	mov	ip, ip, asl #1
	ldrb	r3, [r7, #1]!	@ zero_extendqisi2
	add	r0, r0, r0, asl #2
	add	r0, ip, r0, asl #2
	add	r2, r2, r2, asl #1
	add	r0, r0, r2
	add	ip, r4, r3
	str	r7, [sp, #16]
.LVL542:
	rsb	ip, ip, r0
	ldr	r7, [sp, #56]
	add	r0, r6, lr
	ldr	r8, [sp, #52]
	add	r2, r5, r4
	add	ip, ip, #16
	sub	r0, r0, r0, asl #2
	ldrb	ip, [r7, ip, asr #5]	@ zero_extendqisi2
	mov	r0, r0, asl #1
	add	r7, r6, r3
	add	r2, r2, r2, asl #2
	ldrb	r10, [r8, #1]!	@ zero_extendqisi2
	add	r2, r0, r2, asl #2
	add	r7, r7, r7, asl #1
	add	fp, r2, r7
	ldrb	r2, [r1, #48]	@ zero_extendqisi2
	str	r2, [sp]
	str	r8, [sp, #52]
	ldrb	r2, [r1, #56]	@ zero_extendqisi2
	ldrb	r8, [r1, #40]	@ zero_extendqisi2
.LVL543:
	add	r10, r10, ip
	str	r2, [sp, #4]
.LVL544:
	add	r10, r10, #1
	ldr	r2, [sp, #48]
	add	r9, r5, r8
	mov	r10, r10, asr #1
	ldrb	r0, [r1, #64]	@ zero_extendqisi2
.LVL545:
	ldr	r7, [sp, #56]
	strb	r10, [r2, #1]!
	rsb	fp, r9, fp
	str	r2, [sp, #48]
	ldr	r2, [sp, #44]
	add	r9, r5, r3
	add	fp, fp, #16
	ldrb	r10, [r2]	@ zero_extendqisi2
	ldrb	fp, [r7, fp, asr #5]	@ zero_extendqisi2
	add	ip, r4, lr
	sub	r9, r9, r9, asl #2
	mov	r9, r9, asl #1
	add	ip, ip, ip, asl #2
	add	ip, r9, ip, asl #2
	add	r10, r10, fp
	add	r9, r6, r8
	ldr	fp, [sp]
	add	r9, r9, r9, asl #1
	add	r9, ip, r9
	add	r10, r10, #1
	add	ip, r6, fp
	rsb	r9, ip, r9
	mov	r10, r10, asr #1
	add	ip, r4, r8
	strb	r10, [r2], #1
	sub	fp, ip, ip, asl #2
	str	r2, [sp, #44]
	add	ip, lr, r3
	ldr	r2, [sp, #40]
	mov	fp, fp, asl #1
	add	r9, r9, #16
	add	ip, ip, ip, asl #2
	ldrb	r10, [r2]	@ zero_extendqisi2
	add	ip, fp, ip, asl #2
	ldrb	r9, [r7, r9, asr #5]	@ zero_extendqisi2
	ldr	fp, [sp]
	add	r10, r10, r9
	add	fp, r5, fp
	ldr	r9, [sp, #4]
	add	fp, fp, fp, asl #1
	add	r10, r10, #1
	add	r6, r6, r9
.LVL546:
	add	fp, ip, fp
	mov	r10, r10, asr #1
	strb	r10, [r2], #1
	rsb	fp, r6, fp
	ldr	ip, [sp]
	str	r2, [sp, #40]
	ldr	r2, [sp, #36]
	add	fp, fp, #16
	ldrb	r6, [r7, fp, asr #5]	@ zero_extendqisi2
	add	ip, lr, ip
	ldrb	fp, [r2]	@ zero_extendqisi2
	ldr	r10, [sp, #4]
	sub	r9, ip, ip, asl #2
	add	ip, r3, r8
	mov	r9, r9, asl #1
	add	r10, r4, r10
	add	fp, fp, r6
	add	ip, ip, ip, asl #2
	add	ip, r9, ip, asl #2
	add	r10, r10, r10, asl #1
	ldr	r9, [sp, #4]
	add	fp, fp, #1
	add	ip, ip, r10
	add	r5, r5, r0
.LVL547:
	mov	fp, fp, asr #1
	strb	fp, [r2], #1
	rsb	r5, r5, ip
	str	r2, [sp, #36]
	add	ip, r3, r9
	ldr	r2, [sp, #32]
	sub	r6, ip, ip, asl #2
	add	r5, r5, #16
	ldr	ip, [sp]
	ldrb	r10, [r2]	@ zero_extendqisi2
	ldrb	r5, [r7, r5, asr #5]	@ zero_extendqisi2
	add	ip, r8, ip
	add	r9, lr, r0
	mov	r6, r6, asl #1
	add	r5, r10, r5
	add	ip, ip, ip, asl #2
	add	ip, r6, ip, asl #2
	add	r9, r9, r9, asl #1
	add	r5, r5, #1
	add	ip, ip, r9
	mov	r6, r5, asr #1
	add	r4, r4, r0
.LVL548:
	strb	r6, [r2], #1
	rsb	r4, r4, ip
	str	r2, [sp, #32]
	ldr	r2, [sp, #28]
	ldr	r9, [sp, #4]
	ldr	fp, [sp]
	add	r4, r4, #16
	ldrb	r6, [r7, r4, asr #5]	@ zero_extendqisi2
	add	r10, r8, r0
	ldrb	r4, [r2]	@ zero_extendqisi2
	add	r5, fp, r9
	sub	r10, r10, r10, asl #2
	add	ip, r3, r0
	mov	r10, r10, asl #1
	add	r5, r5, r5, asl #2
	add	r4, r4, r6
	add	r5, r10, r5, asl #2
	add	ip, ip, ip, asl #1
	add	r4, r4, #1
	add	lr, lr, r9
.LVL549:
	add	r5, r5, ip
	mov	r4, r4, asr #1
	strb	r4, [r2], #1
	mov	r10, r9
	ldr	r4, [sp, #24]
	rsb	r5, lr, r5
	add	r9, fp, r0
	add	r5, r5, #16
	add	r0, r10, r0
.LVL550:
	sub	r9, r9, r9, asl #2
	ldrb	lr, [r7, r5, asr #5]	@ zero_extendqisi2
	ldrb	ip, [r4]	@ zero_extendqisi2
	str	r2, [sp, #28]
	add	r0, r0, r0, asl #2
	add	r2, r8, r10
	mov	r9, r9, asl #1
	add	r0, r9, r0, asl #2
	add	r2, r2, r2, asl #1
	add	r2, r0, r2
	add	r3, r3, fp
.LVL551:
	add	ip, ip, lr
	rsb	r2, r3, r2
	add	ip, ip, #1
	mov	r3, r4
	add	r2, r2, #16
	mov	ip, ip, asr #1
	strb	ip, [r3], #1
	ldrb	r2, [r7, r2, asr #5]	@ zero_extendqisi2
	str	r3, [sp, #24]
	ldr	r0, [sp, #20]
	add	r1, r1, #1
.LVL552:
	ldrb	r3, [r0]	@ zero_extendqisi2
	add	r3, r3, r2
.LBE384:
	.loc 5 697 0 discriminator 1
	ldr	r2, [sp, #60]
.LBB385:
	.loc 5 697 0 discriminator 3
	add	r3, r3, #1
.LBE385:
	.loc 5 697 0 discriminator 1
	cmp	r1, r2
.LBB386:
	.loc 5 697 0 discriminator 3
	mov	r3, r3, asr #1
	mov	r2, r0
	strb	r3, [r2], #1
	str	r2, [sp, #20]
.LVL553:
.LBE386:
	.loc 5 697 0 discriminator 1
	bne	.L169
	.loc 5 697 0
	add	sp, sp, #68
	.cfi_def_cfa_offset 36
.LVL554:
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL555:
.L173:
	.align	2
.L172:
	.word	ff_crop_tab(GOT_PREL)+(.-(.LPIC33+8))
	.cfi_endproc
.LFE271:
	.size	avg_mpeg4_qpel8_v_lowpass.constprop.3, .-avg_mpeg4_qpel8_v_lowpass.constprop.3
	.align	2
	.type	avg_qpel8_mc22_c, %function
avg_qpel8_mc22_c:
.LFB218:
	.loc 5 697 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL556:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	sub	sp, sp, #80
	.cfi_def_cfa_offset 96
	.loc 5 697 0
	mov	r5, r2
	add	r4, sp, #8
	mov	r2, #9
.LVL557:
	mov	r6, r0
	mov	r3, r5
	mov	r0, r4
.LVL558:
	str	r2, [sp]
	mov	r2, #8
	bl	put_mpeg4_qpel8_h_lowpass(PLT)
.LVL559:
	.loc 5 697 0 is_stmt 0 discriminator 1
	mov	r0, r6
	mov	r1, r4
	mov	r2, r5
	bl	avg_mpeg4_qpel8_v_lowpass.constprop.3(PLT)
.LVL560:
	.loc 5 697 0
	add	sp, sp, #80
	.cfi_def_cfa_offset 16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, pc}
	.cfi_endproc
.LFE218:
	.size	avg_qpel8_mc22_c, .-avg_qpel8_mc22_c
	.align	2
	.type	avg_qpel8_mc20_c, %function
avg_qpel8_mc20_c:
.LFB199:
	.loc 5 697 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL561:
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
	.loc 5 697 0
	ldr	r5, .L180
	add	r6, r1, #1
.LPIC35:
	ldr	r5, [pc, r5]		@ tls_load_dot_plus_eight
.LVL562:
	add	r7, r0, #1
.LBB389:
.LBB390:
	.loc 5 697 0 is_stmt 0 discriminator 3
	add	r5, r5, #1024
.LBE390:
.LBE389:
	.loc 5 697 0
	mov	r8, #8
.LVL563:
.L177:
.LBB392:
.LBB391:
	.loc 5 697 0 discriminator 3
	ldrb	r10, [r1, #2]	@ zero_extendqisi2
	ldrb	fp, [r6, #-1]	@ zero_extendqisi2
	ldrb	r9, [r1, #1]	@ zero_extendqisi2
	ldrb	r3, [r1, #3]	@ zero_extendqisi2
	add	lr, fp, r10
	sub	lr, lr, lr, asl #2
	add	fp, fp, r9
	mov	r4, lr, asl #1
	add	fp, fp, fp, asl #2
	add	r9, r9, r3
	ldrb	r3, [r1, #4]	@ zero_extendqisi2
	add	lr, r4, fp, asl #2
	add	r9, r9, r9, asl #1
	add	ip, lr, r9
	add	r3, r10, r3
	rsb	r3, r3, ip
	add	r3, r3, #16
	ldrb	ip, [r5, r3, asr #5]	@ zero_extendqisi2
	ldrb	r3, [r7, #-1]	@ zero_extendqisi2
	.loc 5 697 0 discriminator 1
	subs	r8, r8, #1
	.loc 5 697 0 discriminator 3
	add	r3, r3, ip
	add	r3, r3, #1
	mov	r3, r3, asr #1
	strb	r3, [r7, #-1]
	ldrb	r9, [r6, #-1]	@ zero_extendqisi2
	ldrb	lr, [r1, #3]	@ zero_extendqisi2
	ldrb	r10, [r1, #1]	@ zero_extendqisi2
	ldrb	fp, [r1, #2]	@ zero_extendqisi2
	ldrb	r3, [r1, #4]	@ zero_extendqisi2
	add	lr, r9, lr
	sub	lr, lr, lr, asl #2
	add	fp, r10, fp
	mov	r4, lr, asl #1
	add	fp, fp, fp, asl #2
	add	r9, r9, r3
	ldrb	r3, [r1, #5]	@ zero_extendqisi2
	add	lr, r4, fp, asl #2
	add	r9, r9, r9, asl #1
	add	ip, lr, r9
	add	r3, r10, r3
	rsb	r3, r3, ip
	add	r3, r3, #16
	ldrb	ip, [r5, r3, asr #5]	@ zero_extendqisi2
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	ldrb	r10, [r0, #2]	@ zero_extendqisi2
	add	r3, r3, ip
	add	r3, r3, #1
	mov	r3, r3, asr #1
	strb	r3, [r0, #1]
	ldrb	lr, [r1, #1]	@ zero_extendqisi2
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
	ldrb	ip, [r1, #3]	@ zero_extendqisi2
	ldrb	fp, [r6, #-1]	@ zero_extendqisi2
	ldrb	r9, [r1, #5]	@ zero_extendqisi2
	add	r4, lr, r4
	add	ip, r3, ip
	sub	r4, r4, r4, asl #2
	ldrb	r3, [r1, #6]	@ zero_extendqisi2
	mov	r4, r4, asl #1
	add	ip, ip, ip, asl #2
	add	r9, fp, r9
	add	lr, r4, ip, asl #2
	add	r9, r9, r9, asl #1
	add	ip, lr, r9
	add	r3, fp, r3
	rsb	r3, r3, ip
	add	r3, r3, #16
	ldrb	r3, [r5, r3, asr #5]	@ zero_extendqisi2
	ldrb	r9, [r0, #3]	@ zero_extendqisi2
	add	r3, r10, r3
	add	r3, r3, #1
	mov	r3, r3, asr #1
	strb	r3, [r0, #2]
	ldrb	ip, [r1, #2]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r3, [r1, #3]	@ zero_extendqisi2
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	add	r10, ip, r10
	ldrb	fp, [r1, #6]	@ zero_extendqisi2
	sub	r10, r10, r10, asl #2
	add	lr, r3, lr
	add	r4, r4, fp
	mov	r3, r10, asl #1
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	ldrb	r10, [r6, #-1]	@ zero_extendqisi2
	add	lr, lr, lr, asl #2
	add	lr, r3, lr, asl #2
	add	r4, r4, r4, asl #1
	add	ip, lr, r4
	add	r3, r10, fp
	rsb	r3, r3, ip
	add	r3, r3, #16
	ldrb	r3, [r5, r3, asr #5]	@ zero_extendqisi2
	ldrb	r4, [r0, #4]	@ zero_extendqisi2
	add	r3, r9, r3
	add	r3, r3, #1
	mov	r3, r3, asr #1
	strb	r3, [r0, #3]
	ldrb	ip, [r1, #3]	@ zero_extendqisi2
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	ldrb	r3, [r1, #4]	@ zero_extendqisi2
	ldrb	lr, [r1, #5]	@ zero_extendqisi2
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #2]	@ zero_extendqisi2
	add	r10, ip, r10
	sub	r10, r10, r10, asl #2
	add	lr, r3, lr
	add	r9, r9, fp
	mov	r3, r10, asl #1
	ldrb	fp, [r1, #8]	@ zero_extendqisi2
	ldrb	r10, [r1, #1]	@ zero_extendqisi2
	add	lr, lr, lr, asl #2
	add	lr, r3, lr, asl #2
	add	r9, r9, r9, asl #1
	add	ip, lr, r9
	add	r3, r10, fp
	rsb	r3, r3, ip
	add	r3, r3, #16
	ldrb	r3, [r5, r3, asr #5]	@ zero_extendqisi2
	ldrb	r9, [r0, #5]	@ zero_extendqisi2
	add	r3, r4, r3
	add	r3, r3, #1
	mov	r3, r3, asr #1
	strb	r3, [r0, #4]
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
	ldrb	r4, [r1, #7]	@ zero_extendqisi2
	ldrb	r3, [r1, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #6]	@ zero_extendqisi2
	ldrb	fp, [r1, #8]	@ zero_extendqisi2
	ldrb	r10, [r1, #3]	@ zero_extendqisi2
	add	r4, lr, r4
	add	ip, r3, ip
	sub	r4, r4, r4, asl #2
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
	mov	r4, r4, asl #1
	add	ip, ip, ip, asl #2
	add	r10, r10, fp
	add	lr, r4, ip, asl #2
	add	r10, r10, r10, asl #1
	add	ip, lr, r10
	add	r3, fp, r3
	rsb	r3, r3, ip
	add	r3, r3, #16
	ldrb	r3, [r5, r3, asr #5]	@ zero_extendqisi2
	ldrb	r4, [r0, #6]	@ zero_extendqisi2
	add	r3, r9, r3
	add	r3, r3, #1
	mov	r3, r3, asr #1
	strb	r3, [r0, #5]
	ldrb	r9, [r1, #8]	@ zero_extendqisi2
	ldrb	fp, [r1, #5]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	ldrb	lr, [r1, #6]	@ zero_extendqisi2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	add	fp, fp, r9
	sub	fp, fp, fp, asl #2
	add	lr, lr, r10
	mov	r3, fp, asl #1
	add	r9, r9, ip
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	add	lr, lr, lr, asl #2
	add	lr, r3, lr, asl #2
	add	r9, r9, r9, asl #1
	add	ip, lr, r9
	add	r3, r10, fp
	rsb	r3, r3, ip
	add	r3, r3, #16
	ldrb	r3, [r5, r3, asr #5]	@ zero_extendqisi2
	ldrb	r9, [r0, #7]	@ zero_extendqisi2
	add	r3, r4, r3
	add	r3, r3, #1
	mov	r3, r3, asr #1
	strb	r3, [r0, #6]
	ldrb	r3, [r1, #8]	@ zero_extendqisi2
	ldrb	fp, [r1, #6]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	ldrb	ip, [r1, #5]	@ zero_extendqisi2
	add	lr, r3, fp
	sub	lr, lr, lr, asl #2
	add	r3, r10, r3
	mov	r4, lr, asl #1
	add	r10, r10, ip
	add	lr, r3, r3, asl #2
	ldrb	r3, [r1, #4]	@ zero_extendqisi2
	add	lr, r4, lr, asl #2
	add	r10, r10, r10, asl #1
	add	ip, lr, r10
	add	r3, fp, r3
	rsb	r3, r3, ip
	add	r3, r3, #16
	ldrb	r3, [r5, r3, asr #5]	@ zero_extendqisi2
	add	r7, r7, r2
	add	r3, r9, r3
	add	r3, r3, #1
	mov	r3, r3, asr #1
	strb	r3, [r0, #7]
	add	r6, r6, r2
	add	r1, r1, r2
.LVL564:
	add	r0, r0, r2
.LVL565:
	.loc 5 697 0 discriminator 1
	bne	.L177
.LBE391:
.LBE392:
	.loc 5 697 0
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L181:
	.align	2
.L180:
	.word	ff_crop_tab(GOT_PREL)+(.-(.LPIC35+8))
	.cfi_endproc
.LFE199:
	.size	avg_qpel8_mc20_c, .-avg_qpel8_mc20_c
	.align	2
	.type	put_no_rnd_mpeg4_qpel16_v_lowpass.constprop.5, %function
put_no_rnd_mpeg4_qpel16_v_lowpass.constprop.5:
.LFB269:
	.loc 5 696 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL566:
	ldr	r3, .L186
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
	mov	r6, r2, asl #2
	sub	sp, sp, #132
	.cfi_def_cfa_offset 168
.LVL567:
	mov	fp, r3
	mov	r9, r2, asl #4
	mov	r3, r2, asl #3
	add	r5, r6, r2
	str	r9, [sp, #4]
	add	r9, r3, r2
	str	r9, [sp, #16]
	mov	r4, r5, asl #1
	ldr	r9, [sp, #4]
	add	lr, r4, r2
	str	lr, [sp, #12]
	rsb	r9, r2, r9
	rsb	lr, r2, r3
	str	r9, [sp, #20]
	mov	r8, r2, asl #1
.LPIC37:
	ldr	r9, [pc, fp]		@ tls_load_dot_plus_eight
	.loc 5 696 0
	str	r0, [sp, #8]
.LVL568:
	sub	fp, lr, #1
	ldr	r0, [sp, #12]
	add	ip, r8, r2
	str	fp, [sp, #12]
	sub	r4, r4, #1
	ldr	fp, [sp, #16]
	add	r4, r1, r4
	str	r9, [sp, #24]
	sub	r9, r0, #1
	sub	r0, ip, #1
	mov	r7, ip, asl #2
	sub	fp, fp, #1
	add	ip, r1, ip, asl #1
	str	r4, [sp, #96]
	add	r4, r1, r0
	str	fp, [sp, #16]
	str	r4, [sp, #60]
	ldr	fp, [sp, #20]
	sub	r4, ip, #1
	ldr	ip, [sp, #12]
	add	lr, r1, lr, asl #1
	sub	fp, fp, #1
	str	r4, [sp, #112]
	add	r4, r1, ip
	ldr	ip, [sp, #16]
	str	fp, [sp, #20]
	sub	lr, lr, #1
	ldr	fp, [sp, #4]
	str	lr, [sp, #80]
	add	lr, r1, ip
	ldr	ip, [sp, #20]
	add	r10, r7, r2
	sub	r8, r8, #1
	sub	r5, r5, #1
	add	r8, r1, r8
	add	r5, r1, r5
	add	ip, r1, ip
	sub	r3, r3, #1
	sub	r10, r10, #1
	sub	r7, r7, #1
	sub	r6, r6, #1
	sub	fp, fp, #1
	str	r8, [sp, #56]
	add	r7, r1, r7
	add	r8, r1, r10
	add	r6, r1, r6
	str	r5, [sp, #68]
	str	lr, [sp, #100]
	add	r5, r1, r9
	add	lr, r1, r3
	str	ip, [sp, #76]
	sub	r2, r2, #1
.LVL569:
	add	ip, r1, fp
	add	r2, r1, r2
.LVL570:
	str	r8, [sp, #84]
	str	r7, [sp, #88]
	str	r6, [sp, #64]
	str	r5, [sp, #92]
	str	r4, [sp, #108]
	str	lr, [sp, #104]
	str	ip, [sp, #72]
	ldr	r3, [sp, #8]
.LBB393:
	.loc 5 696 0 is_stmt 0 discriminator 3
	ldr	r9, [sp, #24]
	str	r2, [sp, #52]
	sub	r2, r1, #1
	str	r2, [sp, #48]
	add	r1, r3, #16
.LVL571:
	add	r2, r9, #1024
.LVL572:
	str	r1, [sp, #124]
	str	r3, [sp, #4]
	str	r2, [sp, #8]
.LVL573:
.L183:
	ldr	r3, [sp, #48]
	ldrb	r1, [r3, #1]!	@ zero_extendqisi2
.LVL574:
	str	r3, [sp, #48]
.LVL575:
	ldr	r3, [sp, #56]
.LVL576:
	ldrb	r8, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #56]
	ldr	r3, [sp, #52]
	add	r10, r1, r8
	ldrb	r9, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #52]
.LVL577:
	ldr	r3, [sp, #60]
	add	r5, r1, r9
	ldrb	r0, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #60]
	ldr	r3, [sp, #64]
	sub	r10, r10, r10, asl #2
	ldrb	lr, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #64]
	ldr	r3, [sp, #68]
	mov	r10, r10, asl #1
	ldrb	r4, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #68]
	ldr	r3, [sp, #112]
	add	r5, r5, r5, asl #2
	ldrb	r6, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #112]
	ldr	r3, [sp, #108]
	add	r5, r10, r5, asl #2
	ldrb	r10, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #108]
	ldr	r3, [sp, #104]
	mov	r7, r0
.LVL578:
	ldrb	ip, [r3, #1]!	@ zero_extendqisi2
	mov	r0, r4
.LVL579:
	add	r4, r9, r7
	str	r3, [sp, #104]
	add	r4, r4, r4, asl #1
	ldr	r3, [sp, #100]
	add	r4, r5, r4
	add	r5, r8, lr
	add	fp, r1, r7
	str	r10, [sp, #24]
	rsb	r4, r5, r4
	add	r10, r9, lr
	ldrb	r5, [r3, #1]!	@ zero_extendqisi2
	mov	r2, r6
.LVL580:
	str	r5, [sp, #40]
	add	r6, r9, r8
	add	r5, r8, r7
	sub	fp, fp, fp, asl #2
	sub	r10, r10, r10, asl #2
	mov	fp, fp, asl #1
	add	r5, r5, r5, asl #2
	add	r6, r6, r6, asl #2
	mov	r10, r10, asl #1
	add	r6, fp, r6, asl #2
	str	r3, [sp, #100]
.LVL581:
	add	fp, r1, lr
	ldr	r3, [sp, #96]
	add	r10, r10, r5, asl #2
	add	r5, r8, r0
	add	fp, fp, fp, asl #1
	sub	r5, r5, r5, asl #2
	add	r6, r6, fp
	mov	fp, r5, asl #1
	ldrb	r5, [r3, #1]!	@ zero_extendqisi2
	str	r5, [sp, #16]
	add	r5, r1, r0
	str	r3, [sp, #96]
.LVL582:
	add	r5, r5, r5, asl #1
	ldr	r3, [sp, #92]
	add	r10, r10, r5
	add	r5, r7, lr
	str	r0, [sp, #20]
	add	r5, r5, r5, asl #2
	ldrb	r0, [r3, #1]!	@ zero_extendqisi2
.LVL583:
	add	r5, fp, r5, asl #2
	str	r2, [sp, #12]
	add	fp, r7, r2
	str	r3, [sp, #92]
.LVL584:
	ldr	r2, [sp, #8]
.LVL585:
	ldr	r3, [sp, #88]
	add	r4, r4, #15
	ldrb	r4, [r2, r4, asr #5]	@ zero_extendqisi2
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #88]
.LVL586:
	ldr	r3, [sp, #84]
	str	r7, [sp, #44]
	ldrb	r7, [r3, #1]!	@ zero_extendqisi2
.LVL587:
	str	r3, [sp, #84]
.LVL588:
	ldr	r3, [sp, #80]
	str	r7, [sp, #28]
.LVL589:
	ldrb	r7, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #80]
.LVL590:
	ldr	r3, [sp, #76]
	str	r7, [sp, #36]
.LVL591:
	ldrb	r7, [r3, #1]!	@ zero_extendqisi2
	str	r3, [sp, #76]
.LVL592:
	ldr	r3, [sp, #72]
	str	r7, [sp, #32]
.LVL593:
	ldrb	r7, [r3, #1]!	@ zero_extendqisi2
	str	r7, [sp, #116]
	ldr	r7, [sp, #4]
	str	r3, [sp, #72]
.LVL594:
	strb	r4, [r7]
	str	r2, [sp, #120]
.LVL595:
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #12]
	add	r4, r9, r2
	rsb	r6, r4, r6
	add	r4, r9, r3
	add	r4, r4, r4, asl #1
	add	r4, r5, r4
	add	r5, lr, r2
	ldr	r2, [sp, #8]
	add	r6, r6, #15
	ldrb	r6, [r2, r6, asr #5]	@ zero_extendqisi2
	strb	r6, [r7, #16]
	ldr	r3, [sp, #24]
	ldr	r6, [sp, #12]
	sub	fp, fp, fp, asl #2
	add	r6, r1, r6
	add	r1, r1, r3
.LVL596:
	add	r5, r5, r5, asl #2
	rsb	r1, r1, r4
	mov	fp, fp, asl #1
	add	r4, r8, r3
	add	fp, fp, r5, asl #2
	add	r4, r4, r4, asl #1
	rsb	r10, r6, r10
	add	fp, fp, r4
	ldr	r6, [sp, #20]
	ldr	r4, [sp, #12]
	add	r5, lr, r3
	add	r9, r9, ip
.LVL597:
	add	r4, r6, r4
	rsb	fp, r9, fp
	sub	r5, r5, r5, asl #2
	ldr	r9, [sp, #44]
	add	r4, r4, r4, asl #2
	mov	r5, r5, asl #1
	add	r5, r5, r4, asl #2
	add	r4, r9, ip
	add	r4, r4, r4, asl #1
	add	r5, r5, r4
	mov	r4, r3
	ldr	r3, [sp, #12]
	add	r6, r6, ip
	add	r4, r3, r4
	sub	r6, r6, r6, asl #2
	ldr	r9, [sp, #40]
	add	r4, r4, r4, asl #2
	mov	r6, r6, asl #1
	add	r6, r6, r4, asl #2
	add	r10, r10, #15
	ldr	r4, [sp, #12]
	ldrb	r10, [r2, r10, asr #5]	@ zero_extendqisi2
	add	r8, r8, r9
.LVL598:
	strb	r10, [r7, #32]
	mov	r3, r9
	ldr	r10, [sp, #16]
	add	r9, r4, r9
	rsb	r5, r8, r5
	ldr	r8, [sp, #44]
	sub	r9, r9, r9, asl #2
	add	r7, r8, r10
	mov	r4, r9, asl #1
	ldr	r8, [sp, #24]
	add	r9, lr, r3
	add	r9, r9, r9, asl #1
	add	r6, r6, r9
	add	r9, r8, ip
	add	r9, r9, r9, asl #2
	add	r4, r4, r9, asl #2
	add	r1, r1, #15
	mov	r9, r10
	add	r10, r8, r10
	ldr	r8, [sp, #4]
	ldrb	r1, [r2, r1, asr #5]	@ zero_extendqisi2
	strb	r1, [r8, #48]
	mov	r1, r9
	ldr	r9, [sp, #20]
	add	fp, fp, #15
	add	r1, r9, r1
	add	r1, r1, r1, asl #1
	add	r4, r4, r1
	ldr	r1, [sp, #4]
	ldrb	fp, [r2, fp, asr #5]	@ zero_extendqisi2
	strb	fp, [r1, #64]
	ldr	fp, [sp, #16]
	rsb	r6, r7, r6
	add	r7, ip, r0
	add	r8, ip, r3
	str	ip, [sp, #44]
.LVL599:
	add	fp, r3, fp
	ldr	ip, [sp, #12]
.LVL600:
	sub	r10, r10, r10, asl #2
	sub	r7, r7, r7, asl #2
	add	lr, lr, r0
.LVL601:
	add	r8, r8, r8, asl #2
	add	fp, fp, fp, asl #2
	mov	r10, r10, asl #1
	add	r5, r5, #15
	mov	r7, r7, asl #1
	ldrb	r5, [r2, r5, asr #5]	@ zero_extendqisi2
	add	r9, ip, r0
	ldr	r2, [sp, #120]
	add	r10, r10, r8, asl #2
	rsb	r4, lr, r4
	ldr	r8, [sp, #24]
	ldr	lr, [sp, #20]
	add	r7, r7, fp, asl #2
	ldr	fp, [sp, #16]
	add	r9, r9, r9, asl #1
	add	ip, lr, r2
	add	r10, r10, r9
	add	lr, r8, r2
	mov	r9, r0
	add	r8, fp, r0
	ldr	r0, [sp, #4]
.LVL602:
	rsb	r10, ip, r10
	strb	r5, [r0, #80]
	ldr	r0, [sp, #28]
	ldr	ip, [sp, #44]
	add	r5, fp, r0
	ldr	fp, [sp, #8]
	add	r6, r6, #15
	ldrb	r6, [fp, r6, asr #5]	@ zero_extendqisi2
	add	r1, r3, r2
	add	fp, ip, r0
	ldr	ip, [sp, #12]
	add	lr, lr, lr, asl #1
	sub	r1, r1, r1, asl #2
	add	r0, ip, r0
	str	r9, [sp, #12]
.LVL603:
	add	ip, r9, r2
.LVL604:
	add	r8, r8, r8, asl #2
	add	r7, r7, lr
	mov	r1, r1, asl #1
	mov	lr, r9
	ldr	r9, [sp, #4]
.LVL605:
	add	r1, r1, r8, asl #2
	ldr	r8, [sp, #36]
	strb	r6, [r9, #96]
	mov	r9, r3
	add	r6, r9, r8
	mov	r3, r8
	add	lr, lr, r8
.LVL606:
	ldr	r8, [sp, #8]
	add	r4, r4, #15
	ldrb	r4, [r8, r4, asr #5]	@ zero_extendqisi2
	rsb	r7, r0, r7
	ldr	r8, [sp, #24]
	ldr	r0, [sp, #28]
	add	fp, fp, fp, asl #1
	add	r9, r2, r0
	add	fp, r1, fp
	add	r0, r8, r3
	ldr	r1, [sp, #32]
	ldr	r8, [sp, #16]
	sub	r5, r5, r5, asl #2
	add	ip, ip, ip, asl #2
	mov	r5, r5, asl #1
	str	fp, [sp, #24]
.LVL607:
	add	r5, r5, ip, asl #2
	add	fp, r2, r1
	ldr	ip, [sp, #28]
	add	r8, r8, r1
	ldr	r1, [sp, #4]
	add	r10, r10, #15
	strb	r4, [r1, #112]
	add	r4, ip, r3
	ldr	r3, [sp, #8]
	add	r1, r7, #15
	ldrb	r10, [r3, r10, asr #5]	@ zero_extendqisi2
	ldr	r3, [sp, #24]
	str	r1, [sp, #20]
.LVL608:
	rsb	r1, r0, r3
	ldr	r3, [sp, #116]
	add	r6, r6, r6, asl #1
	add	r0, ip, r3
	sub	r0, r0, r0, asl #2
	ldr	r7, [sp, #32]
	ldr	ip, [sp, #44]
	add	r5, r5, r6
	str	r0, [sp, #24]
	add	r6, r4, r4, asl #2
	ldr	r0, [sp, #36]
	ldr	r4, [sp, #12]
	sub	lr, lr, lr, asl #2
	add	r9, r9, r9, asl #2
	mov	lr, lr, asl #1
	add	ip, ip, r7
	add	lr, lr, r9, asl #2
	sub	fp, fp, fp, asl #2
	add	r9, r4, r3
	add	r4, r0, r7
	ldr	r7, [sp, #4]
	mov	fp, fp, asl #1
	strb	r10, [r7, #128]
	add	fp, fp, r6, asl #2
	ldr	r7, [sp, #8]
	ldr	r6, [sp, #32]
	add	r10, r0, r3
	add	r8, r8, r8, asl #1
	ldr	r0, [sp, #20]
	rsb	r5, ip, r5
	add	lr, lr, r8
	str	r2, [sp, #20]
	add	r8, r6, r3
	ldr	ip, [sp, #40]
	add	r6, r2, r3
	ldr	r2, [sp, #4]
	ldrb	r7, [r7, r0, asr #5]	@ zero_extendqisi2
	strb	r7, [r2, #144]
	add	ip, ip, r3
	ldr	r7, [sp, #8]
	rsb	lr, ip, lr
	add	r1, r1, #15
	ldr	ip, [sp, #16]
	ldr	r0, [sp, #24]
	ldrb	r1, [r7, r1, asr #5]	@ zero_extendqisi2
	strb	r1, [r2, #160]
	add	r7, ip, r3
	add	r9, r9, r9, asl #1
	mov	r3, r2
	add	r4, r4, r4, asl #2
	ldr	r2, [sp, #8]
	mov	r0, r0, asl #1
	add	r5, r5, #15
	add	fp, fp, r9
	add	r0, r0, r4, asl #2
	ldr	r9, [sp, #32]
	ldr	r4, [sp, #12]
	ldr	ip, [sp, #28]
	ldrb	r1, [r2, r5, asr #5]	@ zero_extendqisi2
	sub	r10, r10, r10, asl #2
	add	lr, lr, #15
	strb	r1, [r3, #176]
	rsb	fp, r7, fp
	ldrb	r1, [r2, lr, asr #5]	@ zero_extendqisi2
	mov	r7, r2
	add	r5, r4, r9
	ldr	r2, [sp, #20]
	add	ip, ip, r9
	add	r8, r8, r8, asl #2
	add	r6, r6, r6, asl #1
	mov	r10, r10, asl #1
	ldr	r4, [sp, #36]
	add	ip, ip, ip, asl #1
	add	r0, r0, r6
	add	r10, r10, r8, asl #2
	add	r10, r10, ip
	add	fp, fp, #15
	add	ip, r2, r4
	rsb	r0, r5, r0
	strb	r1, [r3, #192]
	add	r0, r0, #15
	ldrb	r1, [r7, fp, asr #5]	@ zero_extendqisi2
	rsb	r10, ip, r10
	strb	r1, [r3, #208]
	add	r10, r10, #15
	ldrb	r1, [r7, r0, asr #5]	@ zero_extendqisi2
	strb	r1, [r3, #224]
	ldrb	r1, [r7, r10, asr #5]	@ zero_extendqisi2
	add	r2, r3, #1
	strb	r1, [r3, #240]
.LBE393:
	.loc 5 696 0 discriminator 1
	ldr	r3, [sp, #124]
.LBB394:
	.loc 5 696 0 discriminator 3
	str	r2, [sp, #4]
.LVL609:
.LBE394:
	.loc 5 696 0 discriminator 1
	cmp	r2, r3
	bne	.L183
	.loc 5 696 0
	add	sp, sp, #132
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L187:
	.align	2
.L186:
	.word	ff_crop_tab(GOT_PREL)+(.-(.LPIC37+8))
	.cfi_endproc
.LFE269:
	.size	put_no_rnd_mpeg4_qpel16_v_lowpass.constprop.5, .-put_no_rnd_mpeg4_qpel16_v_lowpass.constprop.5
	.align	2
	.type	put_no_rnd_qpel16_mc02_c, %function
put_no_rnd_qpel16_mc02_c:
.LFB177:
	.loc 5 696 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 512
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL610:
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
	sub	sp, sp, #516
	.cfi_def_cfa_offset 552
.LVL611:
.LBB400:
.LBB401:
	.loc 6 85 0
	add	lr, r1, r2
	.loc 6 82 0
	ldrb	r6, [r1, r2]	@ zero_extendqisi2
	str	r2, [sp]
	ldrb	r2, [r1, #12]	@ zero_extendqisi2
.LVL612:
	str	r2, [sp, #8]
	ldrb	r2, [lr, #2]	@ zero_extendqisi2
	str	r2, [sp, #24]
	ldrb	r2, [r1, #2]	@ zero_extendqisi2
	str	r2, [sp, #4]
	ldrb	r2, [r1, #6]	@ zero_extendqisi2
	str	r2, [sp, #12]
	ldrb	r2, [r1, #10]	@ zero_extendqisi2
	ldrb	r7, [r1, #13]	@ zero_extendqisi2
	ldrb	r3, [lr, #4]	@ zero_extendqisi2
	str	r2, [sp, #16]
	ldr	r2, [sp, #8]
	ldrb	fp, [lr, #1]	@ zero_extendqisi2
	ldrb	r10, [r1, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #5]	@ zero_extendqisi2
	ldrb	r5, [r1]	@ zero_extendqisi2
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	str	r3, [sp, #28]
	orr	r2, r2, r7, asl #8
	ldrb	r3, [lr, #5]	@ zero_extendqisi2
	ldr	r7, [sp, #28]
	orr	r5, r5, r10, asl #8
	orr	r6, r6, fp, asl #8
	ldrb	r10, [lr, #6]	@ zero_extendqisi2
	ldrb	fp, [r1, #14]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #8
	ldrb	r9, [r1, #3]	@ zero_extendqisi2
	ldrb	r8, [r1, #9]	@ zero_extendqisi2
	ldrb	ip, [r1, #8]	@ zero_extendqisi2
	str	fp, [sp, #20]
	str	r9, [sp, #8]
	ldrb	fp, [lr, #3]	@ zero_extendqisi2
	orr	r3, r7, r3, asl #8
	str	r10, [sp, #32]
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	ldr	r7, [sp, #24]
	orr	ip, ip, r8, asl #8
	orr	r6, r6, r7, asl #16
	ldr	r7, [sp, #4]
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	orr	r7, r5, r7, asl #16
	ldrb	r5, [lr, #7]	@ zero_extendqisi2
	str	r5, [sp, #4]
	ldr	r5, [sp, #12]
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r4, r4, r5, asl #16
	ldr	r5, [sp, #16]
	orr	r6, r6, fp, asl #24
	orr	ip, ip, r5, asl #16
	ldr	r5, [sp, #20]
	orr	r9, ip, r9, asl #24
	orr	r2, r2, r5, asl #16
	ldr	r5, [sp, #32]
	orr	r2, r2, r8, asl #24
	ldr	ip, [sp, #4]
	.loc 6 85 0
	ldr	r8, [sp]
	.loc 6 82 0
	orr	r3, r3, r5, asl #16
	ldr	r5, [sp, #8]
	add	fp, sp, #112
	orr	r5, r7, r5, asl #24
	orr	r3, r3, ip, asl #24
	.loc 6 85 0
	add	ip, lr, r8
	.loc 6 83 0
	ldrb	r7, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r2, [fp, #4]
	orr	r4, r4, r10, asl #24
	str	r5, [fp, #-8]
	ldrb	r2, [ip, #9]	@ zero_extendqisi2
	ldrb	r5, [r1, r8, asl #1]	@ zero_extendqisi2
	ldrb	r1, [ip, #4]	@ zero_extendqisi2
.LVL613:
	stmda	fp, {r4, r9}
	ldrb	r10, [lr, #9]	@ zero_extendqisi2
	ldrb	r9, [ip, #1]	@ zero_extendqisi2
	ldrb	r8, [lr, #13]	@ zero_extendqisi2
	str	r6, [fp, #16]
	str	r3, [fp, #20]
	ldrb	r6, [lr, #8]	@ zero_extendqisi2
	ldrb	r4, [lr, #12]	@ zero_extendqisi2
	ldrb	r3, [ip, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r7, [sp, #120]
.LVL614:
	.loc 6 82 0
	str	r1, [sp, #12]
	ldrb	r7, [ip, #5]	@ zero_extendqisi2
	str	r2, [sp, #20]
	ldrb	r1, [ip, #13]	@ zero_extendqisi2
	str	r1, [sp, #32]
	ldrb	r1, [lr, #10]	@ zero_extendqisi2
	str	r1, [sp, #4]
	ldrb	r1, [ip, #2]	@ zero_extendqisi2
	str	r1, [sp, #16]
	ldrb	r1, [lr, #14]	@ zero_extendqisi2
	str	r1, [sp, #8]
	ldr	r1, [sp, #12]
	orr	r5, r5, r9, asl #8
	orr	r1, r1, r7, asl #8
	ldr	r7, [sp, #20]
	ldrb	r9, [ip, #10]	@ zero_extendqisi2
	orr	r3, r3, r7, asl #8
	ldrb	r7, [lr, #11]	@ zero_extendqisi2
	ldrb	r2, [ip, #12]	@ zero_extendqisi2
	str	r9, [sp, #28]
	mov	r9, r7
	ldr	r7, [sp, #32]
	orr	r6, r6, r10, asl #8
	orr	r7, r2, r7, asl #8
	ldr	r2, [sp, #4]
	ldrb	r10, [ip, #6]	@ zero_extendqisi2
	orr	r6, r6, r2, asl #16
	ldr	r2, [sp, #16]
	str	r10, [sp, #24]
	orr	r5, r5, r2, asl #16
	ldrb	r2, [ip, #11]	@ zero_extendqisi2
	str	r2, [sp, #4]
	ldr	r2, [sp, #8]
	orr	r4, r4, r8, asl #8
	orr	r4, r4, r2, asl #16
	ldr	r2, [sp, #24]
	ldrb	r8, [ip, #14]	@ zero_extendqisi2
	orr	r1, r1, r2, asl #16
	ldr	r2, [sp, #28]
	str	r8, [sp, #36]
	orr	r3, r3, r2, asl #16
	ldr	r2, [sp, #36]
	ldrb	r10, [ip, #3]	@ zero_extendqisi2
	ldrb	r8, [lr, #15]	@ zero_extendqisi2
	orr	r6, r6, r9, asl #24
	str	r10, [sp, #20]
	str	r8, [sp, #12]
	ldrb	r10, [ip, #7]	@ zero_extendqisi2
	ldrb	r8, [ip, #15]	@ zero_extendqisi2
	orr	r7, r7, r2, asl #16
	.loc 6 85 0
	ldr	r2, [sp]
	.loc 6 82 0
	ldr	r9, [sp, #20]
	orr	r1, r1, r10, asl #24
	orr	r5, r5, r9, asl #24
	ldr	r9, [sp, #12]
	str	r1, [fp, #44]
	orr	r4, r4, r9, asl #24
	ldr	r9, [sp, #4]
	ldr	r1, [sp]
	orr	r9, r3, r9, asl #24
	.loc 6 85 0
	ldr	r3, [sp]
	add	r2, ip, r2
	add	r3, r2, r3
	.loc 6 83 0
	ldrb	r10, [ip, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [fp, #28]
	ldrb	r4, [ip, r1, asl #1]	@ zero_extendqisi2
	ldrb	ip, [r2, #8]	@ zero_extendqisi2
	str	ip, [sp, #8]
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
	str	ip, [sp, #16]
	ldrb	ip, [r3, #5]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #24
	str	ip, [sp, #28]
	.loc 6 83 0
	ldrb	r8, [lr, #16]	@ zero_extendqisi2
	.loc 6 82 0
	ldrb	ip, [r2, #2]	@ zero_extendqisi2
	str	r7, [fp, #52]
	str	r6, [fp, #24]
	ldrb	r7, [r2, #9]	@ zero_extendqisi2
	ldrb	r6, [r2, #13]	@ zero_extendqisi2
	str	r5, [fp, #40]
	str	r9, [fp, #48]
	ldrb	r5, [lr, r1, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r3, #1]	@ zero_extendqisi2
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
.LVL615:
	ldrb	r1, [r2, #12]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r10, [sp, #168]
	strb	r8, [sp, #144]
.LVL616:
	.loc 6 82 0
	ldrb	r10, [r2, #1]	@ zero_extendqisi2
	ldrb	r8, [r2, #5]	@ zero_extendqisi2
	str	ip, [sp, #4]
	ldrb	ip, [r3, #2]	@ zero_extendqisi2
	str	ip, [sp, #24]
	ldrb	ip, [r2, #6]	@ zero_extendqisi2
	str	ip, [sp, #12]
	ldr	ip, [sp, #8]
	orr	r5, r5, r10, asl #8
	orr	r4, r4, r9, asl #8
	ldrb	r10, [r2, #10]	@ zero_extendqisi2
	ldrb	r9, [r2, #14]	@ zero_extendqisi2
	str	r9, [sp, #20]
	orr	ip, ip, r7, asl #8
	orr	r1, r1, r6, asl #8
	ldrb	r6, [r2, #3]	@ zero_extendqisi2
	ldr	r7, [sp, #28]
	str	r6, [sp, #8]
	orr	lr, lr, r8, asl #8
	ldr	r6, [sp, #16]
	ldrb	r8, [r3, #6]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #16
	ldr	r10, [sp, #20]
	str	r8, [sp, #32]
	orr	r6, r6, r7, asl #8
	orr	r1, r1, r10, asl #16
	ldrb	r7, [r3, #3]	@ zero_extendqisi2
	ldr	r10, [sp, #32]
	str	r7, [sp, #28]
	ldr	r7, [sp, #4]
	orr	r6, r6, r10, asl #16
	ldr	r10, [sp, #8]
	orr	r5, r5, r7, asl #16
	ldr	r7, [sp, #24]
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	ldrb	r9, [r2, #11]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	ldr	r10, [sp, #28]
	str	r8, [sp, #16]
	orr	r4, r4, r7, asl #16
	ldr	r7, [sp, #12]
	orr	r4, r4, r10, asl #24
	orr	ip, ip, r9, asl #24
	ldr	r10, [sp, #16]
	.loc 6 85 0
	ldr	r9, [sp]
	.loc 6 82 0
	orr	lr, lr, r7, asl #16
	ldrb	r7, [r3, #7]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #24
	.loc 6 85 0
	add	r10, r3, r9
	.loc 6 82 0
	ldrb	r8, [r2, #15]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #24
	str	r5, [fp, #64]
	.loc 6 83 0
	ldrb	r7, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [fp, #88]
	str	lr, [fp, #68]
	ldrb	r4, [r2, r9, asl #1]	@ zero_extendqisi2
	ldrb	r2, [r10, #9]	@ zero_extendqisi2
.LVL617:
	str	r2, [sp, #12]
	ldrb	r2, [r10, #12]	@ zero_extendqisi2
	str	r2, [sp, #20]
	ldrb	r2, [r10, #13]	@ zero_extendqisi2
	str	r2, [sp, #32]
	ldrb	r2, [r3, #10]	@ zero_extendqisi2
	orr	r1, r1, r8, asl #24
	ldrb	r5, [r3, #8]	@ zero_extendqisi2
	ldrb	r8, [r3, #9]	@ zero_extendqisi2
	str	r2, [sp, #4]
	ldrb	r2, [r10, #2]	@ zero_extendqisi2
	str	r6, [fp, #92]
	ldrb	lr, [r3, #12]	@ zero_extendqisi2
	ldrb	r6, [r3, #13]	@ zero_extendqisi2
	str	r2, [sp, #16]
	ldrb	r2, [r3, #14]	@ zero_extendqisi2
	str	r1, [fp, #76]
	ldrb	r9, [r10, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r7, [sp, #192]
.LVL618:
	.loc 6 82 0
	str	r2, [sp, #8]
	ldrb	r7, [r10, #1]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #8
	ldr	r2, [sp, #12]
	ldrb	r8, [r10, #6]	@ zero_extendqisi2
	str	r8, [sp, #24]
	orr	lr, lr, r6, asl #8
	ldrb	r8, [r10, #10]	@ zero_extendqisi2
	ldrb	r6, [r10, #14]	@ zero_extendqisi2
	ldrb	r1, [r10, #4]	@ zero_extendqisi2
	str	ip, [fp, #72]
	orr	r4, r4, r7, asl #8
	ldrb	ip, [r10, #5]	@ zero_extendqisi2
	str	r8, [sp, #28]
	orr	r2, r9, r2, asl #8
	str	r6, [sp, #36]
	ldrb	r9, [r3, #11]	@ zero_extendqisi2
	ldr	r6, [sp, #20]
	ldr	r7, [sp, #32]
	ldrb	r8, [r10, #3]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #8
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	str	r7, [sp, #12]
	ldr	r7, [sp, #4]
	str	r8, [sp, #20]
	orr	ip, r1, ip, asl #8
	orr	r5, r5, r7, asl #16
	ldrb	r1, [r10, #7]	@ zero_extendqisi2
	ldr	r7, [sp, #16]
	str	r1, [sp, #4]
	orr	r5, r5, r9, asl #24
	ldr	r1, [sp, #24]
	ldr	r9, [sp, #20]
	orr	r4, r4, r7, asl #16
	ldr	r7, [sp, #8]
	orr	r4, r4, r9, asl #24
	orr	ip, ip, r1, asl #16
	ldr	r9, [sp, #12]
	ldr	r1, [sp, #28]
	orr	lr, lr, r7, asl #16
	orr	r2, r2, r1, asl #16
	orr	lr, lr, r9, asl #24
	ldr	r1, [sp, #36]
	ldr	r9, [sp, #4]
	ldrb	r8, [r10, #11]	@ zero_extendqisi2
	ldrb	r7, [r10, #15]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #24
	orr	r6, r6, r1, asl #16
	.loc 6 85 0
	ldr	r1, [sp]
	.loc 6 82 0
	orr	r8, r2, r8, asl #24
	str	ip, [fp, #116]
	.loc 6 85 0
	ldr	r2, [sp]
	.loc 6 82 0
	ldr	ip, [sp]
	.loc 6 85 0
	add	r1, r10, r1
	.loc 6 83 0
	ldrb	r9, [r10, #16]	@ zero_extendqisi2
	.loc 6 82 0
	orr	r6, r6, r7, asl #24
	.loc 6 83 0
	ldrb	r7, [r3, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	r2, r1, r2
	.loc 6 82 0
	str	lr, [fp, #100]
	str	r6, [fp, #124]
	str	r5, [fp, #96]
	str	r8, [fp, #120]
	ldrb	r5, [r3, ip, asl #1]	@ zero_extendqisi2
	str	r4, [fp, #112]
	.loc 6 83 0
	strb	r9, [sp, #240]
	strb	r7, [sp, #216]
.LVL619:
	.loc 6 82 0
	ldrb	r4, [r10, ip, asl #1]	@ zero_extendqisi2
	ldrb	r3, [r1, #12]	@ zero_extendqisi2
	str	r3, [sp, #8]
	ldrb	r3, [r2, #4]	@ zero_extendqisi2
	str	r3, [sp, #16]
	ldrb	r3, [r2, #5]	@ zero_extendqisi2
	str	r3, [sp, #28]
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
	str	r3, [sp, #4]
	ldrb	r3, [r2, #2]	@ zero_extendqisi2
	str	r3, [sp, #24]
	ldrb	r3, [r1, #6]	@ zero_extendqisi2
	ldrb	r6, [r1, #13]	@ zero_extendqisi2
	str	r3, [sp, #12]
	ldr	r3, [sp, #8]
	ldrb	r7, [r1, #9]	@ zero_extendqisi2
	ldrb	ip, [r1, #8]	@ zero_extendqisi2
	ldrb	r10, [r1, #1]	@ zero_extendqisi2
	ldrb	r8, [r1, #5]	@ zero_extendqisi2
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
	orr	r3, r3, r6, asl #8
	ldrb	r6, [r1, #3]	@ zero_extendqisi2
	ldrb	r9, [r2, #1]	@ zero_extendqisi2
	orr	ip, ip, r7, asl #8
	str	r6, [sp, #8]
	ldr	r7, [sp, #28]
	ldr	r6, [sp, #16]
	orr	r5, r5, r10, asl #8
	orr	lr, lr, r8, asl #8
	ldrb	r10, [r1, #10]	@ zero_extendqisi2
	ldrb	r8, [r2, #6]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #8
	str	r8, [sp, #32]
	ldrb	r9, [r1, #14]	@ zero_extendqisi2
	ldrb	r8, [r1, #7]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #8
	ldrb	r7, [r2, #3]	@ zero_extendqisi2
	str	r9, [sp, #20]
	str	r7, [sp, #28]
	orr	ip, ip, r10, asl #16
	str	r8, [sp, #16]
	ldr	r10, [sp, #20]
	ldr	r7, [sp, #4]
	orr	r3, r3, r10, asl #16
	ldr	r10, [sp, #32]
	orr	r5, r5, r7, asl #16
	orr	r6, r6, r10, asl #16
	ldr	r10, [sp, #8]
	ldr	r7, [sp, #24]
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	ldr	r10, [sp, #28]
	orr	r4, r4, r7, asl #16
	ldr	r7, [sp, #12]
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	orr	r4, r4, r10, asl #24
	orr	ip, ip, r9, asl #24
	ldr	r10, [sp, #16]
	.loc 6 85 0
	ldr	r9, [sp]
	.loc 6 82 0
	orr	lr, lr, r7, asl #16
	ldrb	r7, [r2, #7]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #24
	orr	r3, r3, r8, asl #24
	.loc 6 85 0
	add	r10, r2, r9
	.loc 6 82 0
	str	r3, [fp, #148]
	orr	r6, r6, r7, asl #24
	ldrb	r3, [r10, #9]	@ zero_extendqisi2
	.loc 6 83 0
	ldrb	r7, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	lr, [fp, #140]
	str	r6, [fp, #164]
	ldrb	lr, [r2, #12]	@ zero_extendqisi2
	ldrb	r6, [r2, #13]	@ zero_extendqisi2
	str	r3, [sp, #12]
	ldrb	r3, [r10, #12]	@ zero_extendqisi2
	ldrb	r8, [r2, #9]	@ zero_extendqisi2
	str	r5, [fp, #136]
	str	r4, [fp, #160]
	str	ip, [fp, #144]
	ldrb	r4, [r1, r9, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	ldrb	r1, [r10, #4]	@ zero_extendqisi2
.LVL620:
	ldrb	r9, [r10, #8]	@ zero_extendqisi2
	ldrb	ip, [r10, #5]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r7, [sp, #264]
.LVL621:
	.loc 6 82 0
	str	r3, [sp, #20]
	ldrb	r7, [r10, #1]	@ zero_extendqisi2
	ldrb	r3, [r10, #13]	@ zero_extendqisi2
	str	r3, [sp, #32]
	orr	lr, lr, r6, asl #8
	ldrb	r6, [r10, #14]	@ zero_extendqisi2
	ldrb	r3, [r2, #10]	@ zero_extendqisi2
	str	r6, [sp, #36]
	orr	ip, r1, ip, asl #8
	ldr	r6, [sp, #32]
	ldr	r1, [sp, #20]
	str	r3, [sp, #4]
	orr	r6, r1, r6, asl #8
	ldrb	r3, [r10, #2]	@ zero_extendqisi2
	ldr	r1, [sp, #4]
	str	r3, [sp, #16]
	orr	r5, r5, r8, asl #8
	orr	r5, r5, r1, asl #16
	ldr	r1, [sp, #16]
	ldrb	r3, [r2, #14]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #8
	str	r3, [sp, #8]
	orr	r4, r4, r1, asl #16
	ldrb	r1, [r10, #11]	@ zero_extendqisi2
	ldrb	r8, [r10, #6]	@ zero_extendqisi2
	str	r1, [sp, #4]
	ldr	r1, [sp, #8]
	str	r8, [sp, #24]
	ldrb	r7, [r10, #10]	@ zero_extendqisi2
	orr	lr, lr, r1, asl #16
	ldr	r1, [sp, #24]
	str	r7, [sp, #28]
	ldr	r3, [sp, #12]
	ldrb	r7, [r2, #11]	@ zero_extendqisi2
	orr	ip, ip, r1, asl #16
	ldr	r1, [sp, #28]
	orr	r3, r9, r3, asl #8
	ldrb	r9, [r2, #15]	@ zero_extendqisi2
	mov	r8, r7
	str	r9, [sp, #12]
	ldrb	r7, [r10, #3]	@ zero_extendqisi2
	ldrb	r9, [r10, #7]	@ zero_extendqisi2
	orr	r3, r3, r1, asl #16
	ldr	r1, [sp, #36]
	str	r7, [sp, #20]
	orr	r5, r5, r8, asl #24
	ldrb	r7, [r10, #15]	@ zero_extendqisi2
	orr	r9, ip, r9, asl #24
	orr	r6, r6, r1, asl #16
	.loc 6 85 0
	ldr	r1, [sp]
	.loc 6 82 0
	ldr	r8, [sp, #20]
	ldr	ip, [sp, #4]
	.loc 6 85 0
	add	r1, r10, r1
	.loc 6 82 0
	orr	r3, r3, ip, asl #24
	str	r3, [fp, #192]
	.loc 6 85 0
	ldr	ip, [sp]
	.loc 6 82 0
	ldr	r3, [sp]
	.loc 6 85 0
	add	ip, r1, ip
	.loc 6 82 0
	orr	r6, r6, r7, asl #24
	str	r5, [fp, #168]
	.loc 6 83 0
	ldrb	r7, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	ldrb	r5, [r2, r3, asl #1]	@ zero_extendqisi2
	ldrb	r2, [r1, #8]	@ zero_extendqisi2
.LVL622:
	str	r2, [sp, #8]
	ldrb	r2, [ip, #4]	@ zero_extendqisi2
	orr	r4, r4, r8, asl #24
	str	r2, [sp, #16]
	ldr	r8, [sp, #12]
	ldrb	r2, [ip, #5]	@ zero_extendqisi2
	str	r2, [sp, #32]
	ldrb	r2, [r1, #2]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #24
	str	r2, [sp, #4]
	.loc 6 83 0
	ldrb	r8, [r10, #16]	@ zero_extendqisi2
	.loc 6 82 0
	ldrb	r2, [ip, #2]	@ zero_extendqisi2
	str	lr, [fp, #172]
	str	r6, [fp, #196]
	str	r4, [fp, #184]
	ldrb	r6, [r1, #13]	@ zero_extendqisi2
	ldrb	r4, [r10, r3, asl #1]	@ zero_extendqisi2
	str	r9, [fp, #188]
	ldrb	r10, [r1, #1]	@ zero_extendqisi2
	ldrb	r9, [ip, #1]	@ zero_extendqisi2
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
	ldrb	r3, [r1, #12]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r8, [sp, #312]
	strb	r7, [sp, #288]
.LVL623:
	.loc 6 82 0
	ldrb	r8, [r1, #5]	@ zero_extendqisi2
	ldrb	r7, [r1, #9]	@ zero_extendqisi2
	str	r2, [sp, #28]
	ldrb	r2, [r1, #6]	@ zero_extendqisi2
	str	r2, [sp, #12]
	ldr	r2, [sp, #8]
	orr	r3, r3, r6, asl #8
	ldrb	r6, [r1, #3]	@ zero_extendqisi2
	str	r6, [sp, #8]
	orr	r2, r2, r7, asl #8
	ldr	r6, [sp, #16]
	ldr	r7, [sp, #32]
	orr	r5, r5, r10, asl #8
	orr	r6, r6, r7, asl #8
	ldr	r7, [sp, #4]
	orr	r4, r4, r9, asl #8
	orr	r5, r5, r7, asl #16
	ldr	r7, [sp, #28]
	ldrb	r10, [r1, #10]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #16
	ldr	r7, [sp, #12]
	orr	lr, lr, r8, asl #8
	str	r10, [sp, #20]
	orr	lr, lr, r7, asl #16
	ldrb	r9, [r1, #14]	@ zero_extendqisi2
	str	lr, [sp, #4]
	ldr	lr, [sp, #20]
	str	r9, [sp, #24]
	ldrb	r8, [ip, #6]	@ zero_extendqisi2
	orr	r2, r2, lr, asl #16
	ldr	lr, [sp, #24]
	str	r8, [sp, #36]
	orr	r3, r3, lr, asl #16
	ldr	lr, [sp, #36]
	ldrb	r10, [ip, #3]	@ zero_extendqisi2
	ldrb	r8, [r1, #7]	@ zero_extendqisi2
	orr	r6, r6, lr, asl #16
	ldr	lr, [sp, #8]
	str	r8, [sp, #16]
	orr	r5, r5, lr, asl #24
	orr	r4, r4, r10, asl #24
	ldr	lr, [sp, #16]
	ldr	r10, [sp, #4]
	ldrb	r7, [ip, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	orr	lr, r10, lr, asl #24
	.loc 6 85 0
	ldr	r10, [sp]
	.loc 6 82 0
	orr	r6, r6, r7, asl #24
	orr	r2, r2, r9, asl #24
	orr	r8, r3, r8, asl #24
	.loc 6 83 0
	ldrb	r9, [r1, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	r3, ip, r10
	.loc 6 82 0
	str	r5, [fp, #208]
	str	r4, [fp, #232]
	str	lr, [fp, #212]
	str	r6, [fp, #236]
	ldrb	r6, [r1, r10, asl #1]	@ zero_extendqisi2
	ldrb	r1, [ip, #12]	@ zero_extendqisi2
.LVL624:
	str	r1, [sp, #8]
	ldrb	r1, [r3, #12]	@ zero_extendqisi2
	str	r1, [sp, #16]
	ldrb	r1, [r3, #13]	@ zero_extendqisi2
	str	r1, [sp, #24]
	ldrb	r1, [ip, #10]	@ zero_extendqisi2
	str	r8, [fp, #220]
	str	r1, [sp, #4]
	ldrb	r8, [r3, #1]	@ zero_extendqisi2
	ldrb	r1, [r3, #2]	@ zero_extendqisi2
	ldrb	r7, [ip, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #336]
.LVL625:
	.loc 6 82 0
	str	r1, [sp, #20]
	ldrb	r9, [ip, #9]	@ zero_extendqisi2
	ldrb	r1, [ip, #14]	@ zero_extendqisi2
	ldrb	r5, [ip, #13]	@ zero_extendqisi2
	str	r1, [sp, #12]
	orr	r6, r6, r8, asl #8
	ldr	r1, [sp, #8]
	ldrb	r8, [r3, #10]	@ zero_extendqisi2
	str	r2, [fp, #216]
	ldrb	r4, [r3, #5]	@ zero_extendqisi2
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #8
	str	r8, [sp, #32]
	ldrb	r9, [r3, #6]	@ zero_extendqisi2
	ldrb	r8, [ip, #11]	@ zero_extendqisi2
	ldrb	r10, [r3, #8]	@ zero_extendqisi2
	ldrb	lr, [r3, #9]	@ zero_extendqisi2
	str	r9, [sp, #28]
	orr	r5, r1, r5, asl #8
	str	r8, [sp, #8]
	ldrb	r1, [r3, #14]	@ zero_extendqisi2
	ldr	r8, [sp, #16]
	ldr	r9, [sp, #24]
	orr	r4, r2, r4, asl #8
	ldr	r2, [sp, #28]
	orr	r8, r8, r9, asl #8
	ldrb	r9, [ip, #15]	@ zero_extendqisi2
	str	r9, [sp, #16]
	orr	r4, r4, r2, asl #16
	ldr	r9, [sp, #4]
	ldr	r2, [sp, #32]
	orr	lr, r10, lr, asl #8
	orr	r2, lr, r2, asl #16
	ldrb	r10, [r3, #3]	@ zero_extendqisi2
	ldr	lr, [sp, #8]
	orr	r7, r7, r9, asl #16
	ldrb	r9, [r3, #7]	@ zero_extendqisi2
	str	r9, [sp, #4]
	str	r10, [sp, #24]
	ldr	r9, [sp, #20]
	orr	r7, r7, lr, asl #24
	ldr	lr, [sp, #24]
	ldr	r10, [sp, #12]
	orr	r6, r6, r9, asl #16
	orr	r6, r6, lr, asl #24
	ldr	lr, [sp, #16]
	orr	r5, r5, r10, asl #16
	orr	r5, r5, lr, asl #24
	ldrb	r10, [r3, #15]	@ zero_extendqisi2
	ldr	lr, [sp, #4]
	ldrb	r9, [r3, #11]	@ zero_extendqisi2
	orr	r8, r8, r1, asl #16
	orr	r4, r4, lr, asl #24
	orr	r8, r8, r10, asl #24
	.loc 6 85 0
	ldr	r1, [sp]
	.loc 6 83 0
	ldrb	r10, [r3, #16]	@ zero_extendqisi2
	.loc 6 82 0
	orr	lr, r2, r9, asl #24
	.loc 6 83 0
	str	r10, [sp, #4]
	.loc 6 85 0
	ldr	r2, [sp]
	.loc 6 83 0
	ldrb	r10, [ip, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [sp, #372]
	.loc 6 83 0
	ldrb	r4, [sp, #4]	@ zero_extendqisi2
	.loc 6 85 0
	add	r1, r3, r1
	.loc 6 82 0
	str	r5, [fp, #244]
	str	r7, [fp, #240]
	str	r6, [sp, #368]
	str	r8, [sp, #380]
	.loc 6 83 0
	strb	r4, [sp, #384]
	strb	r10, [sp, #360]
.LVL626:
	.loc 6 82 0
	str	lr, [sp, #376]
	ldr	lr, [sp]
	.loc 6 85 0
	add	r2, r1, r2
	.loc 6 82 0
	ldrb	r5, [ip, lr, asl #1]	@ zero_extendqisi2
	ldrb	ip, [r2, #4]	@ zero_extendqisi2
	str	ip, [sp, #32]
	ldrb	ip, [r2, #2]	@ zero_extendqisi2
	str	ip, [sp, #24]
	ldrb	ip, [r1, #2]	@ zero_extendqisi2
	ldrb	r6, [r3, lr, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r1, #13]	@ zero_extendqisi2
	ldrb	r3, [r1, #8]	@ zero_extendqisi2
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	str	ip, [sp, #4]
	ldrb	ip, [r1, #6]	@ zero_extendqisi2
	ldrb	fp, [r2, #1]	@ zero_extendqisi2
	ldrb	r10, [r1, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #5]	@ zero_extendqisi2
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	str	r3, [sp, #12]
	str	ip, [sp, #8]
	ldrb	ip, [r1, #14]	@ zero_extendqisi2
	ldrb	r7, [r2, #5]	@ zero_extendqisi2
	ldrb	r3, [r1, #9]	@ zero_extendqisi2
	str	ip, [sp, #20]
	orr	lr, lr, r8, asl #8
	ldr	ip, [sp, #32]
	ldr	r8, [sp, #12]
	orr	r6, r6, fp, asl #8
	orr	r5, r5, r10, asl #8
	ldrb	fp, [r2, #6]	@ zero_extendqisi2
	ldrb	r10, [r1, #10]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #8
	ldrb	r9, [r2, #3]	@ zero_extendqisi2
	str	fp, [sp, #36]
	str	r9, [sp, #28]
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	orr	ip, ip, r7, asl #8
	orr	r3, r8, r3, asl #8
	ldrb	r7, [r1, #3]	@ zero_extendqisi2
	str	r10, [sp, #16]
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	ldr	r8, [sp, #24]
	ldrb	r9, [r2, #7]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #16
	ldr	r8, [sp, #4]
	orr	r5, r5, r8, asl #16
	str	r5, [sp, #4]
	ldr	r5, [sp, #8]
	ldrb	r8, [r1, #11]	@ zero_extendqisi2
	orr	r4, r4, r5, asl #16
	ldr	r5, [sp, #20]
	orr	r4, r4, fp, asl #24
	orr	lr, lr, r5, asl #16
	ldr	r5, [sp, #36]
	.loc 6 85 0
	ldr	fp, [sp]
	.loc 6 82 0
	orr	ip, ip, r5, asl #16
	ldr	r5, [sp, #16]
	orr	lr, lr, r10, asl #24
	orr	r3, r3, r5, asl #16
	ldr	r5, [sp, #28]
	orr	r8, r3, r8, asl #24
	orr	r6, r6, r5, asl #24
	ldr	r5, [sp, #4]
	.loc 6 85 0
	add	r3, r2, fp
	.loc 6 82 0
	orr	r5, r5, r7, asl #24
	orr	ip, ip, r9, asl #24
	str	r6, [sp, #416]
	.loc 6 83 0
	ldrb	r9, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	ldrb	r6, [r1, fp, asl #1]	@ zero_extendqisi2
	str	r4, [sp, #396]
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
.LVL627:
	ldrb	r4, [r3, #5]	@ zero_extendqisi2
	ldrb	r10, [r2, #9]	@ zero_extendqisi2
	ldrb	r7, [r2, #13]	@ zero_extendqisi2
	str	r5, [sp, #392]
	str	lr, [sp, #404]
	ldrb	r5, [r2, #12]	@ zero_extendqisi2
	ldrb	lr, [r3, #13]	@ zero_extendqisi2
	str	ip, [sp, #420]
	str	r8, [sp, #400]
	.loc 6 83 0
	strb	r9, [sp, #408]
.LVL628:
	.loc 6 82 0
	ldrb	r8, [r2, #8]	@ zero_extendqisi2
	ldrb	r9, [r3, #1]	@ zero_extendqisi2
	str	r1, [sp, #8]
	str	r4, [sp, #16]
	ldrb	r1, [r3, #12]	@ zero_extendqisi2
	ldrb	fp, [r3, #8]	@ zero_extendqisi2
	ldrb	r4, [r3, #2]	@ zero_extendqisi2
	str	r4, [sp, #12]
	ldrb	r4, [r2, #14]	@ zero_extendqisi2
	str	r4, [sp, #4]
	ldrb	r4, [r3, #6]	@ zero_extendqisi2
	str	fp, [sp, #24]
	str	r4, [sp, #20]
	orr	r5, r5, r7, asl #8
	ldr	r4, [sp, #16]
	ldr	r7, [sp, #8]
	ldrb	fp, [r3, #9]	@ zero_extendqisi2
	orr	lr, r1, lr, asl #8
	ldr	r1, [sp, #24]
	orr	r4, r7, r4, asl #8
	ldrb	r7, [r3, #3]	@ zero_extendqisi2
	str	r7, [sp, #16]
	orr	r7, r1, fp, asl #8
	ldr	r1, [sp, #12]
	orr	r6, r6, r9, asl #8
	orr	r6, r6, r1, asl #16
	ldr	r1, [sp, #4]
	orr	r8, r8, r10, asl #8
	orr	r5, r5, r1, asl #16
	ldrb	r10, [r3, #14]	@ zero_extendqisi2
	ldr	r1, [sp, #20]
	str	r10, [sp, #32]
	ldrb	r9, [r3, #10]	@ zero_extendqisi2
	orr	r4, r4, r1, asl #16
	ldr	r1, [sp, #32]
	str	r9, [sp, #28]
	ldrb	ip, [r2, #10]	@ zero_extendqisi2
	orr	lr, lr, r1, asl #16
	ldr	r1, [sp, #28]
	orr	r8, r8, ip, asl #16
	orr	ip, r7, r1, asl #16
	ldr	r7, [sp, #16]
	ldrb	r9, [r2, #11]	@ zero_extendqisi2
	ldrb	r10, [r2, #15]	@ zero_extendqisi2
	ldrb	fp, [r3, #7]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #24
	add	r7, sp, #448
	str	r10, [sp, #8]
	str	fp, [sp, #24]
	ldrb	r10, [r3, #11]	@ zero_extendqisi2
	ldrb	fp, [r3, #15]	@ zero_extendqisi2
	.loc 6 85 0
	ldr	r1, [sp]
	.loc 6 82 0
	str	r7, [sp, #4]
	ldr	r7, [sp, #8]
	orr	r8, r8, r9, asl #24
	orr	r5, r5, r7, asl #24
	str	r8, [sp, #424]
	ldr	r7, [sp, #24]
	ldr	r8, [sp, #4]
	orr	lr, lr, fp, asl #24
	str	lr, [r8, #4]
	orr	r4, r4, r7, asl #24
	ldr	lr, [sp]
	orr	r7, ip, r10, asl #24
	.loc 6 85 0
	ldr	ip, [sp]
	add	r1, r3, r1
	add	ip, r1, ip
	.loc 6 83 0
	ldrb	r10, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r5, [sp, #428]
	ldrb	r5, [r2, lr, asl #1]	@ zero_extendqisi2
	ldrb	r2, [r1, #8]	@ zero_extendqisi2
.LVL629:
	str	r2, [sp, #8]
	ldrb	r2, [ip, #2]	@ zero_extendqisi2
	.loc 6 83 0
	ldrb	fp, [r3, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r6, [r8, #-8]
	str	r2, [sp, #28]
	ldrb	r6, [r3, lr, asl #1]	@ zero_extendqisi2
	ldrb	r2, [r1, #2]	@ zero_extendqisi2
	ldrb	r3, [r1, #12]	@ zero_extendqisi2
	str	r4, [r8, #-4]
	ldrb	r9, [ip, #5]	@ zero_extendqisi2
	ldrb	r8, [r1, #5]	@ zero_extendqisi2
	ldrb	r4, [ip, #4]	@ zero_extendqisi2
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
	str	r7, [sp, #448]
	.loc 6 83 0
	strb	fp, [sp, #456]
	.loc 6 82 0
	ldrb	r7, [r1, #9]	@ zero_extendqisi2
	ldrb	fp, [ip, #1]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r10, [sp, #432]
.LVL630:
	.loc 6 82 0
	str	r3, [sp, #20]
	ldrb	r10, [r1, #1]	@ zero_extendqisi2
	ldrb	r3, [r1, #13]	@ zero_extendqisi2
	str	r2, [sp, #4]
	ldrb	r2, [ip, #6]	@ zero_extendqisi2
	str	r2, [sp, #32]
	ldrb	r2, [r1, #6]	@ zero_extendqisi2
	str	r2, [sp, #12]
	ldr	r2, [sp, #8]
	orr	lr, lr, r8, asl #8
	orr	r2, r2, r7, asl #8
	ldr	r7, [sp, #20]
	ldrb	r8, [r1, #3]	@ zero_extendqisi2
	str	r8, [sp, #8]
	orr	r8, r7, r3, asl #8
	ldrb	r3, [r1, #11]	@ zero_extendqisi2
	str	r3, [sp, #20]
	ldr	r3, [sp, #32]
	orr	r4, r4, r9, asl #8
	orr	r6, r6, fp, asl #8
	orr	r4, r4, r3, asl #16
	ldrb	fp, [r1, #10]	@ zero_extendqisi2
	ldr	r3, [sp, #12]
	str	fp, [sp, #16]
	ldr	r7, [sp, #28]
	ldrb	fp, [ip, #3]	@ zero_extendqisi2
	ldrb	r9, [r1, #7]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #8
	orr	lr, lr, r3, asl #16
	ldrb	r10, [r1, #14]	@ zero_extendqisi2
	ldr	r3, [sp, #16]
	str	r10, [sp, #24]
	orr	r6, r6, r7, asl #16
	ldrb	r10, [ip, #7]	@ zero_extendqisi2
	ldr	r7, [sp, #4]
	orr	r6, r6, fp, asl #24
	orr	lr, lr, r9, asl #24
	orr	r2, r2, r3, asl #16
	ldr	r9, [sp]
	ldr	r3, [sp, #24]
	add	fp, sp, #496
	str	fp, [sp, #4]
	ldr	fp, [sp, #8]
	orr	r4, r4, r10, asl #24
	orr	r5, r5, r7, asl #16
	mov	r10, r9, asl #2
	ldrb	r7, [r1, #15]	@ zero_extendqisi2
	orr	r3, r8, r3, asl #16
	ldr	r8, [sp, #20]
	orr	r5, r5, fp, asl #24
	mov	fp, r10
	ldr	r10, [sp, #4]
	orr	r2, r2, r8, asl #24
	orr	r3, r3, r7, asl #24
	mov	r7, r9, asl #1
	.loc 6 83 0
	ldrb	r1, [r1, #16]	@ zero_extendqisi2
.LVL631:
	.loc 6 82 0
	str	r6, [r10, #-8]
	str	r4, [r10, #-4]
	str	r5, [sp, #464]
	str	lr, [sp, #468]
	str	r2, [sp, #472]
	add	r2, r7, r9
	mov	lr, r2
	ldrb	r8, [ip, #13]	@ zero_extendqisi2
	ldrb	r2, [ip, #12]	@ zero_extendqisi2
	.loc 6 83 0
	ldr	r5, .L192
	strb	r1, [sp, #480]
.LVL632:
	.loc 6 82 0
	orr	r2, r2, r8, asl #8
	mov	r1, r9
	ldrb	r8, [ip, #11]	@ zero_extendqisi2
	str	fp, [sp, #20]
	add	r4, fp, r1
	str	r8, [sp, #8]
	.loc 6 83 0
	mov	fp, r5
	ldr	r8, [sp]
	.loc 6 82 0
	ldrb	r9, [ip, #9]	@ zero_extendqisi2
	ldrb	r6, [ip, #14]	@ zero_extendqisi2
.LPIC39:
	ldr	fp, [pc, fp]		@ tls_load_dot_plus_eight
	str	r3, [sp, #476]
	ldrb	r3, [ip, #8]	@ zero_extendqisi2
	str	fp, [sp, #28]
	mov	fp, r8
	ldrb	r10, [ip, #10]	@ zero_extendqisi2
	mov	r1, r1, asl #3
	orr	r2, r2, r6, asl #16
	orr	r3, r3, r9, asl #8
	mov	r6, fp
	ldrb	r9, [ip, #15]	@ zero_extendqisi2
	str	r9, [sp, #12]
	rsb	fp, fp, r1
	add	r6, r1, r6
	sub	r1, r1, #1
	orr	r3, r3, r10, asl #16
	ldr	r10, [sp, #20]
	str	r1, [sp, #20]
	ldr	r1, [sp, #12]
	str	lr, [sp, #16]
	orr	r1, r2, r1, asl #24
	ldr	r2, [sp, #8]
	mov	r5, lr, asl #2
	mov	lr, r4, asl #1
	add	r9, r5, r8
	orr	r3, r3, r2, asl #24
	add	r8, lr, r8
	ldr	r2, [sp, #16]
	sub	r7, r7, #1
	sub	r5, r5, #1
	sub	r4, r4, #1
	str	fp, [sp, #24]
	add	r7, r0, r7
	sub	fp, r10, #1
	add	r5, r0, r5
	add	r4, r0, r4
	sub	r9, r9, #1
	sub	r8, r8, #1
	sub	lr, lr, #1
	str	r3, [sp, #496]
	str	r7, [sp, #52]
	sub	r3, r2, #1
	str	r5, [sp, #92]
	str	r4, [sp, #64]
	add	r5, r0, fp
	add	lr, r0, lr
	add	r7, r0, r9
	add	r4, r0, r8
	sub	r10, r6, #1
	str	r1, [sp, #12]
	ldr	r6, [sp]
	add	r2, r0, r2, asl #1
	.loc 6 83 0
	ldrb	ip, [ip, #16]	@ zero_extendqisi2
.LVL633:
	str	r7, [sp, #44]
	str	r5, [sp, #60]
	str	r4, [sp, #88]
	str	lr, [sp, #84]
	add	lr, r0, r3
	str	lr, [sp, #56]
	sub	lr, r2, #1
	ldr	r2, [sp, #20]
	rsb	r1, r6, r6, asl #4
.LBE401:
.LBE400:
.LBB403:
.LBB404:
.LBB405:
	.loc 5 696 0 discriminator 3
	ldr	r3, [sp, #28]
	sub	r1, r1, #1
	add	r2, r0, r2
	ldr	fp, [sp, #24]
	add	r3, r3, #1024
	sub	r6, r6, #1
	str	r2, [sp, #76]
	add	r2, r0, r1
	str	r2, [sp, #48]
	str	r3, [sp, #100]
	add	r2, r0, r6
	add	r3, r0, fp, asl #1
	sub	r3, r3, #1
	str	r2, [sp, #36]
	sub	r2, fp, #1
	add	r2, r0, r2
	str	lr, [sp, #68]
	str	r3, [sp, #40]
	add	lr, r0, r10
	sub	r3, r0, #1
.LBE405:
.LBE404:
.LBE403:
.LBB410:
.LBB402:
	.loc 6 82 0
	ldr	r10, [sp, #4]
	ldr	r1, [sp, #12]
	str	r2, [sp, #72]
	str	r3, [sp, #32]
	add	r2, sp, #120
	.loc 6 83 0
	add	r3, sp, #104
	.loc 6 82 0
	str	r1, [r10, #4]
	str	lr, [sp, #80]
	str	r2, [sp, #96]
	.loc 6 83 0
	strb	ip, [sp, #504]
.LVL634:
	str	r3, [sp]
.LVL635:
.L189:
.LBE402:
.LBE410:
.LBB411:
.LBB409:
.LBB406:
	.loc 5 696 0 discriminator 3
	ldr	r8, [sp]
	ldrb	lr, [r8]	@ zero_extendqisi2
.LVL636:
	ldrb	r4, [r8, #48]	@ zero_extendqisi2
	ldrb	fp, [r8, #24]	@ zero_extendqisi2
.LVL637:
	ldrb	r2, [r8, #96]	@ zero_extendqisi2
	add	ip, lr, r4
	ldrb	r0, [r8, #72]	@ zero_extendqisi2
.LVL638:
	add	r10, lr, fp
	sub	ip, ip, ip, asl #2
	mov	r9, r2
	mov	ip, ip, asl #1
	add	r2, fp, r2
.LVL639:
	add	r10, r10, r10, asl #2
	str	r9, [sp, #20]
	add	r7, lr, r0
	add	r10, ip, r10, asl #2
	sub	r2, r2, r2, asl #2
	add	ip, lr, r9
	add	r9, r4, r0
.LVL640:
	ldrb	r5, [r8, #120]	@ zero_extendqisi2
.LVL641:
	add	r6, fp, r4
	mov	r2, r2, asl #1
	sub	r7, r7, r7, asl #2
	add	r9, r9, r9, asl #2
	add	r9, r2, r9, asl #2
	mov	r7, r7, asl #1
	ldr	r2, [sp, #20]
	add	r6, r6, r6, asl #2
	add	r1, fp, r0
	add	r6, r7, r6, asl #2
	add	r7, r4, r5
	add	r2, r0, r2
	add	r1, r1, r1, asl #1
	sub	r7, r7, r7, asl #2
	add	r1, r10, r1
	add	r2, r2, r2, asl #2
	ldr	r10, [sp, #20]
	mov	r7, r7, asl #1
	ldrb	r3, [r8, #144]	@ zero_extendqisi2
.LVL642:
	add	r7, r7, r2, asl #2
	add	ip, ip, ip, asl #1
	ldrb	r2, [r8, #192]	@ zero_extendqisi2
	str	r2, [sp, #8]
	add	r10, r4, r10
	add	r2, fp, r5
	add	r6, r6, ip
	add	ip, lr, r5
	rsb	r1, r10, r1
	rsb	r6, r2, r6
	ldrb	r10, [r8, #168]	@ zero_extendqisi2
.LVL643:
	add	r2, fp, r3
	ldr	r8, [sp, #20]
	add	ip, ip, ip, asl #1
	add	ip, r9, ip
	add	r2, r2, r2, asl #1
	add	r9, r0, r3
	add	r2, r7, r2
	sub	r9, r9, r9, asl #2
	add	r7, r8, r5
	str	r3, [sp, #28]
	add	r7, r7, r7, asl #2
	ldr	r3, [sp, #100]
.LVL644:
	mov	r9, r9, asl #1
	add	r9, r9, r7, asl #2
	add	r1, r1, #15
	add	r7, r8, r10
	ldr	r8, [sp, #32]
	ldrb	r1, [r3, r1, asr #5]	@ zero_extendqisi2
	strb	r1, [r8, #1]!
	ldr	r1, [sp]
	str	r8, [sp, #32]
	add	r6, r6, #15
	ldr	r8, [sp, #36]
	ldrb	r6, [r3, r6, asr #5]	@ zero_extendqisi2
	ldrb	r1, [r1, #216]	@ zero_extendqisi2
	strb	r6, [r8, #1]!
	str	r1, [sp, #12]
.LVL645:
	str	r8, [sp, #36]
	ldr	r1, [sp, #8]
	ldr	r8, [sp, #28]
	add	fp, fp, r1
.LVL646:
	add	r1, lr, r8
	rsb	ip, r1, ip
	add	r1, r4, r10
	add	r1, r1, r1, asl #1
	add	r1, r9, r1
	sub	r7, r7, r7, asl #2
	add	r9, r5, r8
	add	r9, r9, r9, asl #2
	mov	r7, r7, asl #1
	add	r6, lr, r10
	add	r7, r7, r9, asl #2
	ldr	r9, [sp, #8]
	rsb	r6, r6, r2
	ldr	r2, [sp]
	add	lr, ip, #15
.LVL647:
	rsb	r1, fp, r1
	add	ip, r5, r9
	add	fp, r0, r9
	sub	ip, ip, ip, asl #2
	ldrb	r2, [r2, #240]	@ zero_extendqisi2
	add	fp, fp, fp, asl #1
	str	r2, [sp, #24]
.LVL648:
	add	r9, r7, fp
	mov	r2, ip, asl #1
.LVL649:
	mov	r7, r8
	add	ip, r8, r10
	ldr	r8, [sp, #12]
	add	ip, ip, ip, asl #2
	add	fp, r4, r8
	add	r4, r7, r8
.LVL650:
	sub	r4, r4, r4, asl #2
	add	ip, r2, ip, asl #2
	mov	r2, r4, asl #1
	ldr	r4, [sp, #52]
	ldrb	lr, [r3, lr, asr #5]	@ zero_extendqisi2
	strb	lr, [r4, #1]!
	ldr	lr, [sp]
	str	r4, [sp, #52]
	ldrb	lr, [lr, #264]	@ zero_extendqisi2
	str	lr, [sp, #16]
.LVL651:
	ldr	lr, [sp, #8]
	mov	r4, r8
	rsb	fp, fp, r9
	ldr	r8, [sp, #20]
	ldr	r9, [sp, #24]
	add	lr, r10, lr
	add	lr, lr, lr, asl #2
	add	r7, r8, r4
	add	r4, r2, lr, asl #2
	mov	lr, r9
	add	r7, r7, r7, asl #1
	add	lr, r5, lr
	add	ip, ip, r7
	add	lr, lr, lr, asl #1
	add	r7, r0, r9
	ldr	r8, [sp, #56]
	ldr	r2, [sp]
	rsb	r7, r7, ip
	add	lr, r4, lr
	ldr	ip, [sp, #8]
	ldr	r4, [sp, #12]
	add	r6, r6, #15
	ldrb	r6, [r3, r6, asr #5]	@ zero_extendqisi2
	add	r9, r10, r9
	strb	r6, [r8, #1]!
	sub	r9, r9, r9, asl #2
	ldrb	r6, [r2, #288]	@ zero_extendqisi2
	add	r2, ip, r4
	mov	r0, r9, asl #1
.LVL652:
	add	r2, r2, r2, asl #2
	add	r9, r0, r2, asl #2
	str	r6, [sp, #4]
.LVL653:
	ldr	r0, [sp, #60]
	ldr	r6, [sp, #16]
	add	r1, r1, #15
	ldrb	r1, [r3, r1, asr #5]	@ zero_extendqisi2
	add	fp, fp, #15
	strb	r1, [r0, #1]!
	ldr	r2, [sp]
	ldrb	r1, [r3, fp, asr #5]	@ zero_extendqisi2
	add	ip, ip, r6
	ldr	fp, [sp, #28]
	str	r8, [sp, #56]
	sub	ip, ip, ip, asl #2
	ldr	r8, [sp, #20]
	ldrb	r4, [r2, #312]	@ zero_extendqisi2
.LVL654:
	str	r0, [sp, #60]
	add	r2, fp, r6
	mov	r0, ip, asl #1
	ldr	ip, [sp]
	add	r8, r8, r6
	add	r2, r2, r2, asl #1
	ldr	r6, [sp, #4]
	rsb	lr, r8, lr
	add	r2, r9, r2
	ldrb	r8, [ip, #336]	@ zero_extendqisi2
.LVL655:
	ldr	r9, [sp, #64]
	add	r5, r5, r6
.LVL656:
	strb	r1, [r9, #1]!
	ldr	r6, [sp, #24]
	str	r9, [sp, #64]
	ldr	r9, [sp, #12]
	rsb	r2, r5, r2
	add	r1, r9, r6
	add	r1, r1, r1, asl #2
	add	ip, r0, r1, asl #2
	ldr	r0, [sp, #4]
	ldr	r5, [sp]
	add	r0, r9, r0
	add	r7, r7, #15
	sub	r0, r0, r0, asl #2
	ldrb	r1, [r3, r7, asr #5]	@ zero_extendqisi2
	mov	r9, r0, asl #1
	ldrb	r7, [r5, #360]	@ zero_extendqisi2
.LVL657:
	ldr	r0, [sp, #68]
	add	r5, fp, r4
	ldr	fp, [sp, #16]
	strb	r1, [r0, #1]!
	add	fp, r6, fp
	str	r0, [sp, #68]
	ldr	r0, [sp, #4]
	add	fp, fp, fp, asl #2
	add	r1, r10, r0
	add	r0, r9, fp, asl #2
	add	r9, r6, r4
	ldr	r6, [sp, #8]
	sub	r9, r9, r9, asl #2
	add	r1, r1, r1, asl #1
	add	fp, r6, r4
	add	r1, ip, r1
	add	lr, lr, #15
	mov	ip, r9, asl #1
	ldr	r9, [sp, #72]
	ldrb	lr, [r3, lr, asr #5]	@ zero_extendqisi2
	add	fp, fp, fp, asl #1
	strb	lr, [r9, #1]!
	add	fp, r0, fp
	ldr	lr, [sp, #4]
	ldr	r0, [sp, #16]
	add	r10, r10, r8
.LVL658:
	add	lr, r0, lr
	rsb	fp, r10, fp
	ldr	r10, [sp, #12]
	add	lr, lr, lr, asl #2
	str	r9, [sp, #72]
	add	r9, ip, lr, asl #2
	add	lr, r10, r8
	add	r10, r6, r7
	ldr	r6, [sp, #4]
	add	r0, r0, r8
	add	ip, r6, r4
	sub	r0, r0, r0, asl #2
	add	ip, ip, ip, asl #2
	mov	r0, r0, asl #1
	add	lr, lr, lr, asl #1
	add	r0, r0, ip, asl #2
	add	lr, r9, lr
	ldr	ip, [sp, #76]
	add	r9, r6, r7
	add	r2, r2, #15
	ldr	r6, [sp, #24]
	ldrb	r2, [r3, r2, asr #5]	@ zero_extendqisi2
	strb	r2, [ip, #1]!
	str	ip, [sp, #76]
	add	ip, r6, r7
	add	ip, ip, ip, asl #1
	add	ip, r0, ip
	sub	r9, r9, r9, asl #2
	add	r0, r4, r8
	rsb	r1, r5, r1
	mov	r9, r9, asl #1
	add	r0, r0, r0, asl #2
	add	r2, r9, r0, asl #2
	ldr	r5, [sp]
	ldr	r0, [sp, #80]
	add	r1, r1, #15
	ldrb	r1, [r3, r1, asr #5]	@ zero_extendqisi2
	ldrb	r5, [r5, #384]	@ zero_extendqisi2
.LVL659:
	rsb	lr, r10, lr
	ldr	r10, [sp, #12]
	strb	r1, [r0, #1]!
	str	r0, [sp, #80]
	ldr	r0, [sp, #16]
	add	r10, r10, r5
	add	r9, r4, r5
	add	r0, r0, r5
	rsb	ip, r10, ip
	add	r1, r8, r7
	add	r10, r6, r5
	sub	r9, r9, r9, asl #2
	ldr	r6, [sp, #4]
	add	r0, r0, r0, asl #1
	mov	r9, r9, asl #1
	add	r0, r2, r0
	add	r1, r1, r1, asl #2
	add	r2, r8, r5
	add	r1, r9, r1, asl #2
	add	fp, fp, #15
	add	r9, r7, r5
	sub	r2, r2, r2, asl #2
	add	r5, r6, r5
.LVL660:
	ldr	r6, [sp, #84]
	ldrb	fp, [r3, fp, asr #5]	@ zero_extendqisi2
	add	r4, r4, r7
.LVL661:
	add	r5, r5, r5, asl #1
	add	r9, r9, r9, asl #2
	mov	r2, r2, asl #1
	strb	fp, [r6, #1]!
	add	r1, r1, r5
	add	r2, r2, r9, asl #2
	ldr	r5, [sp, #88]
	add	lr, lr, #15
	ldr	fp, [sp, #16]
	add	r4, r4, r4, asl #1
	ldrb	lr, [r3, lr, asr #5]	@ zero_extendqisi2
	add	r4, r2, r4
	add	ip, ip, #15
	ldr	r2, [sp, #92]
	strb	lr, [r5, #1]!
	add	r7, fp, r7
.LVL662:
	ldrb	ip, [r3, ip, asr #5]	@ zero_extendqisi2
	strb	ip, [r2, #1]!
	rsb	r7, r7, r1
	rsb	r0, r10, r0
	ldr	r1, [sp, #4]
	str	r2, [sp, #92]
	ldr	r2, [sp]
	add	r0, r0, #15
	str	r6, [sp, #84]
	add	r6, r1, r8
	ldrb	r1, [r3, r0, asr #5]	@ zero_extendqisi2
	add	r0, r2, #1
	ldr	r2, [sp, #44]
	add	r7, r7, #15
	strb	r1, [r2, #1]!
.LBE406:
	.loc 5 696 0 is_stmt 0 discriminator 1
	ldr	r1, [sp, #96]
.LBB407:
	.loc 5 696 0 discriminator 3
	rsb	r4, r6, r4
.LBE407:
	.loc 5 696 0 discriminator 1
	cmp	r0, r1
.LBB408:
	.loc 5 696 0 discriminator 3
	ldr	r1, [sp, #40]
	str	r2, [sp, #44]
	add	r4, r4, #15
	ldrb	r2, [r3, r7, asr #5]	@ zero_extendqisi2
	strb	r2, [r1, #1]!
	ldrb	r2, [r3, r4, asr #5]	@ zero_extendqisi2
	ldr	r3, [sp, #48]
	str	r5, [sp, #88]
	strb	r2, [r3, #1]!
	str	r0, [sp]
.LVL663:
	str	r1, [sp, #40]
	str	r3, [sp, #48]
.LVL664:
.LBE408:
	.loc 5 696 0 discriminator 1
	bne	.L189
.LBE409:
.LBE411:
	.loc 5 696 0
	add	sp, sp, #516
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL665:
.L193:
	.align	2
.L192:
	.word	ff_crop_tab(GOT_PREL)+(.-(.LPIC39+8))
	.cfi_endproc
.LFE177:
	.size	put_no_rnd_qpel16_mc02_c, .-put_no_rnd_qpel16_mc02_c
	.align	2
	.global	ff_avg_pixels8x8_c
	.type	ff_avg_pixels8x8_c, %function
ff_avg_pixels8x8_c:
.LFB241:
	.loc 5 709 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL666:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
.LBB418:
.LBB419:
	.loc 3 77 0 discriminator 4
	ldrb	lr, [r1, #1]	@ zero_extendqisi2
	ldrb	r3, [r1]	@ zero_extendqisi2
	ldrb	ip, [r1, #2]	@ zero_extendqisi2
	orr	r3, r3, lr, asl #8
	ldrb	lr, [r1, #3]	@ zero_extendqisi2
	ldr	r4, [r0]
	orr	r3, r3, ip, asl #16
	orr	ip, r3, lr, asl #24
.LBB420:
.LBB421:
	.loc 2 33 0
	ldr	r3, .L196
	eor	lr, r4, ip
	and	lr, lr, r3
	orr	ip, r4, ip
	sub	ip, ip, lr, lsr #1
.LBE421:
.LBE420:
	.loc 3 77 0 discriminator 4
	str	ip, [r0]
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	lr, [r1, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #6]	@ zero_extendqisi2
	ldrb	r5, [r1, #7]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r4, [r0, #4]
	orr	ip, lr, r5, asl #24
.LBB429:
.LBB430:
	.loc 2 33 0
	eor	lr, r4, ip
.LVL667:
	and	lr, lr, r3
	orr	ip, r4, ip
.LVL668:
.LBE430:
.LBE429:
	.loc 3 77 0 discriminator 4
	add	r7, r1, r2
.LVL669:
.LBB443:
.LBB431:
	.loc 2 33 0
	sub	ip, ip, lr, lsr #1
.LBE431:
.LBE443:
	.loc 3 77 0 discriminator 4
	str	ip, [r0, #4]
.LVL670:
	ldrb	r4, [r1, r2]	@ zero_extendqisi2
.LVL671:
	ldrb	lr, [r7, #1]	@ zero_extendqisi2
	ldrb	ip, [r7, #2]	@ zero_extendqisi2
	ldrb	r5, [r7, #3]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r4, [r0, r2]
	orr	ip, lr, r5, asl #24
.LBB444:
.LBB422:
	.loc 2 33 0
	eor	lr, r4, ip
	and	lr, lr, r3
	orr	ip, r4, ip
	sub	ip, ip, lr, lsr #1
.LBE422:
.LBE444:
	.loc 3 77 0 discriminator 4
	str	ip, [r0, r2]
	ldrb	lr, [r7, #4]	@ zero_extendqisi2
	ldrb	r4, [r7, #5]	@ zero_extendqisi2
	ldrb	ip, [r7, #6]	@ zero_extendqisi2
	ldrb	r6, [r7, #7]	@ zero_extendqisi2
	orr	r4, lr, r4, asl #8
	add	lr, r0, r2
.LVL672:
	ldr	r5, [lr, #4]
	orr	r4, r4, ip, asl #16
	orr	ip, r4, r6, asl #24
.LVL673:
.LBB445:
.LBB432:
	.loc 2 33 0
	eor	r4, r5, ip
	and	r4, r4, r3
	orr	ip, r5, ip
.LVL674:
.LBE432:
.LBE445:
	.loc 3 77 0 discriminator 4
	add	r6, r7, r2
.LVL675:
.LBB446:
.LBB433:
	.loc 2 33 0
	sub	ip, ip, r4, lsr #1
.LBE433:
.LBE446:
	.loc 3 77 0 discriminator 4
	str	ip, [lr, #4]
.LVL676:
	ldrb	r4, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	ip, [r6, #1]	@ zero_extendqisi2
	ldrb	r1, [r6, #2]	@ zero_extendqisi2
.LVL677:
	ldrb	r5, [r6, #3]	@ zero_extendqisi2
.LVL678:
	orr	ip, r4, ip, asl #8
	orr	ip, ip, r1, asl #16
	ldr	r4, [r0, r2, asl #1]
	orr	r1, ip, r5, asl #24
.LBB447:
.LBB423:
	.loc 2 33 0
	eor	ip, r4, r1
	and	ip, ip, r3
	orr	r1, r4, r1
	sub	r1, r1, ip, lsr #1
.LBE423:
.LBE447:
	.loc 3 77 0 discriminator 4
	add	r4, lr, r2
.LVL679:
	str	r1, [r0, r2, asl #1]
.LVL680:
	ldrb	ip, [r6, #4]	@ zero_extendqisi2
	ldrb	r0, [r6, #5]	@ zero_extendqisi2
.LVL681:
	ldr	r5, [r4, #4]
	ldrb	r1, [r6, #6]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #8
	ldrb	ip, [r6, #7]	@ zero_extendqisi2
	orr	r0, r0, r1, asl #16
	orr	r1, r0, ip, asl #24
.LVL682:
.LBB448:
.LBB434:
	.loc 2 33 0
	eor	r0, r5, r1
	and	r0, r0, r3
	orr	r1, r5, r1
.LVL683:
	sub	r1, r1, r0, lsr #1
.LBE434:
.LBE448:
	.loc 3 77 0 discriminator 4
	add	r5, r6, r2
.LVL684:
	str	r1, [r4, #4]
.LVL685:
	ldrb	ip, [r7, r2, asl #1]	@ zero_extendqisi2
	ldrb	r0, [r5, #1]	@ zero_extendqisi2
	ldrb	r1, [r5, #2]	@ zero_extendqisi2
	ldrb	r7, [r5, #3]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #8
	orr	r0, r0, r1, asl #16
	ldr	ip, [lr, r2, asl #1]
	orr	r1, r0, r7, asl #24
.LBB449:
.LBB424:
	.loc 2 33 0
	eor	r0, ip, r1
	and	r0, r0, r3
	orr	r1, ip, r1
	sub	r1, r1, r0, lsr #1
.LBE424:
.LBE449:
	.loc 3 77 0 discriminator 4
	str	r1, [lr, r2, asl #1]
	ldrb	ip, [r5, #4]	@ zero_extendqisi2
	ldrb	r0, [r5, #5]	@ zero_extendqisi2
	ldrb	r1, [r5, #6]	@ zero_extendqisi2
	ldrb	r7, [r5, #7]	@ zero_extendqisi2
	add	lr, r4, r2
.LVL686:
	orr	r0, ip, r0, asl #8
	orr	r0, r0, r1, asl #16
	ldr	ip, [lr, #4]
	orr	r1, r0, r7, asl #24
.LVL687:
.LBB450:
.LBB435:
	.loc 2 33 0
	eor	r0, ip, r1
	and	r0, r0, r3
	orr	r1, ip, r1
.LVL688:
.LBE435:
.LBE450:
	.loc 3 77 0 discriminator 4
	add	r7, r5, r2
.LVL689:
.LBB451:
.LBB436:
	.loc 2 33 0
	sub	r1, r1, r0, lsr #1
.LBE436:
.LBE451:
	.loc 3 77 0 discriminator 4
	str	r1, [lr, #4]
.LVL690:
	ldrb	ip, [r6, r2, asl #1]	@ zero_extendqisi2
.LVL691:
	ldrb	r0, [r7, #1]	@ zero_extendqisi2
	ldrb	r1, [r7, #2]	@ zero_extendqisi2
	ldrb	r6, [r7, #3]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #8
	orr	r0, r0, r1, asl #16
	ldr	ip, [r4, r2, asl #1]
	orr	r1, r0, r6, asl #24
.LBB452:
.LBB425:
	.loc 2 33 0
	eor	r0, ip, r1
	and	r0, r0, r3
	orr	r1, ip, r1
	sub	r1, r1, r0, lsr #1
.LBE425:
.LBE452:
	.loc 3 77 0 discriminator 4
	str	r1, [r4, r2, asl #1]
	ldrb	ip, [r7, #4]	@ zero_extendqisi2
	ldrb	r0, [r7, #5]	@ zero_extendqisi2
	ldrb	r1, [r7, #6]	@ zero_extendqisi2
	add	r4, lr, r2
.LVL692:
	ldrb	r6, [r7, #7]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #8
	orr	r0, r0, r1, asl #16
	ldr	ip, [r4, #4]
	orr	r1, r0, r6, asl #24
.LVL693:
.LBB453:
.LBB437:
	.loc 2 33 0
	eor	r0, ip, r1
	and	r0, r0, r3
	orr	r1, ip, r1
.LVL694:
.LBE437:
.LBE453:
	.loc 3 77 0 discriminator 4
	add	r6, r7, r2
.LVL695:
.LBB454:
.LBB438:
	.loc 2 33 0
	sub	r1, r1, r0, lsr #1
.LBE438:
.LBE454:
	.loc 3 77 0 discriminator 4
	str	r1, [r4, #4]
.LVL696:
	ldrb	ip, [r5, r2, asl #1]	@ zero_extendqisi2
.LVL697:
	ldrb	r0, [r6, #1]	@ zero_extendqisi2
	ldrb	r1, [r6, #2]	@ zero_extendqisi2
	ldrb	r5, [r6, #3]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #8
	orr	r0, r0, r1, asl #16
	ldr	ip, [lr, r2, asl #1]
	orr	r1, r0, r5, asl #24
.LBB455:
.LBB426:
	.loc 2 33 0
	eor	r0, ip, r1
	and	r0, r0, r3
	orr	r1, ip, r1
	sub	r1, r1, r0, lsr #1
.LBE426:
.LBE455:
	.loc 3 77 0 discriminator 4
	str	r1, [lr, r2, asl #1]
	ldrb	lr, [r6, #4]	@ zero_extendqisi2
	ldrb	ip, [r6, #5]	@ zero_extendqisi2
	ldrb	r1, [r6, #6]	@ zero_extendqisi2
	ldrb	r0, [r6, #7]	@ zero_extendqisi2
	add	r5, r4, r2
.LVL698:
	orr	ip, lr, ip, asl #8
	ldr	r8, [r5, #4]
	orr	ip, ip, r1, asl #16
	orr	r1, ip, r0, asl #24
.LVL699:
.LBB456:
.LBB439:
	.loc 2 33 0
	eor	r0, r8, r1
	and	r0, r0, r3
	orr	r1, r8, r1
.LVL700:
	sub	r0, r1, r0, lsr #1
.LBE439:
.LBE456:
	.loc 3 77 0 discriminator 4
	add	r1, r6, r2
.LVL701:
	str	r0, [r5, #4]
.LVL702:
	ldrb	lr, [r7, r2, asl #1]	@ zero_extendqisi2
	ldrb	ip, [r1, #1]	@ zero_extendqisi2
	ldrb	r0, [r1, #2]	@ zero_extendqisi2
	ldrb	r7, [r1, #3]	@ zero_extendqisi2
	orr	ip, lr, ip, asl #8
	orr	ip, ip, r0, asl #16
	ldr	lr, [r4, r2, asl #1]
	orr	r0, ip, r7, asl #24
.LBB457:
.LBB427:
	.loc 2 33 0
	eor	ip, lr, r0
	and	ip, ip, r3
	orr	r0, lr, r0
	sub	r0, r0, ip, lsr #1
.LBE427:
.LBE457:
	.loc 3 77 0 discriminator 4
	str	r0, [r4, r2, asl #1]
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
	ldrb	ip, [r1, #5]	@ zero_extendqisi2
	ldrb	r0, [r1, #6]	@ zero_extendqisi2
	ldrb	r7, [r1, #7]	@ zero_extendqisi2
	add	r4, r5, r2
.LVL703:
	orr	ip, lr, ip, asl #8
	orr	ip, ip, r0, asl #16
	ldr	lr, [r4, #4]
	orr	r0, ip, r7, asl #24
.LVL704:
.LBB458:
.LBB440:
	.loc 2 33 0
	eor	ip, lr, r0
	and	ip, ip, r3
	orr	r0, lr, r0
.LVL705:
.LBE440:
.LBE458:
	.loc 3 77 0 discriminator 4
	add	r1, r1, r2
.LVL706:
.LBB459:
.LBB441:
	.loc 2 33 0
	sub	r0, r0, ip, lsr #1
.LBE441:
.LBE459:
	.loc 3 77 0 discriminator 4
	str	r0, [r4, #4]
.LVL707:
	ldrb	lr, [r6, r2, asl #1]	@ zero_extendqisi2
.LVL708:
	ldrb	ip, [r1, #1]	@ zero_extendqisi2
	ldrb	r0, [r1, #2]	@ zero_extendqisi2
	ldrb	r6, [r1, #3]	@ zero_extendqisi2
	orr	ip, lr, ip, asl #8
	orr	ip, ip, r0, asl #16
	ldr	lr, [r5, r2, asl #1]
	orr	r0, ip, r6, asl #24
.LBB460:
.LBB428:
	.loc 2 33 0
	eor	ip, lr, r0
	and	ip, ip, r3
	orr	r0, lr, r0
	sub	r0, r0, ip, lsr #1
.LBE428:
.LBE460:
	.loc 3 77 0 discriminator 4
	str	r0, [r5, r2, asl #1]
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	ldrb	r0, [r1, #5]	@ zero_extendqisi2
	ldrb	r5, [r1, #6]	@ zero_extendqisi2
	add	r2, r4, r2
.LVL709:
	orr	r0, ip, r0, asl #8
	ldrb	lr, [r1, #7]	@ zero_extendqisi2
.LVL710:
	ldr	ip, [r2, #4]
	orr	r0, r0, r5, asl #16
	orr	r1, r0, lr, asl #24
.LVL711:
.LBB461:
.LBB442:
	.loc 2 33 0
	eor	r0, ip, r1
	and	r3, r3, r0
	orr	r1, ip, r1
.LVL712:
	sub	r3, r1, r3, lsr #1
.LBE442:
.LBE461:
	.loc 3 77 0 discriminator 4
	str	r3, [r2, #4]
.LVL713:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L197:
	.align	2
.L196:
	.word	-16843010
.LBE419:
.LBE418:
	.cfi_endproc
.LFE241:
	.size	ff_avg_pixels8x8_c, .-ff_avg_pixels8x8_c
	.align	2
	.global	ff_avg_pixels16x16_c
	.type	ff_avg_pixels16x16_c, %function
ff_avg_pixels16x16_c:
.LFB243:
	.loc 5 719 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL714:
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
.LBB476:
.LBB477:
.LBB478:
.LBB479:
	.loc 3 77 0 discriminator 4
	ldrb	lr, [r1, #1]	@ zero_extendqisi2
	ldrb	r3, [r1]	@ zero_extendqisi2
	ldrb	ip, [r1, #2]	@ zero_extendqisi2
	orr	r3, r3, lr, asl #8
	ldrb	lr, [r1, #3]	@ zero_extendqisi2
	ldr	r4, [r0]
	orr	r3, r3, ip, asl #16
	orr	ip, r3, lr, asl #24
.LBB480:
.LBB481:
	.loc 2 33 0
	ldr	r3, .L200
	eor	lr, r4, ip
	and	lr, lr, r3
	orr	ip, r4, ip
	sub	ip, ip, lr, lsr #1
.LBE481:
.LBE480:
	.loc 3 77 0 discriminator 4
	str	ip, [r0]
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	lr, [r1, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #6]	@ zero_extendqisi2
	ldrb	r5, [r1, #7]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r4, [r0, #4]
	orr	ip, lr, r5, asl #24
.LBB497:
.LBB498:
	.loc 2 33 0
	eor	lr, r4, ip
.LVL715:
	and	lr, lr, r3
	orr	ip, r4, ip
.LVL716:
.LBE498:
.LBE497:
	.loc 3 77 0 discriminator 4
	add	r5, r1, r2
.LVL717:
.LBB518:
.LBB499:
	.loc 2 33 0
	sub	ip, ip, lr, lsr #1
.LBE499:
.LBE518:
	.loc 3 77 0 discriminator 4
	str	ip, [r0, #4]
.LVL718:
	ldrb	r4, [r1, r2]	@ zero_extendqisi2
.LVL719:
	ldrb	lr, [r5, #1]	@ zero_extendqisi2
	ldrb	ip, [r5, #2]	@ zero_extendqisi2
	ldrb	r6, [r5, #3]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r4, [r0, r2]
	orr	ip, lr, r6, asl #24
.LBB519:
.LBB482:
	.loc 2 33 0
	eor	lr, r4, ip
	and	lr, lr, r3
	orr	ip, r4, ip
	sub	ip, ip, lr, lsr #1
.LBE482:
.LBE519:
	.loc 3 77 0 discriminator 4
	str	ip, [r0, r2]
	ldrb	r4, [r5, #4]	@ zero_extendqisi2
	ldrb	lr, [r5, #5]	@ zero_extendqisi2
	ldrb	ip, [r5, #6]	@ zero_extendqisi2
	add	r6, r0, r2
.LVL720:
	ldrb	r7, [r5, #7]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r4, [r6, #4]
	orr	ip, lr, r7, asl #24
.LVL721:
.LBB520:
.LBB500:
	.loc 2 33 0
	eor	lr, r4, ip
	and	lr, lr, r3
	orr	ip, r4, ip
.LVL722:
	sub	ip, ip, lr, lsr #1
.LBE500:
.LBE520:
	.loc 3 77 0 discriminator 4
	add	r4, r5, r2
.LVL723:
	str	ip, [r6, #4]
.LVL724:
	ldrb	r7, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r4, #1]	@ zero_extendqisi2
	ldrb	ip, [r4, #2]	@ zero_extendqisi2
	ldrb	r8, [r4, #3]	@ zero_extendqisi2
	orr	lr, r7, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r7, [r0, r2, asl #1]
	orr	ip, lr, r8, asl #24
.LBB521:
.LBB483:
	.loc 2 33 0
	eor	lr, r7, ip
	and	lr, lr, r3
	orr	ip, r7, ip
	sub	ip, ip, lr, lsr #1
.LBE483:
.LBE521:
	.loc 3 77 0 discriminator 4
	add	r8, r6, r2
.LVL725:
	str	ip, [r0, r2, asl #1]
.LVL726:
	ldrb	r7, [r4, #4]	@ zero_extendqisi2
.LVL727:
	ldrb	lr, [r4, #5]	@ zero_extendqisi2
	ldr	r9, [r8, #4]
	ldrb	ip, [r4, #6]	@ zero_extendqisi2
	orr	lr, r7, lr, asl #8
	ldrb	r7, [r4, #7]	@ zero_extendqisi2
	orr	lr, lr, ip, asl #16
	orr	ip, lr, r7, asl #24
.LVL728:
.LBB522:
.LBB501:
	.loc 2 33 0
	eor	lr, r9, ip
	and	lr, lr, r3
	orr	ip, r9, ip
.LVL729:
.LBE501:
.LBE522:
	.loc 3 77 0 discriminator 4
	add	r7, r4, r2
.LVL730:
.LBB523:
.LBB502:
	.loc 2 33 0
	sub	ip, ip, lr, lsr #1
.LBE502:
.LBE523:
	.loc 3 77 0 discriminator 4
	str	ip, [r8, #4]
.LVL731:
	ldrb	r5, [r5, r2, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r7, #1]	@ zero_extendqisi2
	ldrb	ip, [r7, #2]	@ zero_extendqisi2
	ldrb	r9, [r7, #3]	@ zero_extendqisi2
.LVL732:
	orr	lr, r5, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r5, [r6, r2, asl #1]
	orr	ip, lr, r9, asl #24
.LBB524:
.LBB484:
	.loc 2 33 0
	eor	lr, r5, ip
	and	lr, lr, r3
	orr	ip, r5, ip
	sub	ip, ip, lr, lsr #1
.LBE484:
.LBE524:
	.loc 3 77 0 discriminator 4
	str	ip, [r6, r2, asl #1]
	ldrb	r5, [r7, #4]	@ zero_extendqisi2
	ldrb	lr, [r7, #5]	@ zero_extendqisi2
	ldrb	ip, [r7, #6]	@ zero_extendqisi2
	ldrb	r9, [r7, #7]	@ zero_extendqisi2
	orr	lr, r5, lr, asl #8
	add	r5, r8, r2
.LVL733:
	ldr	r6, [r5, #4]
	orr	lr, lr, ip, asl #16
	orr	ip, lr, r9, asl #24
.LVL734:
.LBB525:
.LBB503:
	.loc 2 33 0
	eor	lr, r6, ip
	and	lr, lr, r3
	orr	ip, r6, ip
.LVL735:
	sub	ip, ip, lr, lsr #1
.LBE503:
.LBE525:
	.loc 3 77 0 discriminator 4
	add	r6, r7, r2
.LVL736:
	str	ip, [r5, #4]
.LVL737:
	ldrb	r4, [r4, r2, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r6, #1]	@ zero_extendqisi2
	ldrb	ip, [r6, #2]	@ zero_extendqisi2
	ldrb	r9, [r6, #3]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r4, [r8, r2, asl #1]
	orr	ip, lr, r9, asl #24
.LBB526:
.LBB485:
	.loc 2 33 0
	eor	lr, r4, ip
	and	lr, lr, r3
	orr	ip, r4, ip
	sub	ip, ip, lr, lsr #1
.LBE485:
.LBE526:
	.loc 3 77 0 discriminator 4
	str	ip, [r8, r2, asl #1]
	ldrb	r4, [r6, #4]	@ zero_extendqisi2
	ldrb	lr, [r6, #5]	@ zero_extendqisi2
	ldrb	ip, [r6, #6]	@ zero_extendqisi2
	add	r8, r5, r2
.LVL738:
	ldrb	r9, [r6, #7]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r4, [r8, #4]
	orr	ip, lr, r9, asl #24
.LVL739:
.LBB527:
.LBB504:
	.loc 2 33 0
	eor	lr, r4, ip
	and	lr, lr, r3
	orr	ip, r4, ip
.LVL740:
	sub	ip, ip, lr, lsr #1
.LBE504:
.LBE527:
	.loc 3 77 0 discriminator 4
	add	r4, r6, r2
.LVL741:
	str	ip, [r8, #4]
.LVL742:
	ldrb	r7, [r7, r2, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r4, #1]	@ zero_extendqisi2
	ldrb	ip, [r4, #2]	@ zero_extendqisi2
	ldrb	r9, [r4, #3]	@ zero_extendqisi2
	orr	lr, r7, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r7, [r5, r2, asl #1]
	orr	ip, lr, r9, asl #24
.LBB528:
.LBB486:
	.loc 2 33 0
	eor	lr, r7, ip
	and	lr, lr, r3
	orr	ip, r7, ip
	sub	ip, ip, lr, lsr #1
.LBE486:
.LBE528:
	.loc 3 77 0 discriminator 4
	str	ip, [r5, r2, asl #1]
	ldrb	r5, [r4, #4]	@ zero_extendqisi2
	ldrb	lr, [r4, #5]	@ zero_extendqisi2
	ldrb	ip, [r4, #6]	@ zero_extendqisi2
	add	r7, r8, r2
.LVL743:
	orr	lr, r5, lr, asl #8
	ldrb	r5, [r4, #7]	@ zero_extendqisi2
	ldr	r9, [r7, #4]
	orr	lr, lr, ip, asl #16
	orr	ip, lr, r5, asl #24
.LVL744:
.LBB529:
.LBB505:
	.loc 2 33 0
	eor	lr, r9, ip
	and	lr, lr, r3
	orr	ip, r9, ip
.LVL745:
.LBE505:
.LBE529:
	.loc 3 77 0 discriminator 4
	add	r5, r4, r2
.LVL746:
.LBB530:
.LBB506:
	.loc 2 33 0
	sub	ip, ip, lr, lsr #1
.LBE506:
.LBE530:
	.loc 3 77 0 discriminator 4
	str	ip, [r7, #4]
.LVL747:
	ldrb	r6, [r6, r2, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r5, #1]	@ zero_extendqisi2
	ldrb	ip, [r5, #2]	@ zero_extendqisi2
	ldrb	r9, [r5, #3]	@ zero_extendqisi2
.LVL748:
	orr	lr, r6, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r6, [r8, r2, asl #1]
	orr	ip, lr, r9, asl #24
.LBB531:
.LBB487:
	.loc 2 33 0
	eor	lr, r6, ip
	and	lr, lr, r3
	orr	ip, r6, ip
	sub	ip, ip, lr, lsr #1
.LBE487:
.LBE531:
	.loc 3 77 0 discriminator 4
	str	ip, [r8, r2, asl #1]
	ldrb	r6, [r5, #4]	@ zero_extendqisi2
	ldrb	lr, [r5, #5]	@ zero_extendqisi2
	ldrb	ip, [r5, #6]	@ zero_extendqisi2
	ldrb	r9, [r5, #7]	@ zero_extendqisi2
	add	r8, r7, r2
.LVL749:
	orr	lr, r6, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r6, [r8, #4]
	orr	ip, lr, r9, asl #24
.LVL750:
.LBB532:
.LBB507:
	.loc 2 33 0
	eor	lr, r6, ip
	and	lr, lr, r3
	orr	ip, r6, ip
.LVL751:
	sub	ip, ip, lr, lsr #1
.LBE507:
.LBE532:
	.loc 3 77 0 discriminator 4
	add	r6, r5, r2
.LVL752:
	str	ip, [r8, #4]
.LVL753:
	ldrb	r4, [r4, r2, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r6, #1]	@ zero_extendqisi2
	ldrb	ip, [r6, #2]	@ zero_extendqisi2
	ldrb	r9, [r6, #3]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r4, [r7, r2, asl #1]
	orr	ip, lr, r9, asl #24
.LBB533:
.LBB488:
	.loc 2 33 0
	eor	lr, r4, ip
	and	lr, lr, r3
	orr	ip, r4, ip
	sub	ip, ip, lr, lsr #1
.LBE488:
.LBE533:
	.loc 3 77 0 discriminator 4
	str	ip, [r7, r2, asl #1]
	ldrb	r4, [r6, #4]	@ zero_extendqisi2
	ldrb	lr, [r6, #5]	@ zero_extendqisi2
	ldrb	ip, [r6, #6]	@ zero_extendqisi2
	add	r7, r8, r2
.LVL754:
	ldrb	r9, [r6, #7]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r4, [r7, #4]
	orr	ip, lr, r9, asl #24
.LVL755:
.LBB534:
.LBB508:
	.loc 2 33 0
	eor	lr, r4, ip
	and	lr, lr, r3
	orr	ip, r4, ip
.LVL756:
	sub	ip, ip, lr, lsr #1
.LBE508:
.LBE534:
	.loc 3 77 0 discriminator 4
	add	r4, r6, r2
.LVL757:
	str	ip, [r7, #4]
.LVL758:
	ldrb	r5, [r5, r2, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r4, #1]	@ zero_extendqisi2
	ldr	r9, [r8, r2, asl #1]
	ldrb	ip, [r4, #2]	@ zero_extendqisi2
	orr	lr, r5, lr, asl #8
	ldrb	r5, [r4, #3]	@ zero_extendqisi2
	orr	lr, lr, ip, asl #16
	orr	ip, lr, r5, asl #24
.LBB535:
.LBB489:
	.loc 2 33 0
	eor	lr, r9, ip
	and	lr, lr, r3
	orr	ip, r9, ip
	sub	ip, ip, lr, lsr #1
.LBE489:
.LBE535:
	.loc 3 77 0 discriminator 4
	str	ip, [r8, r2, asl #1]
	ldrb	r5, [r4, #4]	@ zero_extendqisi2
	ldrb	lr, [r4, #5]	@ zero_extendqisi2
	ldrb	ip, [r4, #6]	@ zero_extendqisi2
	ldrb	r9, [r4, #7]	@ zero_extendqisi2
	add	r8, r7, r2
.LVL759:
	orr	lr, r5, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r5, [r8, #4]
	orr	ip, lr, r9, asl #24
.LVL760:
.LBB536:
.LBB509:
	.loc 2 33 0
	eor	lr, r5, ip
	and	lr, lr, r3
	orr	ip, r5, ip
.LVL761:
	sub	ip, ip, lr, lsr #1
.LBE509:
.LBE536:
	.loc 3 77 0 discriminator 4
	add	r5, r4, r2
.LVL762:
	str	ip, [r8, #4]
.LVL763:
	ldrb	r6, [r6, r2, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r5, #1]	@ zero_extendqisi2
	ldrb	ip, [r5, #2]	@ zero_extendqisi2
	ldrb	r9, [r5, #3]	@ zero_extendqisi2
	orr	lr, r6, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r6, [r7, r2, asl #1]
	orr	ip, lr, r9, asl #24
.LBB537:
.LBB490:
	.loc 2 33 0
	eor	lr, r6, ip
	and	lr, lr, r3
	orr	ip, r6, ip
	sub	ip, ip, lr, lsr #1
.LBE490:
.LBE537:
	.loc 3 77 0 discriminator 4
	str	ip, [r7, r2, asl #1]
	ldrb	r6, [r5, #4]	@ zero_extendqisi2
	ldrb	lr, [r5, #5]	@ zero_extendqisi2
	ldrb	ip, [r5, #6]	@ zero_extendqisi2
	ldrb	r9, [r5, #7]	@ zero_extendqisi2
	add	r7, r8, r2
.LVL764:
	orr	lr, r6, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r6, [r7, #4]
	orr	ip, lr, r9, asl #24
.LVL765:
.LBB538:
.LBB510:
	.loc 2 33 0
	eor	lr, r6, ip
	and	lr, lr, r3
	orr	ip, r6, ip
.LVL766:
	sub	ip, ip, lr, lsr #1
.LBE510:
.LBE538:
	.loc 3 77 0 discriminator 4
	add	r6, r5, r2
.LVL767:
	str	ip, [r7, #4]
.LVL768:
	ldrb	r4, [r4, r2, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r6, #1]	@ zero_extendqisi2
	ldrb	ip, [r6, #2]	@ zero_extendqisi2
	ldrb	r9, [r6, #3]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r4, [r8, r2, asl #1]
	orr	ip, lr, r9, asl #24
.LBB539:
.LBB491:
	.loc 2 33 0
	eor	lr, r4, ip
	and	lr, lr, r3
	orr	ip, r4, ip
	sub	ip, ip, lr, lsr #1
.LBE491:
.LBE539:
	.loc 3 77 0 discriminator 4
	str	ip, [r8, r2, asl #1]
	ldrb	r4, [r6, #4]	@ zero_extendqisi2
	ldrb	lr, [r6, #5]	@ zero_extendqisi2
	ldrb	ip, [r6, #6]	@ zero_extendqisi2
	add	r8, r7, r2
.LVL769:
	ldrb	r9, [r6, #7]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r4, [r8, #4]
	orr	ip, lr, r9, asl #24
.LVL770:
.LBB540:
.LBB511:
	.loc 2 33 0
	eor	lr, r4, ip
	and	lr, lr, r3
	orr	ip, r4, ip
.LVL771:
	sub	ip, ip, lr, lsr #1
.LBE511:
.LBE540:
	.loc 3 77 0 discriminator 4
	add	r4, r6, r2
.LVL772:
	str	ip, [r8, #4]
.LVL773:
	ldr	r9, [r7, r2, asl #1]
	ldrb	r5, [r5, r2, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r4, #1]	@ zero_extendqisi2
	ldrb	ip, [r4, #2]	@ zero_extendqisi2
	orr	lr, r5, lr, asl #8
	ldrb	r5, [r4, #3]	@ zero_extendqisi2
	orr	lr, lr, ip, asl #16
	orr	ip, lr, r5, asl #24
.LBB541:
.LBB492:
	.loc 2 33 0
	eor	lr, r9, ip
	and	lr, lr, r3
	orr	ip, r9, ip
	sub	ip, ip, lr, lsr #1
.LBE492:
.LBE541:
	.loc 3 77 0 discriminator 4
	str	ip, [r7, r2, asl #1]
	ldrb	r5, [r4, #4]	@ zero_extendqisi2
	ldrb	lr, [r4, #5]	@ zero_extendqisi2
	ldrb	ip, [r4, #6]	@ zero_extendqisi2
	ldrb	r9, [r4, #7]	@ zero_extendqisi2
	add	r7, r8, r2
.LVL774:
	orr	lr, r5, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r5, [r7, #4]
	orr	ip, lr, r9, asl #24
.LVL775:
.LBB542:
.LBB512:
	.loc 2 33 0
	eor	lr, r5, ip
	and	lr, lr, r3
	orr	ip, r5, ip
.LVL776:
	sub	ip, ip, lr, lsr #1
.LBE512:
.LBE542:
	.loc 3 77 0 discriminator 4
	add	r5, r4, r2
.LVL777:
	str	ip, [r7, #4]
.LVL778:
	ldrb	r6, [r6, r2, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r5, #1]	@ zero_extendqisi2
	ldrb	ip, [r5, #2]	@ zero_extendqisi2
	ldrb	r9, [r5, #3]	@ zero_extendqisi2
	orr	lr, r6, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r6, [r8, r2, asl #1]
	orr	ip, lr, r9, asl #24
.LBB543:
.LBB493:
	.loc 2 33 0
	eor	lr, r6, ip
	and	lr, lr, r3
	orr	ip, r6, ip
	sub	ip, ip, lr, lsr #1
.LBE493:
.LBE543:
	.loc 3 77 0 discriminator 4
	str	ip, [r8, r2, asl #1]
	ldrb	r6, [r5, #4]	@ zero_extendqisi2
	ldrb	lr, [r5, #5]	@ zero_extendqisi2
	ldrb	ip, [r5, #6]	@ zero_extendqisi2
	ldrb	r9, [r5, #7]	@ zero_extendqisi2
	orr	lr, r6, lr, asl #8
	add	r6, r7, r2
.LVL779:
	ldr	r8, [r6, #4]
	orr	lr, lr, ip, asl #16
	orr	ip, lr, r9, asl #24
.LVL780:
.LBB544:
.LBB513:
	.loc 2 33 0
	eor	lr, r8, ip
	and	lr, lr, r3
	orr	ip, r8, ip
.LVL781:
	sub	ip, ip, lr, lsr #1
.LBE513:
.LBE544:
	.loc 3 77 0 discriminator 4
	add	r8, r5, r2
.LVL782:
	str	ip, [r6, #4]
.LVL783:
	ldrb	r4, [r4, r2, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r8, #1]	@ zero_extendqisi2
	ldrb	ip, [r8, #2]	@ zero_extendqisi2
	ldrb	r9, [r8, #3]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r4, [r7, r2, asl #1]
	orr	ip, lr, r9, asl #24
.LBB545:
.LBB494:
	.loc 2 33 0
	eor	lr, r4, ip
	and	lr, lr, r3
	orr	ip, r4, ip
	sub	ip, ip, lr, lsr #1
.LBE494:
.LBE545:
	.loc 3 77 0 discriminator 4
	str	ip, [r7, r2, asl #1]
	add	r7, r6, r2
.LVL784:
	ldrb	r9, [r8, #4]	@ zero_extendqisi2
	ldrb	r4, [r8, #5]	@ zero_extendqisi2
.LVL785:
	ldr	r10, [r7, #4]
	ldrb	ip, [r8, #6]	@ zero_extendqisi2
	orr	r4, r9, r4, asl #8
	ldrb	lr, [r8, #7]	@ zero_extendqisi2
	orr	r4, r4, ip, asl #16
	orr	ip, r4, lr, asl #24
.LVL786:
.LBB546:
.LBB514:
	.loc 2 33 0
	eor	lr, r10, ip
	and	lr, lr, r3
	orr	ip, r10, ip
.LVL787:
	sub	lr, ip, lr, lsr #1
.LBE514:
.LBE546:
	.loc 3 77 0 discriminator 4
	add	ip, r8, r2
.LVL788:
	str	lr, [r7, #4]
.LVL789:
	ldrb	r5, [r5, r2, asl #1]	@ zero_extendqisi2
	ldrb	r4, [ip, #1]	@ zero_extendqisi2
	ldrb	lr, [ip, #2]	@ zero_extendqisi2
	ldrb	r9, [ip, #3]	@ zero_extendqisi2
	orr	r4, r5, r4, asl #8
	orr	r4, r4, lr, asl #16
	ldr	r5, [r6, r2, asl #1]
	orr	lr, r4, r9, asl #24
.LBB547:
.LBB495:
	.loc 2 33 0
	eor	r4, r5, lr
	and	r4, r4, r3
	orr	lr, r5, lr
	sub	lr, lr, r4, lsr #1
.LBE495:
.LBE547:
	.loc 3 77 0 discriminator 4
	str	lr, [r6, r2, asl #1]
	ldrb	r5, [ip, #4]	@ zero_extendqisi2
	ldrb	r4, [ip, #5]	@ zero_extendqisi2
	ldrb	lr, [ip, #6]	@ zero_extendqisi2
	ldrb	r9, [ip, #7]	@ zero_extendqisi2
	add	r6, r7, r2
.LVL790:
	orr	r4, r5, r4, asl #8
	orr	r4, r4, lr, asl #16
	ldr	r5, [r6, #4]
	orr	lr, r4, r9, asl #24
.LVL791:
.LBB548:
.LBB515:
	.loc 2 33 0
	eor	r4, r5, lr
	and	r4, r4, r3
	orr	lr, r5, lr
.LVL792:
.LBE515:
.LBE548:
	.loc 3 77 0 discriminator 4
	add	ip, ip, r2
.LVL793:
.LBB549:
.LBB516:
	.loc 2 33 0
	sub	lr, lr, r4, lsr #1
.LBE516:
.LBE549:
	.loc 3 77 0 discriminator 4
	str	lr, [r6, #4]
.LVL794:
	ldrb	r5, [r8, r2, asl #1]	@ zero_extendqisi2
.LVL795:
	ldrb	r4, [ip, #1]	@ zero_extendqisi2
	ldrb	lr, [ip, #2]	@ zero_extendqisi2
	ldrb	r8, [ip, #3]	@ zero_extendqisi2
	orr	r4, r5, r4, asl #8
	orr	r4, r4, lr, asl #16
	ldr	r5, [r7, r2, asl #1]
	orr	lr, r4, r8, asl #24
.LBB550:
.LBB496:
	.loc 2 33 0
	eor	r4, r5, lr
	and	r4, r4, r3
	orr	lr, r5, lr
	sub	lr, lr, r4, lsr #1
.LBE496:
.LBE550:
	.loc 3 77 0 discriminator 4
	str	lr, [r7, r2, asl #1]
	ldrb	r4, [ip, #4]	@ zero_extendqisi2
	ldrb	lr, [ip, #5]	@ zero_extendqisi2
	ldrb	r7, [ip, #6]	@ zero_extendqisi2
	ldrb	r5, [ip, #7]	@ zero_extendqisi2
	add	r6, r6, r2
.LVL796:
	orr	lr, r4, lr, asl #8
	orr	lr, lr, r7, asl #16
	ldr	r4, [r6, #4]
	orr	ip, lr, r5, asl #24
.LVL797:
.LBB551:
.LBB517:
	.loc 2 33 0
	eor	lr, r4, ip
	and	lr, lr, r3
	orr	ip, r4, ip
.LVL798:
	sub	ip, ip, lr, lsr #1
.LBE517:
.LBE551:
	.loc 3 77 0 discriminator 4
	str	ip, [r6, #4]
.LVL799:
.LBE479:
.LBE478:
.LBB552:
.LBB553:
	ldrb	r4, [r1, #8]	@ zero_extendqisi2
.LVL800:
	ldrb	lr, [r1, #9]	@ zero_extendqisi2
	ldrb	ip, [r1, #10]	@ zero_extendqisi2
	ldrb	r5, [r1, #11]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r4, [r0, #8]
	orr	ip, lr, r5, asl #24
.LVL801:
.LBB554:
.LBB555:
	.loc 2 33 0
	eor	lr, r4, ip
	and	lr, lr, r3
	orr	ip, r4, ip
.LVL802:
	sub	ip, ip, lr, lsr #1
.LBE555:
.LBE554:
	.loc 3 77 0 discriminator 4
	str	ip, [r0, #8]
.LVL803:
	ldr	r5, [r0, #12]
	ldrb	r4, [r1, #12]	@ zero_extendqisi2
.LVL804:
	ldrb	lr, [r1, #13]	@ zero_extendqisi2
	ldrb	ip, [r1, #14]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #8
	ldrb	r4, [r1, #15]	@ zero_extendqisi2
	orr	lr, lr, ip, asl #16
	orr	ip, lr, r4, asl #24
.LVL805:
.LBB572:
.LBB573:
	.loc 2 33 0
	eor	lr, r5, ip
	and	lr, lr, r3
	orr	ip, r5, ip
.LVL806:
	add	r5, r2, #8
.LVL807:
	sub	ip, ip, lr, lsr #1
.LBE573:
.LBE572:
	.loc 3 77 0 discriminator 4
	add	lr, r1, r5
.LVL808:
	str	ip, [r0, #12]
.LVL809:
	ldrb	r4, [r1, r5]	@ zero_extendqisi2
	ldrb	ip, [lr, #1]	@ zero_extendqisi2
	ldrb	r1, [lr, #2]	@ zero_extendqisi2
.LVL810:
	ldrb	r6, [lr, #3]	@ zero_extendqisi2
.LVL811:
	orr	ip, r4, ip, asl #8
	orr	ip, ip, r1, asl #16
	ldr	r4, [r0, r5]
	orr	r1, ip, r6, asl #24
.LBB599:
.LBB556:
	.loc 2 33 0
	eor	ip, r4, r1
	and	ip, ip, r3
	orr	r1, r4, r1
	sub	r1, r1, ip, lsr #1
.LBE556:
.LBE599:
	.loc 3 77 0 discriminator 4
	str	r1, [r0, r5]
	ldrb	r4, [lr, #4]	@ zero_extendqisi2
	ldrb	ip, [lr, #5]	@ zero_extendqisi2
	ldrb	r1, [lr, #6]	@ zero_extendqisi2
	add	r0, r0, r5
.LVL812:
	orr	ip, r4, ip, asl #8
	ldrb	r5, [lr, #7]	@ zero_extendqisi2
	ldr	r4, [r0, #4]
	orr	ip, ip, r1, asl #16
	orr	r1, ip, r5, asl #24
.LVL813:
.LBB600:
.LBB574:
	.loc 2 33 0
	eor	ip, r4, r1
	and	ip, ip, r3
	orr	r1, r4, r1
.LVL814:
.LBE574:
.LBE600:
	.loc 3 77 0 discriminator 4
	add	r7, lr, r2
.LVL815:
.LBB601:
.LBB575:
	.loc 2 33 0
	sub	r1, r1, ip, lsr #1
.LBE575:
.LBE601:
	.loc 3 77 0 discriminator 4
	str	r1, [r0, #4]
.LVL816:
	ldrb	r4, [lr, r2]	@ zero_extendqisi2
.LVL817:
	ldrb	ip, [r7, #1]	@ zero_extendqisi2
	ldrb	r1, [r7, #2]	@ zero_extendqisi2
	ldrb	r5, [r7, #3]	@ zero_extendqisi2
	orr	ip, r4, ip, asl #8
	orr	ip, ip, r1, asl #16
	ldr	r4, [r0, r2]
	orr	r1, ip, r5, asl #24
.LBB602:
.LBB557:
	.loc 2 33 0
	eor	ip, r4, r1
	and	ip, ip, r3
	orr	r1, r4, r1
	sub	r1, r1, ip, lsr #1
.LBE557:
.LBE602:
	.loc 3 77 0 discriminator 4
	str	r1, [r0, r2]
	ldrb	r4, [r7, #4]	@ zero_extendqisi2
	ldrb	ip, [r7, #5]	@ zero_extendqisi2
	ldrb	r1, [r7, #6]	@ zero_extendqisi2
	ldrb	r6, [r7, #7]	@ zero_extendqisi2
	orr	ip, r4, ip, asl #8
	add	r4, r0, r2
.LVL818:
	ldr	r5, [r4, #4]
	orr	ip, ip, r1, asl #16
	orr	r1, ip, r6, asl #24
.LVL819:
.LBB603:
.LBB576:
	.loc 2 33 0
	eor	ip, r5, r1
	and	ip, ip, r3
	orr	r1, r5, r1
.LVL820:
	sub	r1, r1, ip, lsr #1
.LBE576:
.LBE603:
	.loc 3 77 0 discriminator 4
	add	r5, r7, r2
.LVL821:
	str	r1, [r4, #4]
.LVL822:
	ldrb	lr, [lr, r2, asl #1]	@ zero_extendqisi2
	ldrb	ip, [r5, #1]	@ zero_extendqisi2
	ldr	r6, [r0, r2, asl #1]
	ldrb	r1, [r5, #2]	@ zero_extendqisi2
	orr	ip, lr, ip, asl #8
	ldrb	lr, [r5, #3]	@ zero_extendqisi2
	orr	ip, ip, r1, asl #16
	orr	r1, ip, lr, asl #24
.LBB604:
.LBB558:
	.loc 2 33 0
	eor	ip, r6, r1
	and	ip, ip, r3
	orr	r1, r6, r1
	sub	r1, r1, ip, lsr #1
.LBE558:
.LBE604:
	.loc 3 77 0 discriminator 4
	str	r1, [r0, r2, asl #1]
	ldrb	ip, [r5, #4]	@ zero_extendqisi2
	ldrb	r0, [r5, #5]	@ zero_extendqisi2
	ldrb	r1, [r5, #6]	@ zero_extendqisi2
	ldrb	r6, [r5, #7]	@ zero_extendqisi2
	add	lr, r4, r2
.LVL823:
	orr	r0, ip, r0, asl #8
	orr	r0, r0, r1, asl #16
	ldr	ip, [lr, #4]
	orr	r1, r0, r6, asl #24
.LVL824:
.LBB605:
.LBB577:
	.loc 2 33 0
	eor	r0, ip, r1
	and	r0, r0, r3
	orr	r1, ip, r1
.LVL825:
.LBE577:
.LBE605:
	.loc 3 77 0 discriminator 4
	add	r6, r5, r2
.LVL826:
.LBB606:
.LBB578:
	.loc 2 33 0
	sub	r1, r1, r0, lsr #1
.LBE578:
.LBE606:
	.loc 3 77 0 discriminator 4
	str	r1, [lr, #4]
.LVL827:
	ldrb	ip, [r7, r2, asl #1]	@ zero_extendqisi2
.LVL828:
	ldrb	r0, [r6, #1]	@ zero_extendqisi2
	ldrb	r1, [r6, #2]	@ zero_extendqisi2
	ldrb	r7, [r6, #3]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #8
	orr	r0, r0, r1, asl #16
	ldr	ip, [r4, r2, asl #1]
	orr	r1, r0, r7, asl #24
.LBB607:
.LBB559:
	.loc 2 33 0
	eor	r0, ip, r1
	and	r0, r0, r3
	orr	r1, ip, r1
	sub	r1, r1, r0, lsr #1
.LBE559:
.LBE607:
	.loc 3 77 0 discriminator 4
	str	r1, [r4, r2, asl #1]
	ldrb	ip, [r6, #4]	@ zero_extendqisi2
	ldrb	r0, [r6, #5]	@ zero_extendqisi2
	ldrb	r1, [r6, #6]	@ zero_extendqisi2
	ldrb	r7, [r6, #7]	@ zero_extendqisi2
	add	r4, lr, r2
.LVL829:
	orr	r0, ip, r0, asl #8
	orr	r0, r0, r1, asl #16
	ldr	ip, [r4, #4]
	orr	r1, r0, r7, asl #24
.LVL830:
.LBB608:
.LBB579:
	.loc 2 33 0
	eor	r0, ip, r1
	and	r0, r0, r3
	orr	r1, ip, r1
.LVL831:
.LBE579:
.LBE608:
	.loc 3 77 0 discriminator 4
	add	r7, r6, r2
.LVL832:
.LBB609:
.LBB580:
	.loc 2 33 0
	sub	r1, r1, r0, lsr #1
.LBE580:
.LBE609:
	.loc 3 77 0 discriminator 4
	str	r1, [r4, #4]
.LVL833:
	ldrb	ip, [r5, r2, asl #1]	@ zero_extendqisi2
.LVL834:
	ldrb	r0, [r7, #1]	@ zero_extendqisi2
	ldrb	r1, [r7, #2]	@ zero_extendqisi2
	ldrb	r5, [r7, #3]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #8
	orr	r0, r0, r1, asl #16
	ldr	ip, [lr, r2, asl #1]
	orr	r1, r0, r5, asl #24
.LBB610:
.LBB560:
	.loc 2 33 0
	eor	r0, ip, r1
	and	r0, r0, r3
	orr	r1, ip, r1
	sub	r1, r1, r0, lsr #1
.LBE560:
.LBE610:
	.loc 3 77 0 discriminator 4
	str	r1, [lr, r2, asl #1]
	ldrb	ip, [r7, #4]	@ zero_extendqisi2
	ldrb	r0, [r7, #5]	@ zero_extendqisi2
	ldrb	r1, [r7, #6]	@ zero_extendqisi2
	add	lr, r4, r2
.LVL835:
	ldrb	r5, [r7, #7]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #8
	orr	r0, r0, r1, asl #16
	ldr	ip, [lr, #4]
	orr	r1, r0, r5, asl #24
.LVL836:
.LBB611:
.LBB581:
	.loc 2 33 0
	eor	r0, ip, r1
	and	r0, r0, r3
	orr	r1, ip, r1
.LVL837:
.LBE581:
.LBE611:
	.loc 3 77 0 discriminator 4
	add	r5, r7, r2
.LVL838:
.LBB612:
.LBB582:
	.loc 2 33 0
	sub	r1, r1, r0, lsr #1
.LBE582:
.LBE612:
	.loc 3 77 0 discriminator 4
	str	r1, [lr, #4]
.LVL839:
	ldr	r8, [r4, r2, asl #1]
	ldrb	ip, [r6, r2, asl #1]	@ zero_extendqisi2
.LVL840:
	ldrb	r0, [r5, #1]	@ zero_extendqisi2
	ldrb	r1, [r5, #2]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #8
	ldrb	ip, [r5, #3]	@ zero_extendqisi2
	orr	r0, r0, r1, asl #16
	orr	r1, r0, ip, asl #24
.LBB613:
.LBB561:
	.loc 2 33 0
	eor	r0, r8, r1
	and	r0, r0, r3
	orr	r1, r8, r1
	sub	r1, r1, r0, lsr #1
.LBE561:
.LBE613:
	.loc 3 77 0 discriminator 4
	str	r1, [r4, r2, asl #1]
	ldrb	ip, [r5, #4]	@ zero_extendqisi2
	ldrb	r0, [r5, #5]	@ zero_extendqisi2
	ldrb	r1, [r5, #6]	@ zero_extendqisi2
	ldrb	r6, [r5, #7]	@ zero_extendqisi2
	add	r4, lr, r2
.LVL841:
	orr	r0, ip, r0, asl #8
	orr	r0, r0, r1, asl #16
	ldr	ip, [r4, #4]
	orr	r1, r0, r6, asl #24
.LVL842:
.LBB614:
.LBB583:
	.loc 2 33 0
	eor	r0, ip, r1
	and	r0, r0, r3
	orr	r1, ip, r1
.LVL843:
.LBE583:
.LBE614:
	.loc 3 77 0 discriminator 4
	add	r6, r5, r2
.LVL844:
.LBB615:
.LBB584:
	.loc 2 33 0
	sub	r1, r1, r0, lsr #1
.LBE584:
.LBE615:
	.loc 3 77 0 discriminator 4
	str	r1, [r4, #4]
.LVL845:
	ldrb	ip, [r7, r2, asl #1]	@ zero_extendqisi2
.LVL846:
	ldrb	r0, [r6, #1]	@ zero_extendqisi2
	ldrb	r1, [r6, #2]	@ zero_extendqisi2
	ldrb	r7, [r6, #3]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #8
	orr	r0, r0, r1, asl #16
	ldr	ip, [lr, r2, asl #1]
	orr	r1, r0, r7, asl #24
.LBB616:
.LBB562:
	.loc 2 33 0
	eor	r0, ip, r1
	and	r0, r0, r3
	orr	r1, ip, r1
	sub	r1, r1, r0, lsr #1
.LBE562:
.LBE616:
	.loc 3 77 0 discriminator 4
	str	r1, [lr, r2, asl #1]
	ldrb	ip, [r6, #4]	@ zero_extendqisi2
	ldrb	r0, [r6, #5]	@ zero_extendqisi2
	ldrb	r1, [r6, #6]	@ zero_extendqisi2
	add	lr, r4, r2
.LVL847:
	ldrb	r7, [r6, #7]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #8
	orr	r0, r0, r1, asl #16
	ldr	ip, [lr, #4]
	orr	r1, r0, r7, asl #24
.LVL848:
.LBB617:
.LBB585:
	.loc 2 33 0
	eor	r0, ip, r1
	and	r0, r0, r3
	orr	r1, ip, r1
.LVL849:
.LBE585:
.LBE617:
	.loc 3 77 0 discriminator 4
	add	r7, r6, r2
.LVL850:
.LBB618:
.LBB586:
	.loc 2 33 0
	sub	r1, r1, r0, lsr #1
.LBE586:
.LBE618:
	.loc 3 77 0 discriminator 4
	str	r1, [lr, #4]
.LVL851:
	ldrb	ip, [r5, r2, asl #1]	@ zero_extendqisi2
.LVL852:
	ldrb	r0, [r7, #1]	@ zero_extendqisi2
	ldrb	r1, [r7, #2]	@ zero_extendqisi2
	ldrb	r5, [r7, #3]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #8
	orr	r0, r0, r1, asl #16
	ldr	ip, [r4, r2, asl #1]
	orr	r1, r0, r5, asl #24
.LBB619:
.LBB563:
	.loc 2 33 0
	eor	r0, ip, r1
	and	r0, r0, r3
	orr	r1, ip, r1
	sub	r1, r1, r0, lsr #1
.LBE563:
.LBE619:
	.loc 3 77 0 discriminator 4
	str	r1, [r4, r2, asl #1]
	add	r4, lr, r2
.LVL853:
	ldrb	ip, [r7, #4]	@ zero_extendqisi2
.LVL854:
	ldrb	r0, [r7, #5]	@ zero_extendqisi2
	ldr	r5, [r4, #4]
	ldrb	r1, [r7, #6]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #8
	ldrb	ip, [r7, #7]	@ zero_extendqisi2
	orr	r0, r0, r1, asl #16
	orr	r1, r0, ip, asl #24
.LVL855:
.LBB620:
.LBB587:
	.loc 2 33 0
	eor	r0, r5, r1
	and	r0, r0, r3
	orr	r1, r5, r1
.LVL856:
	sub	r1, r1, r0, lsr #1
.LBE587:
.LBE620:
	.loc 3 77 0 discriminator 4
	add	r5, r7, r2
.LVL857:
	str	r1, [r4, #4]
.LVL858:
	ldrb	ip, [r6, r2, asl #1]	@ zero_extendqisi2
	ldrb	r0, [r5, #1]	@ zero_extendqisi2
	ldrb	r1, [r5, #2]	@ zero_extendqisi2
	ldrb	r6, [r5, #3]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #8
	orr	r0, r0, r1, asl #16
	ldr	ip, [lr, r2, asl #1]
	orr	r1, r0, r6, asl #24
.LBB621:
.LBB564:
	.loc 2 33 0
	eor	r0, ip, r1
	and	r0, r0, r3
	orr	r1, ip, r1
	sub	r1, r1, r0, lsr #1
.LBE564:
.LBE621:
	.loc 3 77 0 discriminator 4
	str	r1, [lr, r2, asl #1]
	ldrb	ip, [r5, #4]	@ zero_extendqisi2
	ldrb	r0, [r5, #5]	@ zero_extendqisi2
	ldrb	r1, [r5, #6]	@ zero_extendqisi2
	ldrb	r6, [r5, #7]	@ zero_extendqisi2
	add	lr, r4, r2
.LVL859:
	orr	r0, ip, r0, asl #8
	orr	r0, r0, r1, asl #16
	ldr	ip, [lr, #4]
	orr	r1, r0, r6, asl #24
.LVL860:
.LBB622:
.LBB588:
	.loc 2 33 0
	eor	r0, ip, r1
	and	r0, r0, r3
	orr	r1, ip, r1
.LVL861:
.LBE588:
.LBE622:
	.loc 3 77 0 discriminator 4
	add	r6, r5, r2
.LVL862:
.LBB623:
.LBB589:
	.loc 2 33 0
	sub	r1, r1, r0, lsr #1
.LBE589:
.LBE623:
	.loc 3 77 0 discriminator 4
	str	r1, [lr, #4]
.LVL863:
	ldrb	ip, [r7, r2, asl #1]	@ zero_extendqisi2
.LVL864:
	ldrb	r0, [r6, #1]	@ zero_extendqisi2
	ldrb	r1, [r6, #2]	@ zero_extendqisi2
	ldrb	r7, [r6, #3]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #8
	orr	r0, r0, r1, asl #16
	ldr	ip, [r4, r2, asl #1]
	orr	r1, r0, r7, asl #24
.LBB624:
.LBB565:
	.loc 2 33 0
	eor	r0, ip, r1
	and	r0, r0, r3
	orr	r1, ip, r1
	sub	r1, r1, r0, lsr #1
.LBE565:
.LBE624:
	.loc 3 77 0 discriminator 4
	str	r1, [r4, r2, asl #1]
	ldrb	ip, [r6, #4]	@ zero_extendqisi2
	ldrb	r0, [r6, #5]	@ zero_extendqisi2
	ldrb	r1, [r6, #6]	@ zero_extendqisi2
	add	r4, lr, r2
.LVL865:
	ldrb	r7, [r6, #7]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #8
	orr	r0, r0, r1, asl #16
	ldr	ip, [r4, #4]
	orr	r1, r0, r7, asl #24
.LVL866:
.LBB625:
.LBB590:
	.loc 2 33 0
	eor	r0, ip, r1
	and	r0, r0, r3
	orr	r1, ip, r1
.LVL867:
.LBE590:
.LBE625:
	.loc 3 77 0 discriminator 4
	add	r7, r6, r2
.LVL868:
.LBB626:
.LBB591:
	.loc 2 33 0
	sub	r1, r1, r0, lsr #1
.LBE591:
.LBE626:
	.loc 3 77 0 discriminator 4
	str	r1, [r4, #4]
.LVL869:
	ldrb	ip, [r5, r2, asl #1]	@ zero_extendqisi2
.LVL870:
	ldrb	r0, [r7, #1]	@ zero_extendqisi2
	ldrb	r1, [r7, #2]	@ zero_extendqisi2
	ldrb	r5, [r7, #3]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #8
	orr	r0, r0, r1, asl #16
	ldr	ip, [lr, r2, asl #1]
	orr	r1, r0, r5, asl #24
.LBB627:
.LBB566:
	.loc 2 33 0
	eor	r0, ip, r1
	and	r0, r0, r3
	orr	r1, ip, r1
.LBE566:
.LBE627:
	.loc 3 77 0 discriminator 4
	add	r5, r4, r2
.LVL871:
.LBB628:
.LBB567:
	.loc 2 33 0
	sub	r1, r1, r0, lsr #1
.LBE567:
.LBE628:
	.loc 3 77 0 discriminator 4
	str	r1, [lr, r2, asl #1]
	ldr	lr, [r5, #4]
	ldrb	ip, [r7, #4]	@ zero_extendqisi2
.LVL872:
	ldrb	r0, [r7, #5]	@ zero_extendqisi2
	ldrb	r1, [r7, #6]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #8
	ldrb	ip, [r7, #7]	@ zero_extendqisi2
	orr	r0, r0, r1, asl #16
	orr	r1, r0, ip, asl #24
.LVL873:
.LBB629:
.LBB592:
	.loc 2 33 0
	eor	r0, lr, r1
	and	r0, r0, r3
	orr	r1, lr, r1
.LVL874:
	sub	r1, r1, r0, lsr #1
.LBE592:
.LBE629:
	.loc 3 77 0 discriminator 4
	add	lr, r7, r2
.LVL875:
	str	r1, [r5, #4]
.LVL876:
	ldrb	ip, [r6, r2, asl #1]	@ zero_extendqisi2
	ldrb	r0, [lr, #1]	@ zero_extendqisi2
	ldrb	r1, [lr, #2]	@ zero_extendqisi2
	ldrb	r6, [lr, #3]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #8
	orr	r0, r0, r1, asl #16
	ldr	ip, [r4, r2, asl #1]
	orr	r1, r0, r6, asl #24
.LBB630:
.LBB568:
	.loc 2 33 0
	eor	r0, ip, r1
	and	r0, r0, r3
	orr	r1, ip, r1
	sub	r1, r1, r0, lsr #1
.LBE568:
.LBE630:
	.loc 3 77 0 discriminator 4
	str	r1, [r4, r2, asl #1]
	ldrb	ip, [lr, #4]	@ zero_extendqisi2
	ldrb	r0, [lr, #5]	@ zero_extendqisi2
	ldrb	r1, [lr, #6]	@ zero_extendqisi2
	ldrb	r6, [lr, #7]	@ zero_extendqisi2
	add	r4, r5, r2
.LVL877:
	orr	r0, ip, r0, asl #8
	orr	r0, r0, r1, asl #16
	ldr	ip, [r4, #4]
	orr	r1, r0, r6, asl #24
.LVL878:
.LBB631:
.LBB593:
	.loc 2 33 0
	eor	r0, ip, r1
	and	r0, r0, r3
	orr	r1, ip, r1
.LVL879:
.LBE593:
.LBE631:
	.loc 3 77 0 discriminator 4
	add	r6, lr, r2
.LVL880:
.LBB632:
.LBB594:
	.loc 2 33 0
	sub	r1, r1, r0, lsr #1
.LBE594:
.LBE632:
	.loc 3 77 0 discriminator 4
	str	r1, [r4, #4]
.LVL881:
	ldrb	ip, [r7, r2, asl #1]	@ zero_extendqisi2
.LVL882:
	ldrb	r0, [r6, #1]	@ zero_extendqisi2
	ldrb	r1, [r6, #2]	@ zero_extendqisi2
	ldrb	r7, [r6, #3]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #8
	orr	r0, r0, r1, asl #16
	ldr	ip, [r5, r2, asl #1]
	orr	r1, r0, r7, asl #24
.LBB633:
.LBB569:
	.loc 2 33 0
	eor	r0, ip, r1
	and	r0, r0, r3
	orr	r1, ip, r1
	sub	r1, r1, r0, lsr #1
.LBE569:
.LBE633:
	.loc 3 77 0 discriminator 4
	str	r1, [r5, r2, asl #1]
	ldrb	ip, [r6, #5]	@ zero_extendqisi2
	ldrb	r0, [r6, #4]	@ zero_extendqisi2
	ldrb	r1, [r6, #6]	@ zero_extendqisi2
	add	r5, r4, r2
.LVL883:
	ldrb	r8, [r6, #7]	@ zero_extendqisi2
	orr	r0, r0, ip, asl #8
	ldr	r7, [r5, #4]
	orr	ip, r0, r1, asl #16
	orr	r1, ip, r8, asl #24
.LVL884:
.LBB634:
.LBB595:
	.loc 2 33 0
	eor	r0, r7, r1
	and	r0, r0, r3
	orr	r1, r7, r1
.LVL885:
	sub	r0, r1, r0, lsr #1
.LBE595:
.LBE634:
	.loc 3 77 0 discriminator 4
	add	r1, r6, r2
.LVL886:
	str	r0, [r5, #4]
	ldrb	lr, [lr, r2, asl #1]	@ zero_extendqisi2
	ldrb	ip, [r1, #1]	@ zero_extendqisi2
.LVL887:
	ldr	r7, [r4, r2, asl #1]
.LVL888:
	ldrb	r0, [r1, #2]	@ zero_extendqisi2
	orr	ip, lr, ip, asl #8
	ldrb	lr, [r1, #3]	@ zero_extendqisi2
	orr	ip, ip, r0, asl #16
	orr	r0, ip, lr, asl #24
.LBB635:
.LBB570:
	.loc 2 33 0
	eor	ip, r7, r0
	and	ip, ip, r3
	orr	r0, r7, r0
	sub	r0, r0, ip, lsr #1
.LBE570:
.LBE635:
	.loc 3 77 0 discriminator 4
	str	r0, [r4, r2, asl #1]
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
	ldrb	ip, [r1, #5]	@ zero_extendqisi2
	ldrb	r0, [r1, #6]	@ zero_extendqisi2
	ldrb	r7, [r1, #7]	@ zero_extendqisi2
	add	r4, r5, r2
.LVL889:
	orr	ip, lr, ip, asl #8
	orr	ip, ip, r0, asl #16
	ldr	lr, [r4, #4]
	orr	r0, ip, r7, asl #24
.LVL890:
.LBB636:
.LBB596:
	.loc 2 33 0
	eor	ip, lr, r0
	and	ip, ip, r3
	orr	r0, lr, r0
.LVL891:
.LBE596:
.LBE636:
	.loc 3 77 0 discriminator 4
	add	r1, r1, r2
.LVL892:
.LBB637:
.LBB597:
	.loc 2 33 0
	sub	r0, r0, ip, lsr #1
.LBE597:
.LBE637:
	.loc 3 77 0 discriminator 4
	str	r0, [r4, #4]
.LVL893:
	ldrb	lr, [r6, r2, asl #1]	@ zero_extendqisi2
.LVL894:
	ldrb	ip, [r1, #1]	@ zero_extendqisi2
	ldrb	r0, [r1, #2]	@ zero_extendqisi2
	ldrb	r6, [r1, #3]	@ zero_extendqisi2
	orr	ip, lr, ip, asl #8
	orr	ip, ip, r0, asl #16
	ldr	lr, [r5, r2, asl #1]
	orr	r0, ip, r6, asl #24
.LBB638:
.LBB571:
	.loc 2 33 0
	eor	ip, lr, r0
	and	ip, ip, r3
	orr	r0, lr, r0
	sub	r0, r0, ip, lsr #1
.LBE571:
.LBE638:
	.loc 3 77 0 discriminator 4
	str	r0, [r5, r2, asl #1]
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	ldrb	r0, [r1, #5]	@ zero_extendqisi2
	ldrb	r5, [r1, #6]	@ zero_extendqisi2
	add	r2, r4, r2
.LVL895:
	orr	r0, ip, r0, asl #8
	ldrb	lr, [r1, #7]	@ zero_extendqisi2
.LVL896:
	ldr	ip, [r2, #4]
	orr	r0, r0, r5, asl #16
	orr	r1, r0, lr, asl #24
.LVL897:
.LBB639:
.LBB598:
	.loc 2 33 0
	eor	r0, ip, r1
	and	r3, r3, r0
	orr	r1, ip, r1
.LVL898:
	sub	r3, r1, r3, lsr #1
.LBE598:
.LBE639:
	.loc 3 77 0 discriminator 4
	str	r3, [r2, #4]
.LVL899:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.L201:
	.align	2
.L200:
	.word	-16843010
.LBE553:
.LBE552:
.LBE477:
.LBE476:
	.cfi_endproc
.LFE243:
	.size	ff_avg_pixels16x16_c, .-ff_avg_pixels16x16_c
	.align	2
	.global	ff_put_pixels16x16_c
	.type	ff_put_pixels16x16_c, %function
ff_put_pixels16x16_c:
.LFB242:
	.loc 5 714 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL900:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
.LBB646:
.LBB647:
.LBB648:
.LBB649:
	.loc 3 78 0 discriminator 3
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	ldrb	ip, [r1]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	ldrb	lr, [r1, #3]	@ zero_extendqisi2
	orr	ip, ip, r3, asl #8
	orr	r3, ip, r4, asl #16
	orr	r3, r3, lr, asl #24
	str	r3, [r0]
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	ldrb	r3, [r1, #5]	@ zero_extendqisi2
	ldrb	lr, [r1, #6]	@ zero_extendqisi2
	orr	r3, ip, r3, asl #8
	ldrb	ip, [r1, #7]	@ zero_extendqisi2
.LVL901:
	orr	r3, r3, lr, asl #16
	orr	r3, r3, ip, asl #24
	add	lr, r1, r2
.LVL902:
	str	r3, [r0, #4]
	ldrb	ip, [r1, r2]	@ zero_extendqisi2
	ldrb	r4, [lr, #1]	@ zero_extendqisi2
	ldrb	r3, [lr, #2]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #8
	ldrb	r4, [lr, #3]	@ zero_extendqisi2
	orr	r3, ip, r3, asl #16
	orr	r3, r3, r4, asl #24
	str	r3, [r0, r2]
	ldrb	r4, [lr, #4]	@ zero_extendqisi2
	ldrb	r3, [lr, #5]	@ zero_extendqisi2
	ldrb	ip, [lr, #6]	@ zero_extendqisi2
	orr	r3, r4, r3, asl #8
	ldrb	r4, [lr, #7]	@ zero_extendqisi2
	orr	r3, r3, ip, asl #16
	add	r6, r0, r2
.LVL903:
	orr	ip, r3, r4, asl #24
	add	r3, lr, r2
.LVL904:
	str	ip, [r6, #4]
	ldrb	r4, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	ip, [r3, #2]	@ zero_extendqisi2
	orr	r4, r4, r5, asl #8
	ldrb	r5, [r3, #3]	@ zero_extendqisi2
	orr	ip, r4, ip, asl #16
	orr	ip, ip, r5, asl #24
	str	ip, [r0, r2, asl #1]
	ldrb	r5, [r3, #4]	@ zero_extendqisi2
	ldrb	ip, [r3, #5]	@ zero_extendqisi2
	ldrb	r4, [r3, #6]	@ zero_extendqisi2
	orr	ip, r5, ip, asl #8
	ldrb	r5, [r3, #7]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #16
	orr	r4, ip, r5, asl #24
	add	ip, r3, r2
	add	r5, r6, r2
.LVL905:
	str	r4, [r5, #4]
	ldrb	r7, [ip, #1]	@ zero_extendqisi2
	ldrb	r4, [lr, r2, asl #1]	@ zero_extendqisi2
	ldrb	lr, [ip, #2]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #8
	ldrb	r7, [ip, #3]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #16
	orr	lr, lr, r7, asl #24
	str	lr, [r6, r2, asl #1]
	ldrb	r6, [ip, #4]	@ zero_extendqisi2
	ldrb	lr, [ip, #5]	@ zero_extendqisi2
	ldrb	r4, [ip, #6]	@ zero_extendqisi2
	orr	lr, r6, lr, asl #8
	ldrb	r6, [ip, #7]	@ zero_extendqisi2
	orr	lr, lr, r4, asl #16
	orr	r4, lr, r6, asl #24
	add	lr, ip, r2
	add	r6, r5, r2
.LVL906:
	str	r4, [r6, #4]
	ldrb	r4, [r3, r2, asl #1]	@ zero_extendqisi2
	ldrb	r7, [lr, #1]	@ zero_extendqisi2
	ldrb	r3, [lr, #2]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #8
	ldrb	r7, [lr, #3]	@ zero_extendqisi2
	orr	r3, r4, r3, asl #16
	orr	r3, r3, r7, asl #24
	str	r3, [r5, r2, asl #1]
	ldrb	r5, [lr, #4]	@ zero_extendqisi2
	ldrb	r3, [lr, #5]	@ zero_extendqisi2
	ldrb	r4, [lr, #6]	@ zero_extendqisi2
	orr	r3, r5, r3, asl #8
	ldrb	r5, [lr, #7]	@ zero_extendqisi2
	orr	r3, r3, r4, asl #16
	orr	r4, r3, r5, asl #24
	add	r3, lr, r2
	add	r5, r6, r2
.LVL907:
	str	r4, [r5, #4]
	ldrb	r4, [ip, r2, asl #1]	@ zero_extendqisi2
	ldrb	r7, [r3, #1]	@ zero_extendqisi2
	ldrb	ip, [r3, #2]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #8
	ldrb	r7, [r3, #3]	@ zero_extendqisi2
	orr	ip, r4, ip, asl #16
	orr	ip, ip, r7, asl #24
	str	ip, [r6, r2, asl #1]
	ldrb	r6, [r3, #4]	@ zero_extendqisi2
	ldrb	ip, [r3, #5]	@ zero_extendqisi2
	ldrb	r4, [r3, #6]	@ zero_extendqisi2
	orr	ip, r6, ip, asl #8
	ldrb	r6, [r3, #7]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #16
	orr	r4, ip, r6, asl #24
	add	ip, r3, r2
	add	r6, r5, r2
.LVL908:
	str	r4, [r6, #4]
	ldrb	r4, [lr, r2, asl #1]	@ zero_extendqisi2
	ldrb	r7, [ip, #1]	@ zero_extendqisi2
	ldrb	lr, [ip, #2]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #8
	ldrb	r7, [ip, #3]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #16
	orr	lr, lr, r7, asl #24
	str	lr, [r5, r2, asl #1]
	ldrb	r5, [ip, #4]	@ zero_extendqisi2
	ldrb	lr, [ip, #5]	@ zero_extendqisi2
	ldrb	r4, [ip, #6]	@ zero_extendqisi2
	orr	lr, r5, lr, asl #8
	ldrb	r5, [ip, #7]	@ zero_extendqisi2
	orr	lr, lr, r4, asl #16
	orr	r4, lr, r5, asl #24
	add	lr, ip, r2
	add	r5, r6, r2
.LVL909:
	str	r4, [r5, #4]
	ldrb	r4, [r3, r2, asl #1]	@ zero_extendqisi2
	ldrb	r7, [lr, #1]	@ zero_extendqisi2
	ldrb	r3, [lr, #2]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #8
	ldrb	r7, [lr, #3]	@ zero_extendqisi2
	orr	r3, r4, r3, asl #16
	orr	r3, r3, r7, asl #24
	str	r3, [r6, r2, asl #1]
	ldrb	r6, [lr, #4]	@ zero_extendqisi2
	ldrb	r3, [lr, #5]	@ zero_extendqisi2
	ldrb	r4, [lr, #6]	@ zero_extendqisi2
	orr	r3, r6, r3, asl #8
	ldrb	r6, [lr, #7]	@ zero_extendqisi2
	orr	r3, r3, r4, asl #16
	orr	r4, r3, r6, asl #24
	add	r3, lr, r2
	add	r6, r5, r2
.LVL910:
	str	r4, [r6, #4]
	ldrb	r4, [ip, r2, asl #1]	@ zero_extendqisi2
	ldrb	r7, [r3, #1]	@ zero_extendqisi2
	ldrb	ip, [r3, #2]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #8
	ldrb	r7, [r3, #3]	@ zero_extendqisi2
	orr	ip, r4, ip, asl #16
	orr	ip, ip, r7, asl #24
	str	ip, [r5, r2, asl #1]
	ldrb	r5, [r3, #4]	@ zero_extendqisi2
	ldrb	ip, [r3, #5]	@ zero_extendqisi2
	ldrb	r4, [r3, #6]	@ zero_extendqisi2
	orr	ip, r5, ip, asl #8
	ldrb	r5, [r3, #7]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #16
	orr	r4, ip, r5, asl #24
	add	ip, r3, r2
	add	r5, r6, r2
.LVL911:
	str	r4, [r5, #4]
	ldrb	r4, [lr, r2, asl #1]	@ zero_extendqisi2
	ldrb	r7, [ip, #1]	@ zero_extendqisi2
	ldrb	lr, [ip, #2]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #8
	ldrb	r7, [ip, #3]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #16
	orr	lr, lr, r7, asl #24
	str	lr, [r6, r2, asl #1]
	ldrb	r6, [ip, #4]	@ zero_extendqisi2
	ldrb	lr, [ip, #5]	@ zero_extendqisi2
	ldrb	r4, [ip, #6]	@ zero_extendqisi2
	orr	lr, r6, lr, asl #8
	ldrb	r6, [ip, #7]	@ zero_extendqisi2
	orr	lr, lr, r4, asl #16
	orr	r4, lr, r6, asl #24
	add	lr, ip, r2
	add	r6, r5, r2
.LVL912:
	str	r4, [r6, #4]
.LVL913:
	ldrb	r4, [r3, r2, asl #1]	@ zero_extendqisi2
	ldrb	r7, [lr, #1]	@ zero_extendqisi2
	ldrb	r3, [lr, #2]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #8
	ldrb	r7, [lr, #3]	@ zero_extendqisi2
	orr	r3, r4, r3, asl #16
	orr	r3, r3, r7, asl #24
	str	r3, [r5, r2, asl #1]
	ldrb	r5, [lr, #4]	@ zero_extendqisi2
	ldrb	r3, [lr, #5]	@ zero_extendqisi2
	ldrb	r4, [lr, #6]	@ zero_extendqisi2
	orr	r3, r5, r3, asl #8
	ldrb	r5, [lr, #7]	@ zero_extendqisi2
	orr	r3, r3, r4, asl #16
	orr	r4, r3, r5, asl #24
	add	r3, lr, r2
	add	r5, r6, r2
.LVL914:
	str	r4, [r5, #4]
	ldrb	r4, [ip, r2, asl #1]	@ zero_extendqisi2
	ldrb	r7, [r3, #1]	@ zero_extendqisi2
	ldrb	ip, [r3, #2]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #8
	ldrb	r7, [r3, #3]	@ zero_extendqisi2
	orr	ip, r4, ip, asl #16
	orr	ip, ip, r7, asl #24
	str	ip, [r6, r2, asl #1]
	ldrb	r6, [r3, #4]	@ zero_extendqisi2
	ldrb	ip, [r3, #5]	@ zero_extendqisi2
	ldrb	r4, [r3, #6]	@ zero_extendqisi2
	orr	ip, r6, ip, asl #8
	ldrb	r6, [r3, #7]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #16
	orr	r4, ip, r6, asl #24
	add	ip, r3, r2
	add	r6, r5, r2
.LVL915:
	str	r4, [r6, #4]
	ldrb	r4, [lr, r2, asl #1]	@ zero_extendqisi2
	ldrb	r7, [ip, #1]	@ zero_extendqisi2
	ldrb	lr, [ip, #2]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #8
	ldrb	r7, [ip, #3]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #16
	orr	lr, lr, r7, asl #24
	str	lr, [r5, r2, asl #1]
	ldrb	r5, [ip, #5]	@ zero_extendqisi2
	ldrb	r4, [ip, #4]	@ zero_extendqisi2
	ldrb	lr, [ip, #6]	@ zero_extendqisi2
	orr	r4, r4, r5, asl #8
	ldrb	r5, [ip, #7]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #16
	orr	lr, lr, r5, asl #24
	add	r4, ip, r2
	add	r5, r6, r2
.LVL916:
	str	lr, [r5, #4]
	ldrb	lr, [r3, r2, asl #1]	@ zero_extendqisi2
	ldrb	r7, [r4, #1]	@ zero_extendqisi2
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #8
	ldrb	r7, [r4, #3]	@ zero_extendqisi2
	orr	r3, lr, r3, asl #16
	orr	r3, r3, r7, asl #24
	str	r3, [r6, r2, asl #1]
	ldrb	r6, [r4, #4]	@ zero_extendqisi2
	ldrb	r3, [r4, #5]	@ zero_extendqisi2
	ldrb	lr, [r4, #6]	@ zero_extendqisi2
	orr	r3, r6, r3, asl #8
	ldrb	r6, [r4, #7]	@ zero_extendqisi2
	orr	r3, r3, lr, asl #16
	orr	lr, r3, r6, asl #24
	add	r3, r4, r2
	add	r6, r5, r2
.LVL917:
	str	lr, [r6, #4]
	ldrb	lr, [ip, r2, asl #1]	@ zero_extendqisi2
	ldrb	r7, [r3, #1]	@ zero_extendqisi2
	ldrb	ip, [r3, #2]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #8
	ldrb	r7, [r3, #3]	@ zero_extendqisi2
	orr	ip, lr, ip, asl #16
	orr	ip, ip, r7, asl #24
	str	ip, [r5, r2, asl #1]
	ldrb	r5, [r3, #5]	@ zero_extendqisi2
	ldrb	lr, [r3, #4]	@ zero_extendqisi2
	ldrb	ip, [r3, #6]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #8
	ldrb	r5, [r3, #7]	@ zero_extendqisi2
	orr	ip, lr, ip, asl #16
	orr	ip, ip, r5, asl #24
	add	lr, r3, r2
	add	r5, r6, r2
.LVL918:
	str	ip, [r5, #4]
	ldrb	ip, [r4, r2, asl #1]	@ zero_extendqisi2
	ldrb	r4, [lr, #1]	@ zero_extendqisi2
	ldrb	r3, [lr, #2]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #8
	ldrb	r4, [lr, #3]	@ zero_extendqisi2
	orr	r3, ip, r3, asl #16
	orr	r3, r3, r4, asl #24
	str	r3, [r6, r2, asl #1]
	ldrb	r4, [lr, #5]	@ zero_extendqisi2
	ldrb	ip, [lr, #4]	@ zero_extendqisi2
	ldrb	r3, [lr, #6]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #8
	ldrb	lr, [lr, #7]	@ zero_extendqisi2
.LVL919:
	orr	r3, ip, r3, asl #16
	add	r5, r5, r2
.LVL920:
	orr	r3, r3, lr, asl #24
	str	r3, [r5, #4]
.LVL921:
.LBE649:
.LBE648:
.LBB650:
.LBB651:
	ldrb	lr, [r1, #9]	@ zero_extendqisi2
	ldrb	ip, [r1, #8]	@ zero_extendqisi2
	ldrb	r3, [r1, #10]	@ zero_extendqisi2
	orr	ip, ip, lr, asl #8
	ldrb	lr, [r1, #11]	@ zero_extendqisi2
	orr	r3, ip, r3, asl #16
	orr	r3, r3, lr, asl #24
	str	r3, [r0, #8]
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	ldrb	r3, [r1, #13]	@ zero_extendqisi2
	ldrb	ip, [r1, #14]	@ zero_extendqisi2
	ldrb	r4, [r1, #15]	@ zero_extendqisi2
	orr	r3, lr, r3, asl #8
	orr	r3, r3, ip, asl #16
	add	lr, r2, #8
	orr	ip, r3, r4, asl #24
	add	r3, r1, lr
.LVL922:
	str	ip, [r0, #12]
	ldrb	ip, [r1, lr]	@ zero_extendqisi2
	ldrb	r4, [r3, #1]	@ zero_extendqisi2
	ldrb	r1, [r3, #2]	@ zero_extendqisi2
.LVL923:
	orr	ip, ip, r4, asl #8
	ldrb	r4, [r3, #3]	@ zero_extendqisi2
	orr	r1, ip, r1, asl #16
	orr	r1, r1, r4, asl #24
	str	r1, [r0, lr]
	ldrb	r4, [r3, #5]	@ zero_extendqisi2
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
	ldrb	r1, [r3, #6]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #8
	ldrb	r4, [r3, #7]	@ zero_extendqisi2
	orr	r1, ip, r1, asl #16
	add	r0, r0, lr
.LVL924:
	add	ip, r3, r2
.LVL925:
	orr	r1, r1, r4, asl #24
	str	r1, [r0, #4]
	ldrb	lr, [r3, r2]	@ zero_extendqisi2
	ldrb	r4, [ip, #1]	@ zero_extendqisi2
	ldrb	r1, [ip, #2]	@ zero_extendqisi2
	orr	lr, lr, r4, asl #8
	ldrb	r4, [ip, #3]	@ zero_extendqisi2
	orr	r1, lr, r1, asl #16
	orr	r1, r1, r4, asl #24
	str	r1, [r0, r2]
	ldrb	r4, [ip, #4]	@ zero_extendqisi2
	ldrb	r1, [ip, #5]	@ zero_extendqisi2
	ldrb	lr, [ip, #6]	@ zero_extendqisi2
	orr	r1, r4, r1, asl #8
	ldrb	r4, [ip, #7]	@ zero_extendqisi2
	orr	r1, r1, lr, asl #16
	orr	lr, r1, r4, asl #24
	add	r1, ip, r2
	add	r4, r0, r2
.LVL926:
	str	lr, [r4, #4]
	ldrb	lr, [r3, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
.LVL927:
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #8
	ldrb	r5, [r1, #3]	@ zero_extendqisi2
	orr	r3, lr, r3, asl #16
	orr	r3, r3, r5, asl #24
	str	r3, [r0, r2, asl #1]
	ldrb	r0, [r1, #4]	@ zero_extendqisi2
	ldrb	lr, [r1, #5]	@ zero_extendqisi2
	ldrb	r3, [r1, #6]	@ zero_extendqisi2
	orr	r0, r0, lr, asl #8
	ldrb	lr, [r1, #7]	@ zero_extendqisi2
	orr	r3, r0, r3, asl #16
	orr	r3, r3, lr, asl #24
	add	r0, r1, r2
	add	lr, r4, r2
.LVL928:
	str	r3, [lr, #4]
.LVL929:
	ldrb	r5, [r0, #1]	@ zero_extendqisi2
	ldrb	ip, [ip, r2, asl #1]	@ zero_extendqisi2
	ldrb	r3, [r0, #2]	@ zero_extendqisi2
	orr	ip, ip, r5, asl #8
	ldrb	r5, [r0, #3]	@ zero_extendqisi2
	orr	r3, ip, r3, asl #16
	orr	r3, r3, r5, asl #24
	str	r3, [r4, r2, asl #1]
	ldrb	r4, [r0, #4]	@ zero_extendqisi2
	ldrb	r3, [r0, #5]	@ zero_extendqisi2
	ldrb	ip, [r0, #6]	@ zero_extendqisi2
	orr	r3, r4, r3, asl #8
	ldrb	r4, [r0, #7]	@ zero_extendqisi2
	orr	r3, r3, ip, asl #16
	orr	ip, r3, r4, asl #24
	add	r3, r0, r2
	add	r4, lr, r2
.LVL930:
	str	ip, [r4, #4]
	ldrb	ip, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	r1, [r3, #2]	@ zero_extendqisi2
	orr	ip, ip, r5, asl #8
	ldrb	r5, [r3, #3]	@ zero_extendqisi2
	orr	r1, ip, r1, asl #16
	orr	r1, r1, r5, asl #24
	str	r1, [lr, r2, asl #1]
	ldrb	lr, [r3, #4]	@ zero_extendqisi2
	ldrb	r1, [r3, #5]	@ zero_extendqisi2
	ldrb	ip, [r3, #6]	@ zero_extendqisi2
	orr	r1, lr, r1, asl #8
	ldrb	lr, [r3, #7]	@ zero_extendqisi2
	orr	r1, r1, ip, asl #16
	orr	ip, r1, lr, asl #24
	add	r1, r3, r2
	add	lr, r4, r2
.LVL931:
	str	ip, [lr, #4]
	ldrb	ip, [r0, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	ldrb	r0, [r1, #2]	@ zero_extendqisi2
	orr	ip, ip, r5, asl #8
	ldrb	r5, [r1, #3]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #16
	orr	r0, r0, r5, asl #24
	str	r0, [r4, r2, asl #1]
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	r0, [r1, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #6]	@ zero_extendqisi2
	orr	r0, r4, r0, asl #8
	ldrb	r4, [r1, #7]	@ zero_extendqisi2
	orr	r0, r0, ip, asl #16
	orr	ip, r0, r4, asl #24
	add	r0, r1, r2
	add	r4, lr, r2
.LVL932:
	str	ip, [r4, #4]
	ldrb	ip, [r3, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r0, #1]	@ zero_extendqisi2
	ldrb	r3, [r0, #2]	@ zero_extendqisi2
	orr	ip, ip, r5, asl #8
	ldrb	r5, [r0, #3]	@ zero_extendqisi2
	orr	r3, ip, r3, asl #16
	orr	r3, r3, r5, asl #24
	str	r3, [lr, r2, asl #1]
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
	ldrb	r3, [r0, #5]	@ zero_extendqisi2
	ldrb	ip, [r0, #6]	@ zero_extendqisi2
	orr	r3, lr, r3, asl #8
	ldrb	lr, [r0, #7]	@ zero_extendqisi2
	orr	r3, r3, ip, asl #16
	orr	ip, r3, lr, asl #24
	add	r3, r0, r2
	add	lr, r4, r2
.LVL933:
	str	ip, [lr, #4]
	ldrb	ip, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	r1, [r3, #2]	@ zero_extendqisi2
	orr	ip, ip, r5, asl #8
	ldrb	r5, [r3, #3]	@ zero_extendqisi2
	orr	r1, ip, r1, asl #16
	orr	r1, r1, r5, asl #24
	str	r1, [r4, r2, asl #1]
	ldrb	r4, [r3, #4]	@ zero_extendqisi2
	ldrb	r1, [r3, #5]	@ zero_extendqisi2
	ldrb	ip, [r3, #6]	@ zero_extendqisi2
	orr	r1, r4, r1, asl #8
	ldrb	r4, [r3, #7]	@ zero_extendqisi2
	orr	r1, r1, ip, asl #16
	orr	ip, r1, r4, asl #24
	add	r1, r3, r2
	add	r4, lr, r2
.LVL934:
	str	ip, [r4, #4]
	ldrb	ip, [r0, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	ldrb	r0, [r1, #2]	@ zero_extendqisi2
	orr	ip, ip, r5, asl #8
	ldrb	r5, [r1, #3]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #16
	orr	r0, r0, r5, asl #24
	str	r0, [lr, r2, asl #1]
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
	ldrb	r0, [r1, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #6]	@ zero_extendqisi2
	orr	r0, lr, r0, asl #8
	ldrb	lr, [r1, #7]	@ zero_extendqisi2
	orr	r0, r0, ip, asl #16
	orr	ip, r0, lr, asl #24
	add	r0, r1, r2
	add	lr, r4, r2
.LVL935:
	str	ip, [lr, #4]
	ldrb	ip, [r3, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r0, #1]	@ zero_extendqisi2
	ldrb	r3, [r0, #2]	@ zero_extendqisi2
	orr	ip, ip, r5, asl #8
	ldrb	r5, [r0, #3]	@ zero_extendqisi2
	orr	r3, ip, r3, asl #16
	orr	r3, r3, r5, asl #24
	str	r3, [r4, r2, asl #1]
	ldrb	r4, [r0, #4]	@ zero_extendqisi2
	ldrb	r3, [r0, #5]	@ zero_extendqisi2
	ldrb	ip, [r0, #6]	@ zero_extendqisi2
	orr	r3, r4, r3, asl #8
	ldrb	r4, [r0, #7]	@ zero_extendqisi2
	orr	r3, r3, ip, asl #16
	orr	ip, r3, r4, asl #24
	add	r3, r0, r2
	add	r4, lr, r2
.LVL936:
	str	ip, [r4, #4]
	ldrb	ip, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	r1, [r3, #2]	@ zero_extendqisi2
	orr	ip, ip, r5, asl #8
	ldrb	r5, [r3, #3]	@ zero_extendqisi2
	orr	r1, ip, r1, asl #16
	orr	r1, r1, r5, asl #24
	str	r1, [lr, r2, asl #1]
	ldrb	lr, [r3, #4]	@ zero_extendqisi2
	ldrb	r1, [r3, #5]	@ zero_extendqisi2
	ldrb	ip, [r3, #6]	@ zero_extendqisi2
	orr	r1, lr, r1, asl #8
	ldrb	lr, [r3, #7]	@ zero_extendqisi2
	orr	r1, r1, ip, asl #16
	orr	ip, r1, lr, asl #24
	add	r1, r3, r2
	add	lr, r4, r2
.LVL937:
	str	ip, [lr, #4]
	ldrb	ip, [r0, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	ldrb	r0, [r1, #2]	@ zero_extendqisi2
	orr	ip, ip, r5, asl #8
	ldrb	r5, [r1, #3]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #16
	orr	r0, r0, r5, asl #24
	str	r0, [r4, r2, asl #1]
	ldrb	r4, [r1, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	ldrb	r0, [r1, #6]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #8
	ldrb	r4, [r1, #7]	@ zero_extendqisi2
	orr	r0, ip, r0, asl #16
	orr	r0, r0, r4, asl #24
	add	ip, r1, r2
	add	r4, lr, r2
.LVL938:
	str	r0, [r4, #4]
	ldrb	r0, [r3, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [ip, #1]	@ zero_extendqisi2
	ldrb	r3, [ip, #2]	@ zero_extendqisi2
	orr	r0, r0, r5, asl #8
	ldrb	r5, [ip, #3]	@ zero_extendqisi2
	orr	r3, r0, r3, asl #16
	orr	r3, r3, r5, asl #24
	str	r3, [lr, r2, asl #1]
	ldrb	lr, [ip, #4]	@ zero_extendqisi2
	ldrb	r3, [ip, #5]	@ zero_extendqisi2
	ldrb	r0, [ip, #6]	@ zero_extendqisi2
	orr	r3, lr, r3, asl #8
	ldrb	lr, [ip, #7]	@ zero_extendqisi2
	orr	r3, r3, r0, asl #16
	orr	r0, r3, lr, asl #24
	add	r3, ip, r2
	add	lr, r4, r2
.LVL939:
	str	r0, [lr, #4]
.LVL940:
	ldrb	r0, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	r1, [r3, #2]	@ zero_extendqisi2
	orr	r0, r0, r5, asl #8
	ldrb	r5, [r3, #3]	@ zero_extendqisi2
	orr	r1, r0, r1, asl #16
	orr	r1, r1, r5, asl #24
	str	r1, [r4, r2, asl #1]
	ldrb	r4, [r3, #5]	@ zero_extendqisi2
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	ldrb	r1, [r3, #6]	@ zero_extendqisi2
	orr	r0, r0, r4, asl #8
	ldrb	r4, [r3, #7]	@ zero_extendqisi2
	orr	r1, r0, r1, asl #16
	orr	r1, r1, r4, asl #24
	add	r0, r3, r2
	add	r4, lr, r2
.LVL941:
	str	r1, [r4, #4]
	ldrb	r1, [ip, r2, asl #1]	@ zero_extendqisi2
	ldrb	ip, [r0, #1]	@ zero_extendqisi2
	ldrb	r3, [r0, #2]	@ zero_extendqisi2
	orr	r1, r1, ip, asl #8
	ldrb	ip, [r0, #3]	@ zero_extendqisi2
	orr	r3, r1, r3, asl #16
	orr	r3, r3, ip, asl #24
	str	r3, [lr, r2, asl #1]
	ldrb	r1, [r0, #4]	@ zero_extendqisi2
	ldrb	ip, [r0, #5]	@ zero_extendqisi2
	ldrb	r3, [r0, #6]	@ zero_extendqisi2
	orr	r1, r1, ip, asl #8
	ldrb	r0, [r0, #7]	@ zero_extendqisi2
.LVL942:
	orr	r3, r1, r3, asl #16
	add	r2, r4, r2
.LVL943:
	orr	r3, r3, r0, asl #24
	str	r3, [r2, #4]
.LVL944:
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.LBE651:
.LBE650:
.LBE647:
.LBE646:
	.cfi_endproc
.LFE242:
	.size	ff_put_pixels16x16_c, .-ff_put_pixels16x16_c
	.align	2
	.type	avg_qpel16_mc01_c, %function
avg_qpel16_mc01_c:
.LFB222:
	.loc 5 697 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 672
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL945:
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
.LBB656:
.LBB657:
	.loc 6 82 0
	ldrb	r10, [r1, #9]	@ zero_extendqisi2
	ldrb	lr, [r1, #8]	@ zero_extendqisi2
.LBE657:
.LBE656:
	.loc 5 697 0
	mov	r5, r2
.LVL946:
.LBB662:
.LBB658:
	.loc 6 85 0
	add	r3, r1, r2
	.loc 6 82 0
	ldrb	r4, [r1, r2]	@ zero_extendqisi2
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	ldrb	r2, [r1]	@ zero_extendqisi2
.LVL947:
	ldrb	r8, [r3, #1]	@ zero_extendqisi2
	ldrb	fp, [r1, #5]	@ zero_extendqisi2
	ldrb	r9, [r1, #13]	@ zero_extendqisi2
	ldrb	r6, [r1, #4]	@ zero_extendqisi2
	ldrb	ip, [r1, #12]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #8
	ldrb	r10, [r1, #2]	@ zero_extendqisi2
	orr	r7, r2, r7, asl #8
	orr	r4, r4, r8, asl #8
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	ldrb	r8, [r3, #2]	@ zero_extendqisi2
	orr	r6, r6, fp, asl #8
	orr	ip, ip, r9, asl #8
	ldrb	fp, [r3, #5]	@ zero_extendqisi2
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	orr	r7, r7, r10, asl #16
	ldrb	r10, [r1, #14]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #8
	orr	r4, r4, r8, asl #16
	ldrb	fp, [r1, #10]	@ zero_extendqisi2
	ldrb	r8, [r3, #3]	@ zero_extendqisi2
	orr	r6, r6, r9, asl #16
	orr	ip, ip, r10, asl #16
	ldrb	r9, [r3, #6]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
.LBE658:
.LBE662:
	.loc 5 697 0
	sub	sp, sp, #692
	.cfi_def_cfa_offset 728
.LVL948:
.LBB663:
.LBB659:
	.loc 6 82 0
	orr	r4, r4, r8, asl #24
	orr	r6, r6, r10, asl #24
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	ldrb	r10, [r3, #7]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #16
	orr	r2, r2, r9, asl #16
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	str	r4, [sp, #20]
	orr	r7, r7, fp, asl #24
	add	r4, sp, #288
	.loc 6 85 0
	add	fp, r3, r5
	.loc 6 82 0
	orr	lr, lr, r9, asl #24
	orr	ip, ip, r8, asl #24
	ldr	r9, [sp, #20]
	orr	r2, r2, r10, asl #24
	.loc 6 83 0
	ldrb	r8, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	stmda	r4, {r6, lr}
	str	r9, [r4, #16]
	str	r7, [r4, #-8]
	str	ip, [r4, #4]
	str	r2, [r4, #20]
	ldrb	lr, [r1, r5, asl #1]	@ zero_extendqisi2
	ldrb	r10, [fp, #1]	@ zero_extendqisi2
	ldrb	r7, [fp, #5]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r8, [sp, #296]
.LVL949:
	.loc 6 82 0
	ldrb	ip, [r3, #12]	@ zero_extendqisi2
	ldrb	r8, [r3, #13]	@ zero_extendqisi2
	ldrb	r1, [fp, #4]	@ zero_extendqisi2
.LVL950:
	ldrb	r6, [fp, #8]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #8
	ldrb	r10, [fp, #9]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	orr	r6, r6, r10, asl #8
	ldrb	r8, [fp, #12]	@ zero_extendqisi2
	ldrb	r10, [fp, #2]	@ zero_extendqisi2
	orr	r1, r1, r7, asl #8
	ldrb	r7, [fp, #13]	@ zero_extendqisi2
	ldrb	r9, [r3, #8]	@ zero_extendqisi2
	ldrb	r2, [r3, #9]	@ zero_extendqisi2
	orr	r7, r8, r7, asl #8
	orr	r10, lr, r10, asl #16
	ldrb	r8, [r3, #14]	@ zero_extendqisi2
	ldrb	lr, [fp, #6]	@ zero_extendqisi2
	orr	r2, r9, r2, asl #8
	ldrb	r9, [r3, #10]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r1, r1, lr, asl #16
	ldrb	r8, [fp, #10]	@ zero_extendqisi2
	ldrb	lr, [fp, #14]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #16
	ldrb	r9, [r3, #11]	@ zero_extendqisi2
	orr	r8, r6, r8, asl #16
	orr	lr, r7, lr, asl #16
	ldrb	r6, [fp, #3]	@ zero_extendqisi2
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	orr	r9, r2, r9, asl #24
	ldrb	r2, [fp, #7]	@ zero_extendqisi2
	orr	r10, r10, r6, asl #24
	orr	ip, ip, r7, asl #24
	ldrb	r6, [fp, #11]	@ zero_extendqisi2
	ldrb	r7, [fp, #15]	@ zero_extendqisi2
	orr	r1, r1, r2, asl #24
	.loc 6 85 0
	add	r2, fp, r5
	.loc 6 82 0
	orr	r6, r8, r6, asl #24
	orr	r7, lr, r7, asl #24
	.loc 6 83 0
	ldrb	r8, [fp, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r9, [r4, #24]
	.loc 6 85 0
	add	r9, r2, r5
	.loc 6 83 0
	ldrb	lr, [r3, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r10, [r4, #40]
	str	ip, [r4, #28]
	str	r1, [r4, #44]
	str	r6, [r4, #48]
	str	r7, [r4, #52]
	.loc 6 83 0
	strb	r8, [sp, #344]
	.loc 6 82 0
	ldrb	r7, [fp, r5, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r9, #1]	@ zero_extendqisi2
	ldrb	r1, [r3, r5, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r2, #9]	@ zero_extendqisi2
	ldrb	r3, [r2, #4]	@ zero_extendqisi2
.LVL951:
	.loc 6 83 0
	strb	lr, [sp, #320]
.LVL952:
	.loc 6 82 0
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	lr, [r2, #8]	@ zero_extendqisi2
	ldrb	ip, [r2, #12]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	ldrb	r8, [r2, #13]	@ zero_extendqisi2
	orr	r6, r3, r6, asl #8
	orr	lr, lr, r10, asl #8
	ldrb	r3, [r9, #4]	@ zero_extendqisi2
	ldrb	r10, [r9, #5]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	ldrb	r8, [r9, #2]	@ zero_extendqisi2
	ldrb	fp, [r2, #1]	@ zero_extendqisi2
	orr	r3, r3, r10, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r10, [r2, #6]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #8
	orr	r6, r6, r10, asl #16
	ldrb	fp, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #14]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #16
	ldrb	r8, [r9, #6]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	fp, [r2, #3]	@ zero_extendqisi2
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #16
	ldrb	r10, [r9, #3]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #24
	orr	r7, r7, r10, asl #24
	ldrb	fp, [r2, #11]	@ zero_extendqisi2
	ldrb	r10, [r2, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [r9, #7]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	orr	ip, ip, r10, asl #24
	orr	r8, r3, r8, asl #24
	.loc 6 83 0
	ldrb	fp, [r2, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	r3, r9, r5
	.loc 6 82 0
	ldrb	r10, [r9, #8]	@ zero_extendqisi2
	str	r1, [r4, #64]
	str	r7, [r4, #88]
	str	r6, [r4, #68]
	str	lr, [r4, #72]
	str	ip, [r4, #76]
	str	r8, [r4, #92]
	.loc 6 83 0
	strb	fp, [sp, #368]
.LVL953:
	.loc 6 82 0
	ldrb	lr, [r2, r5, asl #1]	@ zero_extendqisi2
	ldrb	fp, [r3, #1]	@ zero_extendqisi2
	ldrb	r8, [r9, #13]	@ zero_extendqisi2
	ldrb	r7, [r3, #5]	@ zero_extendqisi2
	ldrb	ip, [r9, #12]	@ zero_extendqisi2
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	ldrb	r6, [r3, #8]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #8
	ldrb	fp, [r3, #9]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	orr	r6, r6, fp, asl #8
	ldrb	r8, [r3, #12]	@ zero_extendqisi2
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #8
	ldrb	r7, [r3, #13]	@ zero_extendqisi2
	ldrb	r1, [r9, #9]	@ zero_extendqisi2
	orr	r7, r8, r7, asl #8
	orr	fp, lr, fp, asl #16
	ldrb	r8, [r9, #14]	@ zero_extendqisi2
	ldrb	lr, [r3, #6]	@ zero_extendqisi2
	orr	r1, r10, r1, asl #8
	ldrb	r10, [r9, #10]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r2, r2, lr, asl #16
	ldrb	r8, [r3, #10]	@ zero_extendqisi2
	ldrb	lr, [r3, #14]	@ zero_extendqisi2
	orr	r1, r1, r10, asl #16
	ldrb	r10, [r9, #11]	@ zero_extendqisi2
	orr	r8, r6, r8, asl #16
	orr	lr, r7, lr, asl #16
	ldrb	r6, [r3, #3]	@ zero_extendqisi2
	ldrb	r7, [r9, #15]	@ zero_extendqisi2
	orr	r10, r1, r10, asl #24
	ldrb	r1, [r3, #7]	@ zero_extendqisi2
	orr	fp, fp, r6, asl #24
	orr	ip, ip, r7, asl #24
	ldrb	r6, [r3, #11]	@ zero_extendqisi2
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	orr	r2, r2, r1, asl #24
	.loc 6 85 0
	add	r1, r3, r5
	.loc 6 82 0
	orr	r6, r8, r6, asl #24
	orr	r7, lr, r7, asl #24
	.loc 6 83 0
	ldrb	r8, [r3, #16]	@ zero_extendqisi2
	ldrb	lr, [r9, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r10, [r4, #96]
	.loc 6 85 0
	add	r10, r1, r5
	.loc 6 82 0
	str	ip, [r4, #100]
	str	r7, [r4, #124]
	str	fp, [r4, #112]
	str	r6, [r4, #120]
	.loc 6 83 0
	strb	r8, [sp, #416]
	strb	lr, [sp, #392]
.LVL954:
	.loc 6 82 0
	str	r2, [r4, #116]
	ldrb	r2, [r9, r5, asl #1]	@ zero_extendqisi2
	ldrb	r7, [r3, r5, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r10, #1]	@ zero_extendqisi2
	ldrb	r3, [r1, #4]	@ zero_extendqisi2
	ldrb	r9, [r1, #9]	@ zero_extendqisi2
	ldrb	r6, [r1, #5]	@ zero_extendqisi2
	ldrb	lr, [r1, #8]	@ zero_extendqisi2
	ldrb	ip, [r1, #12]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	ldrb	r8, [r1, #13]	@ zero_extendqisi2
	orr	r6, r3, r6, asl #8
	orr	lr, lr, r9, asl #8
	ldrb	r3, [r10, #4]	@ zero_extendqisi2
	ldrb	r9, [r10, #5]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	ldrb	r8, [r10, #2]	@ zero_extendqisi2
	ldrb	fp, [r1, #1]	@ zero_extendqisi2
	orr	r3, r3, r9, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	ldrb	r8, [r1, #10]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	fp, [r1, #2]	@ zero_extendqisi2
	ldrb	r9, [r1, #14]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #16
	ldrb	r8, [r10, #6]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	r8, [r1, #7]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #16
	ldrb	r9, [r10, #3]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #24
	orr	r7, r7, r9, asl #24
	ldrb	fp, [r1, #11]	@ zero_extendqisi2
	ldrb	r9, [r1, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [r10, #7]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	orr	ip, ip, r9, asl #24
	.loc 6 83 0
	ldrb	fp, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	orr	r8, r3, r8, asl #24
	.loc 6 85 0
	add	r3, r10, r5
	.loc 6 82 0
	str	ip, [r4, #148]
	ldrb	r9, [r10, #8]	@ zero_extendqisi2
	str	r7, [r4, #160]
	str	r6, [r4, #140]
	str	lr, [r4, #144]
	str	r8, [r4, #164]
	.loc 6 83 0
	strb	fp, [sp, #440]
.LVL955:
	.loc 6 82 0
	str	r2, [r4, #136]
	ldrb	r2, [r10, #9]	@ zero_extendqisi2
	ldrb	lr, [r1, r5, asl #1]	@ zero_extendqisi2
	ldrb	fp, [r3, #1]	@ zero_extendqisi2
	ldrb	r8, [r10, #13]	@ zero_extendqisi2
	ldrb	r7, [r3, #5]	@ zero_extendqisi2
	ldrb	ip, [r10, #12]	@ zero_extendqisi2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	ldrb	r6, [r3, #8]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #8
	ldrb	fp, [r3, #9]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	orr	r6, r6, fp, asl #8
	ldrb	r8, [r3, #12]	@ zero_extendqisi2
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	orr	r1, r1, r7, asl #8
	ldrb	r7, [r3, #13]	@ zero_extendqisi2
	orr	fp, lr, fp, asl #16
	orr	r7, r8, r7, asl #8
	ldrb	lr, [r3, #6]	@ zero_extendqisi2
	ldrb	r8, [r10, #14]	@ zero_extendqisi2
	orr	r2, r9, r2, asl #8
	ldrb	r9, [r10, #10]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r1, r1, lr, asl #16
	ldrb	r8, [r3, #10]	@ zero_extendqisi2
	ldrb	lr, [r3, #14]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #16
	ldrb	r9, [r10, #11]	@ zero_extendqisi2
	orr	r8, r6, r8, asl #16
	orr	lr, r7, lr, asl #16
	ldrb	r6, [r3, #3]	@ zero_extendqisi2
	ldrb	r7, [r10, #15]	@ zero_extendqisi2
	orr	r9, r2, r9, asl #24
	ldrb	r2, [r3, #7]	@ zero_extendqisi2
	orr	fp, fp, r6, asl #24
	orr	ip, ip, r7, asl #24
	ldrb	r6, [r3, #11]	@ zero_extendqisi2
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	orr	r1, r1, r2, asl #24
	.loc 6 85 0
	add	r2, r3, r5
	.loc 6 82 0
	orr	r6, r8, r6, asl #24
	orr	r7, lr, r7, asl #24
	.loc 6 83 0
	ldrb	r8, [r3, #16]	@ zero_extendqisi2
	ldrb	lr, [r10, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r9, [r4, #168]
	.loc 6 85 0
	add	r9, r2, r5
	.loc 6 82 0
	str	ip, [r4, #172]
	str	r7, [r4, #196]
	str	fp, [r4, #184]
	str	r6, [r4, #192]
	.loc 6 83 0
	strb	r8, [sp, #488]
	strb	lr, [sp, #464]
.LVL956:
	.loc 6 82 0
	str	r1, [r4, #188]
	ldrb	r1, [r10, r5, asl #1]	@ zero_extendqisi2
	ldrb	r7, [r3, r5, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r9, #1]	@ zero_extendqisi2
	ldrb	r3, [r2, #4]	@ zero_extendqisi2
	ldrb	r10, [r2, #9]	@ zero_extendqisi2
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	lr, [r2, #8]	@ zero_extendqisi2
	ldrb	ip, [r2, #12]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	ldrb	r8, [r2, #13]	@ zero_extendqisi2
	orr	r6, r3, r6, asl #8
	orr	lr, lr, r10, asl #8
	ldrb	r3, [r9, #4]	@ zero_extendqisi2
	ldrb	r10, [r9, #5]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	ldrb	r8, [r9, #2]	@ zero_extendqisi2
	ldrb	fp, [r2, #1]	@ zero_extendqisi2
	orr	r3, r3, r10, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r10, [r2, #6]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #8
	orr	r6, r6, r10, asl #16
	ldrb	fp, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #14]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #16
	ldrb	r8, [r9, #6]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	fp, [r2, #3]	@ zero_extendqisi2
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #16
	ldrb	r10, [r9, #3]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #24
	orr	r7, r7, r10, asl #24
	ldrb	fp, [r2, #11]	@ zero_extendqisi2
	ldrb	r10, [r2, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [r9, #7]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	orr	ip, ip, r10, asl #24
	.loc 6 83 0
	ldrb	fp, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	orr	r8, r3, r8, asl #24
	.loc 6 85 0
	add	r3, r9, r5
	.loc 6 82 0
	str	ip, [r4, #220]
	ldrb	r10, [r9, #8]	@ zero_extendqisi2
	str	r7, [r4, #232]
	str	r6, [r4, #212]
	str	lr, [r4, #216]
	str	r8, [r4, #236]
	.loc 6 83 0
	strb	fp, [sp, #512]
.LVL957:
	.loc 6 82 0
	str	r1, [r4, #208]
	ldrb	r1, [r9, #9]	@ zero_extendqisi2
	ldrb	lr, [r2, r5, asl #1]	@ zero_extendqisi2
	ldrb	fp, [r3, #1]	@ zero_extendqisi2
	ldrb	r8, [r9, #13]	@ zero_extendqisi2
	ldrb	r7, [r3, #5]	@ zero_extendqisi2
	ldrb	ip, [r9, #12]	@ zero_extendqisi2
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	ldrb	r6, [r3, #8]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #8
	ldrb	fp, [r3, #9]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	orr	r6, r6, fp, asl #8
	ldrb	r8, [r3, #12]	@ zero_extendqisi2
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #8
	ldrb	r7, [r3, #13]	@ zero_extendqisi2
	orr	fp, lr, fp, asl #16
	orr	r7, r8, r7, asl #8
	ldrb	lr, [r3, #6]	@ zero_extendqisi2
	ldrb	r8, [r9, #14]	@ zero_extendqisi2
	orr	r1, r10, r1, asl #8
	orr	ip, ip, r8, asl #16
	ldrb	r10, [r9, #10]	@ zero_extendqisi2
	ldrb	r8, [r3, #10]	@ zero_extendqisi2
	orr	r2, r2, lr, asl #16
	ldrb	lr, [r3, #14]	@ zero_extendqisi2
	orr	r1, r1, r10, asl #16
	orr	r8, r6, r8, asl #16
	ldrb	r10, [r9, #11]	@ zero_extendqisi2
	ldrb	r6, [r3, #3]	@ zero_extendqisi2
	orr	lr, r7, lr, asl #16
	ldrb	r7, [r9, #15]	@ zero_extendqisi2
	orr	r10, r1, r10, asl #24
	orr	fp, fp, r6, asl #24
	ldrb	r1, [r3, #7]	@ zero_extendqisi2
	ldrb	r6, [r3, #11]	@ zero_extendqisi2
	orr	ip, ip, r7, asl #24
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	orr	r2, r2, r1, asl #24
	orr	r6, r8, r6, asl #24
	.loc 6 85 0
	add	r1, r3, r5
	.loc 6 83 0
	ldrb	r8, [r3, #16]	@ zero_extendqisi2
	.loc 6 82 0
	orr	r7, lr, r7, asl #24
	.loc 6 83 0
	ldrb	lr, [r9, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	ip, [r4, #244]
	str	r10, [r4, #240]
	str	fp, [sp, #544]
	str	r2, [sp, #548]
	str	r7, [sp, #556]
	.loc 6 83 0
	strb	r8, [sp, #560]
	strb	lr, [sp, #536]
.LVL958:
	.loc 6 82 0
	str	r6, [sp, #552]
	ldrb	r6, [r9, r5, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #1]	@ zero_extendqisi2
	.loc 6 85 0
	add	r10, r1, r5
	.loc 6 82 0
	ldrb	r7, [r3, r5, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r1, #13]	@ zero_extendqisi2
	ldrb	r3, [r1, #4]	@ zero_extendqisi2
	ldrb	lr, [r1, #5]	@ zero_extendqisi2
	ldrb	r2, [r1, #12]	@ zero_extendqisi2
	ldrb	ip, [r10, #4]	@ zero_extendqisi2
	orr	r6, r6, r9, asl #8
	ldrb	r9, [r10, #5]	@ zero_extendqisi2
	orr	lr, r3, lr, asl #8
	orr	r2, r2, r8, asl #8
	ldrb	r3, [r1, #8]	@ zero_extendqisi2
	ldrb	r8, [r1, #9]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #8
	ldrb	r9, [r1, #2]	@ zero_extendqisi2
	ldrb	fp, [r10, #1]	@ zero_extendqisi2
	orr	r3, r3, r8, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	r9, [r1, #14]	@ zero_extendqisi2
	orr	r7, r7, fp, asl #8
	orr	lr, lr, r8, asl #16
	ldrb	fp, [r10, #2]	@ zero_extendqisi2
	ldrb	r8, [r10, #6]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #16
	ldrb	r9, [r1, #10]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r3, r3, r9, asl #16
	ldrb	r8, [r1, #3]	@ zero_extendqisi2
	ldrb	r9, [r1, #7]	@ zero_extendqisi2
	orr	r7, r7, fp, asl #16
	ldrb	fp, [r10, #3]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	orr	r7, r7, fp, asl #24
	ldrb	r8, [r10, #7]	@ zero_extendqisi2
	ldrb	fp, [r1, #15]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #24
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #24
	orr	r8, ip, r8, asl #24
	.loc 6 83 0
	ldrb	fp, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	orr	r9, r3, r9, asl #24
	.loc 6 85 0
	add	r3, r10, r5
	.loc 6 82 0
	str	r7, [sp, #592]
	str	r6, [sp, #568]
	str	lr, [sp, #572]
	str	r8, [sp, #596]
	str	r9, [sp, #576]
	.loc 6 83 0
	strb	fp, [sp, #584]
.LVL959:
	.loc 6 82 0
	ldrb	r9, [r10, #8]	@ zero_extendqisi2
	str	r2, [sp, #580]
	ldrb	r2, [r10, #9]	@ zero_extendqisi2
	ldrb	lr, [r1, r5, asl #1]	@ zero_extendqisi2
	ldrb	fp, [r3, #1]	@ zero_extendqisi2
	ldrb	r6, [r3, #12]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #8
	ldrb	fp, [r3, #13]	@ zero_extendqisi2
	ldrb	r8, [r10, #13]	@ zero_extendqisi2
	ldrb	r7, [r3, #5]	@ zero_extendqisi2
	ldrb	ip, [r10, #12]	@ zero_extendqisi2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	orr	r6, r6, fp, asl #8
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	orr	r1, r1, r7, asl #8
	ldrb	r8, [r3, #8]	@ zero_extendqisi2
	ldrb	r7, [r3, #9]	@ zero_extendqisi2
	orr	fp, lr, fp, asl #16
	ldrb	lr, [r3, #6]	@ zero_extendqisi2
	orr	r7, r8, r7, asl #8
	orr	r2, r9, r2, asl #8
	ldrb	r8, [r10, #14]	@ zero_extendqisi2
	ldrb	r9, [r10, #10]	@ zero_extendqisi2
	orr	r1, r1, lr, asl #16
	ldrb	lr, [r3, #10]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #16
	orr	ip, ip, r8, asl #16
	ldrb	r9, [r10, #11]	@ zero_extendqisi2
	ldrb	r8, [r3, #14]	@ zero_extendqisi2
	orr	lr, r7, lr, asl #16
	ldrb	r7, [r10, #15]	@ zero_extendqisi2
	orr	r8, r6, r8, asl #16
	orr	r2, r2, r9, asl #24
	ldrb	r6, [r3, #3]	@ zero_extendqisi2
	str	r2, [sp, #20]
	orr	ip, ip, r7, asl #24
	ldrb	r2, [r3, #7]	@ zero_extendqisi2
	ldrb	r7, [r3, #11]	@ zero_extendqisi2
	orr	fp, fp, r6, asl #24
	ldrb	r6, [r3, #15]	@ zero_extendqisi2
	orr	r1, r1, r2, asl #24
	orr	r7, lr, r7, asl #24
	.loc 6 85 0
	add	r2, r3, r5
	.loc 6 82 0
	ldr	lr, [sp, #20]
	orr	r6, r8, r6, asl #24
	str	lr, [sp, #600]
	str	fp, [sp, #616]
	.loc 6 83 0
	ldrb	lr, [r3, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	fp, r2, r5
	.loc 6 82 0
	str	ip, [sp, #604]
	.loc 6 83 0
	ldrb	ip, [r10, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r1, [sp, #620]
	str	r6, [sp, #628]
	str	r7, [sp, #624]
	.loc 6 83 0
	strb	lr, [sp, #632]
	.loc 6 82 0
	ldrb	r6, [r10, r5, asl #1]	@ zero_extendqisi2
	ldrb	r7, [r3, r5, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r2, #1]	@ zero_extendqisi2
	ldrb	r3, [fp, #4]	@ zero_extendqisi2
	ldrb	r10, [r2, #5]	@ zero_extendqisi2
.LVL960:
	.loc 6 83 0
	strb	ip, [sp, #608]
.LVL961:
	.loc 6 82 0
	ldrb	lr, [fp, #5]	@ zero_extendqisi2
	ldrb	ip, [r2, #4]	@ zero_extendqisi2
	ldrb	r8, [fp, #1]	@ zero_extendqisi2
	ldrb	r1, [r2, #8]	@ zero_extendqisi2
	orr	r6, r6, r9, asl #8
	orr	lr, r3, lr, asl #8
	ldrb	r9, [r2, #9]	@ zero_extendqisi2
	ldrb	r3, [r2, #12]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #8
	ldrb	r10, [r2, #13]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	orr	r1, r1, r9, asl #8
	ldrb	r8, [fp, #2]	@ zero_extendqisi2
	ldrb	r9, [r2, #2]	@ zero_extendqisi2
	orr	r3, r3, r10, asl #8
	ldrb	r10, [fp, #6]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #16
	orr	r6, r6, r9, asl #16
	ldrb	r8, [fp, #3]	@ zero_extendqisi2
	ldrb	r9, [r2, #6]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	ldrb	r10, [r2, #10]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #24
	orr	ip, ip, r9, asl #16
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	ldrb	r9, [r2, #14]	@ zero_extendqisi2
	orr	r1, r1, r10, asl #16
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #24
	orr	r6, r6, r10, asl #24
	ldrb	r8, [r2, #15]	@ zero_extendqisi2
	ldrb	r10, [r2, #11]	@ zero_extendqisi2
	orr	r3, r3, r9, asl #16
	ldrb	r9, [fp, #7]	@ zero_extendqisi2
	str	r7, [sp, #20]
	orr	lr, lr, r9, asl #24
	orr	r1, r1, r10, asl #24
	orr	r3, r3, r8, asl #24
	.loc 6 83 0
	ldrb	r8, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	ldr	r2, [sp, #20]
.LVL962:
	str	r2, [sp, #664]
	str	r6, [sp, #640]
	str	lr, [sp, #668]
	str	ip, [sp, #644]
	str	r1, [sp, #648]
	str	r3, [sp, #652]
	ldrb	r2, [fp, #8]	@ zero_extendqisi2
	ldrb	r1, [fp, #12]	@ zero_extendqisi2
	ldrb	r6, [fp, #13]	@ zero_extendqisi2
	ldrb	r3, [fp, #9]	@ zero_extendqisi2
	ldrb	lr, [fp, #14]	@ zero_extendqisi2
	ldrb	ip, [fp, #10]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r8, [sp, #656]
.LVL963:
	.loc 6 82 0
	orr	r3, r2, r3, asl #8
	ldrb	r8, [fp, #15]	@ zero_extendqisi2
	orr	r2, r1, r6, asl #8
	ldrb	r1, [fp, #11]	@ zero_extendqisi2
	orr	r2, r2, lr, asl #16
	orr	r3, r3, ip, asl #16
	orr	lr, r2, r8, asl #24
	orr	ip, r3, r1, asl #24
.LBE659:
.LBE663:
	.loc 5 697 0 discriminator 1
	add	r8, sp, #24
	add	r10, sp, #280
	mov	r2, #16
	mov	r3, #24
.LBB664:
.LBB665:
	.loc 1 103 0
	mov	r7, r2
	mov	r9, r3
.LBE665:
.LBE664:
	.loc 5 697 0
	mov	r6, r0
.LBB667:
.LBB660:
	.loc 6 83 0
	ldrb	fp, [fp, #16]	@ zero_extendqisi2
.LVL964:
.LBE660:
.LBE667:
	.loc 5 697 0 discriminator 1
	mov	r0, r8
.LVL965:
	mov	r1, r10
.LBB668:
.LBB661:
	.loc 6 82 0
	str	lr, [sp, #676]
	str	ip, [sp, #672]
	.loc 6 83 0
	strb	fp, [sp, #680]
.LVL966:
.LBE661:
.LBE668:
	.loc 5 697 0 discriminator 1
	bl	put_mpeg4_qpel16_v_lowpass(PLT)
.LVL967:
.LBB669:
.LBB666:
	.loc 1 103 0
	mov	r1, r10
	mov	r2, r8
	mov	r0, r6
	mov	r3, r5
	str	r9, [sp]
	str	r7, [sp, #4]
	str	r7, [sp, #8]
	bl	avg_pixels8_l2_8(PLT)
.LVL968:
	.loc 1 103 0 is_stmt 0 discriminator 1
	str	r9, [sp]
	str	r7, [sp, #4]
	str	r7, [sp, #8]
	add	r0, r6, #8
	mov	r1, r4
	mov	r3, r5
	add	r2, sp, #32
	bl	avg_pixels8_l2_8(PLT)
.LVL969:
.LBE666:
.LBE669:
	.loc 5 697 0 is_stmt 1
	add	sp, sp, #692
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.cfi_endproc
.LFE222:
	.size	avg_qpel16_mc01_c, .-avg_qpel16_mc01_c
	.align	2
	.type	avg_qpel16_mc03_c, %function
avg_qpel16_mc03_c:
.LFB224:
	.loc 5 697 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 672
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL970:
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
.LBB674:
.LBB675:
	.loc 6 82 0
	ldrb	r10, [r1, #9]	@ zero_extendqisi2
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
.LBE675:
.LBE674:
	.loc 5 697 0
	mov	r4, r2
.LVL971:
.LBB679:
.LBB676:
	.loc 6 85 0
	add	r3, r1, r2
	.loc 6 82 0
	ldrb	ip, [r1, r2]	@ zero_extendqisi2
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	ldrb	r2, [r1]	@ zero_extendqisi2
.LVL972:
	ldrb	r8, [r3, #1]	@ zero_extendqisi2
	ldrb	fp, [r1, #5]	@ zero_extendqisi2
	ldrb	r9, [r1, #13]	@ zero_extendqisi2
	ldrb	r6, [r1, #4]	@ zero_extendqisi2
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #8
	ldrb	r10, [r1, #2]	@ zero_extendqisi2
	orr	r7, r2, r7, asl #8
	orr	ip, ip, r8, asl #8
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	ldrb	r8, [r3, #2]	@ zero_extendqisi2
	orr	r6, r6, fp, asl #8
	orr	lr, lr, r9, asl #8
	ldrb	fp, [r3, #5]	@ zero_extendqisi2
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	orr	r7, r7, r10, asl #16
	ldrb	r10, [r1, #14]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #8
	orr	ip, ip, r8, asl #16
	ldrb	fp, [r1, #10]	@ zero_extendqisi2
	ldrb	r8, [r3, #3]	@ zero_extendqisi2
	orr	r6, r6, r9, asl #16
	orr	lr, lr, r10, asl #16
	ldrb	r9, [r3, #6]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
.LBE676:
.LBE679:
	.loc 5 697 0
	sub	sp, sp, #692
	.cfi_def_cfa_offset 728
.LVL973:
.LBB680:
.LBB677:
	.loc 6 82 0
	orr	ip, ip, r8, asl #24
	orr	r6, r6, r10, asl #24
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	ldrb	r10, [r3, #7]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #16
	orr	r2, r2, r9, asl #16
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	str	ip, [sp, #20]
	orr	r7, r7, fp, asl #24
	add	ip, sp, #288
	.loc 6 85 0
	add	fp, r3, r4
	.loc 6 82 0
	orr	r5, r5, r9, asl #24
	orr	lr, lr, r8, asl #24
	ldr	r9, [sp, #20]
	orr	r2, r2, r10, asl #24
	.loc 6 83 0
	ldrb	r8, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	stmia	ip, {r5, lr}
	str	r9, [ip, #16]
	str	r7, [ip, #-8]
	str	r6, [ip, #-4]
	str	r2, [ip, #20]
	ldrb	r5, [r1, r4, asl #1]	@ zero_extendqisi2
	ldrb	r10, [fp, #1]	@ zero_extendqisi2
	ldrb	r7, [fp, #5]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r8, [sp, #296]
.LVL974:
	.loc 6 82 0
	ldrb	lr, [r3, #12]	@ zero_extendqisi2
	ldrb	r8, [r3, #13]	@ zero_extendqisi2
	ldrb	r1, [fp, #4]	@ zero_extendqisi2
.LVL975:
	ldrb	r6, [fp, #8]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #8
	ldrb	r10, [fp, #9]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	orr	r6, r6, r10, asl #8
	ldrb	r8, [fp, #12]	@ zero_extendqisi2
	ldrb	r10, [fp, #2]	@ zero_extendqisi2
	orr	r1, r1, r7, asl #8
	ldrb	r7, [fp, #13]	@ zero_extendqisi2
	ldrb	r9, [r3, #8]	@ zero_extendqisi2
	ldrb	r2, [r3, #9]	@ zero_extendqisi2
	orr	r7, r8, r7, asl #8
	orr	r10, r5, r10, asl #16
	ldrb	r8, [r3, #14]	@ zero_extendqisi2
	ldrb	r5, [fp, #6]	@ zero_extendqisi2
	orr	r2, r9, r2, asl #8
	ldrb	r9, [r3, #10]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #16
	orr	r1, r1, r5, asl #16
	ldrb	r8, [fp, #10]	@ zero_extendqisi2
	ldrb	r5, [fp, #14]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #16
	ldrb	r9, [r3, #11]	@ zero_extendqisi2
	orr	r8, r6, r8, asl #16
	orr	r5, r7, r5, asl #16
	ldrb	r6, [fp, #3]	@ zero_extendqisi2
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	orr	r9, r2, r9, asl #24
	ldrb	r2, [fp, #7]	@ zero_extendqisi2
	orr	r10, r10, r6, asl #24
	orr	lr, lr, r7, asl #24
	ldrb	r6, [fp, #11]	@ zero_extendqisi2
	ldrb	r7, [fp, #15]	@ zero_extendqisi2
	orr	r1, r1, r2, asl #24
	.loc 6 85 0
	add	r2, fp, r4
	.loc 6 82 0
	orr	r6, r8, r6, asl #24
	orr	r7, r5, r7, asl #24
	.loc 6 83 0
	ldrb	r8, [fp, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r9, [ip, #24]
	.loc 6 85 0
	add	r9, r2, r4
	.loc 6 83 0
	ldrb	r5, [r3, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r10, [ip, #40]
	str	lr, [ip, #28]
	str	r1, [ip, #44]
	str	r6, [ip, #48]
	str	r7, [ip, #52]
	.loc 6 83 0
	strb	r8, [sp, #344]
	.loc 6 82 0
	ldrb	r7, [fp, r4, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r9, #1]	@ zero_extendqisi2
	ldrb	r1, [r3, r4, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r2, #9]	@ zero_extendqisi2
	ldrb	r3, [r2, #4]	@ zero_extendqisi2
.LVL976:
	.loc 6 83 0
	strb	r5, [sp, #320]
.LVL977:
	.loc 6 82 0
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	ldrb	lr, [r2, #12]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	ldrb	r8, [r2, #13]	@ zero_extendqisi2
	orr	r6, r3, r6, asl #8
	orr	r5, r5, r10, asl #8
	ldrb	r3, [r9, #4]	@ zero_extendqisi2
	ldrb	r10, [r9, #5]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	ldrb	r8, [r9, #2]	@ zero_extendqisi2
	ldrb	fp, [r2, #1]	@ zero_extendqisi2
	orr	r3, r3, r10, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r10, [r2, #6]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #8
	orr	r6, r6, r10, asl #16
	ldrb	fp, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #14]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	ldrb	r8, [r9, #6]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	fp, [r2, #3]	@ zero_extendqisi2
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	ldrb	r10, [r9, #3]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #24
	orr	r7, r7, r10, asl #24
	ldrb	fp, [r2, #11]	@ zero_extendqisi2
	ldrb	r10, [r2, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [r9, #7]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #24
	orr	lr, lr, r10, asl #24
	orr	r8, r3, r8, asl #24
	.loc 6 83 0
	ldrb	fp, [r2, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	r3, r9, r4
	.loc 6 82 0
	ldrb	r10, [r9, #8]	@ zero_extendqisi2
	str	r1, [ip, #64]
	str	r7, [ip, #88]
	str	r6, [ip, #68]
	str	r5, [ip, #72]
	str	lr, [ip, #76]
	str	r8, [ip, #92]
	.loc 6 83 0
	strb	fp, [sp, #368]
.LVL978:
	.loc 6 82 0
	ldrb	r5, [r2, r4, asl #1]	@ zero_extendqisi2
	ldrb	fp, [r3, #1]	@ zero_extendqisi2
	ldrb	r8, [r9, #13]	@ zero_extendqisi2
	ldrb	r7, [r3, #5]	@ zero_extendqisi2
	ldrb	lr, [r9, #12]	@ zero_extendqisi2
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	ldrb	r6, [r3, #8]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #8
	ldrb	fp, [r3, #9]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	orr	r6, r6, fp, asl #8
	ldrb	r8, [r3, #12]	@ zero_extendqisi2
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #8
	ldrb	r7, [r3, #13]	@ zero_extendqisi2
	ldrb	r1, [r9, #9]	@ zero_extendqisi2
	orr	r7, r8, r7, asl #8
	orr	fp, r5, fp, asl #16
	ldrb	r8, [r9, #14]	@ zero_extendqisi2
	ldrb	r5, [r3, #6]	@ zero_extendqisi2
	orr	r1, r10, r1, asl #8
	ldrb	r10, [r9, #10]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #16
	orr	r2, r2, r5, asl #16
	ldrb	r8, [r3, #10]	@ zero_extendqisi2
	ldrb	r5, [r3, #14]	@ zero_extendqisi2
	orr	r1, r1, r10, asl #16
	ldrb	r10, [r9, #11]	@ zero_extendqisi2
	orr	r8, r6, r8, asl #16
	orr	r5, r7, r5, asl #16
	ldrb	r6, [r3, #3]	@ zero_extendqisi2
	ldrb	r7, [r9, #15]	@ zero_extendqisi2
	orr	r10, r1, r10, asl #24
	ldrb	r1, [r3, #7]	@ zero_extendqisi2
	orr	fp, fp, r6, asl #24
	orr	lr, lr, r7, asl #24
	ldrb	r6, [r3, #11]	@ zero_extendqisi2
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	orr	r2, r2, r1, asl #24
	.loc 6 85 0
	add	r1, r3, r4
	.loc 6 82 0
	orr	r6, r8, r6, asl #24
	orr	r7, r5, r7, asl #24
	.loc 6 83 0
	ldrb	r8, [r3, #16]	@ zero_extendqisi2
	ldrb	r5, [r9, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r10, [ip, #96]
	.loc 6 85 0
	add	r10, r1, r4
	.loc 6 82 0
	str	lr, [ip, #100]
	str	r7, [ip, #124]
	str	fp, [ip, #112]
	str	r6, [ip, #120]
	.loc 6 83 0
	strb	r8, [sp, #416]
	strb	r5, [sp, #392]
.LVL979:
	.loc 6 82 0
	str	r2, [ip, #116]
	ldrb	r2, [r9, r4, asl #1]	@ zero_extendqisi2
	ldrb	r7, [r3, r4, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r10, #1]	@ zero_extendqisi2
	ldrb	r3, [r1, #4]	@ zero_extendqisi2
	ldrb	r9, [r1, #9]	@ zero_extendqisi2
	ldrb	r6, [r1, #5]	@ zero_extendqisi2
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	ldrb	r8, [r1, #13]	@ zero_extendqisi2
	orr	r6, r3, r6, asl #8
	orr	r5, r5, r9, asl #8
	ldrb	r3, [r10, #4]	@ zero_extendqisi2
	ldrb	r9, [r10, #5]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	ldrb	r8, [r10, #2]	@ zero_extendqisi2
	ldrb	fp, [r1, #1]	@ zero_extendqisi2
	orr	r3, r3, r9, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	ldrb	r8, [r1, #10]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	fp, [r1, #2]	@ zero_extendqisi2
	ldrb	r9, [r1, #14]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	ldrb	r8, [r10, #6]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	r8, [r1, #7]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #16
	ldrb	r9, [r10, #3]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #24
	orr	r7, r7, r9, asl #24
	ldrb	fp, [r1, #11]	@ zero_extendqisi2
	ldrb	r9, [r1, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [r10, #7]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #24
	orr	lr, lr, r9, asl #24
	.loc 6 83 0
	ldrb	fp, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	orr	r8, r3, r8, asl #24
	.loc 6 85 0
	add	r3, r10, r4
	.loc 6 82 0
	str	lr, [ip, #148]
	ldrb	r9, [r10, #8]	@ zero_extendqisi2
	str	r7, [ip, #160]
	str	r6, [ip, #140]
	str	r5, [ip, #144]
	str	r8, [ip, #164]
	.loc 6 83 0
	strb	fp, [sp, #440]
.LVL980:
	.loc 6 82 0
	str	r2, [ip, #136]
	ldrb	r2, [r10, #9]	@ zero_extendqisi2
	ldrb	r5, [r1, r4, asl #1]	@ zero_extendqisi2
	ldrb	fp, [r3, #1]	@ zero_extendqisi2
	ldrb	r8, [r10, #13]	@ zero_extendqisi2
	ldrb	r7, [r3, #5]	@ zero_extendqisi2
	ldrb	lr, [r10, #12]	@ zero_extendqisi2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	ldrb	r6, [r3, #8]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #8
	ldrb	fp, [r3, #9]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	orr	r6, r6, fp, asl #8
	ldrb	r8, [r3, #12]	@ zero_extendqisi2
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	orr	r1, r1, r7, asl #8
	ldrb	r7, [r3, #13]	@ zero_extendqisi2
	orr	fp, r5, fp, asl #16
	orr	r7, r8, r7, asl #8
	ldrb	r5, [r3, #6]	@ zero_extendqisi2
	ldrb	r8, [r10, #14]	@ zero_extendqisi2
	orr	r2, r9, r2, asl #8
	ldrb	r9, [r10, #10]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #16
	orr	r1, r1, r5, asl #16
	ldrb	r8, [r3, #10]	@ zero_extendqisi2
	ldrb	r5, [r3, #14]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #16
	ldrb	r9, [r10, #11]	@ zero_extendqisi2
	orr	r8, r6, r8, asl #16
	orr	r5, r7, r5, asl #16
	ldrb	r6, [r3, #3]	@ zero_extendqisi2
	ldrb	r7, [r10, #15]	@ zero_extendqisi2
	orr	r9, r2, r9, asl #24
	ldrb	r2, [r3, #7]	@ zero_extendqisi2
	orr	fp, fp, r6, asl #24
	orr	lr, lr, r7, asl #24
	ldrb	r6, [r3, #11]	@ zero_extendqisi2
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	orr	r1, r1, r2, asl #24
	.loc 6 85 0
	add	r2, r3, r4
	.loc 6 82 0
	orr	r6, r8, r6, asl #24
	orr	r7, r5, r7, asl #24
	.loc 6 83 0
	ldrb	r8, [r3, #16]	@ zero_extendqisi2
	ldrb	r5, [r10, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r9, [ip, #168]
	.loc 6 85 0
	add	r9, r2, r4
	.loc 6 82 0
	str	lr, [ip, #172]
	str	r7, [ip, #196]
	str	fp, [ip, #184]
	str	r6, [ip, #192]
	.loc 6 83 0
	strb	r8, [sp, #488]
	strb	r5, [sp, #464]
.LVL981:
	.loc 6 82 0
	str	r1, [ip, #188]
	ldrb	r1, [r10, r4, asl #1]	@ zero_extendqisi2
	ldrb	r7, [r3, r4, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r9, #1]	@ zero_extendqisi2
	ldrb	r3, [r2, #4]	@ zero_extendqisi2
	ldrb	r10, [r2, #9]	@ zero_extendqisi2
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	ldrb	lr, [r2, #12]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	ldrb	r8, [r2, #13]	@ zero_extendqisi2
	orr	r6, r3, r6, asl #8
	orr	r5, r5, r10, asl #8
	ldrb	r3, [r9, #4]	@ zero_extendqisi2
	ldrb	r10, [r9, #5]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	ldrb	r8, [r9, #2]	@ zero_extendqisi2
	ldrb	fp, [r2, #1]	@ zero_extendqisi2
	orr	r3, r3, r10, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r10, [r2, #6]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #8
	orr	r6, r6, r10, asl #16
	ldrb	fp, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #14]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	ldrb	r8, [r9, #6]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	fp, [r2, #3]	@ zero_extendqisi2
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	ldrb	r10, [r9, #3]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #24
	orr	r7, r7, r10, asl #24
	ldrb	fp, [r2, #11]	@ zero_extendqisi2
	ldrb	r10, [r2, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [r9, #7]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #24
	orr	lr, lr, r10, asl #24
	.loc 6 83 0
	ldrb	fp, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	orr	r8, r3, r8, asl #24
	.loc 6 85 0
	add	r3, r9, r4
	.loc 6 82 0
	str	lr, [ip, #220]
	ldrb	r10, [r9, #8]	@ zero_extendqisi2
	str	r7, [ip, #232]
	str	r6, [ip, #212]
	str	r5, [ip, #216]
	str	r8, [ip, #236]
	.loc 6 83 0
	strb	fp, [sp, #512]
.LVL982:
	.loc 6 82 0
	str	r1, [ip, #208]
	ldrb	r1, [r9, #9]	@ zero_extendqisi2
	ldrb	r5, [r2, r4, asl #1]	@ zero_extendqisi2
	ldrb	fp, [r3, #1]	@ zero_extendqisi2
	ldrb	r8, [r9, #13]	@ zero_extendqisi2
	ldrb	r7, [r3, #5]	@ zero_extendqisi2
	ldrb	lr, [r9, #12]	@ zero_extendqisi2
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	ldrb	r6, [r3, #8]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #8
	ldrb	fp, [r3, #9]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	orr	r6, r6, fp, asl #8
	ldrb	r8, [r3, #12]	@ zero_extendqisi2
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #8
	ldrb	r7, [r3, #13]	@ zero_extendqisi2
	orr	fp, r5, fp, asl #16
	orr	r7, r8, r7, asl #8
	ldrb	r5, [r3, #6]	@ zero_extendqisi2
	ldrb	r8, [r9, #14]	@ zero_extendqisi2
	orr	r1, r10, r1, asl #8
	orr	lr, lr, r8, asl #16
	ldrb	r10, [r9, #10]	@ zero_extendqisi2
	ldrb	r8, [r3, #10]	@ zero_extendqisi2
	orr	r2, r2, r5, asl #16
	ldrb	r5, [r3, #14]	@ zero_extendqisi2
	orr	r1, r1, r10, asl #16
	orr	r8, r6, r8, asl #16
	ldrb	r10, [r9, #11]	@ zero_extendqisi2
	ldrb	r6, [r3, #3]	@ zero_extendqisi2
	orr	r5, r7, r5, asl #16
	ldrb	r7, [r9, #15]	@ zero_extendqisi2
	orr	r10, r1, r10, asl #24
	orr	fp, fp, r6, asl #24
	ldrb	r1, [r3, #7]	@ zero_extendqisi2
	ldrb	r6, [r3, #11]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #24
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	orr	r2, r2, r1, asl #24
	orr	r6, r8, r6, asl #24
	.loc 6 85 0
	add	r1, r3, r4
	.loc 6 83 0
	ldrb	r8, [r3, #16]	@ zero_extendqisi2
	.loc 6 82 0
	orr	r7, r5, r7, asl #24
	.loc 6 83 0
	ldrb	r5, [r9, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	lr, [ip, #244]
	str	r10, [ip, #240]
	str	fp, [sp, #544]
	str	r2, [sp, #548]
	str	r6, [sp, #552]
	str	r7, [sp, #556]
	.loc 6 83 0
	strb	r8, [sp, #560]
	strb	r5, [sp, #536]
.LVL983:
	.loc 6 82 0
	ldrb	r5, [r9, r4, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r3, r4, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #5]	@ zero_extendqisi2
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	ldrb	r2, [r1, #4]	@ zero_extendqisi2
	.loc 6 85 0
	add	r10, r1, r4
	.loc 6 82 0
	ldrb	r7, [r10, #1]	@ zero_extendqisi2
	ldrb	fp, [r1, #13]	@ zero_extendqisi2
	ldrb	r8, [r10, #5]	@ zero_extendqisi2
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	ldrb	ip, [r10, #4]	@ zero_extendqisi2
	orr	r5, r5, r3, asl #8
	orr	r2, r2, r9, asl #8
	ldrb	r3, [r1, #8]	@ zero_extendqisi2
	ldrb	r9, [r1, #9]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #8
	orr	lr, lr, fp, asl #8
	ldrb	r7, [r10, #2]	@ zero_extendqisi2
	ldrb	fp, [r1, #2]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	orr	r3, r3, r9, asl #8
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	r9, [r1, #14]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #16
	orr	r5, r5, fp, asl #16
	ldrb	r7, [r10, #3]	@ zero_extendqisi2
	ldrb	fp, [r10, #6]	@ zero_extendqisi2
	orr	r2, r2, r8, asl #16
	orr	lr, lr, r9, asl #16
	ldrb	r8, [r1, #10]	@ zero_extendqisi2
	ldrb	r9, [r1, #3]	@ zero_extendqisi2
	orr	ip, ip, fp, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #24
	orr	r5, r5, r9, asl #24
	ldrb	r7, [r10, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #24
	orr	lr, lr, r8, asl #24
	orr	r7, ip, r7, asl #24
	.loc 6 83 0
	ldrb	r8, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	orr	r9, r3, r9, asl #24
	.loc 6 85 0
	add	r3, r10, r4
	.loc 6 82 0
	str	r6, [sp, #592]
	str	r5, [sp, #568]
	str	lr, [sp, #580]
	str	r7, [sp, #596]
	str	r9, [sp, #576]
	.loc 6 83 0
	strb	r8, [sp, #584]
.LVL984:
	.loc 6 82 0
	ldrb	r9, [r10, #8]	@ zero_extendqisi2
	str	r2, [sp, #572]
	ldrb	r2, [r10, #9]	@ zero_extendqisi2
	ldrb	r5, [r1, r4, asl #1]	@ zero_extendqisi2
	ldrb	fp, [r3, #1]	@ zero_extendqisi2
	ldrb	r8, [r10, #13]	@ zero_extendqisi2
	ldrb	lr, [r10, #12]	@ zero_extendqisi2
	ldrb	r7, [r3, #5]	@ zero_extendqisi2
	ldrb	r6, [r3, #13]	@ zero_extendqisi2
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
	ldrb	r1, [r3, #12]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #8
	orr	lr, lr, r8, asl #8
	ldrb	fp, [r3, #8]	@ zero_extendqisi2
	ldrb	r8, [r3, #9]	@ zero_extendqisi2
	orr	r2, r9, r2, asl #8
	ldrb	r9, [r10, #10]	@ zero_extendqisi2
	orr	ip, ip, r7, asl #8
	orr	r1, r1, r6, asl #8
	ldrb	r7, [r3, #2]	@ zero_extendqisi2
	ldrb	r6, [r10, #14]	@ zero_extendqisi2
	orr	fp, fp, r8, asl #8
	ldrb	r8, [r3, #6]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #16
	ldrb	r9, [r10, #11]	@ zero_extendqisi2
	orr	r5, r5, r7, asl #16
	orr	lr, lr, r6, asl #16
	ldrb	r7, [r3, #14]	@ zero_extendqisi2
	ldrb	r6, [r3, #10]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	ldrb	r8, [r3, #3]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #24
	str	r2, [sp, #20]
	orr	r5, r5, r8, asl #24
	ldrb	r2, [r3, #15]	@ zero_extendqisi2
	ldrb	r8, [r3, #11]	@ zero_extendqisi2
	orr	r1, r1, r7, asl #16
	orr	fp, fp, r6, asl #16
	ldrb	r7, [r10, #15]	@ zero_extendqisi2
	ldrb	r6, [r3, #7]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #24
	orr	ip, ip, r6, asl #24
	.loc 6 85 0
	add	r7, r3, r4
	.loc 6 82 0
	orr	r1, r1, r2, asl #24
	orr	fp, fp, r8, asl #24
	ldr	r2, [sp, #20]
	.loc 6 83 0
	ldrb	r6, [r3, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r5, [sp, #616]
	.loc 6 83 0
	ldrb	r5, [r10, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r2, [sp, #600]
	str	lr, [sp, #604]
	str	ip, [sp, #620]
	str	r1, [sp, #628]
	str	fp, [sp, #624]
	.loc 6 83 0
	strb	r6, [sp, #632]
	strb	r5, [sp, #608]
.LVL985:
	.loc 6 82 0
	ldrb	ip, [r7, #4]	@ zero_extendqisi2
	ldrb	r5, [r10, r4, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r7, #5]	@ zero_extendqisi2
	.loc 6 85 0
	add	r2, r7, r4
	.loc 6 82 0
	ldrb	r6, [r3, r4, asl #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #1]	@ zero_extendqisi2
	ldrb	r8, [r2, #1]	@ zero_extendqisi2
	ldrb	fp, [r2, #5]	@ zero_extendqisi2
	ldrb	r9, [r7, #9]	@ zero_extendqisi2
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
	ldrb	r1, [r7, #8]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #8
	ldrb	r10, [r7, #2]	@ zero_extendqisi2
	orr	r5, r5, r3, asl #8
	orr	r6, r6, r8, asl #8
	ldrb	r3, [r7, #12]	@ zero_extendqisi2
	ldrb	r8, [r2, #2]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #8
	orr	r1, r1, r9, asl #8
	ldrb	fp, [r7, #13]	@ zero_extendqisi2
	ldrb	r9, [r2, #6]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #16
	ldrb	r10, [r7, #10]	@ zero_extendqisi2
	orr	r3, r3, fp, asl #8
	orr	r6, r6, r8, asl #16
	ldrb	fp, [r7, #6]	@ zero_extendqisi2
	ldrb	r8, [r2, #3]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #16
	orr	r1, r1, r10, asl #16
	ldrb	r9, [r7, #14]	@ zero_extendqisi2
	ldrb	r10, [r2, #7]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	orr	lr, lr, r10, asl #24
	ldrb	r8, [r7, #11]	@ zero_extendqisi2
	ldrb	r10, [r7, #15]	@ zero_extendqisi2
	orr	ip, ip, fp, asl #16
	orr	r3, r3, r9, asl #16
	ldrb	fp, [r7, #3]	@ zero_extendqisi2
	ldrb	r9, [r7, #7]	@ zero_extendqisi2
	str	r6, [sp, #20]
	orr	r5, r5, fp, asl #24
	orr	ip, ip, r9, asl #24
	orr	r1, r1, r8, asl #24
	orr	r3, r3, r10, asl #24
	ldr	r8, [sp, #20]
	.loc 6 83 0
	ldrb	r7, [r7, #16]	@ zero_extendqisi2
.LVL986:
	.loc 6 82 0
	str	r8, [sp, #664]
	str	r5, [sp, #640]
	str	lr, [sp, #668]
	str	ip, [sp, #644]
	str	r1, [sp, #648]
	str	r3, [sp, #652]
	ldrb	r1, [r2, #8]	@ zero_extendqisi2
	ldrb	r5, [r2, #12]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r7, [sp, #656]
.LVL987:
	.loc 6 82 0
	ldrb	r3, [r2, #9]	@ zero_extendqisi2
	ldrb	r7, [r2, #13]	@ zero_extendqisi2
	ldrb	lr, [r2, #14]	@ zero_extendqisi2
	ldrb	ip, [r2, #10]	@ zero_extendqisi2
	ldrb	r8, [r2, #15]	@ zero_extendqisi2
	orr	r3, r1, r3, asl #8
	orr	r1, r5, r7, asl #8
	ldrb	r7, [r2, #11]	@ zero_extendqisi2
	orr	r1, r1, lr, asl #16
	orr	r3, r3, ip, asl #16
	orr	lr, r1, r8, asl #24
	orr	ip, r3, r7, asl #24
	.loc 6 83 0
	ldrb	r10, [r2, #16]	@ zero_extendqisi2
.LBE677:
.LBE680:
	.loc 5 697 0 discriminator 1
	add	r8, sp, #24
	mov	r2, #16
.LVL988:
	mov	r3, #24
.LBB681:
.LBB682:
	.loc 1 103 0
	mov	r7, r2
	mov	r9, r3
.LBE682:
.LBE681:
	.loc 5 697 0
	mov	r5, r0
	.loc 5 697 0 is_stmt 0 discriminator 1
	add	r1, sp, #280
	mov	r0, r8
.LVL989:
.LBB684:
.LBB678:
	.loc 6 82 0 is_stmt 1
	str	lr, [sp, #676]
	str	ip, [sp, #672]
	.loc 6 83 0
	strb	r10, [sp, #680]
.LVL990:
.LBE678:
.LBE684:
	.loc 5 697 0 discriminator 1
	bl	put_mpeg4_qpel16_v_lowpass(PLT)
.LVL991:
.LBB685:
.LBB683:
	.loc 1 103 0
	mov	r2, r8
	mov	r0, r5
	mov	r3, r4
	add	r1, sp, #304
.LVL992:
	str	r9, [sp]
	str	r7, [sp, #4]
	str	r7, [sp, #8]
	bl	avg_pixels8_l2_8(PLT)
.LVL993:
	.loc 1 103 0 is_stmt 0 discriminator 1
	str	r9, [sp]
	str	r7, [sp, #4]
	str	r7, [sp, #8]
	add	r0, r5, #8
	mov	r3, r4
	add	r1, sp, #312
	add	r2, sp, #32
	bl	avg_pixels8_l2_8(PLT)
.LVL994:
.LBE683:
.LBE685:
	.loc 5 697 0 is_stmt 1
	add	sp, sp, #692
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.cfi_endproc
.LFE224:
	.size	avg_qpel16_mc03_c, .-avg_qpel16_mc03_c
	.align	2
	.type	put_no_rnd_qpel8_mc10_c, %function
put_no_rnd_qpel8_mc10_c:
.LFB152:
	.loc 5 696 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL995:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	mov	r6, r2
	sub	sp, sp, #72
	.cfi_def_cfa_offset 96
	.loc 5 696 0
	mov	r2, #8
.LVL996:
	mov	r4, r1
	mov	r5, r0
	mov	r3, r6
	add	r0, sp, r2
.LVL997:
	str	r2, [sp]
	bl	put_no_rnd_mpeg4_qpel8_h_lowpass(PLT)
.LVL998:
.LBB693:
.LBB694:
.LBB695:
	.loc 4 219 0 discriminator 4
	ldrb	r1, [r4]	@ zero_extendqisi2
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	orr	r2, r1, r2, asl #8
	orr	r2, r2, r3, asl #16
	ldr	r1, [sp, #8]
.LBB696:
.LBB697:
	.loc 2 38 0
	ldr	ip, .L210
.LBE697:
.LBE696:
	.loc 4 219 0 discriminator 4
	orr	r3, r2, r0, asl #24
.LVL999:
.LBB712:
.LBB698:
	.loc 2 38 0
	eor	r2, r1, r3
	and	r2, r2, ip
	and	r3, r3, r1
.LVL1000:
	add	r3, r3, r2, lsr #1
.LBE698:
.LBE712:
	.loc 4 219 0 discriminator 4
	str	r3, [r5]
.LVL1001:
	ldrb	r1, [r4, #4]	@ zero_extendqisi2
.LVL1002:
	ldrb	r2, [r4, #5]	@ zero_extendqisi2
	ldrb	r3, [r4, #6]	@ zero_extendqisi2
	ldrb	r0, [r4, #7]	@ zero_extendqisi2
	orr	r2, r1, r2, asl #8
	orr	r2, r2, r3, asl #16
	ldr	r1, [sp, #12]
	orr	r3, r2, r0, asl #24
.LVL1003:
.LBB713:
.LBB714:
	.loc 2 38 0
	eor	r2, r1, r3
	and	r2, r2, ip
	and	r3, r3, r1
.LVL1004:
.LBE714:
.LBE713:
	.loc 4 219 0 discriminator 4
	mov	r0, r4
.LVL1005:
.LBB729:
.LBB715:
	.loc 2 38 0
	add	r3, r3, r2, lsr #1
.LBE715:
.LBE729:
	.loc 4 219 0 discriminator 4
	str	r3, [r5, #4]
.LVL1006:
	ldrb	r1, [r0, r6]!	@ zero_extendqisi2
.LVL1007:
	ldr	lr, [sp, #16]
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	ldrb	r3, [r0, #2]	@ zero_extendqisi2
	orr	r2, r1, r2, asl #8
	ldrb	r1, [r0, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r1, asl #24
.LVL1008:
.LBB730:
.LBB699:
	.loc 2 38 0
	eor	r2, lr, r3
	and	r2, r2, ip
	and	r3, r3, lr
.LVL1009:
.LBE699:
.LBE730:
	.loc 4 219 0 discriminator 4
	mov	r0, r4
.LVL1010:
	add	lr, r6, #4
.LVL1011:
.LBB731:
.LBB700:
	.loc 2 38 0
	add	r3, r3, r2, lsr #1
.LBE700:
.LBE731:
	.loc 4 219 0 discriminator 4
	str	r3, [r5, r6]
.LVL1012:
	ldrb	r1, [r0, lr]!	@ zero_extendqisi2
	ldr	r7, [sp, #20]
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	ldrb	r3, [r0, #2]	@ zero_extendqisi2
	orr	r2, r1, r2, asl #8
	ldrb	r1, [r0, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r1, asl #24
.LVL1013:
.LBB732:
.LBB716:
	.loc 2 38 0
	eor	r2, r7, r3
.LBE716:
.LBE732:
	.loc 4 219 0 discriminator 4
	mov	r1, r6, asl #1
.LBB733:
.LBB717:
	.loc 2 38 0
	and	r2, r2, ip
	and	r3, r3, r7
.LVL1014:
	add	r3, r3, r2, lsr #1
.LBE717:
.LBE733:
	.loc 4 219 0 discriminator 4
	add	r7, r4, r1
.LVL1015:
	str	r3, [r5, lr]
.LVL1016:
	ldrb	r0, [r4, r6, asl #1]	@ zero_extendqisi2
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	ldrb	lr, [r7, #3]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	orr	r2, r2, r3, asl #16
	ldr	r0, [sp, #24]
	orr	r3, r2, lr, asl #24
.LVL1017:
.LBB734:
.LBB701:
	.loc 2 38 0
	eor	r2, r0, r3
	and	r2, r2, ip
	and	r3, r3, r0
.LVL1018:
.LBE701:
.LBE734:
	.loc 4 219 0 discriminator 4
	mov	r7, r4
.LVL1019:
	add	lr, r1, #4
.LVL1020:
.LBB735:
.LBB702:
	.loc 2 38 0
	add	r3, r3, r2, lsr #1
.LBE702:
.LBE735:
	.loc 4 219 0 discriminator 4
	str	r3, [r5, r6, asl #1]
.LVL1021:
	ldrb	r0, [r7, lr]!	@ zero_extendqisi2
.LVL1022:
	add	r1, r1, r6
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r7, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	ldr	r0, [sp, #28]
	orr	r3, r2, r7, asl #24
.LVL1023:
.LBB736:
.LBB718:
	.loc 2 38 0
	eor	r2, r0, r3
	and	r2, r2, ip
	and	r3, r3, r0
.LVL1024:
.LBE718:
.LBE736:
	.loc 4 219 0 discriminator 4
	mov	r7, r4
.LVL1025:
.LBB737:
.LBB719:
	.loc 2 38 0
	add	r3, r3, r2, lsr #1
.LBE719:
.LBE737:
	.loc 4 219 0 discriminator 4
	str	r3, [r5, lr]
.LVL1026:
	ldrb	r0, [r7, r1]!	@ zero_extendqisi2
.LVL1027:
	ldr	lr, [sp, #32]
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1028:
.LBB738:
.LBB703:
	.loc 2 38 0
	eor	r2, lr, r3
	and	r2, r2, ip
	and	r3, r3, lr
.LVL1029:
.LBE703:
.LBE738:
	.loc 4 219 0 discriminator 4
	mov	r7, r4
.LVL1030:
	add	lr, r1, #4
.LVL1031:
.LBB739:
.LBB704:
	.loc 2 38 0
	add	r3, r3, r2, lsr #1
.LBE704:
.LBE739:
	.loc 4 219 0 discriminator 4
	str	r3, [r5, r1]
.LVL1032:
	ldrb	r0, [r7, lr]!	@ zero_extendqisi2
	ldr	r8, [sp, #36]
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1033:
.LBB740:
.LBB720:
	.loc 2 38 0
	eor	r2, r8, r3
	and	r2, r2, ip
	and	r3, r3, r8
.LVL1034:
.LBE720:
.LBE740:
	.loc 4 219 0 discriminator 4
	mov	r7, r4
.LVL1035:
	add	r1, r1, r6
.LBB741:
.LBB721:
	.loc 2 38 0
	add	r3, r3, r2, lsr #1
.LBE721:
.LBE741:
	.loc 4 219 0 discriminator 4
	str	r3, [r5, lr]
.LVL1036:
	ldrb	r0, [r7, r1]!	@ zero_extendqisi2
	ldr	lr, [sp, #40]
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1037:
.LBB742:
.LBB705:
	.loc 2 38 0
	eor	r2, lr, r3
	and	r2, r2, ip
	and	r3, r3, lr
.LVL1038:
.LBE705:
.LBE742:
	.loc 4 219 0 discriminator 4
	mov	r7, r4
.LVL1039:
	add	lr, r1, #4
.LVL1040:
.LBB743:
.LBB706:
	.loc 2 38 0
	add	r3, r3, r2, lsr #1
.LBE706:
.LBE743:
	.loc 4 219 0 discriminator 4
	str	r3, [r5, r1]
.LVL1041:
	ldrb	r0, [r7, lr]!	@ zero_extendqisi2
	ldr	r8, [sp, #44]
.LVL1042:
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1043:
.LBB744:
.LBB722:
	.loc 2 38 0
	eor	r2, r8, r3
	and	r2, r2, ip
	and	r3, r3, r8
.LVL1044:
.LBE722:
.LBE744:
	.loc 4 219 0 discriminator 4
	mov	r7, r4
.LVL1045:
	add	r1, r1, r6
.LBB745:
.LBB723:
	.loc 2 38 0
	add	r3, r3, r2, lsr #1
.LBE723:
.LBE745:
	.loc 4 219 0 discriminator 4
	str	r3, [r5, lr]
.LVL1046:
	ldrb	r0, [r7, r1]!	@ zero_extendqisi2
	ldr	lr, [sp, #48]
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1047:
.LBB746:
.LBB707:
	.loc 2 38 0
	eor	r2, lr, r3
	and	r2, r2, ip
	and	r3, r3, lr
.LVL1048:
.LBE707:
.LBE746:
	.loc 4 219 0 discriminator 4
	mov	r7, r4
.LVL1049:
	add	lr, r1, #4
.LVL1050:
.LBB747:
.LBB708:
	.loc 2 38 0
	add	r3, r3, r2, lsr #1
.LBE708:
.LBE747:
	.loc 4 219 0 discriminator 4
	str	r3, [r5, r1]
.LVL1051:
	ldrb	r0, [r7, lr]!	@ zero_extendqisi2
	ldr	r8, [sp, #52]
.LVL1052:
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1053:
.LBB748:
.LBB724:
	.loc 2 38 0
	eor	r2, r8, r3
	and	r2, r2, ip
	and	r3, r3, r8
.LVL1054:
.LBE724:
.LBE748:
	.loc 4 219 0 discriminator 4
	mov	r7, r4
.LVL1055:
	add	r1, r1, r6
.LBB749:
.LBB725:
	.loc 2 38 0
	add	r3, r3, r2, lsr #1
.LBE725:
.LBE749:
	.loc 4 219 0 discriminator 4
	str	r3, [r5, lr]
.LVL1056:
	ldrb	r0, [r7, r1]!	@ zero_extendqisi2
	ldr	lr, [sp, #56]
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1057:
.LBB750:
.LBB709:
	.loc 2 38 0
	eor	r2, lr, r3
	and	r2, r2, ip
	and	r3, r3, lr
.LVL1058:
.LBE709:
.LBE750:
	.loc 4 219 0 discriminator 4
	mov	r7, r4
.LVL1059:
.LBB751:
.LBB710:
	.loc 2 38 0
	add	r3, r3, r2, lsr #1
.LBE710:
.LBE751:
	.loc 4 219 0 discriminator 4
	add	r2, r1, #4
	str	r3, [r5, r1]
.LVL1060:
	ldrb	r3, [r7, r2]!	@ zero_extendqisi2
	ldr	r8, [sp, #60]
.LVL1061:
	ldrb	lr, [r7, #1]	@ zero_extendqisi2
.LVL1062:
	ldrb	r0, [r7, #2]	@ zero_extendqisi2
	orr	r3, r3, lr, asl #8
	ldrb	r7, [r7, #3]	@ zero_extendqisi2
	orr	lr, r3, r0, asl #16
	orr	r0, lr, r7, asl #24
.LVL1063:
.LBB752:
.LBB726:
	.loc 2 38 0
	eor	r3, r8, r0
	and	r3, r3, ip
	and	r0, r0, r8
.LVL1064:
.LBE726:
.LBE752:
	.loc 4 219 0 discriminator 4
	mov	lr, r4
.LVL1065:
	add	r1, r1, r6
.LBB753:
.LBB727:
	.loc 2 38 0
	add	r0, r0, r3, lsr #1
.LBE727:
.LBE753:
	.loc 4 219 0 discriminator 4
	str	r0, [r5, r2]
.LVL1066:
	ldrb	r0, [lr, r1]!	@ zero_extendqisi2
	ldr	r6, [sp, #64]
.LVL1067:
	ldrb	r2, [lr, #1]	@ zero_extendqisi2
	ldrb	r3, [lr, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [lr, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1068:
.LBB754:
.LBB711:
	.loc 2 38 0
	eor	r2, r6, r3
	and	r2, r2, ip
	and	r3, r3, r6
.LVL1069:
	add	r3, r3, r2, lsr #1
.LBE711:
.LBE754:
	.loc 4 219 0 discriminator 4
	add	r6, r1, #4
.LVL1070:
	str	r3, [r5, r1]
.LVL1071:
	ldrb	r0, [r4, r6]!	@ zero_extendqisi2
.LVL1072:
	ldr	lr, [sp, #68]
	ldrb	r1, [r4, #1]	@ zero_extendqisi2
	ldrb	r2, [r4, #2]	@ zero_extendqisi2
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	orr	r1, r0, r1, asl #8
	orr	r1, r1, r2, asl #16
	orr	r2, r1, r3, asl #24
.LVL1073:
.LBB755:
.LBB728:
	.loc 2 38 0
	eor	r3, lr, r2
	and	r3, r3, ip
	and	r2, r2, lr
.LVL1074:
	add	r3, r2, r3, lsr #1
.LBE728:
.LBE755:
	.loc 4 219 0 discriminator 4
	str	r3, [r5, r6]
.LVL1075:
.LBE695:
.LBE694:
.LBE693:
	.loc 5 696 0
	add	sp, sp, #72
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL1076:
.L211:
	.align	2
.L210:
	.word	-16843010
	.cfi_endproc
.LFE152:
	.size	put_no_rnd_qpel8_mc10_c, .-put_no_rnd_qpel8_mc10_c
	.align	2
	.type	put_no_rnd_qpel8_mc30_c, %function
put_no_rnd_qpel8_mc30_c:
.LFB154:
	.loc 5 696 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1077:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	mov	r6, r2
	sub	sp, sp, #72
	.cfi_def_cfa_offset 96
	.loc 5 696 0
	mov	r2, #8
.LVL1078:
	mov	r4, r0
	mov	r5, r1
	add	r0, sp, r2
.LVL1079:
	mov	r3, r6
	str	r2, [sp]
	bl	put_no_rnd_mpeg4_qpel8_h_lowpass(PLT)
.LVL1080:
.LBB763:
.LBB764:
.LBB765:
	.loc 4 219 0 discriminator 4
	ldrb	r1, [r5, #1]	@ zero_extendqisi2
	ldrb	r2, [r5, #2]	@ zero_extendqisi2
	ldrb	r3, [r5, #3]	@ zero_extendqisi2
	ldrb	r0, [r5, #4]	@ zero_extendqisi2
	orr	r2, r1, r2, asl #8
	orr	r2, r2, r3, asl #16
	ldr	r1, [sp, #8]
.LBB766:
.LBB767:
	.loc 2 38 0
	ldr	lr, .L214
.LBE767:
.LBE766:
	.loc 4 219 0 discriminator 4
	orr	r3, r2, r0, asl #24
.LBB783:
.LBB768:
	.loc 2 38 0
	eor	r2, r1, r3
	and	r2, r2, lr
	and	r3, r3, r1
	add	r3, r3, r2, lsr #1
.LBE768:
.LBE783:
	.loc 4 219 0 discriminator 4
	str	r3, [r4]
	ldrb	r0, [r5, #5]	@ zero_extendqisi2
	ldrb	r2, [r5, #6]	@ zero_extendqisi2
	ldrb	r3, [r5, #7]	@ zero_extendqisi2
	ldrb	r1, [r5, #8]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	orr	r2, r2, r3, asl #16
	ldr	r0, [sp, #12]
	orr	r3, r2, r1, asl #24
.LBB784:
.LBB785:
	.loc 2 38 0
	eor	r2, r0, r3
.LBE785:
.LBE784:
.LBE765:
.LBE764:
.LBE763:
	.loc 5 696 0
	add	r1, r5, #1
.LVL1081:
.LBB832:
.LBB831:
.LBB830:
.LBB801:
.LBB786:
	.loc 2 38 0
	and	r2, r2, lr
	and	r3, r3, r0
.LVL1082:
.LBE786:
.LBE801:
	.loc 4 219 0 discriminator 4
	mov	ip, r1
.LBB802:
.LBB787:
	.loc 2 38 0
	add	r3, r3, r2, lsr #1
.LBE787:
.LBE802:
	.loc 4 219 0 discriminator 4
	str	r3, [r4, #4]
.LVL1083:
	ldrb	r0, [ip, r6]!	@ zero_extendqisi2
.LVL1084:
	ldr	r5, [sp, #16]
.LVL1085:
	ldrb	r2, [ip, #1]	@ zero_extendqisi2
	ldrb	r3, [ip, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [ip, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1086:
.LBB803:
.LBB769:
	.loc 2 38 0
	eor	r2, r5, r3
	and	r2, r2, lr
	and	r3, r3, r5
.LVL1087:
.LBE769:
.LBE803:
	.loc 4 219 0 discriminator 4
	mov	ip, r1
.LVL1088:
	add	r5, r6, #4
.LVL1089:
.LBB804:
.LBB770:
	.loc 2 38 0
	add	r3, r3, r2, lsr #1
.LBE770:
.LBE804:
	.loc 4 219 0 discriminator 4
	str	r3, [r4, r6]
.LVL1090:
	ldrb	r0, [ip, r5]!	@ zero_extendqisi2
	ldr	r7, [sp, #20]
	ldrb	r2, [ip, #1]	@ zero_extendqisi2
	ldrb	r3, [ip, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [ip, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1091:
.LBB805:
.LBB788:
	.loc 2 38 0
	eor	r2, r7, r3
.LBE788:
.LBE805:
	.loc 4 219 0 discriminator 4
	mov	ip, r6, asl #1
.LBB806:
.LBB789:
	.loc 2 38 0
	and	r2, r2, lr
	and	r3, r3, r7
.LVL1092:
	add	r3, r3, r2, lsr #1
.LBE789:
.LBE806:
	.loc 4 219 0 discriminator 4
	add	r7, r1, ip
.LVL1093:
	str	r3, [r4, r5]
.LVL1094:
	ldrb	r0, [r1, r6, asl #1]	@ zero_extendqisi2
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	ldrb	r5, [r7, #3]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	orr	r2, r2, r3, asl #16
	ldr	r0, [sp, #24]
	orr	r3, r2, r5, asl #24
.LVL1095:
.LBB807:
.LBB771:
	.loc 2 38 0
	eor	r2, r0, r3
	and	r2, r2, lr
	and	r3, r3, r0
.LVL1096:
.LBE771:
.LBE807:
	.loc 4 219 0 discriminator 4
	mov	r7, r1
.LVL1097:
	add	r5, ip, #4
.LVL1098:
.LBB808:
.LBB772:
	.loc 2 38 0
	add	r3, r3, r2, lsr #1
.LBE772:
.LBE808:
	.loc 4 219 0 discriminator 4
	str	r3, [r4, r6, asl #1]
.LVL1099:
	ldrb	r0, [r7, r5]!	@ zero_extendqisi2
.LVL1100:
	add	ip, ip, r6
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r7, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	ldr	r0, [sp, #28]
	orr	r3, r2, r7, asl #24
.LVL1101:
.LBB809:
.LBB790:
	.loc 2 38 0
	eor	r2, r0, r3
	and	r2, r2, lr
	and	r3, r3, r0
.LVL1102:
.LBE790:
.LBE809:
	.loc 4 219 0 discriminator 4
	mov	r7, r1
.LVL1103:
.LBB810:
.LBB791:
	.loc 2 38 0
	add	r3, r3, r2, lsr #1
.LBE791:
.LBE810:
	.loc 4 219 0 discriminator 4
	str	r3, [r4, r5]
.LVL1104:
	ldrb	r0, [r7, ip]!	@ zero_extendqisi2
.LVL1105:
	ldr	r5, [sp, #32]
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1106:
.LBB811:
.LBB773:
	.loc 2 38 0
	eor	r2, r5, r3
	and	r2, r2, lr
	and	r3, r3, r5
.LVL1107:
.LBE773:
.LBE811:
	.loc 4 219 0 discriminator 4
	mov	r7, r1
.LVL1108:
	add	r5, ip, #4
.LVL1109:
.LBB812:
.LBB774:
	.loc 2 38 0
	add	r3, r3, r2, lsr #1
.LBE774:
.LBE812:
	.loc 4 219 0 discriminator 4
	str	r3, [r4, ip]
.LVL1110:
	ldrb	r0, [r7, r5]!	@ zero_extendqisi2
	ldr	r8, [sp, #36]
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1111:
.LBB813:
.LBB792:
	.loc 2 38 0
	eor	r2, r8, r3
	and	r2, r2, lr
	and	r3, r3, r8
.LVL1112:
.LBE792:
.LBE813:
	.loc 4 219 0 discriminator 4
	mov	r7, r1
.LVL1113:
	add	ip, ip, r6
.LBB814:
.LBB793:
	.loc 2 38 0
	add	r3, r3, r2, lsr #1
.LBE793:
.LBE814:
	.loc 4 219 0 discriminator 4
	str	r3, [r4, r5]
.LVL1114:
	ldrb	r0, [r7, ip]!	@ zero_extendqisi2
	ldr	r5, [sp, #40]
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1115:
.LBB815:
.LBB775:
	.loc 2 38 0
	eor	r2, r5, r3
	and	r2, r2, lr
	and	r3, r3, r5
.LVL1116:
.LBE775:
.LBE815:
	.loc 4 219 0 discriminator 4
	mov	r7, r1
.LVL1117:
	add	r5, ip, #4
.LVL1118:
.LBB816:
.LBB776:
	.loc 2 38 0
	add	r3, r3, r2, lsr #1
.LBE776:
.LBE816:
	.loc 4 219 0 discriminator 4
	str	r3, [r4, ip]
.LVL1119:
	ldrb	r0, [r7, r5]!	@ zero_extendqisi2
	ldr	r8, [sp, #44]
.LVL1120:
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1121:
.LBB817:
.LBB794:
	.loc 2 38 0
	eor	r2, r8, r3
	and	r2, r2, lr
	and	r3, r3, r8
.LVL1122:
.LBE794:
.LBE817:
	.loc 4 219 0 discriminator 4
	mov	r7, r1
.LVL1123:
	add	ip, ip, r6
.LBB818:
.LBB795:
	.loc 2 38 0
	add	r3, r3, r2, lsr #1
.LBE795:
.LBE818:
	.loc 4 219 0 discriminator 4
	str	r3, [r4, r5]
.LVL1124:
	ldrb	r0, [r7, ip]!	@ zero_extendqisi2
	ldr	r5, [sp, #48]
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1125:
.LBB819:
.LBB777:
	.loc 2 38 0
	eor	r2, r5, r3
	and	r2, r2, lr
	and	r3, r3, r5
.LVL1126:
.LBE777:
.LBE819:
	.loc 4 219 0 discriminator 4
	mov	r7, r1
.LVL1127:
	add	r5, ip, #4
.LVL1128:
.LBB820:
.LBB778:
	.loc 2 38 0
	add	r3, r3, r2, lsr #1
.LBE778:
.LBE820:
	.loc 4 219 0 discriminator 4
	str	r3, [r4, ip]
.LVL1129:
	ldrb	r0, [r7, r5]!	@ zero_extendqisi2
	ldr	r8, [sp, #52]
.LVL1130:
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1131:
.LBB821:
.LBB796:
	.loc 2 38 0
	eor	r2, r8, r3
	and	r2, r2, lr
	and	r3, r3, r8
.LVL1132:
.LBE796:
.LBE821:
	.loc 4 219 0 discriminator 4
	mov	r7, r1
.LVL1133:
	add	ip, ip, r6
.LBB822:
.LBB797:
	.loc 2 38 0
	add	r3, r3, r2, lsr #1
.LBE797:
.LBE822:
	.loc 4 219 0 discriminator 4
	str	r3, [r4, r5]
.LVL1134:
	ldrb	r0, [r7, ip]!	@ zero_extendqisi2
	ldr	r5, [sp, #56]
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1135:
.LBB823:
.LBB779:
	.loc 2 38 0
	eor	r2, r5, r3
	and	r2, r2, lr
	and	r3, r3, r5
.LVL1136:
.LBE779:
.LBE823:
	.loc 4 219 0 discriminator 4
	mov	r7, r1
.LVL1137:
.LBB824:
.LBB780:
	.loc 2 38 0
	add	r3, r3, r2, lsr #1
.LBE780:
.LBE824:
	.loc 4 219 0 discriminator 4
	add	r2, ip, #4
	str	r3, [r4, ip]
.LVL1138:
	ldrb	r3, [r7, r2]!	@ zero_extendqisi2
	ldr	r8, [sp, #60]
.LVL1139:
	ldrb	r5, [r7, #1]	@ zero_extendqisi2
.LVL1140:
	ldrb	r0, [r7, #2]	@ zero_extendqisi2
	orr	r3, r3, r5, asl #8
	ldrb	r7, [r7, #3]	@ zero_extendqisi2
	orr	r5, r3, r0, asl #16
	orr	r0, r5, r7, asl #24
.LVL1141:
.LBB825:
.LBB798:
	.loc 2 38 0
	eor	r3, r8, r0
	and	r3, r3, lr
	and	r0, r0, r8
.LVL1142:
.LBE798:
.LBE825:
	.loc 4 219 0 discriminator 4
	mov	r5, r1
.LVL1143:
	add	ip, ip, r6
.LBB826:
.LBB799:
	.loc 2 38 0
	add	r0, r0, r3, lsr #1
.LBE799:
.LBE826:
	.loc 4 219 0 discriminator 4
	str	r0, [r4, r2]
.LVL1144:
	ldrb	r0, [r5, ip]!	@ zero_extendqisi2
	ldr	r6, [sp, #64]
.LVL1145:
	ldrb	r2, [r5, #1]	@ zero_extendqisi2
	ldrb	r3, [r5, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r5, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1146:
.LBB827:
.LBB781:
	.loc 2 38 0
	eor	r2, r6, r3
	and	r2, r2, lr
	and	r3, r3, r6
.LVL1147:
.LBE781:
.LBE827:
	.loc 4 219 0 discriminator 4
	add	r5, ip, #4
.LVL1148:
.LBB828:
.LBB782:
	.loc 2 38 0
	add	r3, r3, r2, lsr #1
.LBE782:
.LBE828:
	.loc 4 219 0 discriminator 4
	str	r3, [r4, ip]
.LVL1149:
	ldrb	r0, [r1, r5]!	@ zero_extendqisi2
.LVL1150:
	ldr	ip, [sp, #68]
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	ldrb	r2, [r1, #2]	@ zero_extendqisi2
	orr	r0, r0, r3, asl #8
	ldrb	r3, [r1, #3]	@ zero_extendqisi2
	orr	r1, r0, r2, asl #16
	orr	r2, r1, r3, asl #24
.LVL1151:
.LBB829:
.LBB800:
	.loc 2 38 0
	eor	r3, ip, r2
	and	r3, r3, lr
	and	r2, r2, ip
.LVL1152:
	add	r3, r2, r3, lsr #1
.LBE800:
.LBE829:
	.loc 4 219 0 discriminator 4
	str	r3, [r4, r5]
.LVL1153:
.LBE830:
.LBE831:
.LBE832:
	.loc 5 696 0
	add	sp, sp, #72
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL1154:
.L215:
	.align	2
.L214:
	.word	-16843010
	.cfi_endproc
.LFE154:
	.size	put_no_rnd_qpel8_mc30_c, .-put_no_rnd_qpel8_mc30_c
	.align	2
	.type	put_no_rnd_qpel8_mc21_c, %function
put_no_rnd_qpel8_mc21_c:
.LFB166:
	.loc 5 696 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 160
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1155:
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
	sub	sp, sp, #172
	.cfi_def_cfa_offset 208
	.loc 5 696 0
	mov	r5, r2
	add	r6, sp, #96
	mov	r2, #9
.LVL1156:
	mov	r4, r0
	mov	r3, r5
	mov	r0, r6
.LVL1157:
	str	r2, [sp]
	mov	r2, #8
	bl	put_no_rnd_mpeg4_qpel8_h_lowpass(PLT)
.LVL1158:
	.loc 5 696 0 is_stmt 0 discriminator 1
	mov	r2, #8
	mov	r1, r6
	mov	r3, r2
	add	r0, sp, #32
	bl	put_no_rnd_mpeg4_qpel8_v_lowpass(PLT)
.LVL1159:
.LBB840:
.LBB841:
.LBB842:
	.loc 4 219 0 is_stmt 1 discriminator 4
	ldr	r1, [sp, #96]
.LVL1160:
	ldr	r6, [sp, #32]
.LVL1161:
	ldr	r3, [sp, #112]
	str	r3, [sp, #12]
.LBB843:
.LBB844:
	.loc 2 38 0
	eor	r8, r6, r1
	and	r3, r6, r1
	ldr	r1, .L218
.LVL1162:
.LBE844:
.LBE843:
	.loc 4 219 0 discriminator 4
	ldr	ip, [sp, #100]
.LVL1163:
	ldr	fp, [sp, #36]
.LVL1164:
	ldr	r6, [sp, #120]
.LVL1165:
.LBB867:
.LBB845:
	.loc 2 38 0
	and	r8, r8, r1
.LBE845:
.LBE867:
	.loc 4 219 0 discriminator 4
	ldr	lr, [sp, #116]
	str	r6, [sp, #20]
.LBB868:
.LBB846:
	.loc 2 38 0
	add	r6, r3, r8, lsr #1
.LBE846:
.LBE868:
	.loc 4 219 0 discriminator 4
	ldr	r0, [sp, #104]
	ldr	r9, [sp, #44]
	ldr	r8, [sp, #56]
	ldr	r10, [sp, #40]
	ldr	r2, [sp, #108]
	ldr	r7, [sp, #48]
	ldr	r3, [sp, #124]
	str	lr, [sp, #16]
	ldr	lr, [sp, #52]
	str	r6, [r4]
.LBB869:
.LBB870:
	.loc 2 38 0
	eor	r6, fp, ip
	and	r6, r6, r1
	and	fp, fp, ip
.LVL1166:
	add	fp, fp, r6, lsr #1
.LBE870:
.LBE869:
	.loc 4 219 0 discriminator 4
	ldr	r6, [sp, #128]
	str	r6, [sp, #28]
.LBB893:
.LBB847:
	.loc 2 38 0
	eor	r6, r10, r0
.LBE847:
.LBE893:
	.loc 4 219 0 discriminator 4
	str	r3, [sp, #24]
.LBB894:
.LBB848:
	.loc 2 38 0
	and	r6, r6, r1
	ldr	r3, [sp, #12]
	and	r10, r10, r0
.LBE848:
.LBE894:
	.loc 4 219 0 discriminator 4
	ldr	ip, [sp, #60]
.LVL1167:
.LBB895:
.LBB849:
	.loc 2 38 0
	add	r10, r10, r6, lsr #1
.LBE849:
.LBE895:
	.loc 4 219 0 discriminator 4
	str	fp, [r4, #4]
.LVL1168:
.LBB896:
.LBB871:
	.loc 2 38 0
	eor	r6, r9, r2
.LBE871:
.LBE896:
	.loc 4 219 0 discriminator 4
	mov	fp, r4
	ldr	r0, [sp, #64]
.LVL1169:
.LBB897:
.LBB872:
	.loc 2 38 0
	and	r6, r6, r1
.LBE872:
.LBE897:
	.loc 4 219 0 discriminator 4
	str	r10, [fp, r5]!
.LBB898:
.LBB873:
	.loc 2 38 0
	and	r2, r2, r9
.LVL1170:
.LBE873:
.LBE898:
.LBB899:
.LBB850:
	eor	r10, r7, r3
.LBE850:
.LBE899:
.LBB900:
.LBB874:
	add	r2, r2, r6, lsr #1
.LBE874:
.LBE900:
.LBB901:
.LBB851:
	and	r3, r3, r7
	and	r10, r10, r1
.LBE851:
.LBE901:
	.loc 4 219 0 discriminator 4
	ldr	r6, [sp, #132]
.LBB902:
.LBB852:
	.loc 2 38 0
	add	r10, r3, r10, lsr #1
.LBE852:
.LBE902:
	.loc 4 219 0 discriminator 4
	str	r2, [fp, #4]
.LVL1171:
	ldr	r9, [sp, #136]
.LVL1172:
	ldr	r2, [sp, #68]
	ldr	r3, [sp, #72]
	str	r10, [r4, r5, asl #1]
.LBB903:
.LBB875:
	.loc 2 38 0
	ldr	r7, [sp, #16]
.LVL1173:
.LBE875:
.LBE903:
.LBB904:
.LBB853:
	ldr	fp, [sp, #20]
.LBE853:
.LBE904:
.LBB905:
.LBB876:
	eor	r10, lr, r7
	and	r10, r10, r1
	and	lr, lr, r7
.LBE876:
.LBE905:
	.loc 4 219 0 discriminator 4
	mov	r7, r5, asl #1
.LVL1174:
.LBB906:
.LBB877:
	.loc 2 38 0
	add	lr, lr, r10, lsr #1
.LBE877:
.LBE906:
	.loc 4 219 0 discriminator 4
	add	r10, r4, r7
	str	lr, [r10, #4]
.LVL1175:
.LBB907:
.LBB854:
	.loc 2 38 0
	eor	lr, r8, fp
	and	r10, lr, r1
	and	lr, r8, fp
.LBE854:
.LBE907:
.LBB908:
.LBB878:
	ldr	r8, [sp, #24]
.LVL1176:
.LBE878:
.LBE908:
.LBB909:
.LBB855:
	add	lr, lr, r10, lsr #1
.LBE855:
.LBE909:
.LBB910:
.LBB879:
	eor	r10, ip, r8
	and	ip, ip, r8
.LVL1177:
.LBE879:
.LBE910:
.LBB911:
.LBB856:
	ldr	r8, [sp, #28]
.LBE856:
.LBE911:
	.loc 4 219 0 discriminator 4
	add	r7, r7, r5
.LBB912:
.LBB880:
	.loc 2 38 0
	and	r10, r10, r1
.LBE880:
.LBE912:
.LBB913:
.LBB857:
	eor	fp, r0, r8
.LVL1178:
	and	r0, r0, r8
.LBE857:
.LBE913:
.LBB914:
.LBB881:
	eor	r8, r2, r6
	and	r2, r2, r6
.LBE881:
.LBE914:
.LBB915:
.LBB858:
	eor	r6, r3, r9
	and	fp, fp, r1
.LBE858:
.LBE915:
.LBB916:
.LBB882:
	and	r8, r8, r1
.LBE882:
.LBE916:
.LBB917:
.LBB859:
	and	r6, r6, r1
.LBE859:
.LBE917:
.LBB918:
.LBB883:
	add	ip, ip, r10, lsr #1
.LBE883:
.LBE918:
.LBB919:
.LBB860:
	and	r3, r3, r9
.LBE860:
.LBE919:
	.loc 4 219 0 discriminator 4
	add	r10, r7, r5
	mov	r9, r4
.LBB920:
.LBB861:
	.loc 2 38 0
	add	r0, r0, fp, lsr #1
.LBE861:
.LBE920:
.LBB921:
.LBB884:
	add	r2, r2, r8, lsr #1
.LBE884:
.LBE921:
	.loc 4 219 0 discriminator 4
	mov	fp, r4
	add	r8, r10, r5
.LBB922:
.LBB862:
	.loc 2 38 0
	add	r3, r3, r6, lsr #1
.LBE862:
.LBE922:
	.loc 4 219 0 discriminator 4
	mov	r6, r4
	str	lr, [r9, r7]!
	str	ip, [r9, #4]
.LVL1179:
	str	r0, [fp, r10]!
	str	r2, [fp, #4]
.LVL1180:
	str	r3, [r6, r8]!
	ldr	r3, [sp, #140]
.LVL1181:
	ldr	lr, [sp, #76]
.LVL1182:
	ldr	fp, [sp, #80]
	ldr	r9, [sp, #88]
	ldr	ip, [sp, #144]
	ldr	r2, [sp, #152]
.LBB923:
.LBB885:
	.loc 2 38 0
	eor	r7, lr, r3
	and	r7, r7, r1
	and	lr, lr, r3
.LVL1183:
.LBE885:
.LBE923:
	.loc 4 219 0 discriminator 4
	ldr	r0, [sp, #148]
	ldr	r10, [sp, #84]
	ldr	r3, [sp, #92]
.LVL1184:
.LBB924:
.LBB886:
	.loc 2 38 0
	add	lr, lr, r7, lsr #1
.LBE886:
.LBE924:
.LBB925:
.LBB863:
	eor	r7, fp, ip
	and	ip, ip, fp
	eor	fp, r9, r2
	and	r2, r2, r9
.LBE863:
.LBE925:
.LBB926:
.LBB887:
	ldr	r9, [sp, #156]
.LBE887:
.LBE926:
.LBB927:
.LBB864:
	and	r7, r7, r1
	add	r7, ip, r7, lsr #1
.LBE864:
.LBE927:
.LBB928:
.LBB888:
	eor	r9, r3, r9
	eor	ip, r10, r0
	and	ip, ip, r1
.LBE888:
.LBE928:
.LBB929:
.LBB865:
	and	fp, fp, r1
.LBE865:
.LBE929:
.LBB930:
.LBB889:
	and	r1, r1, r9
	ldr	r9, [sp, #156]
.LBE889:
.LBE930:
	.loc 4 219 0 discriminator 4
	add	r8, r8, r5
.LBB931:
.LBB890:
	.loc 2 38 0
	and	r3, r3, r9
	and	r0, r0, r10
.LBE890:
.LBE931:
	.loc 4 219 0 discriminator 4
	mov	r9, r4
	add	r5, r8, r5
.LVL1185:
.LBB932:
.LBB891:
	.loc 2 38 0
	add	r0, r0, ip, lsr #1
.LBE891:
.LBE932:
.LBB933:
.LBB866:
	add	r2, r2, fp, lsr #1
.LBE866:
.LBE933:
.LBB934:
.LBB892:
	add	r1, r3, r1, lsr #1
.LBE892:
.LBE934:
	.loc 4 219 0 discriminator 4
	str	lr, [r6, #4]
.LVL1186:
	str	r7, [r4, r8]!
.LVL1187:
	str	r0, [r4, #4]
.LVL1188:
	str	r2, [r9, r5]!
.LVL1189:
	str	r1, [r9, #4]
.LVL1190:
.LBE842:
.LBE841:
.LBE840:
	.loc 5 696 0
	add	sp, sp, #172
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L219:
	.align	2
.L218:
	.word	-16843010
	.cfi_endproc
.LFE166:
	.size	put_no_rnd_qpel8_mc21_c, .-put_no_rnd_qpel8_mc21_c
	.align	2
	.type	put_no_rnd_qpel8_mc23_c, %function
put_no_rnd_qpel8_mc23_c:
.LFB167:
	.loc 5 696 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 160
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1191:
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
	sub	sp, sp, #172
	.cfi_def_cfa_offset 208
	.loc 5 696 0
	mov	r5, r2
	add	r6, sp, #96
	mov	r2, #9
.LVL1192:
	mov	r4, r0
	mov	r3, r5
	mov	r0, r6
.LVL1193:
	str	r2, [sp]
	mov	r2, #8
	bl	put_no_rnd_mpeg4_qpel8_h_lowpass(PLT)
.LVL1194:
	.loc 5 696 0 is_stmt 0 discriminator 1
	mov	r2, #8
	mov	r1, r6
	mov	r3, r2
	add	r0, sp, #32
	bl	put_no_rnd_mpeg4_qpel8_v_lowpass(PLT)
.LVL1195:
.LBB942:
.LBB943:
.LBB944:
	.loc 4 219 0 is_stmt 1 discriminator 4
	ldr	r1, [sp, #104]
.LVL1196:
	ldr	r6, [sp, #32]
.LVL1197:
	ldr	r3, [sp, #120]
	str	r3, [sp, #12]
.LBB945:
.LBB946:
	.loc 2 38 0
	eor	r8, r6, r1
	and	r3, r6, r1
	ldr	r1, .L222
.LVL1198:
.LBE946:
.LBE945:
	.loc 4 219 0 discriminator 4
	ldr	ip, [sp, #108]
.LVL1199:
	ldr	fp, [sp, #36]
.LVL1200:
	ldr	r6, [sp, #128]
.LVL1201:
.LBB969:
.LBB947:
	.loc 2 38 0
	and	r8, r8, r1
.LBE947:
.LBE969:
	.loc 4 219 0 discriminator 4
	ldr	lr, [sp, #124]
	str	r6, [sp, #20]
.LBB970:
.LBB948:
	.loc 2 38 0
	add	r6, r3, r8, lsr #1
.LBE948:
.LBE970:
	.loc 4 219 0 discriminator 4
	ldr	r0, [sp, #112]
	ldr	r9, [sp, #44]
	ldr	r8, [sp, #56]
	ldr	r10, [sp, #40]
	ldr	r2, [sp, #116]
	ldr	r7, [sp, #48]
	ldr	r3, [sp, #132]
	str	lr, [sp, #16]
	ldr	lr, [sp, #52]
	str	r6, [r4]
.LVL1202:
.LBB971:
.LBB972:
	.loc 2 38 0
	eor	r6, fp, ip
	and	r6, r6, r1
	and	fp, fp, ip
.LVL1203:
	add	fp, fp, r6, lsr #1
.LBE972:
.LBE971:
	.loc 4 219 0 discriminator 4
	ldr	r6, [sp, #136]
	str	r6, [sp, #28]
.LBB995:
.LBB949:
	.loc 2 38 0
	eor	r6, r10, r0
.LBE949:
.LBE995:
	.loc 4 219 0 discriminator 4
	str	r3, [sp, #24]
.LBB996:
.LBB950:
	.loc 2 38 0
	and	r6, r6, r1
	ldr	r3, [sp, #12]
	and	r10, r10, r0
.LBE950:
.LBE996:
	.loc 4 219 0 discriminator 4
	ldr	ip, [sp, #60]
.LVL1204:
.LBB997:
.LBB951:
	.loc 2 38 0
	add	r10, r10, r6, lsr #1
.LBE951:
.LBE997:
	.loc 4 219 0 discriminator 4
	str	fp, [r4, #4]
.LVL1205:
.LBB998:
.LBB973:
	.loc 2 38 0
	eor	r6, r9, r2
.LBE973:
.LBE998:
	.loc 4 219 0 discriminator 4
	mov	fp, r4
	ldr	r0, [sp, #64]
.LVL1206:
.LBB999:
.LBB974:
	.loc 2 38 0
	and	r6, r6, r1
.LBE974:
.LBE999:
	.loc 4 219 0 discriminator 4
	str	r10, [fp, r5]!
.LBB1000:
.LBB975:
	.loc 2 38 0
	and	r2, r2, r9
.LVL1207:
.LBE975:
.LBE1000:
.LBB1001:
.LBB952:
	eor	r10, r7, r3
.LBE952:
.LBE1001:
.LBB1002:
.LBB976:
	add	r2, r2, r6, lsr #1
.LBE976:
.LBE1002:
.LBB1003:
.LBB953:
	and	r3, r3, r7
	and	r10, r10, r1
.LBE953:
.LBE1003:
	.loc 4 219 0 discriminator 4
	ldr	r6, [sp, #140]
.LBB1004:
.LBB954:
	.loc 2 38 0
	add	r10, r3, r10, lsr #1
.LBE954:
.LBE1004:
	.loc 4 219 0 discriminator 4
	str	r2, [fp, #4]
.LVL1208:
	ldr	r9, [sp, #144]
.LVL1209:
	ldr	r2, [sp, #68]
	ldr	r3, [sp, #72]
	str	r10, [r4, r5, asl #1]
.LBB1005:
.LBB977:
	.loc 2 38 0
	ldr	r7, [sp, #16]
.LVL1210:
.LBE977:
.LBE1005:
.LBB1006:
.LBB955:
	ldr	fp, [sp, #20]
.LBE955:
.LBE1006:
.LBB1007:
.LBB978:
	eor	r10, lr, r7
	and	r10, r10, r1
	and	lr, lr, r7
.LBE978:
.LBE1007:
	.loc 4 219 0 discriminator 4
	mov	r7, r5, asl #1
.LVL1211:
.LBB1008:
.LBB979:
	.loc 2 38 0
	add	lr, lr, r10, lsr #1
.LBE979:
.LBE1008:
	.loc 4 219 0 discriminator 4
	add	r10, r4, r7
	str	lr, [r10, #4]
.LVL1212:
.LBB1009:
.LBB956:
	.loc 2 38 0
	eor	lr, r8, fp
	and	r10, lr, r1
	and	lr, r8, fp
.LBE956:
.LBE1009:
.LBB1010:
.LBB980:
	ldr	r8, [sp, #24]
.LVL1213:
.LBE980:
.LBE1010:
.LBB1011:
.LBB957:
	add	lr, lr, r10, lsr #1
.LBE957:
.LBE1011:
.LBB1012:
.LBB981:
	eor	r10, ip, r8
	and	ip, ip, r8
.LVL1214:
.LBE981:
.LBE1012:
.LBB1013:
.LBB958:
	ldr	r8, [sp, #28]
.LBE958:
.LBE1013:
	.loc 4 219 0 discriminator 4
	add	r7, r7, r5
.LBB1014:
.LBB982:
	.loc 2 38 0
	and	r10, r10, r1
.LBE982:
.LBE1014:
.LBB1015:
.LBB959:
	eor	fp, r0, r8
.LVL1215:
	and	r0, r0, r8
.LBE959:
.LBE1015:
.LBB1016:
.LBB983:
	eor	r8, r2, r6
	and	r2, r2, r6
.LBE983:
.LBE1016:
.LBB1017:
.LBB960:
	eor	r6, r3, r9
	and	fp, fp, r1
.LBE960:
.LBE1017:
.LBB1018:
.LBB984:
	and	r8, r8, r1
.LBE984:
.LBE1018:
.LBB1019:
.LBB961:
	and	r6, r6, r1
.LBE961:
.LBE1019:
.LBB1020:
.LBB985:
	add	ip, ip, r10, lsr #1
.LBE985:
.LBE1020:
.LBB1021:
.LBB962:
	and	r3, r3, r9
.LBE962:
.LBE1021:
	.loc 4 219 0 discriminator 4
	add	r10, r7, r5
	mov	r9, r4
.LBB1022:
.LBB963:
	.loc 2 38 0
	add	r0, r0, fp, lsr #1
.LBE963:
.LBE1022:
.LBB1023:
.LBB986:
	add	r2, r2, r8, lsr #1
.LBE986:
.LBE1023:
	.loc 4 219 0 discriminator 4
	mov	fp, r4
	add	r8, r10, r5
.LBB1024:
.LBB964:
	.loc 2 38 0
	add	r3, r3, r6, lsr #1
.LBE964:
.LBE1024:
	.loc 4 219 0 discriminator 4
	mov	r6, r4
	str	lr, [r9, r7]!
	str	ip, [r9, #4]
.LVL1216:
	str	r0, [fp, r10]!
	str	r2, [fp, #4]
.LVL1217:
	str	r3, [r6, r8]!
	ldr	r3, [sp, #148]
.LVL1218:
	ldr	lr, [sp, #76]
.LVL1219:
	ldr	fp, [sp, #80]
	ldr	r9, [sp, #88]
	ldr	ip, [sp, #152]
	ldr	r2, [sp, #160]
.LBB1025:
.LBB987:
	.loc 2 38 0
	eor	r7, lr, r3
	and	r7, r7, r1
	and	lr, lr, r3
.LVL1220:
.LBE987:
.LBE1025:
	.loc 4 219 0 discriminator 4
	ldr	r0, [sp, #156]
	ldr	r10, [sp, #84]
	ldr	r3, [sp, #92]
.LVL1221:
.LBB1026:
.LBB988:
	.loc 2 38 0
	add	lr, lr, r7, lsr #1
.LBE988:
.LBE1026:
.LBB1027:
.LBB965:
	eor	r7, fp, ip
	and	ip, ip, fp
	eor	fp, r9, r2
	and	r2, r2, r9
.LBE965:
.LBE1027:
.LBB1028:
.LBB989:
	ldr	r9, [sp, #164]
.LBE989:
.LBE1028:
.LBB1029:
.LBB966:
	and	r7, r7, r1
	add	r7, ip, r7, lsr #1
.LBE966:
.LBE1029:
.LBB1030:
.LBB990:
	eor	r9, r3, r9
	eor	ip, r10, r0
	and	ip, ip, r1
.LBE990:
.LBE1030:
.LBB1031:
.LBB967:
	and	fp, fp, r1
.LBE967:
.LBE1031:
.LBB1032:
.LBB991:
	and	r1, r1, r9
	ldr	r9, [sp, #164]
.LBE991:
.LBE1032:
	.loc 4 219 0 discriminator 4
	add	r8, r8, r5
.LBB1033:
.LBB992:
	.loc 2 38 0
	and	r3, r3, r9
	and	r0, r0, r10
.LBE992:
.LBE1033:
	.loc 4 219 0 discriminator 4
	mov	r9, r4
	add	r5, r8, r5
.LVL1222:
.LBB1034:
.LBB993:
	.loc 2 38 0
	add	r0, r0, ip, lsr #1
.LBE993:
.LBE1034:
.LBB1035:
.LBB968:
	add	r2, r2, fp, lsr #1
.LBE968:
.LBE1035:
.LBB1036:
.LBB994:
	add	r1, r3, r1, lsr #1
.LBE994:
.LBE1036:
	.loc 4 219 0 discriminator 4
	str	lr, [r6, #4]
.LVL1223:
	str	r7, [r4, r8]!
.LVL1224:
	str	r0, [r4, #4]
.LVL1225:
	str	r2, [r9, r5]!
.LVL1226:
	str	r1, [r9, #4]
.LVL1227:
.LBE944:
.LBE943:
.LBE942:
	.loc 5 696 0
	add	sp, sp, #172
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L223:
	.align	2
.L222:
	.word	-16843010
	.cfi_endproc
.LFE167:
	.size	put_no_rnd_qpel8_mc23_c, .-put_no_rnd_qpel8_mc23_c
	.align	2
	.type	put_qpel8_mc10_c, %function
put_qpel8_mc10_c:
.LFB106:
	.loc 5 695 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1228:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	mov	r6, r2
	sub	sp, sp, #72
	.cfi_def_cfa_offset 96
	.loc 5 695 0
	mov	r2, #8
.LVL1229:
	mov	r4, r1
	mov	r5, r0
	mov	r3, r6
	add	r0, sp, r2
.LVL1230:
	str	r2, [sp]
	bl	put_mpeg4_qpel8_h_lowpass(PLT)
.LVL1231:
.LBB1044:
.LBB1045:
.LBB1046:
	.loc 1 104 0 discriminator 4
	ldrb	r1, [r4]	@ zero_extendqisi2
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	orr	r2, r1, r2, asl #8
	orr	r2, r2, r3, asl #16
	ldr	r1, [sp, #8]
.LBB1047:
.LBB1048:
	.loc 2 33 0
	ldr	ip, .L226
.LBE1048:
.LBE1047:
	.loc 1 104 0 discriminator 4
	orr	r3, r2, r0, asl #24
.LVL1232:
.LBB1063:
.LBB1049:
	.loc 2 33 0
	eor	r2, r1, r3
	and	r2, r2, ip
	orr	r3, r1, r3
.LVL1233:
	sub	r3, r3, r2, lsr #1
.LBE1049:
.LBE1063:
	.loc 1 104 0 discriminator 4
	str	r3, [r5]
.LVL1234:
	ldrb	r1, [r4, #4]	@ zero_extendqisi2
.LVL1235:
	ldrb	r2, [r4, #5]	@ zero_extendqisi2
	ldrb	r3, [r4, #6]	@ zero_extendqisi2
	ldrb	r0, [r4, #7]	@ zero_extendqisi2
	orr	r2, r1, r2, asl #8
	orr	r2, r2, r3, asl #16
	ldr	r1, [sp, #12]
	orr	r3, r2, r0, asl #24
.LVL1236:
.LBB1064:
.LBB1065:
	.loc 2 33 0
	eor	r2, r1, r3
	and	r2, r2, ip
	orr	r3, r1, r3
.LVL1237:
.LBE1065:
.LBE1064:
	.loc 1 104 0 discriminator 4
	mov	r0, r4
.LVL1238:
.LBB1080:
.LBB1066:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE1066:
.LBE1080:
	.loc 1 104 0 discriminator 4
	str	r3, [r5, #4]
.LVL1239:
	ldrb	r1, [r0, r6]!	@ zero_extendqisi2
.LVL1240:
	ldr	lr, [sp, #16]
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	ldrb	r3, [r0, #2]	@ zero_extendqisi2
	orr	r2, r1, r2, asl #8
	ldrb	r1, [r0, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r1, asl #24
.LVL1241:
.LBB1081:
.LBB1050:
	.loc 2 33 0
	eor	r2, lr, r3
	and	r2, r2, ip
	orr	r3, lr, r3
.LVL1242:
.LBE1050:
.LBE1081:
	.loc 1 104 0 discriminator 4
	mov	r0, r4
.LVL1243:
	add	lr, r6, #4
.LVL1244:
.LBB1082:
.LBB1051:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE1051:
.LBE1082:
	.loc 1 104 0 discriminator 4
	str	r3, [r5, r6]
.LVL1245:
	ldrb	r1, [r0, lr]!	@ zero_extendqisi2
	ldr	r7, [sp, #20]
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	ldrb	r3, [r0, #2]	@ zero_extendqisi2
	orr	r2, r1, r2, asl #8
	ldrb	r1, [r0, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r1, asl #24
.LVL1246:
.LBB1083:
.LBB1067:
	.loc 2 33 0
	eor	r2, r7, r3
.LBE1067:
.LBE1083:
	.loc 1 104 0 discriminator 4
	mov	r1, r6, asl #1
.LBB1084:
.LBB1068:
	.loc 2 33 0
	and	r2, r2, ip
	orr	r3, r7, r3
.LVL1247:
	sub	r3, r3, r2, lsr #1
.LBE1068:
.LBE1084:
	.loc 1 104 0 discriminator 4
	add	r7, r4, r1
.LVL1248:
	str	r3, [r5, lr]
.LVL1249:
	ldrb	r0, [r4, r6, asl #1]	@ zero_extendqisi2
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	ldrb	lr, [r7, #3]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	orr	r2, r2, r3, asl #16
	ldr	r0, [sp, #24]
	orr	r3, r2, lr, asl #24
.LVL1250:
.LBB1085:
.LBB1052:
	.loc 2 33 0
	eor	r2, r0, r3
	and	r2, r2, ip
	orr	r3, r0, r3
.LVL1251:
.LBE1052:
.LBE1085:
	.loc 1 104 0 discriminator 4
	mov	r7, r4
.LVL1252:
	add	lr, r1, #4
.LVL1253:
.LBB1086:
.LBB1053:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE1053:
.LBE1086:
	.loc 1 104 0 discriminator 4
	str	r3, [r5, r6, asl #1]
.LVL1254:
	ldrb	r0, [r7, lr]!	@ zero_extendqisi2
.LVL1255:
	add	r1, r1, r6
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r7, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	ldr	r0, [sp, #28]
	orr	r3, r2, r7, asl #24
.LVL1256:
.LBB1087:
.LBB1069:
	.loc 2 33 0
	eor	r2, r0, r3
	and	r2, r2, ip
	orr	r3, r0, r3
.LVL1257:
.LBE1069:
.LBE1087:
	.loc 1 104 0 discriminator 4
	mov	r7, r4
.LVL1258:
.LBB1088:
.LBB1070:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE1070:
.LBE1088:
	.loc 1 104 0 discriminator 4
	str	r3, [r5, lr]
.LVL1259:
	ldrb	r0, [r7, r1]!	@ zero_extendqisi2
.LVL1260:
	ldr	lr, [sp, #32]
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1261:
.LBB1089:
.LBB1054:
	.loc 2 33 0
	eor	r2, lr, r3
	and	r2, r2, ip
	orr	r3, lr, r3
.LVL1262:
.LBE1054:
.LBE1089:
	.loc 1 104 0 discriminator 4
	mov	r7, r4
.LVL1263:
	add	lr, r1, #4
.LVL1264:
.LBB1090:
.LBB1055:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE1055:
.LBE1090:
	.loc 1 104 0 discriminator 4
	str	r3, [r5, r1]
.LVL1265:
	ldrb	r0, [r7, lr]!	@ zero_extendqisi2
	ldr	r8, [sp, #36]
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1266:
.LBB1091:
.LBB1071:
	.loc 2 33 0
	eor	r2, r8, r3
	and	r2, r2, ip
	orr	r3, r8, r3
.LVL1267:
.LBE1071:
.LBE1091:
	.loc 1 104 0 discriminator 4
	mov	r7, r4
.LVL1268:
	add	r1, r1, r6
.LBB1092:
.LBB1072:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE1072:
.LBE1092:
	.loc 1 104 0 discriminator 4
	str	r3, [r5, lr]
.LVL1269:
	ldrb	r0, [r7, r1]!	@ zero_extendqisi2
	ldr	lr, [sp, #40]
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1270:
.LBB1093:
.LBB1056:
	.loc 2 33 0
	eor	r2, lr, r3
	and	r2, r2, ip
	orr	r3, lr, r3
.LVL1271:
.LBE1056:
.LBE1093:
	.loc 1 104 0 discriminator 4
	mov	r7, r4
.LVL1272:
	add	lr, r1, #4
.LVL1273:
.LBB1094:
.LBB1057:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE1057:
.LBE1094:
	.loc 1 104 0 discriminator 4
	str	r3, [r5, r1]
.LVL1274:
	ldrb	r0, [r7, lr]!	@ zero_extendqisi2
	ldr	r8, [sp, #44]
.LVL1275:
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1276:
.LBB1095:
.LBB1073:
	.loc 2 33 0
	eor	r2, r8, r3
	and	r2, r2, ip
	orr	r3, r8, r3
.LVL1277:
.LBE1073:
.LBE1095:
	.loc 1 104 0 discriminator 4
	mov	r7, r4
.LVL1278:
	add	r1, r1, r6
.LBB1096:
.LBB1074:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE1074:
.LBE1096:
	.loc 1 104 0 discriminator 4
	str	r3, [r5, lr]
.LVL1279:
	ldrb	r0, [r7, r1]!	@ zero_extendqisi2
	ldr	lr, [sp, #48]
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1280:
.LBB1097:
.LBB1058:
	.loc 2 33 0
	eor	r2, lr, r3
	and	r2, r2, ip
	orr	r3, lr, r3
.LVL1281:
.LBE1058:
.LBE1097:
	.loc 1 104 0 discriminator 4
	mov	r7, r4
.LVL1282:
	add	lr, r1, #4
.LVL1283:
.LBB1098:
.LBB1059:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE1059:
.LBE1098:
	.loc 1 104 0 discriminator 4
	str	r3, [r5, r1]
.LVL1284:
	ldrb	r0, [r7, lr]!	@ zero_extendqisi2
	ldr	r8, [sp, #52]
.LVL1285:
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1286:
.LBB1099:
.LBB1075:
	.loc 2 33 0
	eor	r2, r8, r3
	and	r2, r2, ip
	orr	r3, r8, r3
.LVL1287:
.LBE1075:
.LBE1099:
	.loc 1 104 0 discriminator 4
	mov	r7, r4
.LVL1288:
	add	r1, r1, r6
.LBB1100:
.LBB1076:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE1076:
.LBE1100:
	.loc 1 104 0 discriminator 4
	str	r3, [r5, lr]
.LVL1289:
	ldrb	r0, [r7, r1]!	@ zero_extendqisi2
	ldr	lr, [sp, #56]
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1290:
.LBB1101:
.LBB1060:
	.loc 2 33 0
	eor	r2, lr, r3
	and	r2, r2, ip
	orr	r3, lr, r3
.LVL1291:
.LBE1060:
.LBE1101:
	.loc 1 104 0 discriminator 4
	mov	r7, r4
.LVL1292:
.LBB1102:
.LBB1061:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE1061:
.LBE1102:
	.loc 1 104 0 discriminator 4
	add	r2, r1, #4
	str	r3, [r5, r1]
.LVL1293:
	ldrb	r3, [r7, r2]!	@ zero_extendqisi2
	ldr	r8, [sp, #60]
.LVL1294:
	ldrb	lr, [r7, #1]	@ zero_extendqisi2
.LVL1295:
	ldrb	r0, [r7, #2]	@ zero_extendqisi2
	orr	r3, r3, lr, asl #8
	ldrb	r7, [r7, #3]	@ zero_extendqisi2
	orr	lr, r3, r0, asl #16
	orr	r0, lr, r7, asl #24
.LVL1296:
.LBB1103:
.LBB1077:
	.loc 2 33 0
	eor	r3, r8, r0
	and	r3, r3, ip
	orr	r0, r8, r0
.LVL1297:
.LBE1077:
.LBE1103:
	.loc 1 104 0 discriminator 4
	mov	lr, r4
.LVL1298:
	add	r1, r1, r6
.LBB1104:
.LBB1078:
	.loc 2 33 0
	sub	r0, r0, r3, lsr #1
.LBE1078:
.LBE1104:
	.loc 1 104 0 discriminator 4
	str	r0, [r5, r2]
.LVL1299:
	ldrb	r0, [lr, r1]!	@ zero_extendqisi2
	ldr	r6, [sp, #64]
.LVL1300:
	ldrb	r2, [lr, #1]	@ zero_extendqisi2
	ldrb	r3, [lr, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [lr, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1301:
.LBB1105:
.LBB1062:
	.loc 2 33 0
	eor	r2, r6, r3
	and	r2, r2, ip
	orr	r3, r6, r3
.LVL1302:
	sub	r3, r3, r2, lsr #1
.LBE1062:
.LBE1105:
	.loc 1 104 0 discriminator 4
	add	r6, r1, #4
.LVL1303:
	str	r3, [r5, r1]
.LVL1304:
	ldrb	r0, [r4, r6]!	@ zero_extendqisi2
.LVL1305:
	ldr	lr, [sp, #68]
	ldrb	r1, [r4, #1]	@ zero_extendqisi2
	ldrb	r2, [r4, #2]	@ zero_extendqisi2
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	orr	r1, r0, r1, asl #8
	orr	r1, r1, r2, asl #16
	orr	r2, r1, r3, asl #24
.LVL1306:
.LBB1106:
.LBB1079:
	.loc 2 33 0
	eor	r3, lr, r2
	and	r3, r3, ip
	orr	r2, lr, r2
.LVL1307:
	sub	r3, r2, r3, lsr #1
.LBE1079:
.LBE1106:
	.loc 1 104 0 discriminator 4
	str	r3, [r5, r6]
.LVL1308:
.LBE1046:
.LBE1045:
.LBE1044:
	.loc 5 695 0
	add	sp, sp, #72
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL1309:
.L227:
	.align	2
.L226:
	.word	-16843010
	.cfi_endproc
.LFE106:
	.size	put_qpel8_mc10_c, .-put_qpel8_mc10_c
	.align	2
	.type	put_qpel8_mc30_c, %function
put_qpel8_mc30_c:
.LFB108:
	.loc 5 695 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1310:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	mov	r6, r2
	sub	sp, sp, #72
	.cfi_def_cfa_offset 96
	.loc 5 695 0
	mov	r2, #8
.LVL1311:
	mov	r4, r0
	mov	r5, r1
	add	r0, sp, r2
.LVL1312:
	mov	r3, r6
	str	r2, [sp]
	bl	put_mpeg4_qpel8_h_lowpass(PLT)
.LVL1313:
.LBB1114:
.LBB1115:
.LBB1116:
	.loc 1 104 0 discriminator 4
	ldrb	r1, [r5, #1]	@ zero_extendqisi2
	ldrb	r2, [r5, #2]	@ zero_extendqisi2
	ldrb	r3, [r5, #3]	@ zero_extendqisi2
	ldrb	r0, [r5, #4]	@ zero_extendqisi2
	orr	r2, r1, r2, asl #8
	orr	r2, r2, r3, asl #16
	ldr	r1, [sp, #8]
.LBB1117:
.LBB1118:
	.loc 2 33 0
	ldr	lr, .L230
.LBE1118:
.LBE1117:
	.loc 1 104 0 discriminator 4
	orr	r3, r2, r0, asl #24
.LBB1134:
.LBB1119:
	.loc 2 33 0
	eor	r2, r1, r3
	and	r2, r2, lr
	orr	r3, r1, r3
	sub	r3, r3, r2, lsr #1
.LBE1119:
.LBE1134:
	.loc 1 104 0 discriminator 4
	str	r3, [r4]
	ldrb	r0, [r5, #5]	@ zero_extendqisi2
	ldrb	r2, [r5, #6]	@ zero_extendqisi2
	ldrb	r3, [r5, #7]	@ zero_extendqisi2
	ldrb	r1, [r5, #8]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	orr	r2, r2, r3, asl #16
	ldr	r0, [sp, #12]
	orr	r3, r2, r1, asl #24
.LBB1135:
.LBB1136:
	.loc 2 33 0
	eor	r2, r0, r3
.LBE1136:
.LBE1135:
.LBE1116:
.LBE1115:
.LBE1114:
	.loc 5 695 0
	add	r1, r5, #1
.LVL1314:
.LBB1183:
.LBB1182:
.LBB1181:
.LBB1152:
.LBB1137:
	.loc 2 33 0
	and	r2, r2, lr
	orr	r3, r0, r3
.LVL1315:
.LBE1137:
.LBE1152:
	.loc 1 104 0 discriminator 4
	mov	ip, r1
.LBB1153:
.LBB1138:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE1138:
.LBE1153:
	.loc 1 104 0 discriminator 4
	str	r3, [r4, #4]
.LVL1316:
	ldrb	r0, [ip, r6]!	@ zero_extendqisi2
.LVL1317:
	ldr	r5, [sp, #16]
.LVL1318:
	ldrb	r2, [ip, #1]	@ zero_extendqisi2
	ldrb	r3, [ip, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [ip, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1319:
.LBB1154:
.LBB1120:
	.loc 2 33 0
	eor	r2, r5, r3
	and	r2, r2, lr
	orr	r3, r5, r3
.LVL1320:
.LBE1120:
.LBE1154:
	.loc 1 104 0 discriminator 4
	mov	ip, r1
.LVL1321:
	add	r5, r6, #4
.LVL1322:
.LBB1155:
.LBB1121:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE1121:
.LBE1155:
	.loc 1 104 0 discriminator 4
	str	r3, [r4, r6]
.LVL1323:
	ldrb	r0, [ip, r5]!	@ zero_extendqisi2
	ldr	r7, [sp, #20]
	ldrb	r2, [ip, #1]	@ zero_extendqisi2
	ldrb	r3, [ip, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [ip, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1324:
.LBB1156:
.LBB1139:
	.loc 2 33 0
	eor	r2, r7, r3
.LBE1139:
.LBE1156:
	.loc 1 104 0 discriminator 4
	mov	ip, r6, asl #1
.LBB1157:
.LBB1140:
	.loc 2 33 0
	and	r2, r2, lr
	orr	r3, r7, r3
.LVL1325:
	sub	r3, r3, r2, lsr #1
.LBE1140:
.LBE1157:
	.loc 1 104 0 discriminator 4
	add	r7, r1, ip
.LVL1326:
	str	r3, [r4, r5]
.LVL1327:
	ldrb	r0, [r1, r6, asl #1]	@ zero_extendqisi2
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	ldrb	r5, [r7, #3]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	orr	r2, r2, r3, asl #16
	ldr	r0, [sp, #24]
	orr	r3, r2, r5, asl #24
.LVL1328:
.LBB1158:
.LBB1122:
	.loc 2 33 0
	eor	r2, r0, r3
	and	r2, r2, lr
	orr	r3, r0, r3
.LVL1329:
.LBE1122:
.LBE1158:
	.loc 1 104 0 discriminator 4
	mov	r7, r1
.LVL1330:
	add	r5, ip, #4
.LVL1331:
.LBB1159:
.LBB1123:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE1123:
.LBE1159:
	.loc 1 104 0 discriminator 4
	str	r3, [r4, r6, asl #1]
.LVL1332:
	ldrb	r0, [r7, r5]!	@ zero_extendqisi2
.LVL1333:
	add	ip, ip, r6
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r7, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	ldr	r0, [sp, #28]
	orr	r3, r2, r7, asl #24
.LVL1334:
.LBB1160:
.LBB1141:
	.loc 2 33 0
	eor	r2, r0, r3
	and	r2, r2, lr
	orr	r3, r0, r3
.LVL1335:
.LBE1141:
.LBE1160:
	.loc 1 104 0 discriminator 4
	mov	r7, r1
.LVL1336:
.LBB1161:
.LBB1142:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE1142:
.LBE1161:
	.loc 1 104 0 discriminator 4
	str	r3, [r4, r5]
.LVL1337:
	ldrb	r0, [r7, ip]!	@ zero_extendqisi2
.LVL1338:
	ldr	r5, [sp, #32]
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1339:
.LBB1162:
.LBB1124:
	.loc 2 33 0
	eor	r2, r5, r3
	and	r2, r2, lr
	orr	r3, r5, r3
.LVL1340:
.LBE1124:
.LBE1162:
	.loc 1 104 0 discriminator 4
	mov	r7, r1
.LVL1341:
	add	r5, ip, #4
.LVL1342:
.LBB1163:
.LBB1125:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE1125:
.LBE1163:
	.loc 1 104 0 discriminator 4
	str	r3, [r4, ip]
.LVL1343:
	ldrb	r0, [r7, r5]!	@ zero_extendqisi2
	ldr	r8, [sp, #36]
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1344:
.LBB1164:
.LBB1143:
	.loc 2 33 0
	eor	r2, r8, r3
	and	r2, r2, lr
	orr	r3, r8, r3
.LVL1345:
.LBE1143:
.LBE1164:
	.loc 1 104 0 discriminator 4
	mov	r7, r1
.LVL1346:
	add	ip, ip, r6
.LBB1165:
.LBB1144:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE1144:
.LBE1165:
	.loc 1 104 0 discriminator 4
	str	r3, [r4, r5]
.LVL1347:
	ldrb	r0, [r7, ip]!	@ zero_extendqisi2
	ldr	r5, [sp, #40]
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1348:
.LBB1166:
.LBB1126:
	.loc 2 33 0
	eor	r2, r5, r3
	and	r2, r2, lr
	orr	r3, r5, r3
.LVL1349:
.LBE1126:
.LBE1166:
	.loc 1 104 0 discriminator 4
	mov	r7, r1
.LVL1350:
	add	r5, ip, #4
.LVL1351:
.LBB1167:
.LBB1127:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE1127:
.LBE1167:
	.loc 1 104 0 discriminator 4
	str	r3, [r4, ip]
.LVL1352:
	ldrb	r0, [r7, r5]!	@ zero_extendqisi2
	ldr	r8, [sp, #44]
.LVL1353:
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1354:
.LBB1168:
.LBB1145:
	.loc 2 33 0
	eor	r2, r8, r3
	and	r2, r2, lr
	orr	r3, r8, r3
.LVL1355:
.LBE1145:
.LBE1168:
	.loc 1 104 0 discriminator 4
	mov	r7, r1
.LVL1356:
	add	ip, ip, r6
.LBB1169:
.LBB1146:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE1146:
.LBE1169:
	.loc 1 104 0 discriminator 4
	str	r3, [r4, r5]
.LVL1357:
	ldrb	r0, [r7, ip]!	@ zero_extendqisi2
	ldr	r5, [sp, #48]
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1358:
.LBB1170:
.LBB1128:
	.loc 2 33 0
	eor	r2, r5, r3
	and	r2, r2, lr
	orr	r3, r5, r3
.LVL1359:
.LBE1128:
.LBE1170:
	.loc 1 104 0 discriminator 4
	mov	r7, r1
.LVL1360:
	add	r5, ip, #4
.LVL1361:
.LBB1171:
.LBB1129:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE1129:
.LBE1171:
	.loc 1 104 0 discriminator 4
	str	r3, [r4, ip]
.LVL1362:
	ldrb	r0, [r7, r5]!	@ zero_extendqisi2
	ldr	r8, [sp, #52]
.LVL1363:
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1364:
.LBB1172:
.LBB1147:
	.loc 2 33 0
	eor	r2, r8, r3
	and	r2, r2, lr
	orr	r3, r8, r3
.LVL1365:
.LBE1147:
.LBE1172:
	.loc 1 104 0 discriminator 4
	mov	r7, r1
.LVL1366:
	add	ip, ip, r6
.LBB1173:
.LBB1148:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE1148:
.LBE1173:
	.loc 1 104 0 discriminator 4
	str	r3, [r4, r5]
.LVL1367:
	ldrb	r0, [r7, ip]!	@ zero_extendqisi2
	ldr	r5, [sp, #56]
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1368:
.LBB1174:
.LBB1130:
	.loc 2 33 0
	eor	r2, r5, r3
	and	r2, r2, lr
	orr	r3, r5, r3
.LVL1369:
.LBE1130:
.LBE1174:
	.loc 1 104 0 discriminator 4
	mov	r7, r1
.LVL1370:
.LBB1175:
.LBB1131:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE1131:
.LBE1175:
	.loc 1 104 0 discriminator 4
	add	r2, ip, #4
	str	r3, [r4, ip]
.LVL1371:
	ldrb	r3, [r7, r2]!	@ zero_extendqisi2
	ldr	r8, [sp, #60]
.LVL1372:
	ldrb	r5, [r7, #1]	@ zero_extendqisi2
.LVL1373:
	ldrb	r0, [r7, #2]	@ zero_extendqisi2
	orr	r3, r3, r5, asl #8
	ldrb	r7, [r7, #3]	@ zero_extendqisi2
	orr	r5, r3, r0, asl #16
	orr	r0, r5, r7, asl #24
.LVL1374:
.LBB1176:
.LBB1149:
	.loc 2 33 0
	eor	r3, r8, r0
	and	r3, r3, lr
	orr	r0, r8, r0
.LVL1375:
.LBE1149:
.LBE1176:
	.loc 1 104 0 discriminator 4
	mov	r5, r1
.LVL1376:
	add	ip, ip, r6
.LBB1177:
.LBB1150:
	.loc 2 33 0
	sub	r0, r0, r3, lsr #1
.LBE1150:
.LBE1177:
	.loc 1 104 0 discriminator 4
	str	r0, [r4, r2]
.LVL1377:
	ldrb	r0, [r5, ip]!	@ zero_extendqisi2
	ldr	r6, [sp, #64]
.LVL1378:
	ldrb	r2, [r5, #1]	@ zero_extendqisi2
	ldrb	r3, [r5, #2]	@ zero_extendqisi2
	orr	r2, r0, r2, asl #8
	ldrb	r0, [r5, #3]	@ zero_extendqisi2
	orr	r2, r2, r3, asl #16
	orr	r3, r2, r0, asl #24
.LVL1379:
.LBB1178:
.LBB1132:
	.loc 2 33 0
	eor	r2, r6, r3
	and	r2, r2, lr
	orr	r3, r6, r3
.LVL1380:
.LBE1132:
.LBE1178:
	.loc 1 104 0 discriminator 4
	add	r5, ip, #4
.LVL1381:
.LBB1179:
.LBB1133:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE1133:
.LBE1179:
	.loc 1 104 0 discriminator 4
	str	r3, [r4, ip]
.LVL1382:
	ldrb	r0, [r1, r5]!	@ zero_extendqisi2
.LVL1383:
	ldr	ip, [sp, #68]
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	ldrb	r2, [r1, #2]	@ zero_extendqisi2
	orr	r0, r0, r3, asl #8
	ldrb	r3, [r1, #3]	@ zero_extendqisi2
	orr	r1, r0, r2, asl #16
	orr	r2, r1, r3, asl #24
.LVL1384:
.LBB1180:
.LBB1151:
	.loc 2 33 0
	eor	r3, ip, r2
	and	r3, r3, lr
	orr	r2, ip, r2
.LVL1385:
	sub	r3, r2, r3, lsr #1
.LBE1151:
.LBE1180:
	.loc 1 104 0 discriminator 4
	str	r3, [r4, r5]
.LVL1386:
.LBE1181:
.LBE1182:
.LBE1183:
	.loc 5 695 0
	add	sp, sp, #72
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL1387:
.L231:
	.align	2
.L230:
	.word	-16843010
	.cfi_endproc
.LFE108:
	.size	put_qpel8_mc30_c, .-put_qpel8_mc30_c
	.align	2
	.type	put_qpel8_mc21_c, %function
put_qpel8_mc21_c:
.LFB120:
	.loc 5 695 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1388:
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
	sub	sp, sp, #164
	.cfi_def_cfa_offset 200
	.loc 5 695 0
	mov	r5, r2
	add	r6, sp, #88
	mov	r2, #9
.LVL1389:
	mov	r4, r0
	mov	r3, r5
	mov	r0, r6
.LVL1390:
	str	r2, [sp]
	mov	r2, #8
	bl	put_mpeg4_qpel8_h_lowpass(PLT)
.LVL1391:
	.loc 5 695 0 is_stmt 0 discriminator 1
	mov	r2, #8
	mov	r1, r6
	mov	r3, r2
	add	r0, sp, #24
	bl	put_mpeg4_qpel8_v_lowpass(PLT)
.LVL1392:
.LBB1191:
.LBB1192:
.LBB1193:
	.loc 1 104 0 is_stmt 1 discriminator 4
	ldr	r1, [sp, #88]
.LVL1393:
	ldr	r0, [sp, #24]
.LVL1394:
	ldr	fp, [sp, #28]
.LBB1194:
.LBB1195:
	.loc 2 33 0
	eor	r8, r0, r1
	orr	r0, r0, r1
.LVL1395:
	str	r0, [sp, #16]
	ldr	r1, .L234
.LVL1396:
.LBE1195:
.LBE1194:
	.loc 1 104 0 discriminator 4
	ldr	r0, [sp, #112]
	str	r0, [sp, #12]
.LBB1214:
.LBB1196:
	.loc 2 33 0
	ldr	r0, [sp, #16]
.LBE1196:
.LBE1214:
	.loc 1 104 0 discriminator 4
	ldr	r2, [sp, #92]
.LVL1397:
.LBB1215:
.LBB1197:
	.loc 2 33 0
	and	r8, r8, r1
.LBE1197:
.LBE1215:
	.loc 1 104 0 discriminator 4
	ldr	ip, [sp, #108]
.LBB1216:
.LBB1198:
	.loc 2 33 0
	sub	r0, r0, r8, lsr #1
.LBE1198:
.LBE1216:
	.loc 1 104 0 discriminator 4
	ldr	r8, [sp, #48]
	ldr	r10, [sp, #32]
	ldr	r9, [sp, #36]
	ldr	r3, [sp, #96]
	ldr	r6, [sp, #100]
.LVL1398:
	ldr	lr, [sp, #104]
	ldr	r7, [sp, #40]
	str	ip, [sp, #8]
	str	r8, [sp, #16]
	ldr	ip, [sp, #44]
	ldr	r8, [sp, #116]
	str	r0, [r4]
.LBB1217:
.LBB1218:
	.loc 2 33 0
	eor	r0, fp, r2
	and	r0, r0, r1
	orr	r2, fp, r2
.LVL1399:
	sub	r2, r2, r0, lsr #1
.LBE1218:
.LBE1217:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #52]
.LVL1400:
	str	r8, [sp, #20]
	ldr	r8, [sp, #120]
	str	r2, [r4, #4]
.LVL1401:
.LBB1236:
.LBB1199:
	.loc 2 33 0
	eor	r2, r10, r3
	and	r2, r2, r1
	orr	r3, r10, r3
.LVL1402:
	sub	r3, r3, r2, lsr #1
.LBE1199:
.LBE1236:
	.loc 1 104 0 discriminator 4
	mov	r10, r4
.LVL1403:
	ldr	r2, [sp, #56]
	str	r3, [r10, r5]!
.LBB1237:
.LBB1219:
	.loc 2 33 0
	eor	r3, r9, r6
	and	r3, r3, r1
	orr	r6, r9, r6
.LVL1404:
	sub	r6, r6, r3, lsr #1
.LBE1219:
.LBE1237:
.LBB1238:
.LBB1200:
	eor	r3, r7, lr
	and	r3, r3, r1
	orr	lr, r7, lr
.LBE1200:
.LBE1238:
	.loc 1 104 0 discriminator 4
	ldr	r0, [sp, #124]
.LBB1239:
.LBB1201:
	.loc 2 33 0
	sub	lr, lr, r3, lsr #1
.LBE1201:
.LBE1239:
	.loc 1 104 0 discriminator 4
	str	r6, [r10, #4]
.LVL1405:
	ldr	r6, [sp, #60]
	ldr	r9, [sp, #128]
.LVL1406:
	ldr	r3, [sp, #64]
	str	lr, [r4, r5, asl #1]
.LBB1240:
.LBB1220:
	.loc 2 33 0
	ldr	r7, [sp, #8]
.LVL1407:
.LBE1220:
.LBE1240:
.LBB1241:
.LBB1202:
	ldr	r10, [sp, #16]
.LBE1202:
.LBE1241:
.LBB1242:
.LBB1221:
	eor	lr, ip, r7
	and	lr, lr, r1
	orr	ip, ip, r7
.LBE1221:
.LBE1242:
	.loc 1 104 0 discriminator 4
	mov	r7, r5, asl #1
.LVL1408:
.LBB1243:
.LBB1222:
	.loc 2 33 0
	sub	ip, ip, lr, lsr #1
.LBE1222:
.LBE1243:
	.loc 1 104 0 discriminator 4
	add	lr, r4, r7
	str	ip, [lr, #4]
.LVL1409:
.LBB1244:
.LBB1203:
	.loc 2 33 0
	ldr	lr, [sp, #12]
.LBE1203:
.LBE1244:
	.loc 1 104 0 discriminator 4
	add	r7, r7, r5
.LBB1245:
.LBB1204:
	.loc 2 33 0
	eor	ip, r10, lr
	and	ip, ip, r1
	orr	r10, r10, lr
.LVL1410:
	sub	r10, r10, ip, lsr #1
.LBE1204:
.LBE1245:
.LBB1246:
.LBB1223:
	ldr	ip, [sp, #20]
	eor	lr, fp, ip
	and	lr, lr, r1
	orr	fp, fp, ip
.LVL1411:
.LBE1223:
.LBE1246:
.LBB1247:
.LBB1205:
	eor	ip, r2, r8
	orr	r8, r2, r8
.LBE1205:
.LBE1247:
.LBB1248:
.LBB1224:
	eor	r2, r6, r0
	orr	r0, r6, r0
.LBE1224:
.LBE1248:
.LBB1249:
.LBB1206:
	eor	r6, r3, r9
	and	r6, r6, r1
.LBE1206:
.LBE1249:
.LBB1250:
.LBB1225:
	sub	lr, fp, lr, lsr #1
.LBE1225:
.LBE1250:
.LBB1251:
.LBB1207:
	and	ip, ip, r1
.LBE1207:
.LBE1251:
	.loc 1 104 0 discriminator 4
	add	fp, r7, r5
.LBB1252:
.LBB1226:
	.loc 2 33 0
	and	r2, r2, r1
.LBE1226:
.LBE1252:
.LBB1253:
.LBB1208:
	orr	r3, r3, r9
	sub	ip, r8, ip, lsr #1
.LBE1208:
.LBE1253:
	.loc 1 104 0 discriminator 4
	mov	r9, r4
	add	r8, fp, r5
.LBB1254:
.LBB1227:
	.loc 2 33 0
	sub	r2, r0, r2, lsr #1
.LBE1227:
.LBE1254:
.LBB1255:
.LBB1209:
	sub	r3, r3, r6, lsr #1
.LBE1209:
.LBE1255:
	.loc 1 104 0 discriminator 4
	mov	r0, r4
	mov	r6, r4
	str	r10, [r9, r7]!
	str	lr, [r9, #4]
.LVL1412:
	str	ip, [r0, fp]!
	str	r2, [r0, #4]
.LVL1413:
	str	r3, [r6, r8]!
	ldr	r3, [sp, #132]
.LVL1414:
	ldr	lr, [sp, #68]
.LVL1415:
	ldr	fp, [sp, #72]
	ldr	r9, [sp, #80]
	ldr	ip, [sp, #136]
	ldr	r2, [sp, #144]
.LBB1256:
.LBB1228:
	.loc 2 33 0
	eor	r7, lr, r3
	and	r7, r7, r1
	orr	lr, lr, r3
.LVL1416:
.LBE1228:
.LBE1256:
	.loc 1 104 0 discriminator 4
	ldr	r10, [sp, #76]
	ldr	r0, [sp, #140]
	ldr	r3, [sp, #84]
.LVL1417:
.LBB1257:
.LBB1229:
	.loc 2 33 0
	sub	lr, lr, r7, lsr #1
.LBE1229:
.LBE1257:
.LBB1258:
.LBB1210:
	eor	r7, fp, ip
	orr	ip, fp, ip
	eor	fp, r9, r2
	orr	r2, r9, r2
.LBE1210:
.LBE1258:
.LBB1259:
.LBB1230:
	ldr	r9, [sp, #148]
.LBE1230:
.LBE1259:
.LBB1260:
.LBB1211:
	and	r7, r7, r1
	sub	ip, ip, r7, lsr #1
.LBE1211:
.LBE1260:
.LBB1261:
.LBB1231:
	eor	r7, r10, r0
	orr	r0, r10, r0
	eor	r10, r3, r9
.LBE1231:
.LBE1261:
	.loc 1 104 0 discriminator 4
	add	r8, r8, r5
.LBB1262:
.LBB1232:
	.loc 2 33 0
	and	r7, r7, r1
.LBE1232:
.LBE1262:
.LBB1263:
.LBB1212:
	and	fp, fp, r1
.LBE1212:
.LBE1263:
.LBB1264:
.LBB1233:
	orr	r3, r3, r9
	and	r1, r1, r10
.LBE1233:
.LBE1264:
	.loc 1 104 0 discriminator 4
	mov	r9, r4
	add	r5, r8, r5
.LVL1418:
.LBB1265:
.LBB1234:
	.loc 2 33 0
	sub	r0, r0, r7, lsr #1
.LBE1234:
.LBE1265:
.LBB1266:
.LBB1213:
	sub	r2, r2, fp, lsr #1
.LBE1213:
.LBE1266:
.LBB1267:
.LBB1235:
	sub	r1, r3, r1, lsr #1
.LBE1235:
.LBE1267:
	.loc 1 104 0 discriminator 4
	str	lr, [r6, #4]
.LVL1419:
	str	ip, [r4, r8]!
.LVL1420:
	str	r0, [r4, #4]
.LVL1421:
	str	r2, [r9, r5]!
.LVL1422:
	str	r1, [r9, #4]
.LVL1423:
.LBE1193:
.LBE1192:
.LBE1191:
	.loc 5 695 0
	add	sp, sp, #164
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L235:
	.align	2
.L234:
	.word	-16843010
	.cfi_endproc
.LFE120:
	.size	put_qpel8_mc21_c, .-put_qpel8_mc21_c
	.align	2
	.type	put_qpel8_mc23_c, %function
put_qpel8_mc23_c:
.LFB121:
	.loc 5 695 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1424:
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
	sub	sp, sp, #164
	.cfi_def_cfa_offset 200
	.loc 5 695 0
	mov	r5, r2
	add	r6, sp, #88
	mov	r2, #9
.LVL1425:
	mov	r4, r0
	mov	r3, r5
	mov	r0, r6
.LVL1426:
	str	r2, [sp]
	mov	r2, #8
	bl	put_mpeg4_qpel8_h_lowpass(PLT)
.LVL1427:
	.loc 5 695 0 is_stmt 0 discriminator 1
	mov	r2, #8
	mov	r1, r6
	mov	r3, r2
	add	r0, sp, #24
	bl	put_mpeg4_qpel8_v_lowpass(PLT)
.LVL1428:
.LBB1275:
.LBB1276:
.LBB1277:
	.loc 1 104 0 is_stmt 1 discriminator 4
	ldr	r1, [sp, #96]
.LVL1429:
	ldr	r0, [sp, #24]
.LVL1430:
	ldr	fp, [sp, #28]
.LBB1278:
.LBB1279:
	.loc 2 33 0
	eor	r8, r0, r1
	orr	r0, r0, r1
.LVL1431:
	str	r0, [sp, #16]
	ldr	r1, .L238
.LVL1432:
.LBE1279:
.LBE1278:
	.loc 1 104 0 discriminator 4
	ldr	r0, [sp, #120]
	str	r0, [sp, #12]
.LBB1298:
.LBB1280:
	.loc 2 33 0
	ldr	r0, [sp, #16]
.LBE1280:
.LBE1298:
	.loc 1 104 0 discriminator 4
	ldr	r2, [sp, #100]
.LVL1433:
.LBB1299:
.LBB1281:
	.loc 2 33 0
	and	r8, r8, r1
.LBE1281:
.LBE1299:
	.loc 1 104 0 discriminator 4
	ldr	ip, [sp, #116]
.LBB1300:
.LBB1282:
	.loc 2 33 0
	sub	r0, r0, r8, lsr #1
.LBE1282:
.LBE1300:
	.loc 1 104 0 discriminator 4
	ldr	r8, [sp, #48]
	ldr	r10, [sp, #32]
	ldr	r9, [sp, #36]
	ldr	r3, [sp, #104]
	ldr	r6, [sp, #108]
	ldr	lr, [sp, #112]
	ldr	r7, [sp, #40]
	str	ip, [sp, #8]
	str	r8, [sp, #16]
	ldr	ip, [sp, #44]
	ldr	r8, [sp, #124]
	str	r0, [r4]
.LVL1434:
.LBB1301:
.LBB1302:
	.loc 2 33 0
	eor	r0, fp, r2
	and	r0, r0, r1
	orr	r2, fp, r2
.LVL1435:
	sub	r2, r2, r0, lsr #1
.LBE1302:
.LBE1301:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #52]
.LVL1436:
	str	r8, [sp, #20]
	ldr	r8, [sp, #128]
	str	r2, [r4, #4]
.LVL1437:
.LBB1320:
.LBB1283:
	.loc 2 33 0
	eor	r2, r10, r3
	and	r2, r2, r1
	orr	r3, r10, r3
.LVL1438:
	sub	r3, r3, r2, lsr #1
.LBE1283:
.LBE1320:
	.loc 1 104 0 discriminator 4
	mov	r10, r4
.LVL1439:
	ldr	r2, [sp, #56]
	str	r3, [r10, r5]!
.LBB1321:
.LBB1303:
	.loc 2 33 0
	eor	r3, r9, r6
	and	r3, r3, r1
	orr	r6, r9, r6
.LVL1440:
	sub	r6, r6, r3, lsr #1
.LBE1303:
.LBE1321:
.LBB1322:
.LBB1284:
	eor	r3, r7, lr
	and	r3, r3, r1
	orr	lr, r7, lr
.LBE1284:
.LBE1322:
	.loc 1 104 0 discriminator 4
	ldr	r0, [sp, #132]
.LBB1323:
.LBB1285:
	.loc 2 33 0
	sub	lr, lr, r3, lsr #1
.LBE1285:
.LBE1323:
	.loc 1 104 0 discriminator 4
	str	r6, [r10, #4]
.LVL1441:
	ldr	r6, [sp, #60]
	ldr	r9, [sp, #136]
.LVL1442:
	ldr	r3, [sp, #64]
	str	lr, [r4, r5, asl #1]
.LBB1324:
.LBB1304:
	.loc 2 33 0
	ldr	r7, [sp, #8]
.LVL1443:
.LBE1304:
.LBE1324:
.LBB1325:
.LBB1286:
	ldr	r10, [sp, #16]
.LBE1286:
.LBE1325:
.LBB1326:
.LBB1305:
	eor	lr, ip, r7
	and	lr, lr, r1
	orr	ip, ip, r7
.LBE1305:
.LBE1326:
	.loc 1 104 0 discriminator 4
	mov	r7, r5, asl #1
.LVL1444:
.LBB1327:
.LBB1306:
	.loc 2 33 0
	sub	ip, ip, lr, lsr #1
.LBE1306:
.LBE1327:
	.loc 1 104 0 discriminator 4
	add	lr, r4, r7
	str	ip, [lr, #4]
.LVL1445:
.LBB1328:
.LBB1287:
	.loc 2 33 0
	ldr	lr, [sp, #12]
.LBE1287:
.LBE1328:
	.loc 1 104 0 discriminator 4
	add	r7, r7, r5
.LBB1329:
.LBB1288:
	.loc 2 33 0
	eor	ip, r10, lr
	and	ip, ip, r1
	orr	r10, r10, lr
.LVL1446:
	sub	r10, r10, ip, lsr #1
.LBE1288:
.LBE1329:
.LBB1330:
.LBB1307:
	ldr	ip, [sp, #20]
	eor	lr, fp, ip
	and	lr, lr, r1
	orr	fp, fp, ip
.LVL1447:
.LBE1307:
.LBE1330:
.LBB1331:
.LBB1289:
	eor	ip, r2, r8
	orr	r8, r2, r8
.LBE1289:
.LBE1331:
.LBB1332:
.LBB1308:
	eor	r2, r6, r0
	orr	r0, r6, r0
.LBE1308:
.LBE1332:
.LBB1333:
.LBB1290:
	eor	r6, r3, r9
	and	r6, r6, r1
.LBE1290:
.LBE1333:
.LBB1334:
.LBB1309:
	sub	lr, fp, lr, lsr #1
.LBE1309:
.LBE1334:
.LBB1335:
.LBB1291:
	and	ip, ip, r1
.LBE1291:
.LBE1335:
	.loc 1 104 0 discriminator 4
	add	fp, r7, r5
.LBB1336:
.LBB1310:
	.loc 2 33 0
	and	r2, r2, r1
.LBE1310:
.LBE1336:
.LBB1337:
.LBB1292:
	orr	r3, r3, r9
	sub	ip, r8, ip, lsr #1
.LBE1292:
.LBE1337:
	.loc 1 104 0 discriminator 4
	mov	r9, r4
	add	r8, fp, r5
.LBB1338:
.LBB1311:
	.loc 2 33 0
	sub	r2, r0, r2, lsr #1
.LBE1311:
.LBE1338:
.LBB1339:
.LBB1293:
	sub	r3, r3, r6, lsr #1
.LBE1293:
.LBE1339:
	.loc 1 104 0 discriminator 4
	mov	r0, r4
	mov	r6, r4
	str	r10, [r9, r7]!
	str	lr, [r9, #4]
.LVL1448:
	str	ip, [r0, fp]!
	str	r2, [r0, #4]
.LVL1449:
	str	r3, [r6, r8]!
	ldr	r3, [sp, #140]
.LVL1450:
	ldr	lr, [sp, #68]
.LVL1451:
	ldr	fp, [sp, #72]
	ldr	r9, [sp, #80]
	ldr	ip, [sp, #144]
	ldr	r2, [sp, #152]
.LBB1340:
.LBB1312:
	.loc 2 33 0
	eor	r7, lr, r3
	and	r7, r7, r1
	orr	lr, lr, r3
.LVL1452:
.LBE1312:
.LBE1340:
	.loc 1 104 0 discriminator 4
	ldr	r10, [sp, #76]
	ldr	r0, [sp, #148]
	ldr	r3, [sp, #84]
.LVL1453:
.LBB1341:
.LBB1313:
	.loc 2 33 0
	sub	lr, lr, r7, lsr #1
.LBE1313:
.LBE1341:
.LBB1342:
.LBB1294:
	eor	r7, fp, ip
	orr	ip, fp, ip
	eor	fp, r9, r2
	orr	r2, r9, r2
.LBE1294:
.LBE1342:
.LBB1343:
.LBB1314:
	ldr	r9, [sp, #156]
.LBE1314:
.LBE1343:
.LBB1344:
.LBB1295:
	and	r7, r7, r1
	sub	ip, ip, r7, lsr #1
.LBE1295:
.LBE1344:
.LBB1345:
.LBB1315:
	eor	r7, r10, r0
	orr	r0, r10, r0
	eor	r10, r3, r9
.LBE1315:
.LBE1345:
	.loc 1 104 0 discriminator 4
	add	r8, r8, r5
.LBB1346:
.LBB1316:
	.loc 2 33 0
	and	r7, r7, r1
.LBE1316:
.LBE1346:
.LBB1347:
.LBB1296:
	and	fp, fp, r1
.LBE1296:
.LBE1347:
.LBB1348:
.LBB1317:
	orr	r3, r3, r9
	and	r1, r1, r10
.LBE1317:
.LBE1348:
	.loc 1 104 0 discriminator 4
	mov	r9, r4
	add	r5, r8, r5
.LVL1454:
.LBB1349:
.LBB1318:
	.loc 2 33 0
	sub	r0, r0, r7, lsr #1
.LBE1318:
.LBE1349:
.LBB1350:
.LBB1297:
	sub	r2, r2, fp, lsr #1
.LBE1297:
.LBE1350:
.LBB1351:
.LBB1319:
	sub	r1, r3, r1, lsr #1
.LBE1319:
.LBE1351:
	.loc 1 104 0 discriminator 4
	str	lr, [r6, #4]
.LVL1455:
	str	ip, [r4, r8]!
.LVL1456:
	str	r0, [r4, #4]
.LVL1457:
	str	r2, [r9, r5]!
.LVL1458:
	str	r1, [r9, #4]
.LVL1459:
.LBE1277:
.LBE1276:
.LBE1275:
	.loc 5 695 0
	add	sp, sp, #164
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L239:
	.align	2
.L238:
	.word	-16843010
	.cfi_endproc
.LFE121:
	.size	put_qpel8_mc23_c, .-put_qpel8_mc23_c
	.align	2
	.type	put_no_rnd_qpel8_mc01_c, %function
put_no_rnd_qpel8_mc01_c:
.LFB155:
	.loc 5 696 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 232
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1460:
.LBB1361:
.LBB1362:
	.loc 6 64 0
	add	r3, r1, r2
.LBE1362:
.LBE1361:
	.loc 5 696 0
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
.LBB1369:
.LBB1363:
	.loc 6 64 0
	add	r8, r3, r2
.LBE1363:
.LBE1369:
	.loc 5 696 0
	mov	r4, r2
.LVL1461:
.LBB1370:
.LBB1364:
	.loc 6 61 0
	ldrb	lr, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r8, #5]	@ zero_extendqisi2
	ldrb	r2, [r8, #4]	@ zero_extendqisi2
.LVL1462:
	ldrb	r5, [r1, r4]	@ zero_extendqisi2
	ldrb	fp, [r3, #5]	@ zero_extendqisi2
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
	ldrb	r9, [r1]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #8
	ldrb	r10, [r1, #1]	@ zero_extendqisi2
	orr	r6, r5, r6, asl #8
	orr	ip, ip, fp, asl #8
	ldrb	r5, [r1, #4]	@ zero_extendqisi2
	ldrb	fp, [r1, #5]	@ zero_extendqisi2
	orr	r9, r9, r10, asl #8
	ldrb	r10, [r8, #6]	@ zero_extendqisi2
	ldrb	r7, [r8, #1]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #8
	orr	r2, r2, r10, asl #16
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	ldrb	r10, [r3, #6]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #8
	ldrb	r7, [r8, #2]	@ zero_extendqisi2
	orr	r6, r6, fp, asl #16
	orr	ip, ip, r10, asl #16
	ldrb	fp, [r1, #2]	@ zero_extendqisi2
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #16
	ldrb	r7, [r8, #3]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #16
	orr	r9, r9, fp, asl #16
	ldrb	r10, [r3, #3]	@ zero_extendqisi2
	ldrb	fp, [r8, #7]	@ zero_extendqisi2
	orr	r7, lr, r7, asl #24
	ldrb	lr, [r3, #7]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #24
	orr	r6, r6, r10, asl #24
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	orr	ip, ip, lr, asl #24
	.loc 6 64 0
	add	lr, r8, r4
.LBE1364:
.LBE1370:
	.loc 5 696 0
	sub	sp, sp, #236
	.cfi_def_cfa_offset 272
.LVL1463:
.LBB1371:
.LBB1365:
	.loc 6 61 0
	orr	r9, r9, fp, asl #24
	orr	r10, r5, r10, asl #24
	.loc 6 62 0
	ldrb	fp, [r1, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r5, lr, r4
	.loc 6 62 0
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
.LVL1464:
	.loc 6 61 0
	str	r7, [sp, #120]
	str	r6, [sp, #104]
	str	ip, [sp, #108]
	str	r9, [sp, #88]
	str	r10, [sp, #92]
	.loc 6 62 0
	strb	fp, [sp, #96]
.LVL1465:
	strb	r1, [sp, #112]
.LVL1466:
	.loc 6 61 0
	ldrb	r9, [r5, #1]	@ zero_extendqisi2
	ldrb	r6, [r8, r4, asl #1]	@ zero_extendqisi2
	str	r2, [sp, #124]
	ldrb	r10, [lr, #1]	@ zero_extendqisi2
	ldrb	r2, [r3, r4, asl #1]	@ zero_extendqisi2
	ldrb	r1, [r5, #4]	@ zero_extendqisi2
	ldrb	ip, [r5, #5]	@ zero_extendqisi2
	ldrb	r7, [lr, #5]	@ zero_extendqisi2
	ldrb	fp, [lr, #2]	@ zero_extendqisi2
	ldrb	r3, [lr, #4]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #8
	orr	r6, r6, r9, asl #8
	ldrb	r10, [r5, #2]	@ zero_extendqisi2
	ldrb	r9, [r5, #6]	@ zero_extendqisi2
	orr	ip, r1, ip, asl #8
	ldrb	r1, [lr, #6]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #16
	orr	r3, r3, r7, asl #8
	ldrb	fp, [r5, #3]	@ zero_extendqisi2
	ldrb	r7, [lr, #3]	@ zero_extendqisi2
	orr	r6, r6, r10, asl #16
	orr	ip, ip, r9, asl #16
	ldrb	r10, [r5, #7]	@ zero_extendqisi2
	ldrb	r9, [lr, #7]	@ zero_extendqisi2
	orr	r3, r3, r1, asl #16
	orr	r7, r2, r7, asl #24
	.loc 6 64 0
	add	r1, r5, r4
	.loc 6 62 0
	ldrb	r8, [r8, #8]	@ zero_extendqisi2
.LVL1467:
	.loc 6 61 0
	orr	r6, r6, fp, asl #24
	orr	ip, ip, r10, asl #24
	orr	fp, r3, r9, asl #24
	.loc 6 62 0
	ldrb	r10, [r5, #8]	@ zero_extendqisi2
	ldrb	r9, [lr, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r2, r1, r4
	.loc 6 61 0
	str	r7, [sp, #136]
	.loc 6 62 0
	strb	r8, [sp, #128]
.LVL1468:
	.loc 6 61 0
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	ldrb	r8, [r1, #5]	@ zero_extendqisi2
	str	r6, [sp, #152]
	str	ip, [sp, #156]
	ldrb	r6, [r1, #2]	@ zero_extendqisi2
	str	fp, [sp, #140]
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r10, [sp, #160]
	strb	r9, [sp, #144]
.LVL1469:
	.loc 6 61 0
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	ldrb	lr, [lr, r4, asl #1]	@ zero_extendqisi2
	.loc 6 64 0
	add	r3, r2, r4
	.loc 6 61 0
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	str	r10, [sp, #4]
	ldrb	r5, [r5, r4, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r3, #1]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	orr	lr, lr, r7, asl #8
	ldrb	r8, [r1, r4, asl #1]	@ zero_extendqisi2
	ldrb	r7, [r2, #1]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #8
	orr	r7, r5, r7, asl #8
	ldrb	r10, [r3, #5]	@ zero_extendqisi2
	ldrb	r5, [r3, #4]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #16
	orr	r10, r5, r10, asl #8
	ldrb	r9, [r2, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #4]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #16
	orr	r9, r5, r9, asl #8
	ldrb	r5, [r2, #2]	@ zero_extendqisi2
	ldrb	r6, [r3, #2]	@ zero_extendqisi2
	orr	r7, r7, r5, asl #16
	ldrb	r5, [r2, #6]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	orr	r8, r8, r6, asl #16
	ldr	fp, [sp, #4]
	ldrb	r6, [r3, #6]	@ zero_extendqisi2
	orr	r5, r9, r5, asl #16
	ldrb	r9, [r3, #3]	@ zero_extendqisi2
	orr	ip, ip, fp, asl #24
	orr	r8, r8, r9, asl #24
	ldrb	fp, [r3, #7]	@ zero_extendqisi2
	ldrb	r9, [r2, #7]	@ zero_extendqisi2
	orr	r6, r10, r6, asl #16
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	.loc 6 62 0
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
.LVL1470:
	.loc 6 61 0
	orr	r7, r7, r10, asl #24
	orr	r6, r6, fp, asl #24
	.loc 6 62 0
	ldrb	r10, [r3, #8]	@ zero_extendqisi2
	.loc 6 61 0
	orr	r5, r5, r9, asl #24
	.loc 6 64 0
	add	r3, r3, r4
	.loc 6 62 0
	ldrb	r9, [r2, #8]	@ zero_extendqisi2
	.loc 6 61 0
	str	lr, [sp, #168]
	str	ip, [sp, #172]
	.loc 6 62 0
	strb	r1, [sp, #176]
.LVL1471:
	.loc 6 61 0
	str	r8, [sp, #200]
	str	r7, [sp, #184]
	str	r6, [sp, #204]
	str	r5, [sp, #188]
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	ldrb	r5, [r2, r4, asl #1]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r10, [sp, #208]
	strb	r9, [sp, #192]
.LVL1472:
	.loc 6 61 0
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	ldrb	lr, [r3, #2]	@ zero_extendqisi2
	ldrb	ip, [r3, #6]	@ zero_extendqisi2
	ldrb	r7, [r3, #3]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #8
	orr	r2, r1, r2, asl #8
	ldrb	r6, [r3, #7]	@ zero_extendqisi2
	orr	r1, r5, lr, asl #16
	orr	r2, r2, ip, asl #16
.LBE1365:
.LBE1371:
	.loc 5 696 0
	mov	r5, r0
.LBB1372:
.LBB1366:
	.loc 6 61 0
	orr	lr, r1, r7, asl #24
	orr	ip, r2, r6, asl #24
.LBE1366:
.LBE1372:
	.loc 5 696 0 discriminator 1
	add	r0, sp, #24
.LVL1473:
.LBB1373:
.LBB1367:
	.loc 6 62 0
	ldrb	r6, [r3, #8]	@ zero_extendqisi2
.LBE1367:
.LBE1373:
	.loc 5 696 0 discriminator 1
	add	r1, sp, #88
	mov	r2, #8
	mov	r3, #16
.LVL1474:
.LBB1374:
.LBB1368:
	.loc 6 61 0
	str	lr, [sp, #216]
	str	ip, [sp, #220]
	.loc 6 62 0
	strb	r6, [sp, #224]
.LVL1475:
.LBE1368:
.LBE1374:
	.loc 5 696 0 discriminator 1
	bl	put_no_rnd_mpeg4_qpel8_v_lowpass(PLT)
.LVL1476:
.LBB1375:
.LBB1376:
.LBB1377:
	.loc 4 219 0 discriminator 4
	ldr	r3, [sp, #88]
.LVL1477:
	ldr	r6, [sp, #24]
.LVL1478:
	ldr	r2, [sp, #120]
	str	r2, [sp, #4]
.LBB1378:
.LBB1379:
	.loc 2 38 0
	eor	r8, r6, r3
	and	r2, r6, r3
	ldr	r3, .L242
.LVL1479:
.LBE1379:
.LBE1378:
	.loc 4 219 0 discriminator 4
	ldr	ip, [sp, #92]
.LVL1480:
	ldr	fp, [sp, #28]
.LVL1481:
	ldr	r6, [sp, #136]
.LVL1482:
.LBB1402:
.LBB1380:
	.loc 2 38 0
	and	r8, r8, r3
.LBE1380:
.LBE1402:
	.loc 4 219 0 discriminator 4
	ldr	lr, [sp, #124]
	str	r6, [sp, #12]
.LBB1403:
.LBB1381:
	.loc 2 38 0
	add	r6, r2, r8, lsr #1
.LBE1381:
.LBE1403:
	.loc 4 219 0 discriminator 4
	ldr	r0, [sp, #104]
	ldr	r9, [sp, #36]
	ldr	r8, [sp, #48]
	ldr	r10, [sp, #32]
	ldr	r1, [sp, #108]
	ldr	r7, [sp, #40]
	ldr	r2, [sp, #140]
	str	lr, [sp, #8]
	ldr	lr, [sp, #44]
	str	r6, [r5]
.LBB1404:
.LBB1405:
	.loc 2 38 0
	eor	r6, fp, ip
	and	r6, r6, r3
	and	fp, fp, ip
.LVL1483:
	add	fp, fp, r6, lsr #1
.LBE1405:
.LBE1404:
	.loc 4 219 0 discriminator 4
	ldr	r6, [sp, #152]
	str	r6, [sp, #20]
.LBB1428:
.LBB1382:
	.loc 2 38 0
	eor	r6, r10, r0
.LBE1382:
.LBE1428:
	.loc 4 219 0 discriminator 4
	str	r2, [sp, #16]
.LBB1429:
.LBB1383:
	.loc 2 38 0
	and	r6, r6, r3
	ldr	r2, [sp, #4]
	and	r10, r10, r0
.LBE1383:
.LBE1429:
	.loc 4 219 0 discriminator 4
	ldr	ip, [sp, #52]
.LVL1484:
.LBB1430:
.LBB1384:
	.loc 2 38 0
	add	r10, r10, r6, lsr #1
.LBE1384:
.LBE1430:
	.loc 4 219 0 discriminator 4
	str	fp, [r5, #4]
.LVL1485:
.LBB1431:
.LBB1406:
	.loc 2 38 0
	eor	r6, r9, r1
.LBE1406:
.LBE1431:
	.loc 4 219 0 discriminator 4
	mov	fp, r5
	ldr	r0, [sp, #56]
.LVL1486:
.LBB1432:
.LBB1407:
	.loc 2 38 0
	and	r6, r6, r3
.LBE1407:
.LBE1432:
	.loc 4 219 0 discriminator 4
	str	r10, [fp, r4]!
.LBB1433:
.LBB1408:
	.loc 2 38 0
	and	r1, r1, r9
.LVL1487:
.LBE1408:
.LBE1433:
.LBB1434:
.LBB1385:
	eor	r10, r7, r2
.LBE1385:
.LBE1434:
.LBB1435:
.LBB1409:
	add	r1, r1, r6, lsr #1
.LBE1409:
.LBE1435:
.LBB1436:
.LBB1386:
	and	r2, r2, r7
	and	r10, r10, r3
.LBE1386:
.LBE1436:
	.loc 4 219 0 discriminator 4
	ldr	r6, [sp, #156]
.LBB1437:
.LBB1387:
	.loc 2 38 0
	add	r10, r2, r10, lsr #1
.LBE1387:
.LBE1437:
	.loc 4 219 0 discriminator 4
	str	r1, [fp, #4]
.LVL1488:
	ldr	r9, [sp, #168]
.LVL1489:
	ldr	r1, [sp, #60]
	ldr	r2, [sp, #64]
	str	r10, [r5, r4, asl #1]
.LBB1438:
.LBB1410:
	.loc 2 38 0
	ldr	r7, [sp, #8]
.LVL1490:
.LBE1410:
.LBE1438:
.LBB1439:
.LBB1388:
	ldr	fp, [sp, #12]
.LBE1388:
.LBE1439:
.LBB1440:
.LBB1411:
	eor	r10, lr, r7
	and	r10, r10, r3
	and	lr, lr, r7
.LBE1411:
.LBE1440:
	.loc 4 219 0 discriminator 4
	mov	r7, r4, asl #1
.LVL1491:
.LBB1441:
.LBB1412:
	.loc 2 38 0
	add	lr, lr, r10, lsr #1
.LBE1412:
.LBE1441:
	.loc 4 219 0 discriminator 4
	add	r10, r5, r7
	str	lr, [r10, #4]
.LVL1492:
.LBB1442:
.LBB1389:
	.loc 2 38 0
	eor	lr, r8, fp
	and	r10, lr, r3
	and	lr, r8, fp
.LBE1389:
.LBE1442:
.LBB1443:
.LBB1413:
	ldr	r8, [sp, #16]
.LVL1493:
.LBE1413:
.LBE1443:
.LBB1444:
.LBB1390:
	add	lr, lr, r10, lsr #1
.LBE1390:
.LBE1444:
.LBB1445:
.LBB1414:
	eor	r10, ip, r8
	and	ip, ip, r8
.LVL1494:
.LBE1414:
.LBE1445:
.LBB1446:
.LBB1391:
	ldr	r8, [sp, #20]
.LBE1391:
.LBE1446:
	.loc 4 219 0 discriminator 4
	add	r7, r7, r4
.LBB1447:
.LBB1415:
	.loc 2 38 0
	and	r10, r10, r3
.LBE1415:
.LBE1447:
.LBB1448:
.LBB1392:
	eor	fp, r0, r8
.LVL1495:
	and	r0, r0, r8
.LBE1392:
.LBE1448:
.LBB1449:
.LBB1416:
	eor	r8, r1, r6
	and	r1, r1, r6
.LBE1416:
.LBE1449:
.LBB1450:
.LBB1393:
	eor	r6, r2, r9
	and	fp, fp, r3
.LBE1393:
.LBE1450:
.LBB1451:
.LBB1417:
	and	r8, r8, r3
.LBE1417:
.LBE1451:
.LBB1452:
.LBB1394:
	and	r6, r6, r3
.LBE1394:
.LBE1452:
.LBB1453:
.LBB1418:
	add	ip, ip, r10, lsr #1
.LBE1418:
.LBE1453:
.LBB1454:
.LBB1395:
	and	r2, r2, r9
.LBE1395:
.LBE1454:
	.loc 4 219 0 discriminator 4
	add	r10, r7, r4
	mov	r9, r5
.LBB1455:
.LBB1396:
	.loc 2 38 0
	add	r0, r0, fp, lsr #1
.LBE1396:
.LBE1455:
.LBB1456:
.LBB1419:
	add	r1, r1, r8, lsr #1
.LBE1419:
.LBE1456:
	.loc 4 219 0 discriminator 4
	mov	fp, r5
	add	r8, r10, r4
.LBB1457:
.LBB1397:
	.loc 2 38 0
	add	r2, r2, r6, lsr #1
.LBE1397:
.LBE1457:
	.loc 4 219 0 discriminator 4
	mov	r6, r5
	str	lr, [r9, r7]!
	str	ip, [r9, #4]
.LVL1496:
	str	r0, [fp, r10]!
	str	r1, [fp, #4]
.LVL1497:
	str	r2, [r6, r8]!
	ldr	r2, [sp, #172]
.LVL1498:
	ldr	lr, [sp, #68]
.LVL1499:
	ldr	fp, [sp, #72]
	ldr	r9, [sp, #80]
	ldr	ip, [sp, #184]
	ldr	r1, [sp, #200]
.LBB1458:
.LBB1420:
	.loc 2 38 0
	eor	r7, lr, r2
	and	r7, r7, r3
	and	lr, lr, r2
.LVL1500:
.LBE1420:
.LBE1458:
	.loc 4 219 0 discriminator 4
	ldr	r0, [sp, #188]
	ldr	r10, [sp, #76]
	ldr	r2, [sp, #84]
.LVL1501:
.LBB1459:
.LBB1421:
	.loc 2 38 0
	add	lr, lr, r7, lsr #1
.LBE1421:
.LBE1459:
.LBB1460:
.LBB1398:
	eor	r7, fp, ip
	and	ip, ip, fp
	eor	fp, r9, r1
	and	r1, r1, r9
.LBE1398:
.LBE1460:
.LBB1461:
.LBB1422:
	ldr	r9, [sp, #204]
.LBE1422:
.LBE1461:
.LBB1462:
.LBB1399:
	and	r7, r7, r3
	add	r7, ip, r7, lsr #1
.LBE1399:
.LBE1462:
.LBB1463:
.LBB1423:
	eor	r9, r2, r9
	eor	ip, r10, r0
	and	ip, ip, r3
.LBE1423:
.LBE1463:
.LBB1464:
.LBB1400:
	and	fp, fp, r3
.LBE1400:
.LBE1464:
.LBB1465:
.LBB1424:
	and	r3, r3, r9
	ldr	r9, [sp, #204]
.LBE1424:
.LBE1465:
	.loc 4 219 0 discriminator 4
	add	r8, r8, r4
.LBB1466:
.LBB1425:
	.loc 2 38 0
	and	r2, r2, r9
	and	r0, r0, r10
.LBE1425:
.LBE1466:
	.loc 4 219 0 discriminator 4
	mov	r9, r5
	add	r4, r8, r4
.LVL1502:
.LBB1467:
.LBB1426:
	.loc 2 38 0
	add	r0, r0, ip, lsr #1
.LBE1426:
.LBE1467:
.LBB1468:
.LBB1401:
	add	r1, r1, fp, lsr #1
.LBE1401:
.LBE1468:
.LBB1469:
.LBB1427:
	add	r3, r2, r3, lsr #1
.LBE1427:
.LBE1469:
	.loc 4 219 0 discriminator 4
	str	lr, [r6, #4]
.LVL1503:
	str	r7, [r5, r8]!
.LVL1504:
	str	r0, [r5, #4]
.LVL1505:
	str	r1, [r9, r4]!
.LVL1506:
	str	r3, [r9, #4]
.LVL1507:
.LBE1377:
.LBE1376:
.LBE1375:
	.loc 5 696 0
	add	sp, sp, #236
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L243:
	.align	2
.L242:
	.word	-16843010
	.cfi_endproc
.LFE155:
	.size	put_no_rnd_qpel8_mc01_c, .-put_no_rnd_qpel8_mc01_c
	.align	2
	.type	put_no_rnd_qpel8_mc03_c, %function
put_no_rnd_qpel8_mc03_c:
.LFB157:
	.loc 5 696 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 232
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1508:
.LBB1479:
.LBB1480:
	.loc 6 64 0
	add	r3, r1, r2
.LBE1480:
.LBE1479:
	.loc 5 696 0
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
.LBB1487:
.LBB1481:
	.loc 6 64 0
	add	r8, r3, r2
.LBE1481:
.LBE1487:
	.loc 5 696 0
	mov	r4, r2
.LVL1509:
.LBB1488:
.LBB1482:
	.loc 6 61 0
	ldrb	lr, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r8, #5]	@ zero_extendqisi2
	ldrb	r2, [r8, #4]	@ zero_extendqisi2
.LVL1510:
	ldrb	r5, [r1, r4]	@ zero_extendqisi2
	ldrb	fp, [r3, #5]	@ zero_extendqisi2
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
	ldrb	r9, [r1]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #8
	ldrb	r10, [r1, #1]	@ zero_extendqisi2
	orr	r6, r5, r6, asl #8
	orr	ip, ip, fp, asl #8
	ldrb	r5, [r1, #4]	@ zero_extendqisi2
	ldrb	fp, [r1, #5]	@ zero_extendqisi2
	orr	r9, r9, r10, asl #8
	ldrb	r10, [r8, #6]	@ zero_extendqisi2
	ldrb	r7, [r8, #1]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #8
	orr	r2, r2, r10, asl #16
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	ldrb	r10, [r3, #6]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #8
	ldrb	r7, [r8, #2]	@ zero_extendqisi2
	orr	r6, r6, fp, asl #16
	orr	ip, ip, r10, asl #16
	ldrb	fp, [r1, #2]	@ zero_extendqisi2
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #16
	ldrb	r7, [r8, #3]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #16
	orr	r9, r9, fp, asl #16
	ldrb	r10, [r3, #3]	@ zero_extendqisi2
	ldrb	fp, [r8, #7]	@ zero_extendqisi2
	orr	r7, lr, r7, asl #24
	ldrb	lr, [r3, #7]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #24
	orr	r6, r6, r10, asl #24
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	orr	ip, ip, lr, asl #24
	.loc 6 64 0
	add	lr, r8, r4
.LBE1482:
.LBE1488:
	.loc 5 696 0
	sub	sp, sp, #236
	.cfi_def_cfa_offset 272
.LVL1511:
.LBB1489:
.LBB1483:
	.loc 6 61 0
	orr	r9, r9, fp, asl #24
	orr	r10, r5, r10, asl #24
	.loc 6 62 0
	ldrb	fp, [r1, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r5, lr, r4
	.loc 6 62 0
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
.LVL1512:
	.loc 6 61 0
	str	r7, [sp, #120]
	str	r6, [sp, #104]
	str	ip, [sp, #108]
	str	r9, [sp, #88]
	str	r10, [sp, #92]
	.loc 6 62 0
	strb	fp, [sp, #96]
.LVL1513:
	strb	r1, [sp, #112]
.LVL1514:
	.loc 6 61 0
	ldrb	r9, [r5, #1]	@ zero_extendqisi2
	ldrb	r6, [r8, r4, asl #1]	@ zero_extendqisi2
	str	r2, [sp, #124]
	ldrb	r10, [lr, #1]	@ zero_extendqisi2
	ldrb	r2, [r3, r4, asl #1]	@ zero_extendqisi2
	ldrb	r1, [r5, #4]	@ zero_extendqisi2
	ldrb	ip, [r5, #5]	@ zero_extendqisi2
	ldrb	r7, [lr, #5]	@ zero_extendqisi2
	ldrb	fp, [lr, #2]	@ zero_extendqisi2
	ldrb	r3, [lr, #4]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #8
	orr	r6, r6, r9, asl #8
	ldrb	r10, [r5, #2]	@ zero_extendqisi2
	ldrb	r9, [r5, #6]	@ zero_extendqisi2
	orr	ip, r1, ip, asl #8
	ldrb	r1, [lr, #6]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #16
	orr	r3, r3, r7, asl #8
	ldrb	fp, [r5, #3]	@ zero_extendqisi2
	ldrb	r7, [lr, #3]	@ zero_extendqisi2
	orr	r6, r6, r10, asl #16
	orr	ip, ip, r9, asl #16
	ldrb	r10, [r5, #7]	@ zero_extendqisi2
	ldrb	r9, [lr, #7]	@ zero_extendqisi2
	orr	r3, r3, r1, asl #16
	orr	r7, r2, r7, asl #24
	.loc 6 64 0
	add	r1, r5, r4
	.loc 6 62 0
	ldrb	r8, [r8, #8]	@ zero_extendqisi2
.LVL1515:
	.loc 6 61 0
	orr	r6, r6, fp, asl #24
	orr	ip, ip, r10, asl #24
	orr	fp, r3, r9, asl #24
	.loc 6 62 0
	ldrb	r10, [r5, #8]	@ zero_extendqisi2
	ldrb	r9, [lr, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r2, r1, r4
	.loc 6 61 0
	str	r7, [sp, #136]
	.loc 6 62 0
	strb	r8, [sp, #128]
.LVL1516:
	.loc 6 61 0
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	ldrb	r8, [r1, #5]	@ zero_extendqisi2
	str	r6, [sp, #152]
	str	ip, [sp, #156]
	ldrb	r6, [r1, #2]	@ zero_extendqisi2
	str	fp, [sp, #140]
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r10, [sp, #160]
	strb	r9, [sp, #144]
.LVL1517:
	.loc 6 61 0
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	ldrb	lr, [lr, r4, asl #1]	@ zero_extendqisi2
	.loc 6 64 0
	add	r3, r2, r4
	.loc 6 61 0
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	str	r10, [sp, #4]
	ldrb	r5, [r5, r4, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r3, #1]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	orr	lr, lr, r7, asl #8
	ldrb	r8, [r1, r4, asl #1]	@ zero_extendqisi2
	ldrb	r7, [r2, #1]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #8
	orr	r7, r5, r7, asl #8
	ldrb	r10, [r3, #5]	@ zero_extendqisi2
	ldrb	r5, [r3, #4]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #16
	orr	r10, r5, r10, asl #8
	ldrb	r9, [r2, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #4]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #16
	orr	r9, r5, r9, asl #8
	ldrb	r5, [r2, #2]	@ zero_extendqisi2
	ldrb	r6, [r3, #2]	@ zero_extendqisi2
	orr	r7, r7, r5, asl #16
	ldrb	r5, [r2, #6]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	orr	r8, r8, r6, asl #16
	ldr	fp, [sp, #4]
	ldrb	r6, [r3, #6]	@ zero_extendqisi2
	orr	r5, r9, r5, asl #16
	ldrb	r9, [r3, #3]	@ zero_extendqisi2
	orr	ip, ip, fp, asl #24
	orr	r8, r8, r9, asl #24
	ldrb	fp, [r3, #7]	@ zero_extendqisi2
	ldrb	r9, [r2, #7]	@ zero_extendqisi2
	orr	r6, r10, r6, asl #16
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	.loc 6 62 0
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
.LVL1518:
	.loc 6 61 0
	orr	r7, r7, r10, asl #24
	orr	r6, r6, fp, asl #24
	.loc 6 62 0
	ldrb	r10, [r3, #8]	@ zero_extendqisi2
	.loc 6 61 0
	orr	r5, r5, r9, asl #24
	.loc 6 64 0
	add	r3, r3, r4
	.loc 6 62 0
	ldrb	r9, [r2, #8]	@ zero_extendqisi2
	.loc 6 61 0
	str	lr, [sp, #168]
	str	ip, [sp, #172]
	.loc 6 62 0
	strb	r1, [sp, #176]
.LVL1519:
	.loc 6 61 0
	str	r8, [sp, #200]
	str	r7, [sp, #184]
	str	r6, [sp, #204]
	str	r5, [sp, #188]
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	ldrb	r5, [r2, r4, asl #1]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r10, [sp, #208]
	strb	r9, [sp, #192]
.LVL1520:
	.loc 6 61 0
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	ldrb	lr, [r3, #2]	@ zero_extendqisi2
	ldrb	ip, [r3, #6]	@ zero_extendqisi2
	ldrb	r7, [r3, #3]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #8
	orr	r2, r1, r2, asl #8
	ldrb	r6, [r3, #7]	@ zero_extendqisi2
	orr	r1, r5, lr, asl #16
	orr	r2, r2, ip, asl #16
.LBE1483:
.LBE1489:
	.loc 5 696 0
	mov	r5, r0
.LBB1490:
.LBB1484:
	.loc 6 61 0
	orr	lr, r1, r7, asl #24
	orr	ip, r2, r6, asl #24
.LBE1484:
.LBE1490:
	.loc 5 696 0 discriminator 1
	add	r0, sp, #24
.LVL1521:
.LBB1491:
.LBB1485:
	.loc 6 62 0
	ldrb	r6, [r3, #8]	@ zero_extendqisi2
.LBE1485:
.LBE1491:
	.loc 5 696 0 discriminator 1
	add	r1, sp, #88
	mov	r2, #8
	mov	r3, #16
.LVL1522:
.LBB1492:
.LBB1486:
	.loc 6 61 0
	str	lr, [sp, #216]
	str	ip, [sp, #220]
	.loc 6 62 0
	strb	r6, [sp, #224]
.LVL1523:
.LBE1486:
.LBE1492:
	.loc 5 696 0 discriminator 1
	bl	put_no_rnd_mpeg4_qpel8_v_lowpass(PLT)
.LVL1524:
.LBB1493:
.LBB1494:
.LBB1495:
	.loc 4 219 0 discriminator 4
	ldr	r3, [sp, #104]
.LVL1525:
	ldr	r6, [sp, #24]
.LVL1526:
	ldr	r2, [sp, #136]
	str	r2, [sp, #4]
.LBB1496:
.LBB1497:
	.loc 2 38 0
	eor	r8, r6, r3
	and	r2, r6, r3
	ldr	r3, .L246
.LVL1527:
.LBE1497:
.LBE1496:
	.loc 4 219 0 discriminator 4
	ldr	ip, [sp, #108]
.LVL1528:
	ldr	fp, [sp, #28]
.LVL1529:
	ldr	r6, [sp, #152]
.LVL1530:
.LBB1520:
.LBB1498:
	.loc 2 38 0
	and	r8, r8, r3
.LBE1498:
.LBE1520:
	.loc 4 219 0 discriminator 4
	ldr	lr, [sp, #140]
	str	r6, [sp, #12]
.LBB1521:
.LBB1499:
	.loc 2 38 0
	add	r6, r2, r8, lsr #1
.LBE1499:
.LBE1521:
	.loc 4 219 0 discriminator 4
	ldr	r0, [sp, #120]
	ldr	r9, [sp, #36]
	ldr	r8, [sp, #48]
	ldr	r10, [sp, #32]
	ldr	r1, [sp, #124]
	ldr	r7, [sp, #40]
	ldr	r2, [sp, #156]
	str	lr, [sp, #8]
	ldr	lr, [sp, #44]
	str	r6, [r5]
.LVL1531:
.LBB1522:
.LBB1523:
	.loc 2 38 0
	eor	r6, fp, ip
	and	r6, r6, r3
	and	fp, fp, ip
.LVL1532:
	add	fp, fp, r6, lsr #1
.LBE1523:
.LBE1522:
	.loc 4 219 0 discriminator 4
	ldr	r6, [sp, #168]
	str	r6, [sp, #20]
.LBB1546:
.LBB1500:
	.loc 2 38 0
	eor	r6, r10, r0
.LBE1500:
.LBE1546:
	.loc 4 219 0 discriminator 4
	str	r2, [sp, #16]
.LBB1547:
.LBB1501:
	.loc 2 38 0
	and	r6, r6, r3
	ldr	r2, [sp, #4]
	and	r10, r10, r0
.LBE1501:
.LBE1547:
	.loc 4 219 0 discriminator 4
	ldr	ip, [sp, #52]
.LVL1533:
.LBB1548:
.LBB1502:
	.loc 2 38 0
	add	r10, r10, r6, lsr #1
.LBE1502:
.LBE1548:
	.loc 4 219 0 discriminator 4
	str	fp, [r5, #4]
.LVL1534:
.LBB1549:
.LBB1524:
	.loc 2 38 0
	eor	r6, r9, r1
.LBE1524:
.LBE1549:
	.loc 4 219 0 discriminator 4
	mov	fp, r5
	ldr	r0, [sp, #56]
.LVL1535:
.LBB1550:
.LBB1525:
	.loc 2 38 0
	and	r6, r6, r3
.LBE1525:
.LBE1550:
	.loc 4 219 0 discriminator 4
	str	r10, [fp, r4]!
.LBB1551:
.LBB1526:
	.loc 2 38 0
	and	r1, r1, r9
.LVL1536:
.LBE1526:
.LBE1551:
.LBB1552:
.LBB1503:
	eor	r10, r7, r2
.LBE1503:
.LBE1552:
.LBB1553:
.LBB1527:
	add	r1, r1, r6, lsr #1
.LBE1527:
.LBE1553:
.LBB1554:
.LBB1504:
	and	r2, r2, r7
	and	r10, r10, r3
.LBE1504:
.LBE1554:
	.loc 4 219 0 discriminator 4
	ldr	r6, [sp, #172]
.LBB1555:
.LBB1505:
	.loc 2 38 0
	add	r10, r2, r10, lsr #1
.LBE1505:
.LBE1555:
	.loc 4 219 0 discriminator 4
	str	r1, [fp, #4]
.LVL1537:
	ldr	r9, [sp, #184]
.LVL1538:
	ldr	r1, [sp, #60]
	ldr	r2, [sp, #64]
	str	r10, [r5, r4, asl #1]
.LBB1556:
.LBB1528:
	.loc 2 38 0
	ldr	r7, [sp, #8]
.LVL1539:
.LBE1528:
.LBE1556:
.LBB1557:
.LBB1506:
	ldr	fp, [sp, #12]
.LBE1506:
.LBE1557:
.LBB1558:
.LBB1529:
	eor	r10, lr, r7
	and	r10, r10, r3
	and	lr, lr, r7
.LBE1529:
.LBE1558:
	.loc 4 219 0 discriminator 4
	mov	r7, r4, asl #1
.LVL1540:
.LBB1559:
.LBB1530:
	.loc 2 38 0
	add	lr, lr, r10, lsr #1
.LBE1530:
.LBE1559:
	.loc 4 219 0 discriminator 4
	add	r10, r5, r7
	str	lr, [r10, #4]
.LVL1541:
.LBB1560:
.LBB1507:
	.loc 2 38 0
	eor	lr, r8, fp
	and	r10, lr, r3
	and	lr, r8, fp
.LBE1507:
.LBE1560:
.LBB1561:
.LBB1531:
	ldr	r8, [sp, #16]
.LVL1542:
.LBE1531:
.LBE1561:
.LBB1562:
.LBB1508:
	add	lr, lr, r10, lsr #1
.LBE1508:
.LBE1562:
.LBB1563:
.LBB1532:
	eor	r10, ip, r8
	and	ip, ip, r8
.LVL1543:
.LBE1532:
.LBE1563:
.LBB1564:
.LBB1509:
	ldr	r8, [sp, #20]
.LBE1509:
.LBE1564:
	.loc 4 219 0 discriminator 4
	add	r7, r7, r4
.LBB1565:
.LBB1533:
	.loc 2 38 0
	and	r10, r10, r3
.LBE1533:
.LBE1565:
.LBB1566:
.LBB1510:
	eor	fp, r0, r8
.LVL1544:
	and	r0, r0, r8
.LBE1510:
.LBE1566:
.LBB1567:
.LBB1534:
	eor	r8, r1, r6
	and	r1, r1, r6
.LBE1534:
.LBE1567:
.LBB1568:
.LBB1511:
	eor	r6, r2, r9
	and	fp, fp, r3
.LBE1511:
.LBE1568:
.LBB1569:
.LBB1535:
	and	r8, r8, r3
.LBE1535:
.LBE1569:
.LBB1570:
.LBB1512:
	and	r6, r6, r3
.LBE1512:
.LBE1570:
.LBB1571:
.LBB1536:
	add	ip, ip, r10, lsr #1
.LBE1536:
.LBE1571:
.LBB1572:
.LBB1513:
	and	r2, r2, r9
.LBE1513:
.LBE1572:
	.loc 4 219 0 discriminator 4
	add	r10, r7, r4
	mov	r9, r5
.LBB1573:
.LBB1514:
	.loc 2 38 0
	add	r0, r0, fp, lsr #1
.LBE1514:
.LBE1573:
.LBB1574:
.LBB1537:
	add	r1, r1, r8, lsr #1
.LBE1537:
.LBE1574:
	.loc 4 219 0 discriminator 4
	mov	fp, r5
	add	r8, r10, r4
.LBB1575:
.LBB1515:
	.loc 2 38 0
	add	r2, r2, r6, lsr #1
.LBE1515:
.LBE1575:
	.loc 4 219 0 discriminator 4
	mov	r6, r5
	str	lr, [r9, r7]!
	str	ip, [r9, #4]
.LVL1545:
	str	r0, [fp, r10]!
	str	r1, [fp, #4]
.LVL1546:
	str	r2, [r6, r8]!
	ldr	r2, [sp, #188]
.LVL1547:
	ldr	lr, [sp, #68]
.LVL1548:
	ldr	fp, [sp, #72]
	ldr	r9, [sp, #80]
	ldr	ip, [sp, #200]
	ldr	r1, [sp, #216]
.LBB1576:
.LBB1538:
	.loc 2 38 0
	eor	r7, lr, r2
	and	r7, r7, r3
	and	lr, lr, r2
.LVL1549:
.LBE1538:
.LBE1576:
	.loc 4 219 0 discriminator 4
	ldr	r0, [sp, #204]
	ldr	r10, [sp, #76]
	ldr	r2, [sp, #84]
.LVL1550:
.LBB1577:
.LBB1539:
	.loc 2 38 0
	add	lr, lr, r7, lsr #1
.LBE1539:
.LBE1577:
.LBB1578:
.LBB1516:
	eor	r7, fp, ip
	and	ip, ip, fp
	eor	fp, r9, r1
	and	r1, r1, r9
.LBE1516:
.LBE1578:
.LBB1579:
.LBB1540:
	ldr	r9, [sp, #220]
.LBE1540:
.LBE1579:
.LBB1580:
.LBB1517:
	and	r7, r7, r3
	add	r7, ip, r7, lsr #1
.LBE1517:
.LBE1580:
.LBB1581:
.LBB1541:
	eor	r9, r2, r9
	eor	ip, r10, r0
	and	ip, ip, r3
.LBE1541:
.LBE1581:
.LBB1582:
.LBB1518:
	and	fp, fp, r3
.LBE1518:
.LBE1582:
.LBB1583:
.LBB1542:
	and	r3, r3, r9
	ldr	r9, [sp, #220]
.LBE1542:
.LBE1583:
	.loc 4 219 0 discriminator 4
	add	r8, r8, r4
.LBB1584:
.LBB1543:
	.loc 2 38 0
	and	r2, r2, r9
	and	r0, r0, r10
.LBE1543:
.LBE1584:
	.loc 4 219 0 discriminator 4
	mov	r9, r5
	add	r4, r8, r4
.LVL1551:
.LBB1585:
.LBB1544:
	.loc 2 38 0
	add	r0, r0, ip, lsr #1
.LBE1544:
.LBE1585:
.LBB1586:
.LBB1519:
	add	r1, r1, fp, lsr #1
.LBE1519:
.LBE1586:
.LBB1587:
.LBB1545:
	add	r3, r2, r3, lsr #1
.LBE1545:
.LBE1587:
	.loc 4 219 0 discriminator 4
	str	lr, [r6, #4]
.LVL1552:
	str	r7, [r5, r8]!
.LVL1553:
	str	r0, [r5, #4]
.LVL1554:
	str	r1, [r9, r4]!
.LVL1555:
	str	r3, [r9, #4]
.LVL1556:
.LBE1495:
.LBE1494:
.LBE1493:
	.loc 5 696 0
	add	sp, sp, #236
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L247:
	.align	2
.L246:
	.word	-16843010
	.cfi_endproc
.LFE157:
	.size	put_no_rnd_qpel8_mc03_c, .-put_no_rnd_qpel8_mc03_c
	.align	2
	.type	put_no_rnd_qpel8_mc12_c, %function
put_no_rnd_qpel8_mc12_c:
.LFB169:
	.loc 5 696 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 224
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1557:
.LBB1597:
.LBB1598:
	.loc 6 64 0
	add	r3, r1, r2
.LBE1598:
.LBE1597:
	.loc 5 696 0
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
.LBB1604:
.LBB1599:
	.loc 6 64 0
	add	r7, r3, r2
.LBE1599:
.LBE1604:
	.loc 5 696 0
	mov	fp, r2
.LVL1558:
.LBB1605:
.LBB1600:
	.loc 6 61 0
	ldrb	lr, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #4]	@ zero_extendqisi2
.LVL1559:
	ldrb	r4, [r1, fp]	@ zero_extendqisi2
	ldrb	r10, [r3, #5]	@ zero_extendqisi2
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
	ldrb	r8, [r1]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #8
	ldrb	r9, [r1, #1]	@ zero_extendqisi2
	orr	r5, r4, r5, asl #8
	orr	ip, ip, r10, asl #8
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	orr	r8, r8, r9, asl #8
	ldrb	r9, [r7, #6]	@ zero_extendqisi2
	ldrb	r6, [r7, #1]	@ zero_extendqisi2
	orr	r4, r4, r10, asl #8
	orr	r2, r2, r9, asl #16
	ldrb	r10, [r3, #2]	@ zero_extendqisi2
	ldrb	r9, [r3, #6]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #8
	orr	r5, r5, r10, asl #16
	ldrb	r6, [r7, #2]	@ zero_extendqisi2
	ldrb	r10, [r1, #2]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #16
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #16
	orr	r4, r4, r9, asl #16
	ldrb	r6, [r7, #3]	@ zero_extendqisi2
	ldrb	r9, [r3, #3]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #16
	ldrb	r10, [r7, #7]	@ zero_extendqisi2
	orr	r6, lr, r6, asl #24
	orr	r2, r2, r10, asl #24
	ldrb	lr, [r3, #7]	@ zero_extendqisi2
	ldrb	r10, [r1, #3]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	ldrb	r9, [r1, #7]	@ zero_extendqisi2
.LBE1600:
.LBE1605:
	.loc 5 696 0
	sub	sp, sp, #236
	.cfi_def_cfa_offset 272
.LVL1560:
.LBB1606:
.LBB1601:
	.loc 6 61 0
	orr	ip, ip, lr, asl #24
	orr	r8, r8, r10, asl #24
	.loc 6 64 0
	add	lr, r7, fp
	.loc 6 62 0
	ldrb	r10, [r1, #8]	@ zero_extendqisi2
	.loc 6 61 0
	orr	r9, r4, r9, asl #24
	.loc 6 62 0
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
.LVL1561:
	.loc 6 64 0
	add	r4, lr, fp
	.loc 6 61 0
	str	r6, [sp, #120]
	str	r5, [sp, #104]
	str	ip, [sp, #108]
	str	r8, [sp, #88]
	str	r9, [sp, #92]
	.loc 6 62 0
	strb	r10, [sp, #96]
.LVL1562:
	strb	r1, [sp, #112]
.LVL1563:
	.loc 6 61 0
	ldrb	r9, [lr, #1]	@ zero_extendqisi2
	str	r2, [sp, #124]
	ldrb	r2, [r3, fp, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r4, #1]	@ zero_extendqisi2
	ldrb	r5, [r7, fp, asl #1]	@ zero_extendqisi2
	ldrb	r10, [lr, #5]	@ zero_extendqisi2
	ldrb	r3, [lr, #4]	@ zero_extendqisi2
	ldrb	r1, [r4, #4]	@ zero_extendqisi2
	ldrb	ip, [r4, #5]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #8
	ldrb	r9, [r4, #2]	@ zero_extendqisi2
	ldrb	r6, [lr, #2]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #8
	orr	r3, r3, r10, asl #8
	ldrb	r8, [r4, #6]	@ zero_extendqisi2
	ldrb	r10, [lr, #3]	@ zero_extendqisi2
	str	r10, [sp, #12]
	orr	ip, r1, ip, asl #8
	orr	r5, r5, r9, asl #16
	ldrb	r1, [lr, #6]	@ zero_extendqisi2
	ldrb	r9, [r4, #7]	@ zero_extendqisi2
	ldrb	r10, [r4, #3]	@ zero_extendqisi2
	orr	r2, r2, r6, asl #16
	orr	ip, ip, r8, asl #16
	ldr	r6, [sp, #12]
	ldrb	r8, [lr, #7]	@ zero_extendqisi2
	orr	r3, r3, r1, asl #16
	orr	ip, ip, r9, asl #24
	.loc 6 64 0
	add	r1, r4, fp
	.loc 6 61 0
	orr	r6, r2, r6, asl #24
	.loc 6 62 0
	ldrb	r7, [r7, #8]	@ zero_extendqisi2
.LVL1564:
	.loc 6 61 0
	orr	r5, r5, r10, asl #24
	.loc 6 62 0
	ldrb	r9, [r4, #8]	@ zero_extendqisi2
	.loc 6 61 0
	orr	r10, r3, r8, asl #24
	str	ip, [sp, #156]
	ldrb	ip, [r1, #3]	@ zero_extendqisi2
	.loc 6 64 0
	add	r2, r1, fp
	.loc 6 62 0
	ldrb	r8, [lr, #8]	@ zero_extendqisi2
	.loc 6 61 0
	str	r6, [sp, #136]
	.loc 6 62 0
	strb	r7, [sp, #128]
.LVL1565:
	.loc 6 61 0
	ldrb	r6, [r1, #1]	@ zero_extendqisi2
	ldrb	r7, [r1, #5]	@ zero_extendqisi2
	str	r5, [sp, #152]
	str	r10, [sp, #140]
	ldrb	r5, [r1, #2]	@ zero_extendqisi2
	str	ip, [sp, #12]
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r9, [sp, #160]
	.loc 6 61 0
	ldrb	lr, [lr, fp, asl #1]	@ zero_extendqisi2
.LVL1566:
	.loc 6 64 0
	add	r3, r2, fp
	.loc 6 61 0
	ldrb	r4, [r4, fp, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r3, #1]	@ zero_extendqisi2
	orr	ip, ip, r7, asl #8
	orr	lr, lr, r6, asl #8
	ldrb	r7, [r1, fp, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r2, #1]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r8, [sp, #144]
.LVL1567:
	.loc 6 61 0
	orr	r7, r7, r9, asl #8
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	r9, [r3, #5]	@ zero_extendqisi2
	orr	r6, r4, r6, asl #8
	ldrb	r4, [r3, #4]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r9, r4, r9, asl #8
	ldrb	r8, [r2, #5]	@ zero_extendqisi2
	ldrb	r4, [r2, #4]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #16
	orr	r8, r4, r8, asl #8
	ldrb	r5, [r3, #2]	@ zero_extendqisi2
	ldrb	r4, [r2, #2]	@ zero_extendqisi2
	orr	r7, r7, r5, asl #16
	orr	r6, r6, r4, asl #16
	ldrb	r5, [r3, #6]	@ zero_extendqisi2
	ldrb	r4, [r2, #6]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	orr	r5, r9, r5, asl #16
	orr	r4, r8, r4, asl #16
	ldr	r9, [sp, #12]
	ldrb	r8, [r3, #3]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #24
	orr	ip, ip, r10, asl #24
	ldrb	r9, [r2, #3]	@ zero_extendqisi2
	ldrb	r10, [r3, #7]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #24
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	.loc 6 62 0
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
.LVL1568:
	.loc 6 61 0
	orr	r6, r6, r9, asl #24
	orr	r5, r5, r10, asl #24
	.loc 6 62 0
	ldrb	r9, [r3, #8]	@ zero_extendqisi2
	.loc 6 61 0
	orr	r4, r4, r8, asl #24
	.loc 6 64 0
	add	r3, r3, fp
	.loc 6 62 0
	ldrb	r8, [r2, #8]	@ zero_extendqisi2
	.loc 6 61 0
	str	lr, [sp, #168]
	str	ip, [sp, #172]
	.loc 6 62 0
	strb	r1, [sp, #176]
.LVL1569:
	.loc 6 61 0
	str	r7, [sp, #200]
	str	r6, [sp, #184]
	str	r5, [sp, #204]
	.loc 6 62 0
	strb	r9, [sp, #208]
	.loc 6 61 0
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	str	r4, [sp, #188]
	ldrb	r4, [r2, fp, asl #1]	@ zero_extendqisi2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
.LVL1570:
	ldrb	ip, [r3, #6]	@ zero_extendqisi2
	ldrb	lr, [r3, #2]	@ zero_extendqisi2
	orr	r4, r4, r5, asl #8
	orr	r2, r1, r2, asl #8
	ldrb	r5, [r3, #7]	@ zero_extendqisi2
	ldrb	r7, [r3, #3]	@ zero_extendqisi2
	orr	r2, r2, ip, asl #16
	orr	ip, r2, r5, asl #24
	orr	r1, r4, lr, asl #16
.LBE1601:
.LBE1606:
	.loc 5 696 0 discriminator 1
	add	r5, sp, #16
	mov	r6, #9
.LBB1607:
.LBB1602:
	.loc 6 61 0
	orr	lr, r1, r7, asl #24
	.loc 6 62 0
	ldrb	r4, [r3, #8]	@ zero_extendqisi2
	strb	r8, [sp, #192]
.LVL1571:
.LBE1602:
.LBE1607:
	.loc 5 696 0 discriminator 1
	str	r6, [sp]
	.loc 5 696 0 is_stmt 0
	mov	r8, r0
	.loc 5 696 0 discriminator 1
	add	r1, sp, #88
	mov	r0, r5
.LVL1572:
	mov	r2, #8
	mov	r3, #16
.LVL1573:
.LBB1608:
.LBB1603:
	.loc 6 61 0 is_stmt 1
	str	lr, [sp, #216]
	str	ip, [sp, #220]
	.loc 6 62 0
	strb	r4, [sp, #224]
.LVL1574:
.LBE1603:
.LBE1608:
	.loc 5 696 0 discriminator 1
	bl	put_no_rnd_mpeg4_qpel8_h_lowpass(PLT)
.LVL1575:
.LBB1609:
.LBB1610:
.LBB1611:
	.loc 4 219 0 discriminator 4
	ldr	r3, [sp, #16]
.LVL1576:
	ldr	lr, [sp, #88]
.LVL1577:
	ldr	ip, [sp, #20]
.LVL1578:
.LBB1612:
.LBB1613:
	.loc 2 38 0
	eor	r4, lr, r3
	and	lr, lr, r3
.LVL1579:
	ldr	r3, .L250
.LVL1580:
.LBE1613:
.LBE1612:
	.loc 4 219 0 discriminator 4
	ldr	r10, [sp, #92]
.LVL1581:
.LBB1636:
.LBB1614:
	.loc 2 38 0
	and	r4, r4, r3
	add	lr, lr, r4, lsr #1
.LBE1614:
.LBE1636:
	.loc 4 219 0 discriminator 4
	str	lr, [sp, #16]
.LVL1582:
.LBB1637:
.LBB1638:
	.loc 2 38 0
	eor	lr, r10, ip
.LBE1638:
.LBE1637:
	.loc 4 219 0 discriminator 4
	ldr	r0, [sp, #24]
	ldr	r9, [sp, #104]
.LBB1663:
.LBB1639:
	.loc 2 38 0
	and	lr, lr, r3
	and	ip, ip, r10
.LVL1583:
	add	ip, ip, lr, lsr #1
.LBE1639:
.LBE1663:
	.loc 4 219 0 discriminator 4
	str	ip, [sp, #20]
.LVL1584:
.LBB1664:
.LBB1615:
	.loc 2 38 0
	eor	ip, r9, r0
.LBE1615:
.LBE1664:
	.loc 4 219 0 discriminator 4
	ldr	r1, [sp, #28]
.LVL1585:
	ldr	r7, [sp, #108]
.LVL1586:
.LBB1665:
.LBB1616:
	.loc 2 38 0
	and	ip, ip, r3
	and	r0, r0, r9
.LVL1587:
	add	r0, r0, ip, lsr #1
.LBE1616:
.LBE1665:
	.loc 4 219 0 discriminator 4
	str	r0, [sp, #24]
.LVL1588:
.LBB1666:
.LBB1640:
	.loc 2 38 0
	eor	r0, r7, r1
.LBE1640:
.LBE1666:
	.loc 4 219 0 discriminator 4
	ldr	r2, [sp, #32]
	ldr	r6, [sp, #120]
.LBB1667:
.LBB1641:
	.loc 2 38 0
	and	r0, r0, r3
	and	r1, r1, r7
.LVL1589:
	add	r1, r1, r0, lsr #1
.LBE1641:
.LBE1667:
	.loc 4 219 0 discriminator 4
	str	r1, [sp, #28]
.LVL1590:
.LBB1668:
.LBB1617:
	.loc 2 38 0
	eor	r1, r6, r2
	and	r1, r1, r3
	and	r2, r2, r6
.LVL1591:
	add	r2, r2, r1, lsr #1
.LBE1617:
.LBE1668:
.LBB1669:
.LBB1642:
	ldr	r6, [sp, #36]
.LVL1592:
.LBE1642:
.LBE1669:
	.loc 4 219 0 discriminator 4
	str	r2, [sp, #32]
.LVL1593:
.LBB1670:
.LBB1643:
	.loc 2 38 0
	ldr	r2, [sp, #124]
	ldr	r7, [sp, #36]
	eor	r2, r2, r6
	ldr	r6, [sp, #124]
	and	r2, r2, r3
	and	r6, r6, r7
	add	r2, r6, r2, lsr #1
.LBE1643:
.LBE1670:
	.loc 4 219 0 discriminator 4
	str	r2, [sp, #36]
.LVL1594:
.LBB1671:
.LBB1618:
	.loc 2 38 0
	ldr	r6, [sp, #40]
	ldr	r2, [sp, #136]
	ldr	r7, [sp, #40]
.LVL1595:
	eor	r2, r2, r6
	ldr	r6, [sp, #136]
.LBE1618:
.LBE1671:
	.loc 4 219 0 discriminator 4
	ldr	r4, [sp, #140]
	ldr	r10, [sp, #152]
	ldr	lr, [sp, #44]
.LVL1596:
	ldr	ip, [sp, #48]
	ldr	r9, [sp, #156]
	ldr	r0, [sp, #52]
.LBB1672:
.LBB1619:
	.loc 2 38 0
	and	r6, r6, r7
	and	r2, r2, r3
	add	r2, r6, r2, lsr #1
.LBE1619:
.LBE1672:
.LBB1673:
.LBB1644:
	eor	r6, r4, lr
	and	lr, lr, r4
.LVL1597:
.LBE1644:
.LBE1673:
.LBB1674:
.LBB1620:
	eor	r4, r10, ip
.LVL1598:
	and	r7, r4, r3
.LBE1620:
.LBE1674:
.LBB1675:
.LBB1645:
	eor	r4, r9, r0
	and	r4, r4, r3
	and	r0, r0, r9
.LBE1645:
.LBE1675:
	.loc 4 219 0 discriminator 4
	ldr	r1, [sp, #56]
.LBB1676:
.LBB1621:
	.loc 2 38 0
	ldr	r9, [sp, #168]
.LBE1621:
.LBE1676:
.LBB1677:
.LBB1646:
	add	r0, r0, r4, lsr #1
.LBE1646:
.LBE1677:
.LBB1678:
.LBB1622:
	and	ip, ip, r10
	ldr	r10, [sp, #168]
.LBE1622:
.LBE1678:
	.loc 4 219 0 discriminator 4
	str	r2, [sp, #40]
.LVL1599:
	ldr	r2, [sp, #60]
	ldr	r4, [sp, #172]
.LBB1679:
.LBB1647:
	.loc 2 38 0
	and	r6, r6, r3
	add	lr, lr, r6, lsr #1
	eor	r6, r4, r2
.LBE1647:
.LBE1679:
	.loc 4 219 0 discriminator 4
	str	lr, [sp, #44]
.LVL1600:
.LBB1680:
.LBB1648:
	.loc 2 38 0
	and	r6, r6, r3
.LBE1648:
.LBE1680:
	.loc 4 219 0 discriminator 4
	ldr	lr, [sp, #64]
.LBB1681:
.LBB1623:
	.loc 2 38 0
	eor	r9, r9, r1
.LBE1623:
.LBE1681:
.LBB1682:
.LBB1649:
	and	r4, r4, r2
.LBE1649:
.LBE1682:
.LBB1683:
.LBB1624:
	and	r1, r1, r10
.LBE1624:
.LBE1683:
	.loc 4 219 0 discriminator 4
	ldr	r10, [sp, #184]
.LBB1684:
.LBB1650:
	.loc 2 38 0
	add	r4, r4, r6, lsr #1
.LBE1650:
.LBE1684:
	.loc 4 219 0 discriminator 4
	str	r4, [sp, #60]
.LBB1685:
.LBB1625:
	.loc 2 38 0
	eor	r4, r10, lr
	and	r4, r4, r3
	and	lr, lr, r10
	and	r9, r9, r3
.LVL1601:
	add	lr, lr, r4, lsr #1
	add	r1, r1, r9, lsr #1
.LBE1625:
.LBE1685:
.LBB1686:
.LBB1651:
	ldr	r4, [sp, #68]
.LBE1651:
.LBE1686:
	.loc 4 219 0 discriminator 4
	ldr	r9, [sp, #188]
	str	lr, [sp, #64]
.LBB1687:
.LBB1652:
	.loc 2 38 0
	ldr	lr, [sp, #68]
.LBE1652:
.LBE1687:
.LBB1688:
.LBB1626:
	ldr	r6, [sp, #72]
.LBE1626:
.LBE1688:
.LBB1689:
.LBB1653:
	eor	lr, r9, lr
	and	r9, r9, r4
.LBE1653:
.LBE1689:
.LBB1690:
.LBB1627:
	ldr	r4, [sp, #200]
.LBE1627:
.LBE1690:
.LBB1691:
.LBB1654:
	and	lr, lr, r3
	add	lr, r9, lr, lsr #1
.LBE1654:
.LBE1691:
.LBB1692:
.LBB1628:
	eor	r4, r4, r6
	ldr	r9, [sp, #72]
	ldr	r6, [sp, #200]
.LBE1628:
.LBE1692:
.LBB1693:
.LBB1655:
	ldr	r10, [sp, #76]
.LBE1655:
.LBE1693:
.LBB1694:
.LBB1629:
	and	r6, r6, r9
.LBE1629:
.LBE1694:
.LBB1695:
.LBB1656:
	ldr	r9, [sp, #204]
.LBE1656:
.LBE1695:
.LBB1696:
.LBB1630:
	add	ip, ip, r7, lsr #1
.LBE1630:
.LBE1696:
	.loc 4 219 0 discriminator 4
	str	ip, [sp, #48]
.LVL1602:
	ldr	r7, [sp, #216]
	ldr	ip, [sp, #80]
	str	r0, [sp, #52]
.LVL1603:
	str	r1, [sp, #56]
.LBE1611:
.LBE1610:
.LBE1609:
	.loc 5 696 0 discriminator 3
	mov	r0, r8
	mov	r1, r5
.LBB1714:
.LBB1711:
.LBB1708:
	.loc 4 219 0 discriminator 4
	ldr	r8, [sp, #220]
.LVL1604:
	ldr	r5, [sp, #84]
.LVL1605:
.LBE1708:
.LBE1711:
.LBE1714:
	.loc 5 696 0 discriminator 3
	mov	r2, fp
.LBB1715:
.LBB1712:
.LBB1709:
.LBB1697:
.LBB1657:
	.loc 2 38 0
	eor	r9, r9, r10
	ldr	fp, [sp, #76]
.LVL1606:
	ldr	r10, [sp, #204]
.LBE1657:
.LBE1697:
.LBB1698:
.LBB1631:
	and	r4, r4, r3
.LBE1631:
.LBE1698:
.LBB1699:
.LBB1658:
	and	r10, r10, fp
.LBE1658:
.LBE1699:
.LBB1700:
.LBB1632:
	eor	fp, r7, ip
	and	ip, ip, r7
.LBE1632:
.LBE1700:
.LBB1701:
.LBB1659:
	eor	r7, r8, r5
.LBE1659:
.LBE1701:
.LBB1702:
.LBB1633:
	and	fp, fp, r3
.LBE1633:
.LBE1702:
.LBB1703:
.LBB1660:
	and	r9, r9, r3
	and	r5, r5, r8
	and	r3, r3, r7
.LBE1660:
.LBE1703:
.LBB1704:
.LBB1634:
	add	ip, ip, fp, lsr #1
.LBE1634:
.LBE1704:
.LBB1705:
.LBB1661:
	add	r5, r5, r3, lsr #1
.LBE1661:
.LBE1705:
.LBB1706:
.LBB1635:
	add	r4, r6, r4, lsr #1
.LBE1635:
.LBE1706:
.LBB1707:
.LBB1662:
	add	r9, r10, r9, lsr #1
.LBE1662:
.LBE1707:
.LBE1709:
.LBE1712:
.LBE1715:
	.loc 5 696 0 discriminator 3
	mov	r3, #8
.LBB1716:
.LBB1713:
.LBB1710:
	.loc 4 219 0 discriminator 4
	str	lr, [sp, #68]
.LVL1607:
	str	r4, [sp, #72]
.LVL1608:
	str	r9, [sp, #76]
.LVL1609:
	str	ip, [sp, #80]
	str	r5, [sp, #84]
.LVL1610:
.LBE1710:
.LBE1713:
.LBE1716:
	.loc 5 696 0 discriminator 3
	bl	put_no_rnd_mpeg4_qpel8_v_lowpass(PLT)
.LVL1611:
	.loc 5 696 0 is_stmt 0
	add	sp, sp, #236
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1612:
.L251:
	.align	2
.L250:
	.word	-16843010
	.cfi_endproc
.LFE169:
	.size	put_no_rnd_qpel8_mc12_c, .-put_no_rnd_qpel8_mc12_c
	.align	2
	.type	put_no_rnd_qpel8_mc32_c, %function
put_no_rnd_qpel8_mc32_c:
.LFB171:
	.loc 5 696 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 224
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1613:
.LBB1726:
.LBB1727:
	.loc 6 64 0
	add	r3, r1, r2
.LBE1727:
.LBE1726:
	.loc 5 696 0
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
.LBB1733:
.LBB1728:
	.loc 6 64 0
	add	r8, r3, r2
.LBE1728:
.LBE1733:
	.loc 5 696 0
	mov	r4, r2
.LVL1614:
.LBB1734:
.LBB1729:
	.loc 6 61 0
	ldrb	lr, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r8, #5]	@ zero_extendqisi2
	ldrb	r2, [r8, #4]	@ zero_extendqisi2
.LVL1615:
	ldrb	r5, [r1, r4]	@ zero_extendqisi2
	ldrb	fp, [r3, #5]	@ zero_extendqisi2
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
	ldrb	r9, [r1]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #8
	ldrb	r10, [r1, #1]	@ zero_extendqisi2
	orr	r6, r5, r6, asl #8
	orr	ip, ip, fp, asl #8
	ldrb	r5, [r1, #4]	@ zero_extendqisi2
	ldrb	fp, [r1, #5]	@ zero_extendqisi2
	orr	r9, r9, r10, asl #8
	ldrb	r10, [r8, #6]	@ zero_extendqisi2
	ldrb	r7, [r8, #1]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #8
	orr	r2, r2, r10, asl #16
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	ldrb	r10, [r3, #6]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #8
	ldrb	r7, [r8, #2]	@ zero_extendqisi2
	orr	r6, r6, fp, asl #16
	orr	ip, ip, r10, asl #16
	ldrb	fp, [r1, #2]	@ zero_extendqisi2
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #16
	ldrb	r7, [r8, #3]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #16
	orr	r9, r9, fp, asl #16
	ldrb	r10, [r3, #3]	@ zero_extendqisi2
	ldrb	fp, [r8, #7]	@ zero_extendqisi2
	orr	r7, lr, r7, asl #24
	ldrb	lr, [r3, #7]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #24
	orr	r6, r6, r10, asl #24
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	orr	ip, ip, lr, asl #24
	.loc 6 64 0
	add	lr, r8, r4
.LBE1729:
.LBE1734:
	.loc 5 696 0
	sub	sp, sp, #236
	.cfi_def_cfa_offset 272
.LVL1616:
.LBB1735:
.LBB1730:
	.loc 6 61 0
	orr	r9, r9, fp, asl #24
	orr	r10, r5, r10, asl #24
	.loc 6 62 0
	ldrb	fp, [r1, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r5, lr, r4
	.loc 6 62 0
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
.LVL1617:
	.loc 6 61 0
	str	r7, [sp, #120]
	str	r6, [sp, #104]
	str	ip, [sp, #108]
	str	r9, [sp, #88]
	str	r10, [sp, #92]
	.loc 6 62 0
	strb	fp, [sp, #96]
.LVL1618:
	strb	r1, [sp, #112]
.LVL1619:
	.loc 6 61 0
	ldrb	r9, [r5, #1]	@ zero_extendqisi2
	ldrb	r6, [r8, r4, asl #1]	@ zero_extendqisi2
	str	r2, [sp, #124]
	ldrb	r10, [lr, #1]	@ zero_extendqisi2
	ldrb	r2, [r3, r4, asl #1]	@ zero_extendqisi2
	ldrb	r1, [r5, #4]	@ zero_extendqisi2
	ldrb	ip, [r5, #5]	@ zero_extendqisi2
	ldrb	r7, [lr, #5]	@ zero_extendqisi2
	ldrb	fp, [lr, #2]	@ zero_extendqisi2
	ldrb	r3, [lr, #4]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #8
	orr	r6, r6, r9, asl #8
	ldrb	r10, [r5, #2]	@ zero_extendqisi2
	ldrb	r9, [r5, #6]	@ zero_extendqisi2
	orr	ip, r1, ip, asl #8
	ldrb	r1, [lr, #6]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #16
	orr	r3, r3, r7, asl #8
	ldrb	fp, [r5, #3]	@ zero_extendqisi2
	ldrb	r7, [lr, #3]	@ zero_extendqisi2
	orr	r6, r6, r10, asl #16
	orr	ip, ip, r9, asl #16
	ldrb	r10, [r5, #7]	@ zero_extendqisi2
	ldrb	r9, [lr, #7]	@ zero_extendqisi2
	orr	r3, r3, r1, asl #16
	orr	r7, r2, r7, asl #24
	.loc 6 64 0
	add	r1, r5, r4
	.loc 6 62 0
	ldrb	r8, [r8, #8]	@ zero_extendqisi2
.LVL1620:
	.loc 6 61 0
	orr	r6, r6, fp, asl #24
	orr	ip, ip, r10, asl #24
	orr	fp, r3, r9, asl #24
	.loc 6 62 0
	ldrb	r10, [r5, #8]	@ zero_extendqisi2
	ldrb	r9, [lr, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r2, r1, r4
	.loc 6 61 0
	str	r7, [sp, #136]
	.loc 6 62 0
	strb	r8, [sp, #128]
.LVL1621:
	.loc 6 61 0
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	ldrb	r8, [r1, #5]	@ zero_extendqisi2
	str	r6, [sp, #152]
	str	ip, [sp, #156]
	ldrb	r6, [r1, #2]	@ zero_extendqisi2
	str	fp, [sp, #140]
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r10, [sp, #160]
	strb	r9, [sp, #144]
.LVL1622:
	.loc 6 61 0
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	ldrb	lr, [lr, r4, asl #1]	@ zero_extendqisi2
	.loc 6 64 0
	add	r3, r2, r4
	.loc 6 61 0
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	str	r10, [sp, #12]
	ldrb	r5, [r5, r4, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r3, #1]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	orr	lr, lr, r7, asl #8
	ldrb	r8, [r1, r4, asl #1]	@ zero_extendqisi2
	ldrb	r7, [r2, #1]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #8
	orr	r7, r5, r7, asl #8
	ldrb	r10, [r3, #5]	@ zero_extendqisi2
	ldrb	r5, [r3, #4]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #16
	orr	r10, r5, r10, asl #8
	ldrb	r9, [r2, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #4]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #16
	orr	r9, r5, r9, asl #8
	ldrb	r5, [r2, #2]	@ zero_extendqisi2
	ldrb	r6, [r3, #2]	@ zero_extendqisi2
	orr	r7, r7, r5, asl #16
	ldrb	r5, [r2, #6]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	orr	r8, r8, r6, asl #16
	ldr	fp, [sp, #12]
	ldrb	r6, [r3, #6]	@ zero_extendqisi2
	orr	r5, r9, r5, asl #16
	ldrb	r9, [r3, #3]	@ zero_extendqisi2
	orr	ip, ip, fp, asl #24
	orr	r8, r8, r9, asl #24
	ldrb	fp, [r3, #7]	@ zero_extendqisi2
	ldrb	r9, [r2, #7]	@ zero_extendqisi2
	orr	r6, r10, r6, asl #16
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	orr	r6, r6, fp, asl #24
	orr	r7, r7, r10, asl #24
	orr	r5, r5, r9, asl #24
	.loc 6 62 0
	ldrb	r10, [r3, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r3, r3, r4
	.loc 6 62 0
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
.LVL1623:
	ldrb	r9, [r2, #8]	@ zero_extendqisi2
	.loc 6 61 0
	str	r6, [sp, #204]
	str	r5, [sp, #188]
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	ldrb	r5, [r2, r4, asl #1]	@ zero_extendqisi2
	str	lr, [sp, #168]
	str	ip, [sp, #172]
	.loc 6 62 0
	strb	r1, [sp, #176]
.LVL1624:
	.loc 6 61 0
	str	r8, [sp, #200]
	str	r7, [sp, #184]
	.loc 6 62 0
	strb	r10, [sp, #208]
	strb	r9, [sp, #192]
.LVL1625:
	.loc 6 61 0
	ldrb	lr, [r3, #2]	@ zero_extendqisi2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	ldrb	r8, [r3, #3]	@ zero_extendqisi2
	ldrb	ip, [r3, #6]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #8
	ldrb	r7, [r3, #7]	@ zero_extendqisi2
	orr	r2, r1, r2, asl #8
	orr	r1, r5, lr, asl #16
	orr	lr, r1, r8, asl #24
	orr	r2, r2, ip, asl #16
.LBE1730:
.LBE1735:
	.loc 5 696 0 discriminator 1
	add	r8, sp, #16
	mov	r6, #9
.LBB1736:
.LBB1731:
	.loc 6 61 0
	orr	ip, r2, r7, asl #24
	.loc 6 62 0
	ldrb	r5, [r3, #8]	@ zero_extendqisi2
.LBE1731:
.LBE1736:
	.loc 5 696 0
	str	r0, [sp, #12]
	.loc 5 696 0 is_stmt 0 discriminator 1
	str	r6, [sp]
	mov	r0, r8
.LVL1626:
	add	r1, sp, #88
	mov	r2, #8
	mov	r3, #16
.LVL1627:
.LBB1737:
.LBB1732:
	.loc 6 61 0 is_stmt 1
	str	lr, [sp, #216]
	str	ip, [sp, #220]
	.loc 6 62 0
	strb	r5, [sp, #224]
.LVL1628:
.LBE1732:
.LBE1737:
	.loc 5 696 0 discriminator 1
	bl	put_no_rnd_mpeg4_qpel8_h_lowpass(PLT)
.LVL1629:
.LBB1738:
.LBB1739:
.LBB1740:
	.loc 4 219 0 discriminator 4
	ldrb	fp, [sp, #96]	@ zero_extendqisi2
	ldrb	r6, [sp, #128]	@ zero_extendqisi2
	ldr	r1, [sp, #92]
	ldrb	r3, [sp, #92]	@ zero_extendqisi2
	ldrb	r9, [sp, #108]	@ zero_extendqisi2
	mov	ip, r6, asl #24
	mov	r10, fp, asl #24
	ldr	r6, [sp, #88]
	orr	fp, r10, r1, lsr #8
	ldrb	r7, [sp, #112]	@ zero_extendqisi2
	ldr	r1, [sp, #104]
	mov	r3, r3, asl #24
	orr	r3, r3, r6, lsr #8
	ldrb	r2, [sp, #124]	@ zero_extendqisi2
	ldr	r6, [sp, #108]
	mov	r9, r9, asl #24
	orr	r9, r9, r1, lsr #8
	mov	r7, r7, asl #24
	ldr	r1, [sp, #120]
	ldr	r0, [sp, #16]
.LVL1630:
	ldrb	lr, [sp, #144]	@ zero_extendqisi2
	orr	r7, r7, r6, lsr #8
	mov	r2, r2, asl #24
	ldr	r6, [sp, #124]
	orr	r2, r2, r1, lsr #8
	ldr	r1, [sp, #140]
	orr	r6, ip, r6, lsr #8
	ldrb	r5, [sp, #140]	@ zero_extendqisi2
.LBB1741:
.LBB1742:
	.loc 2 38 0
	eor	ip, r3, r0
.LBE1742:
.LBE1741:
	.loc 4 219 0 discriminator 4
	mov	lr, lr, asl #24
.LBB1768:
.LBB1743:
	.loc 2 38 0
	and	r0, r0, r3
.LVL1631:
	ldr	r3, .L254
.LVL1632:
.LBE1743:
.LBE1768:
	.loc 4 219 0 discriminator 4
	ldr	r10, [sp, #136]
	orr	lr, lr, r1, lsr #8
	ldr	r1, [sp, #20]
.LVL1633:
.LBB1769:
.LBB1744:
	.loc 2 38 0
	and	ip, ip, r3
.LBE1744:
.LBE1769:
	.loc 4 219 0 discriminator 4
	mov	r5, r5, asl #24
	orr	r5, r5, r10, lsr #8
.LBB1770:
.LBB1745:
	.loc 2 38 0
	add	r0, r0, ip, lsr #1
.LBE1745:
.LBE1770:
.LBB1771:
.LBB1772:
	eor	r10, fp, r1
.LBE1772:
.LBE1771:
	.loc 4 219 0 discriminator 4
	str	r0, [sp, #16]
.LVL1634:
.LBB1798:
.LBB1773:
	.loc 2 38 0
	and	r1, r1, fp
.LVL1635:
	and	r0, r10, r3
	add	r10, r1, r0, lsr #1
.LBE1773:
.LBE1798:
	.loc 4 219 0 discriminator 4
	str	r10, [sp, #20]
.LVL1636:
.LBB1799:
.LBB1746:
	.loc 2 38 0
	ldr	r10, [sp, #24]
	ldr	fp, [sp, #24]
	eor	r10, r9, r10
	and	r10, r10, r3
	and	r9, r9, fp
.LVL1637:
	add	r9, r9, r10, lsr #1
.LBE1746:
.LBE1799:
	.loc 4 219 0 discriminator 4
	str	r9, [sp, #24]
.LVL1638:
.LBB1800:
.LBB1774:
	.loc 2 38 0
	ldr	r9, [sp, #28]
	ldr	r10, [sp, #28]
	eor	r9, r7, r9
	and	r9, r9, r3
	and	r7, r7, r10
.LVL1639:
.LBE1774:
.LBE1800:
	.loc 4 219 0 discriminator 4
	ldr	ip, [sp, #36]
.LBB1801:
.LBB1747:
	.loc 2 38 0
	ldr	r10, [sp, #32]
.LBE1747:
.LBE1801:
	.loc 4 219 0 discriminator 4
	ldr	r0, [sp, #40]
.LBB1802:
.LBB1775:
	.loc 2 38 0
	add	r9, r7, r9, lsr #1
.LBE1775:
.LBE1802:
.LBB1803:
.LBB1748:
	ldr	r7, [sp, #32]
.LBE1748:
.LBE1803:
	.loc 4 219 0 discriminator 4
	ldr	r1, [sp, #44]
.LBB1804:
.LBB1749:
	.loc 2 38 0
	eor	fp, r5, r0
.LVL1640:
	eor	r7, r2, r7
	and	r2, r2, r10
.LBE1749:
.LBE1804:
.LBB1805:
.LBB1776:
	eor	r10, r6, ip
.LBE1776:
.LBE1805:
.LBB1806:
.LBB1750:
	and	r7, r7, r3
.LBE1750:
.LBE1806:
.LBB1807:
.LBB1777:
	and	r10, r10, r3
.LBE1777:
.LBE1807:
.LBB1808:
.LBB1751:
	and	fp, fp, r3
.LBE1751:
.LBE1808:
.LBB1809:
.LBB1778:
	and	ip, ip, r6
.LBE1778:
.LBE1809:
.LBB1810:
.LBB1752:
	and	r0, r0, r5
	add	r2, r2, r7, lsr #1
.LBE1752:
.LBE1810:
.LBB1811:
.LBB1779:
	eor	r5, lr, r1
	add	ip, ip, r10, lsr #1
.LBE1779:
.LBE1811:
.LBB1812:
.LBB1753:
	add	r0, r0, fp, lsr #1
.LBE1753:
.LBE1812:
.LBB1813:
.LBB1780:
	and	r5, r5, r3
.LBE1780:
.LBE1813:
	.loc 4 219 0 discriminator 4
	str	r9, [sp, #28]
.LVL1641:
	str	r2, [sp, #32]
.LVL1642:
	str	ip, [sp, #36]
.LVL1643:
.LBB1814:
.LBB1781:
	.loc 2 38 0
	and	r1, r1, lr
.LVL1644:
.LBE1781:
.LBE1814:
	.loc 4 219 0 discriminator 4
	str	r0, [sp, #40]
.LVL1645:
	ldrb	lr, [sp, #160]	@ zero_extendqisi2
.LVL1646:
.LBB1815:
.LBB1782:
	.loc 2 38 0
	add	r1, r1, r5, lsr #1
.LBE1782:
.LBE1815:
	.loc 4 219 0 discriminator 4
	ldrb	r5, [sp, #156]	@ zero_extendqisi2
	mov	ip, lr, asl #24
	ldr	lr, [sp, #152]
	mov	r5, r5, asl #24
	orr	r5, r5, lr, lsr #8
	ldr	lr, [sp, #156]
	ldrb	r10, [sp, #172]	@ zero_extendqisi2
	orr	lr, ip, lr, lsr #8
	ldr	ip, [sp, #168]
	ldrb	r0, [sp, #176]	@ zero_extendqisi2
	mov	r10, r10, asl #24
	orr	r10, r10, ip, lsr #8
	ldr	ip, [sp, #172]
	ldrb	r2, [sp, #188]	@ zero_extendqisi2
	mov	r0, r0, asl #24
	orr	r0, r0, ip, lsr #8
	ldr	ip, [sp, #184]
	ldr	r9, [sp, #48]
	ldrb	r7, [sp, #204]	@ zero_extendqisi2
	mov	r2, r2, asl #24
	str	r1, [sp, #44]
.LVL1647:
	orr	r2, r2, ip, lsr #8
	ldrb	r1, [sp, #192]	@ zero_extendqisi2
	ldr	ip, [sp, #200]
.LBB1816:
.LBB1754:
	.loc 2 38 0
	eor	fp, r5, r9
.LBE1754:
.LBE1816:
	.loc 4 219 0 discriminator 4
	mov	r7, r7, asl #24
.LBB1817:
.LBB1755:
	.loc 2 38 0
	and	r5, r5, r9
.LVL1648:
.LBE1755:
.LBE1817:
	.loc 4 219 0 discriminator 4
	ldr	r9, [sp, #188]
.LVL1649:
	orr	r7, r7, ip, lsr #8
	ldrb	r6, [sp, #208]	@ zero_extendqisi2
	ldr	ip, [sp, #52]
.LVL1650:
.LBB1818:
.LBB1756:
	.loc 2 38 0
	and	fp, fp, r3
.LBE1756:
.LBE1818:
	.loc 4 219 0 discriminator 4
	mov	r1, r1, asl #24
	orr	r1, r1, r9, lsr #8
.LBB1819:
.LBB1757:
	.loc 2 38 0
	add	fp, r5, fp, lsr #1
.LBE1757:
.LBE1819:
	.loc 4 219 0 discriminator 4
	ldr	r9, [sp, #204]
	str	fp, [sp, #48]
.LVL1651:
	mov	r6, r6, asl #24
.LBB1820:
.LBB1783:
	.loc 2 38 0
	eor	fp, lr, ip
.LBE1783:
.LBE1820:
	.loc 4 219 0 discriminator 4
	orr	r6, r6, r9, lsr #8
.LBB1821:
.LBB1784:
	.loc 2 38 0
	and	ip, ip, lr
.LVL1652:
.LBE1784:
.LBE1821:
	.loc 4 219 0 discriminator 4
	ldr	r9, [sp, #56]
.LBB1822:
.LBB1785:
	.loc 2 38 0
	and	fp, fp, r3
	add	fp, ip, fp, lsr #1
.LBE1785:
.LBE1822:
	.loc 4 219 0 discriminator 4
	str	fp, [sp, #52]
.LVL1653:
.LBB1823:
.LBB1758:
	.loc 2 38 0
	eor	fp, r10, r9
	and	fp, fp, r3
	and	r9, r9, r10
.LVL1654:
	add	r9, r9, fp, lsr #1
.LBE1758:
.LBE1823:
.LBB1824:
.LBB1786:
	ldr	r10, [sp, #60]
.LVL1655:
.LBE1786:
.LBE1824:
	.loc 4 219 0 discriminator 4
	str	r9, [sp, #56]
.LVL1656:
.LBB1825:
.LBB1787:
	.loc 2 38 0
	ldr	r9, [sp, #60]
.LBE1787:
.LBE1825:
	.loc 4 219 0 discriminator 4
	ldr	r5, [sp, #68]
	ldr	lr, [sp, #72]
	ldr	ip, [sp, #76]
.LBB1826:
.LBB1788:
	.loc 2 38 0
	eor	r9, r0, r9
	and	r0, r0, r10
.LVL1657:
.LBE1788:
.LBE1826:
.LBB1827:
.LBB1759:
	ldr	r10, [sp, #64]
.LBE1759:
.LBE1827:
.LBB1828:
.LBB1789:
	and	r9, r9, r3
	add	r9, r0, r9, lsr #1
.LBE1789:
.LBE1828:
.LBB1829:
.LBB1760:
	eor	fp, r7, lr
	eor	r0, r2, r10
	and	r2, r2, r10
.LBE1760:
.LBE1829:
.LBB1830:
.LBB1790:
	eor	r10, r1, r5
	and	r5, r5, r1
	eor	r1, r6, ip
.LBE1790:
.LBE1830:
.LBB1831:
.LBB1761:
	and	r0, r0, r3
.LBE1761:
.LBE1831:
.LBB1832:
.LBB1791:
	and	r10, r10, r3
.LBE1791:
.LBE1832:
.LBB1833:
.LBB1762:
	and	fp, fp, r3
.LBE1762:
.LBE1833:
.LBB1834:
.LBB1792:
	and	r1, r1, r3
.LBE1792:
.LBE1834:
.LBB1835:
.LBB1763:
	and	lr, lr, r7
.LBE1763:
.LBE1835:
.LBB1836:
.LBB1793:
	and	ip, ip, r6
.LBE1793:
.LBE1836:
.LBB1837:
.LBB1764:
	add	r2, r2, r0, lsr #1
.LBE1764:
.LBE1837:
.LBB1838:
.LBB1794:
	add	r5, r5, r10, lsr #1
.LBE1794:
.LBE1838:
.LBB1839:
.LBB1765:
	add	lr, lr, fp, lsr #1
.LBE1765:
.LBE1839:
.LBB1840:
.LBB1795:
	add	ip, ip, r1, lsr #1
.LBE1795:
.LBE1840:
	.loc 4 219 0 discriminator 4
	str	r2, [sp, #64]
	str	r5, [sp, #68]
	str	lr, [sp, #72]
	str	r9, [sp, #60]
.LVL1658:
	str	ip, [sp, #76]
.LVL1659:
	ldrb	lr, [sp, #220]	@ zero_extendqisi2
	ldrb	r0, [sp, #224]	@ zero_extendqisi2
	ldr	r5, [sp, #216]
	ldr	ip, [sp, #220]
	ldr	r1, [sp, #80]
.LVL1660:
	ldr	r2, [sp, #84]
	mov	r0, r0, asl #24
	mov	lr, lr, asl #24
	orr	lr, lr, r5, lsr #8
.LVL1661:
	orr	ip, r0, ip, lsr #8
.LVL1662:
.LBB1841:
.LBB1796:
	.loc 2 38 0
	eor	r0, ip, r2
.LBE1796:
.LBE1841:
.LBB1842:
.LBB1766:
	eor	r5, lr, r1
	and	r5, r5, r3
	and	lr, lr, r1
.LVL1663:
.LBE1766:
.LBE1842:
.LBB1843:
.LBB1797:
	and	r3, r3, r0
	and	ip, ip, r2
.LVL1664:
	add	ip, ip, r3, lsr #1
.LBE1797:
.LBE1843:
.LBB1844:
.LBB1767:
	add	lr, lr, r5, lsr #1
.LBE1767:
.LBE1844:
.LBE1740:
.LBE1739:
.LBE1738:
	.loc 5 696 0 discriminator 3
	ldr	r0, [sp, #12]
	mov	r1, r8
.LVL1665:
	mov	r2, r4
.LVL1666:
	mov	r3, #8
.LBB1847:
.LBB1846:
.LBB1845:
	.loc 4 219 0 discriminator 4
	str	lr, [sp, #80]
.LVL1667:
	str	ip, [sp, #84]
.LVL1668:
.LBE1845:
.LBE1846:
.LBE1847:
	.loc 5 696 0 discriminator 3
	bl	put_no_rnd_mpeg4_qpel8_v_lowpass(PLT)
.LVL1669:
	.loc 5 696 0 is_stmt 0
	add	sp, sp, #236
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1670:
.L255:
	.align	2
.L254:
	.word	-16843010
	.cfi_endproc
.LFE171:
	.size	put_no_rnd_qpel8_mc32_c, .-put_no_rnd_qpel8_mc32_c
	.align	2
	.type	put_qpel8_mc01_c, %function
put_qpel8_mc01_c:
.LFB109:
	.loc 5 695 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 224
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1671:
.LBB1857:
.LBB1858:
	.loc 6 64 0
	add	r3, r1, r2
.LBE1858:
.LBE1857:
	.loc 5 695 0
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
.LBB1865:
.LBB1859:
	.loc 6 64 0
	add	r8, r3, r2
.LBE1859:
.LBE1865:
	.loc 5 695 0
	mov	r4, r2
.LVL1672:
.LBB1866:
.LBB1860:
	.loc 6 61 0
	ldrb	lr, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r8, #5]	@ zero_extendqisi2
	ldrb	r2, [r8, #4]	@ zero_extendqisi2
.LVL1673:
	ldrb	r5, [r1, r4]	@ zero_extendqisi2
	ldrb	fp, [r3, #5]	@ zero_extendqisi2
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
	ldrb	r9, [r1]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #8
	ldrb	r10, [r1, #1]	@ zero_extendqisi2
	orr	r6, r5, r6, asl #8
	orr	ip, ip, fp, asl #8
	ldrb	r5, [r1, #4]	@ zero_extendqisi2
	ldrb	fp, [r1, #5]	@ zero_extendqisi2
	orr	r9, r9, r10, asl #8
	ldrb	r10, [r8, #6]	@ zero_extendqisi2
	ldrb	r7, [r8, #1]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #8
	orr	r2, r2, r10, asl #16
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	ldrb	r10, [r3, #6]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #8
	ldrb	r7, [r8, #2]	@ zero_extendqisi2
	orr	r6, r6, fp, asl #16
	orr	ip, ip, r10, asl #16
	ldrb	fp, [r1, #2]	@ zero_extendqisi2
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #16
	ldrb	r7, [r8, #3]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #16
	orr	r9, r9, fp, asl #16
	ldrb	r10, [r3, #3]	@ zero_extendqisi2
	ldrb	fp, [r8, #7]	@ zero_extendqisi2
	orr	r7, lr, r7, asl #24
	ldrb	lr, [r3, #7]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #24
	orr	r6, r6, r10, asl #24
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	orr	ip, ip, lr, asl #24
	.loc 6 64 0
	add	lr, r8, r4
.LBE1860:
.LBE1866:
	.loc 5 695 0
	sub	sp, sp, #228
	.cfi_def_cfa_offset 264
.LVL1674:
.LBB1867:
.LBB1861:
	.loc 6 61 0
	orr	r9, r9, fp, asl #24
	orr	r10, r5, r10, asl #24
	.loc 6 62 0
	ldrb	fp, [r1, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r5, lr, r4
	.loc 6 62 0
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
.LVL1675:
	.loc 6 61 0
	str	r7, [sp, #112]
	str	r6, [sp, #96]
	str	ip, [sp, #100]
	str	r9, [sp, #80]
	str	r10, [sp, #84]
	.loc 6 62 0
	strb	fp, [sp, #88]
.LVL1676:
	strb	r1, [sp, #104]
.LVL1677:
	.loc 6 61 0
	ldrb	r9, [r5, #1]	@ zero_extendqisi2
	ldrb	r6, [r8, r4, asl #1]	@ zero_extendqisi2
	str	r2, [sp, #116]
	ldrb	r10, [lr, #1]	@ zero_extendqisi2
	ldrb	r2, [r3, r4, asl #1]	@ zero_extendqisi2
	ldrb	r1, [r5, #4]	@ zero_extendqisi2
	ldrb	ip, [r5, #5]	@ zero_extendqisi2
	ldrb	r7, [lr, #5]	@ zero_extendqisi2
	ldrb	fp, [lr, #2]	@ zero_extendqisi2
	ldrb	r3, [lr, #4]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #8
	orr	r6, r6, r9, asl #8
	ldrb	r10, [r5, #2]	@ zero_extendqisi2
	ldrb	r9, [r5, #6]	@ zero_extendqisi2
	orr	ip, r1, ip, asl #8
	ldrb	r1, [lr, #6]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #16
	orr	r3, r3, r7, asl #8
	ldrb	fp, [r5, #3]	@ zero_extendqisi2
	ldrb	r7, [lr, #3]	@ zero_extendqisi2
	orr	r6, r6, r10, asl #16
	orr	ip, ip, r9, asl #16
	ldrb	r10, [r5, #7]	@ zero_extendqisi2
	ldrb	r9, [lr, #7]	@ zero_extendqisi2
	orr	r3, r3, r1, asl #16
	orr	r7, r2, r7, asl #24
	.loc 6 64 0
	add	r1, r5, r4
	.loc 6 62 0
	ldrb	r8, [r8, #8]	@ zero_extendqisi2
.LVL1678:
	.loc 6 61 0
	orr	r6, r6, fp, asl #24
	orr	ip, ip, r10, asl #24
	orr	fp, r3, r9, asl #24
	.loc 6 62 0
	ldrb	r10, [r5, #8]	@ zero_extendqisi2
	ldrb	r9, [lr, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r2, r1, r4
	.loc 6 61 0
	str	r7, [sp, #128]
	.loc 6 62 0
	strb	r8, [sp, #120]
.LVL1679:
	.loc 6 61 0
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	ldrb	r8, [r1, #5]	@ zero_extendqisi2
	str	r6, [sp, #144]
	str	ip, [sp, #148]
	ldrb	r6, [r1, #2]	@ zero_extendqisi2
	str	fp, [sp, #132]
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r10, [sp, #152]
	strb	r9, [sp, #136]
.LVL1680:
	.loc 6 61 0
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	ldrb	lr, [lr, r4, asl #1]	@ zero_extendqisi2
	.loc 6 64 0
	add	r3, r2, r4
	.loc 6 61 0
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	str	r10, [sp]
	ldrb	r5, [r5, r4, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r3, #1]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	orr	lr, lr, r7, asl #8
	ldrb	r8, [r1, r4, asl #1]	@ zero_extendqisi2
	ldrb	r7, [r2, #1]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #8
	orr	r7, r5, r7, asl #8
	ldrb	r10, [r3, #5]	@ zero_extendqisi2
	ldrb	r5, [r3, #4]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #16
	orr	r10, r5, r10, asl #8
	ldrb	r9, [r2, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #4]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #16
	orr	r9, r5, r9, asl #8
	ldrb	r5, [r2, #2]	@ zero_extendqisi2
	ldrb	r6, [r3, #2]	@ zero_extendqisi2
	orr	r7, r7, r5, asl #16
	ldrb	r5, [r2, #6]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	orr	r8, r8, r6, asl #16
	ldr	fp, [sp]
	ldrb	r6, [r3, #6]	@ zero_extendqisi2
	orr	r5, r9, r5, asl #16
	ldrb	r9, [r3, #3]	@ zero_extendqisi2
	orr	ip, ip, fp, asl #24
	orr	r8, r8, r9, asl #24
	ldrb	fp, [r3, #7]	@ zero_extendqisi2
	ldrb	r9, [r2, #7]	@ zero_extendqisi2
	orr	r6, r10, r6, asl #16
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	.loc 6 62 0
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
.LVL1681:
	.loc 6 61 0
	orr	r7, r7, r10, asl #24
	orr	r6, r6, fp, asl #24
	.loc 6 62 0
	ldrb	r10, [r3, #8]	@ zero_extendqisi2
	.loc 6 61 0
	orr	r5, r5, r9, asl #24
	.loc 6 64 0
	add	r3, r3, r4
	.loc 6 62 0
	ldrb	r9, [r2, #8]	@ zero_extendqisi2
	.loc 6 61 0
	str	lr, [sp, #160]
	str	ip, [sp, #164]
	.loc 6 62 0
	strb	r1, [sp, #168]
.LVL1682:
	.loc 6 61 0
	str	r8, [sp, #192]
	str	r7, [sp, #176]
	str	r6, [sp, #196]
	str	r5, [sp, #180]
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	ldrb	r5, [r2, r4, asl #1]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r10, [sp, #200]
	strb	r9, [sp, #184]
.LVL1683:
	.loc 6 61 0
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	ldrb	lr, [r3, #2]	@ zero_extendqisi2
	ldrb	ip, [r3, #6]	@ zero_extendqisi2
	ldrb	r7, [r3, #3]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #8
	orr	r2, r1, r2, asl #8
	ldrb	r6, [r3, #7]	@ zero_extendqisi2
	orr	r1, r5, lr, asl #16
	orr	r2, r2, ip, asl #16
.LBE1861:
.LBE1867:
	.loc 5 695 0
	mov	r5, r0
.LBB1868:
.LBB1862:
	.loc 6 61 0
	orr	lr, r1, r7, asl #24
	orr	ip, r2, r6, asl #24
.LBE1862:
.LBE1868:
	.loc 5 695 0 discriminator 1
	add	r0, sp, #16
.LVL1684:
.LBB1869:
.LBB1863:
	.loc 6 62 0
	ldrb	r6, [r3, #8]	@ zero_extendqisi2
.LBE1863:
.LBE1869:
	.loc 5 695 0 discriminator 1
	add	r1, sp, #80
	mov	r2, #8
	mov	r3, #16
.LVL1685:
.LBB1870:
.LBB1864:
	.loc 6 61 0
	str	lr, [sp, #208]
	str	ip, [sp, #212]
	.loc 6 62 0
	strb	r6, [sp, #216]
.LVL1686:
.LBE1864:
.LBE1870:
	.loc 5 695 0 discriminator 1
	bl	put_mpeg4_qpel8_v_lowpass(PLT)
.LVL1687:
.LBB1871:
.LBB1872:
.LBB1873:
	.loc 1 104 0 discriminator 4
	ldr	r3, [sp, #80]
.LVL1688:
	ldr	r0, [sp, #16]
.LVL1689:
	ldr	fp, [sp, #20]
.LBB1874:
.LBB1875:
	.loc 2 33 0
	eor	r8, r0, r3
	orr	r0, r0, r3
.LVL1690:
	str	r0, [sp, #8]
	ldr	r3, .L258
.LVL1691:
.LBE1875:
.LBE1874:
	.loc 1 104 0 discriminator 4
	ldr	r0, [sp, #128]
	str	r0, [sp, #4]
.LBB1894:
.LBB1876:
	.loc 2 33 0
	ldr	r0, [sp, #8]
.LBE1876:
.LBE1894:
	.loc 1 104 0 discriminator 4
	ldr	r1, [sp, #84]
.LVL1692:
.LBB1895:
.LBB1877:
	.loc 2 33 0
	and	r8, r8, r3
.LBE1877:
.LBE1895:
	.loc 1 104 0 discriminator 4
	ldr	ip, [sp, #116]
.LBB1896:
.LBB1878:
	.loc 2 33 0
	sub	r0, r0, r8, lsr #1
.LBE1878:
.LBE1896:
	.loc 1 104 0 discriminator 4
	ldr	r8, [sp, #40]
	ldr	r10, [sp, #24]
	ldr	r9, [sp, #28]
	ldr	r2, [sp, #96]
	ldr	r6, [sp, #100]
	ldr	lr, [sp, #112]
	ldr	r7, [sp, #32]
	str	ip, [sp]
	str	r8, [sp, #8]
	ldr	ip, [sp, #36]
	ldr	r8, [sp, #132]
	str	r0, [r5]
.LBB1897:
.LBB1898:
	.loc 2 33 0
	eor	r0, fp, r1
	and	r0, r0, r3
	orr	r1, fp, r1
.LVL1693:
	sub	r1, r1, r0, lsr #1
.LBE1898:
.LBE1897:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #44]
.LVL1694:
	str	r8, [sp, #12]
	ldr	r8, [sp, #144]
	str	r1, [r5, #4]
.LVL1695:
.LBB1916:
.LBB1879:
	.loc 2 33 0
	eor	r1, r10, r2
	and	r1, r1, r3
	orr	r2, r10, r2
.LVL1696:
	sub	r2, r2, r1, lsr #1
.LBE1879:
.LBE1916:
	.loc 1 104 0 discriminator 4
	mov	r10, r5
.LVL1697:
	ldr	r1, [sp, #48]
	str	r2, [r10, r4]!
.LBB1917:
.LBB1899:
	.loc 2 33 0
	eor	r2, r9, r6
	and	r2, r2, r3
	orr	r6, r9, r6
.LVL1698:
	sub	r6, r6, r2, lsr #1
.LBE1899:
.LBE1917:
.LBB1918:
.LBB1880:
	eor	r2, r7, lr
	and	r2, r2, r3
	orr	lr, r7, lr
.LBE1880:
.LBE1918:
	.loc 1 104 0 discriminator 4
	ldr	r0, [sp, #148]
.LBB1919:
.LBB1881:
	.loc 2 33 0
	sub	lr, lr, r2, lsr #1
.LBE1881:
.LBE1919:
	.loc 1 104 0 discriminator 4
	str	r6, [r10, #4]
.LVL1699:
	ldr	r6, [sp, #52]
	ldr	r9, [sp, #160]
.LVL1700:
	ldr	r2, [sp, #56]
	str	lr, [r5, r4, asl #1]
.LBB1920:
.LBB1900:
	.loc 2 33 0
	ldr	r7, [sp]
.LVL1701:
.LBE1900:
.LBE1920:
.LBB1921:
.LBB1882:
	ldr	r10, [sp, #8]
.LBE1882:
.LBE1921:
.LBB1922:
.LBB1901:
	eor	lr, ip, r7
	and	lr, lr, r3
	orr	ip, ip, r7
.LBE1901:
.LBE1922:
	.loc 1 104 0 discriminator 4
	mov	r7, r4, asl #1
.LVL1702:
.LBB1923:
.LBB1902:
	.loc 2 33 0
	sub	ip, ip, lr, lsr #1
.LBE1902:
.LBE1923:
	.loc 1 104 0 discriminator 4
	add	lr, r5, r7
	str	ip, [lr, #4]
.LVL1703:
.LBB1924:
.LBB1883:
	.loc 2 33 0
	ldr	lr, [sp, #4]
.LBE1883:
.LBE1924:
	.loc 1 104 0 discriminator 4
	add	r7, r7, r4
.LBB1925:
.LBB1884:
	.loc 2 33 0
	eor	ip, r10, lr
	and	ip, ip, r3
	orr	r10, r10, lr
.LVL1704:
	sub	r10, r10, ip, lsr #1
.LBE1884:
.LBE1925:
.LBB1926:
.LBB1903:
	ldr	ip, [sp, #12]
	eor	lr, fp, ip
	and	lr, lr, r3
	orr	fp, fp, ip
.LVL1705:
.LBE1903:
.LBE1926:
.LBB1927:
.LBB1885:
	eor	ip, r1, r8
	orr	r8, r1, r8
.LBE1885:
.LBE1927:
.LBB1928:
.LBB1904:
	eor	r1, r6, r0
	orr	r0, r6, r0
.LBE1904:
.LBE1928:
.LBB1929:
.LBB1886:
	eor	r6, r2, r9
	and	r6, r6, r3
.LBE1886:
.LBE1929:
.LBB1930:
.LBB1905:
	sub	lr, fp, lr, lsr #1
.LBE1905:
.LBE1930:
.LBB1931:
.LBB1887:
	and	ip, ip, r3
.LBE1887:
.LBE1931:
	.loc 1 104 0 discriminator 4
	add	fp, r7, r4
.LBB1932:
.LBB1906:
	.loc 2 33 0
	and	r1, r1, r3
.LBE1906:
.LBE1932:
.LBB1933:
.LBB1888:
	orr	r2, r2, r9
	sub	ip, r8, ip, lsr #1
.LBE1888:
.LBE1933:
	.loc 1 104 0 discriminator 4
	mov	r9, r5
	add	r8, fp, r4
.LBB1934:
.LBB1907:
	.loc 2 33 0
	sub	r1, r0, r1, lsr #1
.LBE1907:
.LBE1934:
.LBB1935:
.LBB1889:
	sub	r2, r2, r6, lsr #1
.LBE1889:
.LBE1935:
	.loc 1 104 0 discriminator 4
	mov	r0, r5
	mov	r6, r5
	str	r10, [r9, r7]!
	str	lr, [r9, #4]
.LVL1706:
	str	ip, [r0, fp]!
	str	r1, [r0, #4]
.LVL1707:
	str	r2, [r6, r8]!
	ldr	r2, [sp, #164]
.LVL1708:
	ldr	lr, [sp, #60]
.LVL1709:
	ldr	fp, [sp, #64]
	ldr	r9, [sp, #72]
	ldr	ip, [sp, #176]
	ldr	r1, [sp, #192]
.LBB1936:
.LBB1908:
	.loc 2 33 0
	eor	r7, lr, r2
	and	r7, r7, r3
	orr	lr, lr, r2
.LVL1710:
.LBE1908:
.LBE1936:
	.loc 1 104 0 discriminator 4
	ldr	r10, [sp, #68]
	ldr	r0, [sp, #180]
	ldr	r2, [sp, #76]
.LVL1711:
.LBB1937:
.LBB1909:
	.loc 2 33 0
	sub	lr, lr, r7, lsr #1
.LBE1909:
.LBE1937:
.LBB1938:
.LBB1890:
	eor	r7, fp, ip
	orr	ip, fp, ip
	eor	fp, r9, r1
	orr	r1, r9, r1
.LBE1890:
.LBE1938:
.LBB1939:
.LBB1910:
	ldr	r9, [sp, #196]
.LBE1910:
.LBE1939:
.LBB1940:
.LBB1891:
	and	r7, r7, r3
	sub	ip, ip, r7, lsr #1
.LBE1891:
.LBE1940:
.LBB1941:
.LBB1911:
	eor	r7, r10, r0
	orr	r0, r10, r0
	eor	r10, r2, r9
.LBE1911:
.LBE1941:
	.loc 1 104 0 discriminator 4
	add	r8, r8, r4
.LBB1942:
.LBB1912:
	.loc 2 33 0
	and	r7, r7, r3
.LBE1912:
.LBE1942:
.LBB1943:
.LBB1892:
	and	fp, fp, r3
.LBE1892:
.LBE1943:
.LBB1944:
.LBB1913:
	orr	r2, r2, r9
	and	r3, r3, r10
.LBE1913:
.LBE1944:
	.loc 1 104 0 discriminator 4
	mov	r9, r5
	add	r4, r8, r4
.LVL1712:
.LBB1945:
.LBB1914:
	.loc 2 33 0
	sub	r0, r0, r7, lsr #1
.LBE1914:
.LBE1945:
.LBB1946:
.LBB1893:
	sub	r1, r1, fp, lsr #1
.LBE1893:
.LBE1946:
.LBB1947:
.LBB1915:
	sub	r3, r2, r3, lsr #1
.LBE1915:
.LBE1947:
	.loc 1 104 0 discriminator 4
	str	lr, [r6, #4]
.LVL1713:
	str	ip, [r5, r8]!
.LVL1714:
	str	r0, [r5, #4]
.LVL1715:
	str	r1, [r9, r4]!
.LVL1716:
	str	r3, [r9, #4]
.LVL1717:
.LBE1873:
.LBE1872:
.LBE1871:
	.loc 5 695 0
	add	sp, sp, #228
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L259:
	.align	2
.L258:
	.word	-16843010
	.cfi_endproc
.LFE109:
	.size	put_qpel8_mc01_c, .-put_qpel8_mc01_c
	.align	2
	.type	put_qpel8_mc03_c, %function
put_qpel8_mc03_c:
.LFB111:
	.loc 5 695 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 224
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1718:
.LBB1957:
.LBB1958:
	.loc 6 64 0
	add	r3, r1, r2
.LBE1958:
.LBE1957:
	.loc 5 695 0
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
.LBB1965:
.LBB1959:
	.loc 6 64 0
	add	r8, r3, r2
.LBE1959:
.LBE1965:
	.loc 5 695 0
	mov	r4, r2
.LVL1719:
.LBB1966:
.LBB1960:
	.loc 6 61 0
	ldrb	lr, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r8, #5]	@ zero_extendqisi2
	ldrb	r2, [r8, #4]	@ zero_extendqisi2
.LVL1720:
	ldrb	r5, [r1, r4]	@ zero_extendqisi2
	ldrb	fp, [r3, #5]	@ zero_extendqisi2
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
	ldrb	r9, [r1]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #8
	ldrb	r10, [r1, #1]	@ zero_extendqisi2
	orr	r6, r5, r6, asl #8
	orr	ip, ip, fp, asl #8
	ldrb	r5, [r1, #4]	@ zero_extendqisi2
	ldrb	fp, [r1, #5]	@ zero_extendqisi2
	orr	r9, r9, r10, asl #8
	ldrb	r10, [r8, #6]	@ zero_extendqisi2
	ldrb	r7, [r8, #1]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #8
	orr	r2, r2, r10, asl #16
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	ldrb	r10, [r3, #6]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #8
	ldrb	r7, [r8, #2]	@ zero_extendqisi2
	orr	r6, r6, fp, asl #16
	orr	ip, ip, r10, asl #16
	ldrb	fp, [r1, #2]	@ zero_extendqisi2
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #16
	ldrb	r7, [r8, #3]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #16
	orr	r9, r9, fp, asl #16
	ldrb	r10, [r3, #3]	@ zero_extendqisi2
	ldrb	fp, [r8, #7]	@ zero_extendqisi2
	orr	r7, lr, r7, asl #24
	ldrb	lr, [r3, #7]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #24
	orr	r6, r6, r10, asl #24
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	orr	ip, ip, lr, asl #24
	.loc 6 64 0
	add	lr, r8, r4
.LBE1960:
.LBE1966:
	.loc 5 695 0
	sub	sp, sp, #228
	.cfi_def_cfa_offset 264
.LVL1721:
.LBB1967:
.LBB1961:
	.loc 6 61 0
	orr	r9, r9, fp, asl #24
	orr	r10, r5, r10, asl #24
	.loc 6 62 0
	ldrb	fp, [r1, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r5, lr, r4
	.loc 6 62 0
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
.LVL1722:
	.loc 6 61 0
	str	r7, [sp, #112]
	str	r6, [sp, #96]
	str	ip, [sp, #100]
	str	r9, [sp, #80]
	str	r10, [sp, #84]
	.loc 6 62 0
	strb	fp, [sp, #88]
.LVL1723:
	strb	r1, [sp, #104]
.LVL1724:
	.loc 6 61 0
	ldrb	r9, [r5, #1]	@ zero_extendqisi2
	ldrb	r6, [r8, r4, asl #1]	@ zero_extendqisi2
	str	r2, [sp, #116]
	ldrb	r10, [lr, #1]	@ zero_extendqisi2
	ldrb	r2, [r3, r4, asl #1]	@ zero_extendqisi2
	ldrb	r1, [r5, #4]	@ zero_extendqisi2
	ldrb	ip, [r5, #5]	@ zero_extendqisi2
	ldrb	r7, [lr, #5]	@ zero_extendqisi2
	ldrb	fp, [lr, #2]	@ zero_extendqisi2
	ldrb	r3, [lr, #4]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #8
	orr	r6, r6, r9, asl #8
	ldrb	r10, [r5, #2]	@ zero_extendqisi2
	ldrb	r9, [r5, #6]	@ zero_extendqisi2
	orr	ip, r1, ip, asl #8
	ldrb	r1, [lr, #6]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #16
	orr	r3, r3, r7, asl #8
	ldrb	fp, [r5, #3]	@ zero_extendqisi2
	ldrb	r7, [lr, #3]	@ zero_extendqisi2
	orr	r6, r6, r10, asl #16
	orr	ip, ip, r9, asl #16
	ldrb	r10, [r5, #7]	@ zero_extendqisi2
	ldrb	r9, [lr, #7]	@ zero_extendqisi2
	orr	r3, r3, r1, asl #16
	orr	r7, r2, r7, asl #24
	.loc 6 64 0
	add	r1, r5, r4
	.loc 6 62 0
	ldrb	r8, [r8, #8]	@ zero_extendqisi2
.LVL1725:
	.loc 6 61 0
	orr	r6, r6, fp, asl #24
	orr	ip, ip, r10, asl #24
	orr	fp, r3, r9, asl #24
	.loc 6 62 0
	ldrb	r10, [r5, #8]	@ zero_extendqisi2
	ldrb	r9, [lr, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r2, r1, r4
	.loc 6 61 0
	str	r7, [sp, #128]
	.loc 6 62 0
	strb	r8, [sp, #120]
.LVL1726:
	.loc 6 61 0
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	ldrb	r8, [r1, #5]	@ zero_extendqisi2
	str	r6, [sp, #144]
	str	ip, [sp, #148]
	ldrb	r6, [r1, #2]	@ zero_extendqisi2
	str	fp, [sp, #132]
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r10, [sp, #152]
	strb	r9, [sp, #136]
.LVL1727:
	.loc 6 61 0
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	ldrb	lr, [lr, r4, asl #1]	@ zero_extendqisi2
	.loc 6 64 0
	add	r3, r2, r4
	.loc 6 61 0
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	str	r10, [sp]
	ldrb	r5, [r5, r4, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r3, #1]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	orr	lr, lr, r7, asl #8
	ldrb	r8, [r1, r4, asl #1]	@ zero_extendqisi2
	ldrb	r7, [r2, #1]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #8
	orr	r7, r5, r7, asl #8
	ldrb	r10, [r3, #5]	@ zero_extendqisi2
	ldrb	r5, [r3, #4]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #16
	orr	r10, r5, r10, asl #8
	ldrb	r9, [r2, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #4]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #16
	orr	r9, r5, r9, asl #8
	ldrb	r5, [r2, #2]	@ zero_extendqisi2
	ldrb	r6, [r3, #2]	@ zero_extendqisi2
	orr	r7, r7, r5, asl #16
	ldrb	r5, [r2, #6]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	orr	r8, r8, r6, asl #16
	ldr	fp, [sp]
	ldrb	r6, [r3, #6]	@ zero_extendqisi2
	orr	r5, r9, r5, asl #16
	ldrb	r9, [r3, #3]	@ zero_extendqisi2
	orr	ip, ip, fp, asl #24
	orr	r8, r8, r9, asl #24
	ldrb	fp, [r3, #7]	@ zero_extendqisi2
	ldrb	r9, [r2, #7]	@ zero_extendqisi2
	orr	r6, r10, r6, asl #16
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	.loc 6 62 0
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
.LVL1728:
	.loc 6 61 0
	orr	r7, r7, r10, asl #24
	orr	r6, r6, fp, asl #24
	.loc 6 62 0
	ldrb	r10, [r3, #8]	@ zero_extendqisi2
	.loc 6 61 0
	orr	r5, r5, r9, asl #24
	.loc 6 64 0
	add	r3, r3, r4
	.loc 6 62 0
	ldrb	r9, [r2, #8]	@ zero_extendqisi2
	.loc 6 61 0
	str	lr, [sp, #160]
	str	ip, [sp, #164]
	.loc 6 62 0
	strb	r1, [sp, #168]
.LVL1729:
	.loc 6 61 0
	str	r8, [sp, #192]
	str	r7, [sp, #176]
	str	r6, [sp, #196]
	str	r5, [sp, #180]
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	ldrb	r5, [r2, r4, asl #1]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r10, [sp, #200]
	strb	r9, [sp, #184]
.LVL1730:
	.loc 6 61 0
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	ldrb	lr, [r3, #2]	@ zero_extendqisi2
	ldrb	ip, [r3, #6]	@ zero_extendqisi2
	ldrb	r7, [r3, #3]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #8
	orr	r2, r1, r2, asl #8
	ldrb	r6, [r3, #7]	@ zero_extendqisi2
	orr	r1, r5, lr, asl #16
	orr	r2, r2, ip, asl #16
.LBE1961:
.LBE1967:
	.loc 5 695 0
	mov	r5, r0
.LBB1968:
.LBB1962:
	.loc 6 61 0
	orr	lr, r1, r7, asl #24
	orr	ip, r2, r6, asl #24
.LBE1962:
.LBE1968:
	.loc 5 695 0 discriminator 1
	add	r0, sp, #16
.LVL1731:
.LBB1969:
.LBB1963:
	.loc 6 62 0
	ldrb	r6, [r3, #8]	@ zero_extendqisi2
.LBE1963:
.LBE1969:
	.loc 5 695 0 discriminator 1
	add	r1, sp, #80
	mov	r2, #8
	mov	r3, #16
.LVL1732:
.LBB1970:
.LBB1964:
	.loc 6 61 0
	str	lr, [sp, #208]
	str	ip, [sp, #212]
	.loc 6 62 0
	strb	r6, [sp, #216]
.LVL1733:
.LBE1964:
.LBE1970:
	.loc 5 695 0 discriminator 1
	bl	put_mpeg4_qpel8_v_lowpass(PLT)
.LVL1734:
.LBB1971:
.LBB1972:
.LBB1973:
	.loc 1 104 0 discriminator 4
	ldr	r3, [sp, #96]
.LVL1735:
	ldr	r0, [sp, #16]
.LVL1736:
	ldr	fp, [sp, #20]
.LBB1974:
.LBB1975:
	.loc 2 33 0
	eor	r8, r0, r3
	orr	r0, r0, r3
.LVL1737:
	str	r0, [sp, #8]
	ldr	r3, .L262
.LVL1738:
.LBE1975:
.LBE1974:
	.loc 1 104 0 discriminator 4
	ldr	r0, [sp, #144]
	str	r0, [sp, #4]
.LBB1994:
.LBB1976:
	.loc 2 33 0
	ldr	r0, [sp, #8]
.LBE1976:
.LBE1994:
	.loc 1 104 0 discriminator 4
	ldr	r1, [sp, #100]
.LVL1739:
.LBB1995:
.LBB1977:
	.loc 2 33 0
	and	r8, r8, r3
.LBE1977:
.LBE1995:
	.loc 1 104 0 discriminator 4
	ldr	ip, [sp, #132]
.LBB1996:
.LBB1978:
	.loc 2 33 0
	sub	r0, r0, r8, lsr #1
.LBE1978:
.LBE1996:
	.loc 1 104 0 discriminator 4
	ldr	r8, [sp, #40]
	ldr	r10, [sp, #24]
	ldr	r9, [sp, #28]
	ldr	r2, [sp, #112]
	ldr	r6, [sp, #116]
	ldr	lr, [sp, #128]
	ldr	r7, [sp, #32]
	str	ip, [sp]
	str	r8, [sp, #8]
	ldr	ip, [sp, #36]
	ldr	r8, [sp, #148]
	str	r0, [r5]
.LVL1740:
.LBB1997:
.LBB1998:
	.loc 2 33 0
	eor	r0, fp, r1
	and	r0, r0, r3
	orr	r1, fp, r1
.LVL1741:
	sub	r1, r1, r0, lsr #1
.LBE1998:
.LBE1997:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #44]
.LVL1742:
	str	r8, [sp, #12]
	ldr	r8, [sp, #160]
	str	r1, [r5, #4]
.LVL1743:
.LBB2016:
.LBB1979:
	.loc 2 33 0
	eor	r1, r10, r2
	and	r1, r1, r3
	orr	r2, r10, r2
.LVL1744:
	sub	r2, r2, r1, lsr #1
.LBE1979:
.LBE2016:
	.loc 1 104 0 discriminator 4
	mov	r10, r5
.LVL1745:
	ldr	r1, [sp, #48]
	str	r2, [r10, r4]!
.LBB2017:
.LBB1999:
	.loc 2 33 0
	eor	r2, r9, r6
	and	r2, r2, r3
	orr	r6, r9, r6
.LVL1746:
	sub	r6, r6, r2, lsr #1
.LBE1999:
.LBE2017:
.LBB2018:
.LBB1980:
	eor	r2, r7, lr
	and	r2, r2, r3
	orr	lr, r7, lr
.LBE1980:
.LBE2018:
	.loc 1 104 0 discriminator 4
	ldr	r0, [sp, #164]
.LBB2019:
.LBB1981:
	.loc 2 33 0
	sub	lr, lr, r2, lsr #1
.LBE1981:
.LBE2019:
	.loc 1 104 0 discriminator 4
	str	r6, [r10, #4]
.LVL1747:
	ldr	r6, [sp, #52]
	ldr	r9, [sp, #176]
.LVL1748:
	ldr	r2, [sp, #56]
	str	lr, [r5, r4, asl #1]
.LBB2020:
.LBB2000:
	.loc 2 33 0
	ldr	r7, [sp]
.LVL1749:
.LBE2000:
.LBE2020:
.LBB2021:
.LBB1982:
	ldr	r10, [sp, #8]
.LBE1982:
.LBE2021:
.LBB2022:
.LBB2001:
	eor	lr, ip, r7
	and	lr, lr, r3
	orr	ip, ip, r7
.LBE2001:
.LBE2022:
	.loc 1 104 0 discriminator 4
	mov	r7, r4, asl #1
.LVL1750:
.LBB2023:
.LBB2002:
	.loc 2 33 0
	sub	ip, ip, lr, lsr #1
.LBE2002:
.LBE2023:
	.loc 1 104 0 discriminator 4
	add	lr, r5, r7
	str	ip, [lr, #4]
.LVL1751:
.LBB2024:
.LBB1983:
	.loc 2 33 0
	ldr	lr, [sp, #4]
.LBE1983:
.LBE2024:
	.loc 1 104 0 discriminator 4
	add	r7, r7, r4
.LBB2025:
.LBB1984:
	.loc 2 33 0
	eor	ip, r10, lr
	and	ip, ip, r3
	orr	r10, r10, lr
.LVL1752:
	sub	r10, r10, ip, lsr #1
.LBE1984:
.LBE2025:
.LBB2026:
.LBB2003:
	ldr	ip, [sp, #12]
	eor	lr, fp, ip
	and	lr, lr, r3
	orr	fp, fp, ip
.LVL1753:
.LBE2003:
.LBE2026:
.LBB2027:
.LBB1985:
	eor	ip, r1, r8
	orr	r8, r1, r8
.LBE1985:
.LBE2027:
.LBB2028:
.LBB2004:
	eor	r1, r6, r0
	orr	r0, r6, r0
.LBE2004:
.LBE2028:
.LBB2029:
.LBB1986:
	eor	r6, r2, r9
	and	r6, r6, r3
.LBE1986:
.LBE2029:
.LBB2030:
.LBB2005:
	sub	lr, fp, lr, lsr #1
.LBE2005:
.LBE2030:
.LBB2031:
.LBB1987:
	and	ip, ip, r3
.LBE1987:
.LBE2031:
	.loc 1 104 0 discriminator 4
	add	fp, r7, r4
.LBB2032:
.LBB2006:
	.loc 2 33 0
	and	r1, r1, r3
.LBE2006:
.LBE2032:
.LBB2033:
.LBB1988:
	orr	r2, r2, r9
	sub	ip, r8, ip, lsr #1
.LBE1988:
.LBE2033:
	.loc 1 104 0 discriminator 4
	mov	r9, r5
	add	r8, fp, r4
.LBB2034:
.LBB2007:
	.loc 2 33 0
	sub	r1, r0, r1, lsr #1
.LBE2007:
.LBE2034:
.LBB2035:
.LBB1989:
	sub	r2, r2, r6, lsr #1
.LBE1989:
.LBE2035:
	.loc 1 104 0 discriminator 4
	mov	r0, r5
	mov	r6, r5
	str	r10, [r9, r7]!
	str	lr, [r9, #4]
.LVL1754:
	str	ip, [r0, fp]!
	str	r1, [r0, #4]
.LVL1755:
	str	r2, [r6, r8]!
	ldr	r2, [sp, #180]
.LVL1756:
	ldr	lr, [sp, #60]
.LVL1757:
	ldr	fp, [sp, #64]
	ldr	r9, [sp, #72]
	ldr	ip, [sp, #192]
	ldr	r1, [sp, #208]
.LBB2036:
.LBB2008:
	.loc 2 33 0
	eor	r7, lr, r2
	and	r7, r7, r3
	orr	lr, lr, r2
.LVL1758:
.LBE2008:
.LBE2036:
	.loc 1 104 0 discriminator 4
	ldr	r10, [sp, #68]
	ldr	r0, [sp, #196]
	ldr	r2, [sp, #76]
.LVL1759:
.LBB2037:
.LBB2009:
	.loc 2 33 0
	sub	lr, lr, r7, lsr #1
.LBE2009:
.LBE2037:
.LBB2038:
.LBB1990:
	eor	r7, fp, ip
	orr	ip, fp, ip
	eor	fp, r9, r1
	orr	r1, r9, r1
.LBE1990:
.LBE2038:
.LBB2039:
.LBB2010:
	ldr	r9, [sp, #212]
.LBE2010:
.LBE2039:
.LBB2040:
.LBB1991:
	and	r7, r7, r3
	sub	ip, ip, r7, lsr #1
.LBE1991:
.LBE2040:
.LBB2041:
.LBB2011:
	eor	r7, r10, r0
	orr	r0, r10, r0
	eor	r10, r2, r9
.LBE2011:
.LBE2041:
	.loc 1 104 0 discriminator 4
	add	r8, r8, r4
.LBB2042:
.LBB2012:
	.loc 2 33 0
	and	r7, r7, r3
.LBE2012:
.LBE2042:
.LBB2043:
.LBB1992:
	and	fp, fp, r3
.LBE1992:
.LBE2043:
.LBB2044:
.LBB2013:
	orr	r2, r2, r9
	and	r3, r3, r10
.LBE2013:
.LBE2044:
	.loc 1 104 0 discriminator 4
	mov	r9, r5
	add	r4, r8, r4
.LVL1760:
.LBB2045:
.LBB2014:
	.loc 2 33 0
	sub	r0, r0, r7, lsr #1
.LBE2014:
.LBE2045:
.LBB2046:
.LBB1993:
	sub	r1, r1, fp, lsr #1
.LBE1993:
.LBE2046:
.LBB2047:
.LBB2015:
	sub	r3, r2, r3, lsr #1
.LBE2015:
.LBE2047:
	.loc 1 104 0 discriminator 4
	str	lr, [r6, #4]
.LVL1761:
	str	ip, [r5, r8]!
.LVL1762:
	str	r0, [r5, #4]
.LVL1763:
	str	r1, [r9, r4]!
.LVL1764:
	str	r3, [r9, #4]
.LVL1765:
.LBE1973:
.LBE1972:
.LBE1971:
	.loc 5 695 0
	add	sp, sp, #228
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L263:
	.align	2
.L262:
	.word	-16843010
	.cfi_endproc
.LFE111:
	.size	put_qpel8_mc03_c, .-put_qpel8_mc03_c
	.align	2
	.type	put_qpel8_mc12_c, %function
put_qpel8_mc12_c:
.LFB123:
	.loc 5 695 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 224
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1766:
.LBB2057:
.LBB2058:
	.loc 6 64 0
	add	r3, r1, r2
.LBE2058:
.LBE2057:
	.loc 5 695 0
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
.LBB2064:
.LBB2059:
	.loc 6 64 0
	add	r7, r3, r2
.LBE2059:
.LBE2064:
	.loc 5 695 0
	mov	fp, r2
.LVL1767:
.LBB2065:
.LBB2060:
	.loc 6 61 0
	ldrb	lr, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #4]	@ zero_extendqisi2
.LVL1768:
	ldrb	r4, [r1, fp]	@ zero_extendqisi2
	ldrb	r10, [r3, #5]	@ zero_extendqisi2
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
	ldrb	r8, [r1]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #8
	ldrb	r9, [r1, #1]	@ zero_extendqisi2
	orr	r5, r4, r5, asl #8
	orr	ip, ip, r10, asl #8
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	orr	r8, r8, r9, asl #8
	ldrb	r9, [r7, #6]	@ zero_extendqisi2
	ldrb	r6, [r7, #1]	@ zero_extendqisi2
	orr	r4, r4, r10, asl #8
	orr	r2, r2, r9, asl #16
	ldrb	r10, [r3, #2]	@ zero_extendqisi2
	ldrb	r9, [r3, #6]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #8
	orr	r5, r5, r10, asl #16
	ldrb	r6, [r7, #2]	@ zero_extendqisi2
	ldrb	r10, [r1, #2]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #16
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #16
	orr	r4, r4, r9, asl #16
	ldrb	r6, [r7, #3]	@ zero_extendqisi2
	ldrb	r9, [r3, #3]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #16
	ldrb	r10, [r7, #7]	@ zero_extendqisi2
	orr	r6, lr, r6, asl #24
	orr	r2, r2, r10, asl #24
	ldrb	lr, [r3, #7]	@ zero_extendqisi2
	ldrb	r10, [r1, #3]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	ldrb	r9, [r1, #7]	@ zero_extendqisi2
.LBE2060:
.LBE2065:
	.loc 5 695 0
	sub	sp, sp, #236
	.cfi_def_cfa_offset 272
.LVL1769:
.LBB2066:
.LBB2061:
	.loc 6 61 0
	orr	ip, ip, lr, asl #24
	orr	r8, r8, r10, asl #24
	.loc 6 64 0
	add	lr, r7, fp
	.loc 6 62 0
	ldrb	r10, [r1, #8]	@ zero_extendqisi2
	.loc 6 61 0
	orr	r9, r4, r9, asl #24
	.loc 6 62 0
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
.LVL1770:
	.loc 6 64 0
	add	r4, lr, fp
	.loc 6 61 0
	str	r6, [sp, #120]
	str	r5, [sp, #104]
	str	ip, [sp, #108]
	str	r8, [sp, #88]
	str	r9, [sp, #92]
	.loc 6 62 0
	strb	r10, [sp, #96]
.LVL1771:
	strb	r1, [sp, #112]
.LVL1772:
	.loc 6 61 0
	ldrb	r9, [lr, #1]	@ zero_extendqisi2
	str	r2, [sp, #124]
	ldrb	r2, [r3, fp, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r4, #1]	@ zero_extendqisi2
	ldrb	r5, [r7, fp, asl #1]	@ zero_extendqisi2
	ldrb	r10, [lr, #5]	@ zero_extendqisi2
	ldrb	r3, [lr, #4]	@ zero_extendqisi2
	ldrb	r1, [r4, #4]	@ zero_extendqisi2
	ldrb	ip, [r4, #5]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #8
	ldrb	r9, [r4, #2]	@ zero_extendqisi2
	ldrb	r6, [lr, #2]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #8
	orr	r3, r3, r10, asl #8
	ldrb	r8, [r4, #6]	@ zero_extendqisi2
	ldrb	r10, [lr, #3]	@ zero_extendqisi2
	str	r10, [sp, #12]
	orr	ip, r1, ip, asl #8
	orr	r5, r5, r9, asl #16
	ldrb	r1, [lr, #6]	@ zero_extendqisi2
	ldrb	r9, [r4, #7]	@ zero_extendqisi2
	ldrb	r10, [r4, #3]	@ zero_extendqisi2
	orr	r2, r2, r6, asl #16
	orr	ip, ip, r8, asl #16
	ldr	r6, [sp, #12]
	ldrb	r8, [lr, #7]	@ zero_extendqisi2
	orr	r3, r3, r1, asl #16
	orr	ip, ip, r9, asl #24
	.loc 6 64 0
	add	r1, r4, fp
	.loc 6 61 0
	orr	r6, r2, r6, asl #24
	.loc 6 62 0
	ldrb	r7, [r7, #8]	@ zero_extendqisi2
.LVL1773:
	.loc 6 61 0
	orr	r5, r5, r10, asl #24
	.loc 6 62 0
	ldrb	r9, [r4, #8]	@ zero_extendqisi2
	.loc 6 61 0
	orr	r10, r3, r8, asl #24
	str	ip, [sp, #156]
	ldrb	ip, [r1, #3]	@ zero_extendqisi2
	.loc 6 64 0
	add	r2, r1, fp
	.loc 6 62 0
	ldrb	r8, [lr, #8]	@ zero_extendqisi2
	.loc 6 61 0
	str	r6, [sp, #136]
	.loc 6 62 0
	strb	r7, [sp, #128]
.LVL1774:
	.loc 6 61 0
	ldrb	r6, [r1, #1]	@ zero_extendqisi2
	ldrb	r7, [r1, #5]	@ zero_extendqisi2
	str	r5, [sp, #152]
	str	r10, [sp, #140]
	ldrb	r5, [r1, #2]	@ zero_extendqisi2
	str	ip, [sp, #12]
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r9, [sp, #160]
	.loc 6 61 0
	ldrb	lr, [lr, fp, asl #1]	@ zero_extendqisi2
.LVL1775:
	.loc 6 64 0
	add	r3, r2, fp
	.loc 6 61 0
	ldrb	r4, [r4, fp, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r3, #1]	@ zero_extendqisi2
	orr	ip, ip, r7, asl #8
	orr	lr, lr, r6, asl #8
	ldrb	r7, [r1, fp, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r2, #1]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r8, [sp, #144]
.LVL1776:
	.loc 6 61 0
	orr	r7, r7, r9, asl #8
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	r9, [r3, #5]	@ zero_extendqisi2
	orr	r6, r4, r6, asl #8
	ldrb	r4, [r3, #4]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r9, r4, r9, asl #8
	ldrb	r8, [r2, #5]	@ zero_extendqisi2
	ldrb	r4, [r2, #4]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #16
	orr	r8, r4, r8, asl #8
	ldrb	r5, [r3, #2]	@ zero_extendqisi2
	ldrb	r4, [r2, #2]	@ zero_extendqisi2
	orr	r7, r7, r5, asl #16
	orr	r6, r6, r4, asl #16
	ldrb	r5, [r3, #6]	@ zero_extendqisi2
	ldrb	r4, [r2, #6]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	orr	r5, r9, r5, asl #16
	orr	r4, r8, r4, asl #16
	ldr	r9, [sp, #12]
	ldrb	r8, [r3, #3]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #24
	orr	ip, ip, r10, asl #24
	ldrb	r9, [r2, #3]	@ zero_extendqisi2
	ldrb	r10, [r3, #7]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #24
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	.loc 6 62 0
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
.LVL1777:
	.loc 6 61 0
	orr	r6, r6, r9, asl #24
	orr	r5, r5, r10, asl #24
	.loc 6 62 0
	ldrb	r9, [r3, #8]	@ zero_extendqisi2
	.loc 6 61 0
	orr	r4, r4, r8, asl #24
	.loc 6 64 0
	add	r3, r3, fp
	.loc 6 62 0
	ldrb	r8, [r2, #8]	@ zero_extendqisi2
	.loc 6 61 0
	str	lr, [sp, #168]
	str	ip, [sp, #172]
	.loc 6 62 0
	strb	r1, [sp, #176]
.LVL1778:
	.loc 6 61 0
	str	r7, [sp, #200]
	str	r6, [sp, #184]
	str	r5, [sp, #204]
	.loc 6 62 0
	strb	r9, [sp, #208]
	.loc 6 61 0
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	str	r4, [sp, #188]
	ldrb	r4, [r2, fp, asl #1]	@ zero_extendqisi2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
.LVL1779:
	ldrb	ip, [r3, #6]	@ zero_extendqisi2
	ldrb	lr, [r3, #2]	@ zero_extendqisi2
	orr	r4, r4, r5, asl #8
	orr	r2, r1, r2, asl #8
	ldrb	r5, [r3, #7]	@ zero_extendqisi2
	ldrb	r7, [r3, #3]	@ zero_extendqisi2
	orr	r2, r2, ip, asl #16
	orr	ip, r2, r5, asl #24
	orr	r1, r4, lr, asl #16
.LBE2061:
.LBE2066:
	.loc 5 695 0 discriminator 1
	add	r5, sp, #16
	mov	r6, #9
.LBB2067:
.LBB2062:
	.loc 6 61 0
	orr	lr, r1, r7, asl #24
	.loc 6 62 0
	ldrb	r4, [r3, #8]	@ zero_extendqisi2
	strb	r8, [sp, #192]
.LVL1780:
.LBE2062:
.LBE2067:
	.loc 5 695 0 discriminator 1
	str	r6, [sp]
	.loc 5 695 0 is_stmt 0
	mov	r8, r0
	.loc 5 695 0 discriminator 1
	add	r1, sp, #88
	mov	r0, r5
.LVL1781:
	mov	r2, #8
	mov	r3, #16
.LVL1782:
.LBB2068:
.LBB2063:
	.loc 6 61 0 is_stmt 1
	str	lr, [sp, #216]
	str	ip, [sp, #220]
	.loc 6 62 0
	strb	r4, [sp, #224]
.LVL1783:
.LBE2063:
.LBE2068:
	.loc 5 695 0 discriminator 1
	bl	put_mpeg4_qpel8_h_lowpass(PLT)
.LVL1784:
.LBB2069:
.LBB2070:
.LBB2071:
	.loc 1 104 0 discriminator 4
	ldr	r3, [sp, #16]
.LVL1785:
	ldr	lr, [sp, #88]
.LVL1786:
	ldr	ip, [sp, #20]
.LVL1787:
.LBB2072:
.LBB2073:
	.loc 2 33 0
	eor	r4, lr, r3
	orr	lr, lr, r3
.LVL1788:
	ldr	r3, .L266
.LVL1789:
.LBE2073:
.LBE2072:
	.loc 1 104 0 discriminator 4
	ldr	r10, [sp, #92]
.LVL1790:
.LBB2096:
.LBB2074:
	.loc 2 33 0
	and	r4, r4, r3
	sub	lr, lr, r4, lsr #1
.LBE2074:
.LBE2096:
	.loc 1 104 0 discriminator 4
	str	lr, [sp, #16]
.LVL1791:
.LBB2097:
.LBB2098:
	.loc 2 33 0
	eor	lr, r10, ip
.LBE2098:
.LBE2097:
	.loc 1 104 0 discriminator 4
	ldr	r0, [sp, #24]
	ldr	r9, [sp, #104]
.LBB2123:
.LBB2099:
	.loc 2 33 0
	and	lr, lr, r3
	orr	ip, r10, ip
.LVL1792:
	sub	ip, ip, lr, lsr #1
.LBE2099:
.LBE2123:
	.loc 1 104 0 discriminator 4
	str	ip, [sp, #20]
.LVL1793:
.LBB2124:
.LBB2075:
	.loc 2 33 0
	eor	ip, r9, r0
.LBE2075:
.LBE2124:
	.loc 1 104 0 discriminator 4
	ldr	r1, [sp, #28]
.LVL1794:
	ldr	r7, [sp, #108]
.LVL1795:
.LBB2125:
.LBB2076:
	.loc 2 33 0
	and	ip, ip, r3
	orr	r0, r9, r0
.LVL1796:
	sub	r0, r0, ip, lsr #1
.LBE2076:
.LBE2125:
	.loc 1 104 0 discriminator 4
	str	r0, [sp, #24]
.LVL1797:
.LBB2126:
.LBB2100:
	.loc 2 33 0
	eor	r0, r7, r1
.LBE2100:
.LBE2126:
	.loc 1 104 0 discriminator 4
	ldr	r2, [sp, #32]
	ldr	r6, [sp, #120]
.LBB2127:
.LBB2101:
	.loc 2 33 0
	and	r0, r0, r3
	orr	r1, r7, r1
.LVL1798:
	sub	r1, r1, r0, lsr #1
.LBE2101:
.LBE2127:
	.loc 1 104 0 discriminator 4
	str	r1, [sp, #28]
.LVL1799:
.LBB2128:
.LBB2077:
	.loc 2 33 0
	eor	r1, r6, r2
	and	r1, r1, r3
	orr	r2, r6, r2
.LVL1800:
	sub	r2, r2, r1, lsr #1
.LBE2077:
.LBE2128:
.LBB2129:
.LBB2102:
	ldr	r6, [sp, #36]
.LVL1801:
.LBE2102:
.LBE2129:
	.loc 1 104 0 discriminator 4
	str	r2, [sp, #32]
.LVL1802:
.LBB2130:
.LBB2103:
	.loc 2 33 0
	ldr	r2, [sp, #124]
	ldr	r7, [sp, #36]
	eor	r2, r2, r6
	ldr	r6, [sp, #124]
	and	r2, r2, r3
	orr	r6, r6, r7
	sub	r2, r6, r2, lsr #1
.LBE2103:
.LBE2130:
	.loc 1 104 0 discriminator 4
	str	r2, [sp, #36]
.LVL1803:
.LBB2131:
.LBB2078:
	.loc 2 33 0
	ldr	r6, [sp, #40]
	ldr	r2, [sp, #136]
	ldr	r7, [sp, #40]
.LVL1804:
	eor	r2, r2, r6
	ldr	r6, [sp, #136]
.LBE2078:
.LBE2131:
	.loc 1 104 0 discriminator 4
	ldr	r4, [sp, #140]
	ldr	r10, [sp, #152]
	ldr	lr, [sp, #44]
.LVL1805:
	ldr	ip, [sp, #48]
	ldr	r9, [sp, #156]
	ldr	r0, [sp, #52]
.LBB2132:
.LBB2079:
	.loc 2 33 0
	orr	r6, r6, r7
	and	r2, r2, r3
	sub	r2, r6, r2, lsr #1
.LBE2079:
.LBE2132:
.LBB2133:
.LBB2104:
	eor	r6, r4, lr
	orr	lr, r4, lr
.LVL1806:
.LBE2104:
.LBE2133:
.LBB2134:
.LBB2080:
	eor	r4, r10, ip
.LVL1807:
	and	r7, r4, r3
.LBE2080:
.LBE2134:
.LBB2135:
.LBB2105:
	eor	r4, r9, r0
	and	r4, r4, r3
	orr	r0, r9, r0
.LBE2105:
.LBE2135:
	.loc 1 104 0 discriminator 4
	ldr	r1, [sp, #56]
.LBB2136:
.LBB2081:
	.loc 2 33 0
	ldr	r9, [sp, #168]
.LBE2081:
.LBE2136:
.LBB2137:
.LBB2106:
	sub	r0, r0, r4, lsr #1
.LBE2106:
.LBE2137:
.LBB2138:
.LBB2082:
	orr	ip, r10, ip
	ldr	r10, [sp, #168]
.LBE2082:
.LBE2138:
	.loc 1 104 0 discriminator 4
	str	r2, [sp, #40]
.LVL1808:
	ldr	r2, [sp, #60]
	ldr	r4, [sp, #172]
.LBB2139:
.LBB2107:
	.loc 2 33 0
	and	r6, r6, r3
	sub	lr, lr, r6, lsr #1
	eor	r6, r4, r2
.LBE2107:
.LBE2139:
	.loc 1 104 0 discriminator 4
	str	lr, [sp, #44]
.LVL1809:
.LBB2140:
.LBB2108:
	.loc 2 33 0
	and	r6, r6, r3
.LBE2108:
.LBE2140:
	.loc 1 104 0 discriminator 4
	ldr	lr, [sp, #64]
.LBB2141:
.LBB2083:
	.loc 2 33 0
	eor	r9, r9, r1
.LBE2083:
.LBE2141:
.LBB2142:
.LBB2109:
	orr	r4, r4, r2
.LBE2109:
.LBE2142:
.LBB2143:
.LBB2084:
	orr	r1, r10, r1
.LBE2084:
.LBE2143:
	.loc 1 104 0 discriminator 4
	ldr	r10, [sp, #184]
.LBB2144:
.LBB2110:
	.loc 2 33 0
	sub	r4, r4, r6, lsr #1
.LBE2110:
.LBE2144:
	.loc 1 104 0 discriminator 4
	str	r4, [sp, #60]
.LBB2145:
.LBB2085:
	.loc 2 33 0
	eor	r4, r10, lr
	and	r4, r4, r3
	orr	lr, r10, lr
	and	r9, r9, r3
.LVL1810:
	sub	lr, lr, r4, lsr #1
	sub	r1, r1, r9, lsr #1
.LBE2085:
.LBE2145:
.LBB2146:
.LBB2111:
	ldr	r4, [sp, #68]
.LBE2111:
.LBE2146:
	.loc 1 104 0 discriminator 4
	ldr	r9, [sp, #188]
	str	lr, [sp, #64]
.LBB2147:
.LBB2112:
	.loc 2 33 0
	ldr	lr, [sp, #68]
.LBE2112:
.LBE2147:
.LBB2148:
.LBB2086:
	ldr	r6, [sp, #72]
.LBE2086:
.LBE2148:
.LBB2149:
.LBB2113:
	eor	lr, r9, lr
	orr	r9, r9, r4
.LBE2113:
.LBE2149:
.LBB2150:
.LBB2087:
	ldr	r4, [sp, #200]
.LBE2087:
.LBE2150:
.LBB2151:
.LBB2114:
	and	lr, lr, r3
	sub	lr, r9, lr, lsr #1
.LBE2114:
.LBE2151:
.LBB2152:
.LBB2088:
	eor	r4, r4, r6
	ldr	r9, [sp, #72]
	ldr	r6, [sp, #200]
.LBE2088:
.LBE2152:
.LBB2153:
.LBB2115:
	ldr	r10, [sp, #76]
.LBE2115:
.LBE2153:
.LBB2154:
.LBB2089:
	orr	r6, r6, r9
.LBE2089:
.LBE2154:
.LBB2155:
.LBB2116:
	ldr	r9, [sp, #204]
.LBE2116:
.LBE2155:
.LBB2156:
.LBB2090:
	sub	ip, ip, r7, lsr #1
.LBE2090:
.LBE2156:
	.loc 1 104 0 discriminator 4
	str	ip, [sp, #48]
.LVL1811:
	ldr	r7, [sp, #216]
	ldr	ip, [sp, #80]
	str	r0, [sp, #52]
.LVL1812:
	str	r1, [sp, #56]
.LBE2071:
.LBE2070:
.LBE2069:
	.loc 5 695 0 discriminator 3
	mov	r0, r8
	mov	r1, r5
.LBB2174:
.LBB2171:
.LBB2168:
	.loc 1 104 0 discriminator 4
	ldr	r8, [sp, #220]
.LVL1813:
	ldr	r5, [sp, #84]
.LVL1814:
.LBE2168:
.LBE2171:
.LBE2174:
	.loc 5 695 0 discriminator 3
	mov	r2, fp
.LBB2175:
.LBB2172:
.LBB2169:
.LBB2157:
.LBB2117:
	.loc 2 33 0
	eor	r9, r9, r10
	ldr	fp, [sp, #76]
.LVL1815:
	ldr	r10, [sp, #204]
.LBE2117:
.LBE2157:
.LBB2158:
.LBB2091:
	and	r4, r4, r3
.LBE2091:
.LBE2158:
.LBB2159:
.LBB2118:
	orr	r10, r10, fp
.LBE2118:
.LBE2159:
.LBB2160:
.LBB2092:
	eor	fp, r7, ip
	orr	ip, r7, ip
.LBE2092:
.LBE2160:
.LBB2161:
.LBB2119:
	eor	r7, r8, r5
.LBE2119:
.LBE2161:
.LBB2162:
.LBB2093:
	and	fp, fp, r3
.LBE2093:
.LBE2162:
.LBB2163:
.LBB2120:
	and	r9, r9, r3
	orr	r5, r8, r5
	and	r3, r3, r7
.LBE2120:
.LBE2163:
.LBB2164:
.LBB2094:
	sub	ip, ip, fp, lsr #1
.LBE2094:
.LBE2164:
.LBB2165:
.LBB2121:
	sub	r5, r5, r3, lsr #1
.LBE2121:
.LBE2165:
.LBB2166:
.LBB2095:
	sub	r4, r6, r4, lsr #1
.LBE2095:
.LBE2166:
.LBB2167:
.LBB2122:
	sub	r9, r10, r9, lsr #1
.LBE2122:
.LBE2167:
.LBE2169:
.LBE2172:
.LBE2175:
	.loc 5 695 0 discriminator 3
	mov	r3, #8
.LBB2176:
.LBB2173:
.LBB2170:
	.loc 1 104 0 discriminator 4
	str	lr, [sp, #68]
.LVL1816:
	str	r4, [sp, #72]
.LVL1817:
	str	r9, [sp, #76]
.LVL1818:
	str	ip, [sp, #80]
	str	r5, [sp, #84]
.LVL1819:
.LBE2170:
.LBE2173:
.LBE2176:
	.loc 5 695 0 discriminator 3
	bl	put_mpeg4_qpel8_v_lowpass(PLT)
.LVL1820:
	.loc 5 695 0 is_stmt 0
	add	sp, sp, #236
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1821:
.L267:
	.align	2
.L266:
	.word	-16843010
	.cfi_endproc
.LFE123:
	.size	put_qpel8_mc12_c, .-put_qpel8_mc12_c
	.align	2
	.type	put_qpel8_mc32_c, %function
put_qpel8_mc32_c:
.LFB125:
	.loc 5 695 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 224
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1822:
.LBB2186:
.LBB2187:
	.loc 6 64 0
	add	r3, r1, r2
.LBE2187:
.LBE2186:
	.loc 5 695 0
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
.LBB2193:
.LBB2188:
	.loc 6 64 0
	add	r8, r3, r2
.LBE2188:
.LBE2193:
	.loc 5 695 0
	mov	r4, r2
.LVL1823:
.LBB2194:
.LBB2189:
	.loc 6 61 0
	ldrb	lr, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r8, #5]	@ zero_extendqisi2
	ldrb	r2, [r8, #4]	@ zero_extendqisi2
.LVL1824:
	ldrb	r5, [r1, r4]	@ zero_extendqisi2
	ldrb	fp, [r3, #5]	@ zero_extendqisi2
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
	ldrb	r9, [r1]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #8
	ldrb	r10, [r1, #1]	@ zero_extendqisi2
	orr	r6, r5, r6, asl #8
	orr	ip, ip, fp, asl #8
	ldrb	r5, [r1, #4]	@ zero_extendqisi2
	ldrb	fp, [r1, #5]	@ zero_extendqisi2
	orr	r9, r9, r10, asl #8
	ldrb	r10, [r8, #6]	@ zero_extendqisi2
	ldrb	r7, [r8, #1]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #8
	orr	r2, r2, r10, asl #16
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	ldrb	r10, [r3, #6]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #8
	ldrb	r7, [r8, #2]	@ zero_extendqisi2
	orr	r6, r6, fp, asl #16
	orr	ip, ip, r10, asl #16
	ldrb	fp, [r1, #2]	@ zero_extendqisi2
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #16
	ldrb	r7, [r8, #3]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #16
	orr	r9, r9, fp, asl #16
	ldrb	r10, [r3, #3]	@ zero_extendqisi2
	ldrb	fp, [r8, #7]	@ zero_extendqisi2
	orr	r7, lr, r7, asl #24
	ldrb	lr, [r3, #7]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #24
	orr	r6, r6, r10, asl #24
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	orr	ip, ip, lr, asl #24
	.loc 6 64 0
	add	lr, r8, r4
.LBE2189:
.LBE2194:
	.loc 5 695 0
	sub	sp, sp, #236
	.cfi_def_cfa_offset 272
.LVL1825:
.LBB2195:
.LBB2190:
	.loc 6 61 0
	orr	r9, r9, fp, asl #24
	orr	r10, r5, r10, asl #24
	.loc 6 62 0
	ldrb	fp, [r1, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r5, lr, r4
	.loc 6 62 0
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
.LVL1826:
	.loc 6 61 0
	str	r7, [sp, #120]
	str	r6, [sp, #104]
	str	ip, [sp, #108]
	str	r9, [sp, #88]
	str	r10, [sp, #92]
	.loc 6 62 0
	strb	fp, [sp, #96]
.LVL1827:
	strb	r1, [sp, #112]
.LVL1828:
	.loc 6 61 0
	ldrb	r9, [r5, #1]	@ zero_extendqisi2
	ldrb	r6, [r8, r4, asl #1]	@ zero_extendqisi2
	str	r2, [sp, #124]
	ldrb	r10, [lr, #1]	@ zero_extendqisi2
	ldrb	r2, [r3, r4, asl #1]	@ zero_extendqisi2
	ldrb	r1, [r5, #4]	@ zero_extendqisi2
	ldrb	ip, [r5, #5]	@ zero_extendqisi2
	ldrb	r7, [lr, #5]	@ zero_extendqisi2
	ldrb	fp, [lr, #2]	@ zero_extendqisi2
	ldrb	r3, [lr, #4]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #8
	orr	r6, r6, r9, asl #8
	ldrb	r10, [r5, #2]	@ zero_extendqisi2
	ldrb	r9, [r5, #6]	@ zero_extendqisi2
	orr	ip, r1, ip, asl #8
	ldrb	r1, [lr, #6]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #16
	orr	r3, r3, r7, asl #8
	ldrb	fp, [r5, #3]	@ zero_extendqisi2
	ldrb	r7, [lr, #3]	@ zero_extendqisi2
	orr	r6, r6, r10, asl #16
	orr	ip, ip, r9, asl #16
	ldrb	r10, [r5, #7]	@ zero_extendqisi2
	ldrb	r9, [lr, #7]	@ zero_extendqisi2
	orr	r3, r3, r1, asl #16
	orr	r7, r2, r7, asl #24
	.loc 6 64 0
	add	r1, r5, r4
	.loc 6 62 0
	ldrb	r8, [r8, #8]	@ zero_extendqisi2
.LVL1829:
	.loc 6 61 0
	orr	r6, r6, fp, asl #24
	orr	ip, ip, r10, asl #24
	orr	fp, r3, r9, asl #24
	.loc 6 62 0
	ldrb	r10, [r5, #8]	@ zero_extendqisi2
	ldrb	r9, [lr, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r2, r1, r4
	.loc 6 61 0
	str	r7, [sp, #136]
	.loc 6 62 0
	strb	r8, [sp, #128]
.LVL1830:
	.loc 6 61 0
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	ldrb	r8, [r1, #5]	@ zero_extendqisi2
	str	r6, [sp, #152]
	str	ip, [sp, #156]
	ldrb	r6, [r1, #2]	@ zero_extendqisi2
	str	fp, [sp, #140]
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r10, [sp, #160]
	strb	r9, [sp, #144]
.LVL1831:
	.loc 6 61 0
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	ldrb	lr, [lr, r4, asl #1]	@ zero_extendqisi2
	.loc 6 64 0
	add	r3, r2, r4
	.loc 6 61 0
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	str	r10, [sp, #12]
	ldrb	r5, [r5, r4, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r3, #1]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	orr	lr, lr, r7, asl #8
	ldrb	r8, [r1, r4, asl #1]	@ zero_extendqisi2
	ldrb	r7, [r2, #1]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #8
	orr	r7, r5, r7, asl #8
	ldrb	r10, [r3, #5]	@ zero_extendqisi2
	ldrb	r5, [r3, #4]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #16
	orr	r10, r5, r10, asl #8
	ldrb	r9, [r2, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #4]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #16
	orr	r9, r5, r9, asl #8
	ldrb	r5, [r2, #2]	@ zero_extendqisi2
	ldrb	r6, [r3, #2]	@ zero_extendqisi2
	orr	r7, r7, r5, asl #16
	ldrb	r5, [r2, #6]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	orr	r8, r8, r6, asl #16
	ldr	fp, [sp, #12]
	ldrb	r6, [r3, #6]	@ zero_extendqisi2
	orr	r5, r9, r5, asl #16
	ldrb	r9, [r3, #3]	@ zero_extendqisi2
	orr	ip, ip, fp, asl #24
	orr	r8, r8, r9, asl #24
	ldrb	fp, [r3, #7]	@ zero_extendqisi2
	ldrb	r9, [r2, #7]	@ zero_extendqisi2
	orr	r6, r10, r6, asl #16
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	orr	r6, r6, fp, asl #24
	orr	r7, r7, r10, asl #24
	orr	r5, r5, r9, asl #24
	.loc 6 62 0
	ldrb	r10, [r3, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r3, r3, r4
	.loc 6 62 0
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
.LVL1832:
	ldrb	r9, [r2, #8]	@ zero_extendqisi2
	.loc 6 61 0
	str	r6, [sp, #204]
	str	r5, [sp, #188]
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	ldrb	r5, [r2, r4, asl #1]	@ zero_extendqisi2
	str	lr, [sp, #168]
	str	ip, [sp, #172]
	.loc 6 62 0
	strb	r1, [sp, #176]
.LVL1833:
	.loc 6 61 0
	str	r8, [sp, #200]
	str	r7, [sp, #184]
	.loc 6 62 0
	strb	r10, [sp, #208]
	strb	r9, [sp, #192]
.LVL1834:
	.loc 6 61 0
	ldrb	lr, [r3, #2]	@ zero_extendqisi2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	ldrb	r8, [r3, #3]	@ zero_extendqisi2
	ldrb	ip, [r3, #6]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #8
	ldrb	r7, [r3, #7]	@ zero_extendqisi2
	orr	r2, r1, r2, asl #8
	orr	r1, r5, lr, asl #16
	orr	lr, r1, r8, asl #24
	orr	r2, r2, ip, asl #16
.LBE2190:
.LBE2195:
	.loc 5 695 0 discriminator 1
	add	r8, sp, #16
	mov	r6, #9
.LBB2196:
.LBB2191:
	.loc 6 61 0
	orr	ip, r2, r7, asl #24
	.loc 6 62 0
	ldrb	r5, [r3, #8]	@ zero_extendqisi2
.LBE2191:
.LBE2196:
	.loc 5 695 0
	str	r0, [sp, #12]
	.loc 5 695 0 is_stmt 0 discriminator 1
	str	r6, [sp]
	mov	r0, r8
.LVL1835:
	add	r1, sp, #88
	mov	r2, #8
	mov	r3, #16
.LVL1836:
.LBB2197:
.LBB2192:
	.loc 6 61 0 is_stmt 1
	str	lr, [sp, #216]
	str	ip, [sp, #220]
	.loc 6 62 0
	strb	r5, [sp, #224]
.LVL1837:
.LBE2192:
.LBE2197:
	.loc 5 695 0 discriminator 1
	bl	put_mpeg4_qpel8_h_lowpass(PLT)
.LVL1838:
.LBB2198:
.LBB2199:
.LBB2200:
	.loc 1 104 0 discriminator 4
	ldrb	fp, [sp, #96]	@ zero_extendqisi2
	ldrb	r6, [sp, #128]	@ zero_extendqisi2
	ldr	r1, [sp, #92]
	ldrb	r3, [sp, #92]	@ zero_extendqisi2
	ldrb	r9, [sp, #108]	@ zero_extendqisi2
	mov	ip, r6, asl #24
	mov	r10, fp, asl #24
	ldr	r6, [sp, #88]
	orr	fp, r10, r1, lsr #8
	ldrb	r7, [sp, #112]	@ zero_extendqisi2
	ldr	r1, [sp, #104]
	mov	r3, r3, asl #24
	orr	r3, r3, r6, lsr #8
	ldrb	r2, [sp, #124]	@ zero_extendqisi2
	ldr	r6, [sp, #108]
	mov	r9, r9, asl #24
	orr	r9, r9, r1, lsr #8
	mov	r7, r7, asl #24
	ldr	r1, [sp, #120]
	ldr	r0, [sp, #16]
.LVL1839:
	ldrb	lr, [sp, #144]	@ zero_extendqisi2
	orr	r7, r7, r6, lsr #8
	mov	r2, r2, asl #24
	ldr	r6, [sp, #124]
	orr	r2, r2, r1, lsr #8
	ldr	r1, [sp, #140]
	orr	r6, ip, r6, lsr #8
	ldrb	r5, [sp, #140]	@ zero_extendqisi2
.LBB2201:
.LBB2202:
	.loc 2 33 0
	eor	ip, r3, r0
.LBE2202:
.LBE2201:
	.loc 1 104 0 discriminator 4
	mov	lr, lr, asl #24
.LBB2228:
.LBB2203:
	.loc 2 33 0
	orr	r0, r3, r0
.LVL1840:
	ldr	r3, .L270
.LVL1841:
.LBE2203:
.LBE2228:
	.loc 1 104 0 discriminator 4
	ldr	r10, [sp, #136]
	orr	lr, lr, r1, lsr #8
	ldr	r1, [sp, #20]
.LVL1842:
.LBB2229:
.LBB2204:
	.loc 2 33 0
	and	ip, ip, r3
.LBE2204:
.LBE2229:
	.loc 1 104 0 discriminator 4
	mov	r5, r5, asl #24
	orr	r5, r5, r10, lsr #8
.LBB2230:
.LBB2205:
	.loc 2 33 0
	sub	r0, r0, ip, lsr #1
.LBE2205:
.LBE2230:
.LBB2231:
.LBB2232:
	eor	r10, fp, r1
.LBE2232:
.LBE2231:
	.loc 1 104 0 discriminator 4
	str	r0, [sp, #16]
.LVL1843:
.LBB2258:
.LBB2233:
	.loc 2 33 0
	orr	r1, fp, r1
.LVL1844:
	and	r0, r10, r3
	sub	r10, r1, r0, lsr #1
.LBE2233:
.LBE2258:
	.loc 1 104 0 discriminator 4
	str	r10, [sp, #20]
.LVL1845:
.LBB2259:
.LBB2206:
	.loc 2 33 0
	ldr	r10, [sp, #24]
	ldr	fp, [sp, #24]
	eor	r10, r9, r10
	and	r10, r10, r3
	orr	r9, r9, fp
.LVL1846:
	sub	r9, r9, r10, lsr #1
.LBE2206:
.LBE2259:
	.loc 1 104 0 discriminator 4
	str	r9, [sp, #24]
.LVL1847:
.LBB2260:
.LBB2234:
	.loc 2 33 0
	ldr	r9, [sp, #28]
	ldr	r10, [sp, #28]
	eor	r9, r7, r9
	and	r9, r9, r3
	orr	r7, r7, r10
.LVL1848:
.LBE2234:
.LBE2260:
	.loc 1 104 0 discriminator 4
	ldr	ip, [sp, #36]
.LBB2261:
.LBB2207:
	.loc 2 33 0
	ldr	r10, [sp, #32]
.LBE2207:
.LBE2261:
	.loc 1 104 0 discriminator 4
	ldr	r0, [sp, #40]
.LBB2262:
.LBB2235:
	.loc 2 33 0
	sub	r9, r7, r9, lsr #1
.LBE2235:
.LBE2262:
.LBB2263:
.LBB2208:
	ldr	r7, [sp, #32]
.LBE2208:
.LBE2263:
	.loc 1 104 0 discriminator 4
	ldr	r1, [sp, #44]
.LBB2264:
.LBB2209:
	.loc 2 33 0
	eor	fp, r5, r0
.LVL1849:
	eor	r7, r2, r7
	orr	r2, r2, r10
.LBE2209:
.LBE2264:
.LBB2265:
.LBB2236:
	eor	r10, r6, ip
.LBE2236:
.LBE2265:
.LBB2266:
.LBB2210:
	and	r7, r7, r3
.LBE2210:
.LBE2266:
.LBB2267:
.LBB2237:
	and	r10, r10, r3
.LBE2237:
.LBE2267:
.LBB2268:
.LBB2211:
	and	fp, fp, r3
.LBE2211:
.LBE2268:
.LBB2269:
.LBB2238:
	orr	ip, r6, ip
.LBE2238:
.LBE2269:
.LBB2270:
.LBB2212:
	orr	r0, r5, r0
	sub	r2, r2, r7, lsr #1
.LBE2212:
.LBE2270:
.LBB2271:
.LBB2239:
	eor	r5, lr, r1
	sub	ip, ip, r10, lsr #1
.LBE2239:
.LBE2271:
.LBB2272:
.LBB2213:
	sub	r0, r0, fp, lsr #1
.LBE2213:
.LBE2272:
.LBB2273:
.LBB2240:
	and	r5, r5, r3
.LBE2240:
.LBE2273:
	.loc 1 104 0 discriminator 4
	str	r9, [sp, #28]
.LVL1850:
	str	r2, [sp, #32]
.LVL1851:
	str	ip, [sp, #36]
.LVL1852:
.LBB2274:
.LBB2241:
	.loc 2 33 0
	orr	r1, lr, r1
.LVL1853:
.LBE2241:
.LBE2274:
	.loc 1 104 0 discriminator 4
	str	r0, [sp, #40]
.LVL1854:
	ldrb	lr, [sp, #160]	@ zero_extendqisi2
.LVL1855:
.LBB2275:
.LBB2242:
	.loc 2 33 0
	sub	r1, r1, r5, lsr #1
.LBE2242:
.LBE2275:
	.loc 1 104 0 discriminator 4
	ldrb	r5, [sp, #156]	@ zero_extendqisi2
	mov	ip, lr, asl #24
	ldr	lr, [sp, #152]
	mov	r5, r5, asl #24
	orr	r5, r5, lr, lsr #8
	ldr	lr, [sp, #156]
	ldrb	r10, [sp, #172]	@ zero_extendqisi2
	orr	lr, ip, lr, lsr #8
	ldr	ip, [sp, #168]
	ldrb	r0, [sp, #176]	@ zero_extendqisi2
	mov	r10, r10, asl #24
	orr	r10, r10, ip, lsr #8
	ldr	ip, [sp, #172]
	ldrb	r2, [sp, #188]	@ zero_extendqisi2
	mov	r0, r0, asl #24
	orr	r0, r0, ip, lsr #8
	ldr	ip, [sp, #184]
	ldr	r9, [sp, #48]
	ldrb	r7, [sp, #204]	@ zero_extendqisi2
	mov	r2, r2, asl #24
	str	r1, [sp, #44]
.LVL1856:
	orr	r2, r2, ip, lsr #8
	ldrb	r1, [sp, #192]	@ zero_extendqisi2
	ldr	ip, [sp, #200]
.LBB2276:
.LBB2214:
	.loc 2 33 0
	eor	fp, r5, r9
.LBE2214:
.LBE2276:
	.loc 1 104 0 discriminator 4
	mov	r7, r7, asl #24
.LBB2277:
.LBB2215:
	.loc 2 33 0
	orr	r5, r5, r9
.LVL1857:
.LBE2215:
.LBE2277:
	.loc 1 104 0 discriminator 4
	ldr	r9, [sp, #188]
.LVL1858:
	orr	r7, r7, ip, lsr #8
	ldrb	r6, [sp, #208]	@ zero_extendqisi2
	ldr	ip, [sp, #52]
.LVL1859:
.LBB2278:
.LBB2216:
	.loc 2 33 0
	and	fp, fp, r3
.LBE2216:
.LBE2278:
	.loc 1 104 0 discriminator 4
	mov	r1, r1, asl #24
	orr	r1, r1, r9, lsr #8
.LBB2279:
.LBB2217:
	.loc 2 33 0
	sub	fp, r5, fp, lsr #1
.LBE2217:
.LBE2279:
	.loc 1 104 0 discriminator 4
	ldr	r9, [sp, #204]
	str	fp, [sp, #48]
.LVL1860:
	mov	r6, r6, asl #24
.LBB2280:
.LBB2243:
	.loc 2 33 0
	eor	fp, lr, ip
.LBE2243:
.LBE2280:
	.loc 1 104 0 discriminator 4
	orr	r6, r6, r9, lsr #8
.LBB2281:
.LBB2244:
	.loc 2 33 0
	orr	ip, lr, ip
.LVL1861:
.LBE2244:
.LBE2281:
	.loc 1 104 0 discriminator 4
	ldr	r9, [sp, #56]
.LBB2282:
.LBB2245:
	.loc 2 33 0
	and	fp, fp, r3
	sub	fp, ip, fp, lsr #1
.LBE2245:
.LBE2282:
	.loc 1 104 0 discriminator 4
	str	fp, [sp, #52]
.LVL1862:
.LBB2283:
.LBB2218:
	.loc 2 33 0
	eor	fp, r10, r9
	and	fp, fp, r3
	orr	r9, r10, r9
.LVL1863:
	sub	r9, r9, fp, lsr #1
.LBE2218:
.LBE2283:
.LBB2284:
.LBB2246:
	ldr	r10, [sp, #60]
.LVL1864:
.LBE2246:
.LBE2284:
	.loc 1 104 0 discriminator 4
	str	r9, [sp, #56]
.LVL1865:
.LBB2285:
.LBB2247:
	.loc 2 33 0
	ldr	r9, [sp, #60]
.LBE2247:
.LBE2285:
	.loc 1 104 0 discriminator 4
	ldr	r5, [sp, #68]
	ldr	lr, [sp, #72]
	ldr	ip, [sp, #76]
.LBB2286:
.LBB2248:
	.loc 2 33 0
	eor	r9, r0, r9
	orr	r0, r0, r10
.LVL1866:
.LBE2248:
.LBE2286:
.LBB2287:
.LBB2219:
	ldr	r10, [sp, #64]
.LBE2219:
.LBE2287:
.LBB2288:
.LBB2249:
	and	r9, r9, r3
	sub	r9, r0, r9, lsr #1
.LBE2249:
.LBE2288:
.LBB2289:
.LBB2220:
	eor	fp, r7, lr
	eor	r0, r2, r10
	orr	r2, r2, r10
.LBE2220:
.LBE2289:
.LBB2290:
.LBB2250:
	eor	r10, r1, r5
	orr	r5, r1, r5
	eor	r1, r6, ip
.LBE2250:
.LBE2290:
.LBB2291:
.LBB2221:
	and	r0, r0, r3
.LBE2221:
.LBE2291:
.LBB2292:
.LBB2251:
	and	r10, r10, r3
.LBE2251:
.LBE2292:
.LBB2293:
.LBB2222:
	and	fp, fp, r3
.LBE2222:
.LBE2293:
.LBB2294:
.LBB2252:
	and	r1, r1, r3
.LBE2252:
.LBE2294:
.LBB2295:
.LBB2223:
	orr	lr, r7, lr
.LBE2223:
.LBE2295:
.LBB2296:
.LBB2253:
	orr	ip, r6, ip
.LBE2253:
.LBE2296:
.LBB2297:
.LBB2224:
	sub	r2, r2, r0, lsr #1
.LBE2224:
.LBE2297:
.LBB2298:
.LBB2254:
	sub	r5, r5, r10, lsr #1
.LBE2254:
.LBE2298:
.LBB2299:
.LBB2225:
	sub	lr, lr, fp, lsr #1
.LBE2225:
.LBE2299:
.LBB2300:
.LBB2255:
	sub	ip, ip, r1, lsr #1
.LBE2255:
.LBE2300:
	.loc 1 104 0 discriminator 4
	str	r2, [sp, #64]
	str	r5, [sp, #68]
	str	lr, [sp, #72]
	str	r9, [sp, #60]
.LVL1867:
	str	ip, [sp, #76]
.LVL1868:
	ldrb	lr, [sp, #220]	@ zero_extendqisi2
	ldrb	r0, [sp, #224]	@ zero_extendqisi2
	ldr	r5, [sp, #216]
	ldr	ip, [sp, #220]
	ldr	r1, [sp, #80]
.LVL1869:
	ldr	r2, [sp, #84]
	mov	r0, r0, asl #24
	mov	lr, lr, asl #24
	orr	lr, lr, r5, lsr #8
.LVL1870:
	orr	ip, r0, ip, lsr #8
.LVL1871:
.LBB2301:
.LBB2256:
	.loc 2 33 0
	eor	r0, ip, r2
.LBE2256:
.LBE2301:
.LBB2302:
.LBB2226:
	eor	r5, lr, r1
	and	r5, r5, r3
	orr	lr, lr, r1
.LVL1872:
.LBE2226:
.LBE2302:
.LBB2303:
.LBB2257:
	and	r3, r3, r0
	orr	ip, ip, r2
.LVL1873:
	sub	ip, ip, r3, lsr #1
.LBE2257:
.LBE2303:
.LBB2304:
.LBB2227:
	sub	lr, lr, r5, lsr #1
.LBE2227:
.LBE2304:
.LBE2200:
.LBE2199:
.LBE2198:
	.loc 5 695 0 discriminator 3
	ldr	r0, [sp, #12]
	mov	r1, r8
.LVL1874:
	mov	r2, r4
.LVL1875:
	mov	r3, #8
.LBB2307:
.LBB2306:
.LBB2305:
	.loc 1 104 0 discriminator 4
	str	lr, [sp, #80]
.LVL1876:
	str	ip, [sp, #84]
.LVL1877:
.LBE2305:
.LBE2306:
.LBE2307:
	.loc 5 695 0 discriminator 3
	bl	put_mpeg4_qpel8_v_lowpass(PLT)
.LVL1878:
	.loc 5 695 0 is_stmt 0
	add	sp, sp, #236
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1879:
.L271:
	.align	2
.L270:
	.word	-16843010
	.cfi_endproc
.LFE125:
	.size	put_qpel8_mc32_c, .-put_qpel8_mc32_c
	.align	2
	.type	avg_qpel8_mc12_c, %function
avg_qpel8_mc12_c:
.LFB215:
	.loc 5 697 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 224
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1880:
.LBB2317:
.LBB2318:
	.loc 6 64 0
	add	r3, r1, r2
.LBE2318:
.LBE2317:
	.loc 5 697 0
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
.LBB2324:
.LBB2319:
	.loc 6 64 0
	add	r7, r3, r2
.LBE2319:
.LBE2324:
	.loc 5 697 0
	mov	fp, r2
.LVL1881:
.LBB2325:
.LBB2320:
	.loc 6 61 0
	ldrb	lr, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #4]	@ zero_extendqisi2
.LVL1882:
	ldrb	r4, [r1, fp]	@ zero_extendqisi2
	ldrb	r10, [r3, #5]	@ zero_extendqisi2
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
	ldrb	r8, [r1]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #8
	ldrb	r9, [r1, #1]	@ zero_extendqisi2
	orr	r5, r4, r5, asl #8
	orr	ip, ip, r10, asl #8
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	orr	r8, r8, r9, asl #8
	ldrb	r9, [r7, #6]	@ zero_extendqisi2
	ldrb	r6, [r7, #1]	@ zero_extendqisi2
	orr	r4, r4, r10, asl #8
	orr	r2, r2, r9, asl #16
	ldrb	r10, [r3, #2]	@ zero_extendqisi2
	ldrb	r9, [r3, #6]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #8
	orr	r5, r5, r10, asl #16
	ldrb	r6, [r7, #2]	@ zero_extendqisi2
	ldrb	r10, [r1, #2]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #16
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #16
	orr	r4, r4, r9, asl #16
	ldrb	r6, [r7, #3]	@ zero_extendqisi2
	ldrb	r9, [r3, #3]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #16
	ldrb	r10, [r7, #7]	@ zero_extendqisi2
	orr	r6, lr, r6, asl #24
	orr	r2, r2, r10, asl #24
	ldrb	lr, [r3, #7]	@ zero_extendqisi2
	ldrb	r10, [r1, #3]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	ldrb	r9, [r1, #7]	@ zero_extendqisi2
.LBE2320:
.LBE2325:
	.loc 5 697 0
	sub	sp, sp, #236
	.cfi_def_cfa_offset 272
.LVL1883:
.LBB2326:
.LBB2321:
	.loc 6 61 0
	orr	ip, ip, lr, asl #24
	orr	r8, r8, r10, asl #24
	.loc 6 64 0
	add	lr, r7, fp
	.loc 6 62 0
	ldrb	r10, [r1, #8]	@ zero_extendqisi2
	.loc 6 61 0
	orr	r9, r4, r9, asl #24
	.loc 6 62 0
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
.LVL1884:
	.loc 6 64 0
	add	r4, lr, fp
	.loc 6 61 0
	str	r6, [sp, #120]
	str	r5, [sp, #104]
	str	ip, [sp, #108]
	str	r8, [sp, #88]
	str	r9, [sp, #92]
	.loc 6 62 0
	strb	r10, [sp, #96]
.LVL1885:
	strb	r1, [sp, #112]
.LVL1886:
	.loc 6 61 0
	ldrb	r9, [lr, #1]	@ zero_extendqisi2
	str	r2, [sp, #124]
	ldrb	r2, [r3, fp, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r4, #1]	@ zero_extendqisi2
	ldrb	r5, [r7, fp, asl #1]	@ zero_extendqisi2
	ldrb	r10, [lr, #5]	@ zero_extendqisi2
	ldrb	r3, [lr, #4]	@ zero_extendqisi2
	ldrb	r1, [r4, #4]	@ zero_extendqisi2
	ldrb	ip, [r4, #5]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #8
	ldrb	r9, [r4, #2]	@ zero_extendqisi2
	ldrb	r6, [lr, #2]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #8
	orr	r3, r3, r10, asl #8
	ldrb	r8, [r4, #6]	@ zero_extendqisi2
	ldrb	r10, [lr, #3]	@ zero_extendqisi2
	str	r10, [sp, #12]
	orr	ip, r1, ip, asl #8
	orr	r5, r5, r9, asl #16
	ldrb	r1, [lr, #6]	@ zero_extendqisi2
	ldrb	r9, [r4, #7]	@ zero_extendqisi2
	ldrb	r10, [r4, #3]	@ zero_extendqisi2
	orr	r2, r2, r6, asl #16
	orr	ip, ip, r8, asl #16
	ldr	r6, [sp, #12]
	ldrb	r8, [lr, #7]	@ zero_extendqisi2
	orr	r3, r3, r1, asl #16
	orr	ip, ip, r9, asl #24
	.loc 6 64 0
	add	r1, r4, fp
	.loc 6 61 0
	orr	r6, r2, r6, asl #24
	.loc 6 62 0
	ldrb	r7, [r7, #8]	@ zero_extendqisi2
.LVL1887:
	.loc 6 61 0
	orr	r5, r5, r10, asl #24
	.loc 6 62 0
	ldrb	r9, [r4, #8]	@ zero_extendqisi2
	.loc 6 61 0
	orr	r10, r3, r8, asl #24
	str	ip, [sp, #156]
	ldrb	ip, [r1, #3]	@ zero_extendqisi2
	.loc 6 64 0
	add	r2, r1, fp
	.loc 6 62 0
	ldrb	r8, [lr, #8]	@ zero_extendqisi2
	.loc 6 61 0
	str	r6, [sp, #136]
	.loc 6 62 0
	strb	r7, [sp, #128]
.LVL1888:
	.loc 6 61 0
	ldrb	r6, [r1, #1]	@ zero_extendqisi2
	ldrb	r7, [r1, #5]	@ zero_extendqisi2
	str	r5, [sp, #152]
	str	r10, [sp, #140]
	ldrb	r5, [r1, #2]	@ zero_extendqisi2
	str	ip, [sp, #12]
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r9, [sp, #160]
	.loc 6 61 0
	ldrb	lr, [lr, fp, asl #1]	@ zero_extendqisi2
.LVL1889:
	.loc 6 64 0
	add	r3, r2, fp
	.loc 6 61 0
	ldrb	r4, [r4, fp, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r3, #1]	@ zero_extendqisi2
	orr	ip, ip, r7, asl #8
	orr	lr, lr, r6, asl #8
	ldrb	r7, [r1, fp, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r2, #1]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r8, [sp, #144]
.LVL1890:
	.loc 6 61 0
	orr	r7, r7, r9, asl #8
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	r9, [r3, #5]	@ zero_extendqisi2
	orr	r6, r4, r6, asl #8
	ldrb	r4, [r3, #4]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r9, r4, r9, asl #8
	ldrb	r8, [r2, #5]	@ zero_extendqisi2
	ldrb	r4, [r2, #4]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #16
	orr	r8, r4, r8, asl #8
	ldrb	r5, [r3, #2]	@ zero_extendqisi2
	ldrb	r4, [r2, #2]	@ zero_extendqisi2
	orr	r7, r7, r5, asl #16
	orr	r6, r6, r4, asl #16
	ldrb	r5, [r3, #6]	@ zero_extendqisi2
	ldrb	r4, [r2, #6]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	orr	r5, r9, r5, asl #16
	orr	r4, r8, r4, asl #16
	ldr	r9, [sp, #12]
	ldrb	r8, [r3, #3]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #24
	orr	ip, ip, r10, asl #24
	ldrb	r9, [r2, #3]	@ zero_extendqisi2
	ldrb	r10, [r3, #7]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #24
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	.loc 6 62 0
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
.LVL1891:
	.loc 6 61 0
	orr	r6, r6, r9, asl #24
	orr	r5, r5, r10, asl #24
	.loc 6 62 0
	ldrb	r9, [r3, #8]	@ zero_extendqisi2
	.loc 6 61 0
	orr	r4, r4, r8, asl #24
	.loc 6 64 0
	add	r3, r3, fp
	.loc 6 62 0
	ldrb	r8, [r2, #8]	@ zero_extendqisi2
	.loc 6 61 0
	str	lr, [sp, #168]
	str	ip, [sp, #172]
	.loc 6 62 0
	strb	r1, [sp, #176]
.LVL1892:
	.loc 6 61 0
	str	r7, [sp, #200]
	str	r6, [sp, #184]
	str	r5, [sp, #204]
	.loc 6 62 0
	strb	r9, [sp, #208]
	.loc 6 61 0
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	str	r4, [sp, #188]
	ldrb	r4, [r2, fp, asl #1]	@ zero_extendqisi2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
.LVL1893:
	ldrb	ip, [r3, #6]	@ zero_extendqisi2
	ldrb	lr, [r3, #2]	@ zero_extendqisi2
	orr	r4, r4, r5, asl #8
	orr	r2, r1, r2, asl #8
	ldrb	r5, [r3, #7]	@ zero_extendqisi2
	ldrb	r7, [r3, #3]	@ zero_extendqisi2
	orr	r2, r2, ip, asl #16
	orr	ip, r2, r5, asl #24
	orr	r1, r4, lr, asl #16
.LBE2321:
.LBE2326:
	.loc 5 697 0 discriminator 1
	add	r5, sp, #16
	mov	r6, #9
.LBB2327:
.LBB2322:
	.loc 6 61 0
	orr	lr, r1, r7, asl #24
	.loc 6 62 0
	ldrb	r4, [r3, #8]	@ zero_extendqisi2
	strb	r8, [sp, #192]
.LVL1894:
.LBE2322:
.LBE2327:
	.loc 5 697 0 discriminator 1
	str	r6, [sp]
	.loc 5 697 0 is_stmt 0
	mov	r8, r0
	.loc 5 697 0 discriminator 1
	add	r1, sp, #88
	mov	r0, r5
.LVL1895:
	mov	r2, #8
	mov	r3, #16
.LVL1896:
.LBB2328:
.LBB2323:
	.loc 6 61 0 is_stmt 1
	str	lr, [sp, #216]
	str	ip, [sp, #220]
	.loc 6 62 0
	strb	r4, [sp, #224]
.LVL1897:
.LBE2323:
.LBE2328:
	.loc 5 697 0 discriminator 1
	bl	put_mpeg4_qpel8_h_lowpass(PLT)
.LVL1898:
.LBB2329:
.LBB2330:
.LBB2331:
	.loc 1 104 0 discriminator 4
	ldr	r3, [sp, #16]
.LVL1899:
	ldr	lr, [sp, #88]
.LVL1900:
	ldr	ip, [sp, #20]
.LVL1901:
.LBB2332:
.LBB2333:
	.loc 2 33 0
	eor	r4, lr, r3
	orr	lr, lr, r3
.LVL1902:
	ldr	r3, .L274
.LVL1903:
.LBE2333:
.LBE2332:
	.loc 1 104 0 discriminator 4
	ldr	r10, [sp, #92]
.LVL1904:
.LBB2356:
.LBB2334:
	.loc 2 33 0
	and	r4, r4, r3
	sub	lr, lr, r4, lsr #1
.LBE2334:
.LBE2356:
	.loc 1 104 0 discriminator 4
	str	lr, [sp, #16]
.LVL1905:
.LBB2357:
.LBB2358:
	.loc 2 33 0
	eor	lr, r10, ip
.LBE2358:
.LBE2357:
	.loc 1 104 0 discriminator 4
	ldr	r0, [sp, #24]
	ldr	r9, [sp, #104]
.LBB2383:
.LBB2359:
	.loc 2 33 0
	and	lr, lr, r3
	orr	ip, r10, ip
.LVL1906:
	sub	ip, ip, lr, lsr #1
.LBE2359:
.LBE2383:
	.loc 1 104 0 discriminator 4
	str	ip, [sp, #20]
.LVL1907:
.LBB2384:
.LBB2335:
	.loc 2 33 0
	eor	ip, r9, r0
.LBE2335:
.LBE2384:
	.loc 1 104 0 discriminator 4
	ldr	r1, [sp, #28]
.LVL1908:
	ldr	r7, [sp, #108]
.LVL1909:
.LBB2385:
.LBB2336:
	.loc 2 33 0
	and	ip, ip, r3
	orr	r0, r9, r0
.LVL1910:
	sub	r0, r0, ip, lsr #1
.LBE2336:
.LBE2385:
	.loc 1 104 0 discriminator 4
	str	r0, [sp, #24]
.LVL1911:
.LBB2386:
.LBB2360:
	.loc 2 33 0
	eor	r0, r7, r1
.LBE2360:
.LBE2386:
	.loc 1 104 0 discriminator 4
	ldr	r2, [sp, #32]
	ldr	r6, [sp, #120]
.LBB2387:
.LBB2361:
	.loc 2 33 0
	and	r0, r0, r3
	orr	r1, r7, r1
.LVL1912:
	sub	r1, r1, r0, lsr #1
.LBE2361:
.LBE2387:
	.loc 1 104 0 discriminator 4
	str	r1, [sp, #28]
.LVL1913:
.LBB2388:
.LBB2337:
	.loc 2 33 0
	eor	r1, r6, r2
	and	r1, r1, r3
	orr	r2, r6, r2
.LVL1914:
	sub	r2, r2, r1, lsr #1
.LBE2337:
.LBE2388:
.LBB2389:
.LBB2362:
	ldr	r6, [sp, #36]
.LVL1915:
.LBE2362:
.LBE2389:
	.loc 1 104 0 discriminator 4
	str	r2, [sp, #32]
.LVL1916:
.LBB2390:
.LBB2363:
	.loc 2 33 0
	ldr	r2, [sp, #124]
	ldr	r7, [sp, #36]
	eor	r2, r2, r6
	ldr	r6, [sp, #124]
	and	r2, r2, r3
	orr	r6, r6, r7
	sub	r2, r6, r2, lsr #1
.LBE2363:
.LBE2390:
	.loc 1 104 0 discriminator 4
	str	r2, [sp, #36]
.LVL1917:
.LBB2391:
.LBB2338:
	.loc 2 33 0
	ldr	r6, [sp, #40]
	ldr	r2, [sp, #136]
	ldr	r7, [sp, #40]
.LVL1918:
	eor	r2, r2, r6
	ldr	r6, [sp, #136]
.LBE2338:
.LBE2391:
	.loc 1 104 0 discriminator 4
	ldr	r4, [sp, #140]
	ldr	r10, [sp, #152]
	ldr	lr, [sp, #44]
.LVL1919:
	ldr	ip, [sp, #48]
	ldr	r9, [sp, #156]
	ldr	r0, [sp, #52]
.LBB2392:
.LBB2339:
	.loc 2 33 0
	orr	r6, r6, r7
	and	r2, r2, r3
	sub	r2, r6, r2, lsr #1
.LBE2339:
.LBE2392:
.LBB2393:
.LBB2364:
	eor	r6, r4, lr
	orr	lr, r4, lr
.LVL1920:
.LBE2364:
.LBE2393:
.LBB2394:
.LBB2340:
	eor	r4, r10, ip
.LVL1921:
	and	r7, r4, r3
.LBE2340:
.LBE2394:
.LBB2395:
.LBB2365:
	eor	r4, r9, r0
	and	r4, r4, r3
	orr	r0, r9, r0
.LBE2365:
.LBE2395:
	.loc 1 104 0 discriminator 4
	ldr	r1, [sp, #56]
.LBB2396:
.LBB2341:
	.loc 2 33 0
	ldr	r9, [sp, #168]
.LBE2341:
.LBE2396:
.LBB2397:
.LBB2366:
	sub	r0, r0, r4, lsr #1
.LBE2366:
.LBE2397:
.LBB2398:
.LBB2342:
	orr	ip, r10, ip
	ldr	r10, [sp, #168]
.LBE2342:
.LBE2398:
	.loc 1 104 0 discriminator 4
	str	r2, [sp, #40]
.LVL1922:
	ldr	r2, [sp, #60]
	ldr	r4, [sp, #172]
.LBB2399:
.LBB2367:
	.loc 2 33 0
	and	r6, r6, r3
	sub	lr, lr, r6, lsr #1
	eor	r6, r4, r2
.LBE2367:
.LBE2399:
	.loc 1 104 0 discriminator 4
	str	lr, [sp, #44]
.LVL1923:
.LBB2400:
.LBB2368:
	.loc 2 33 0
	and	r6, r6, r3
.LBE2368:
.LBE2400:
	.loc 1 104 0 discriminator 4
	ldr	lr, [sp, #64]
.LBB2401:
.LBB2343:
	.loc 2 33 0
	eor	r9, r9, r1
.LBE2343:
.LBE2401:
.LBB2402:
.LBB2369:
	orr	r4, r4, r2
.LBE2369:
.LBE2402:
.LBB2403:
.LBB2344:
	orr	r1, r10, r1
.LBE2344:
.LBE2403:
	.loc 1 104 0 discriminator 4
	ldr	r10, [sp, #184]
.LBB2404:
.LBB2370:
	.loc 2 33 0
	sub	r4, r4, r6, lsr #1
.LBE2370:
.LBE2404:
	.loc 1 104 0 discriminator 4
	str	r4, [sp, #60]
.LBB2405:
.LBB2345:
	.loc 2 33 0
	eor	r4, r10, lr
	and	r4, r4, r3
	orr	lr, r10, lr
	and	r9, r9, r3
.LVL1924:
	sub	lr, lr, r4, lsr #1
	sub	r1, r1, r9, lsr #1
.LBE2345:
.LBE2405:
.LBB2406:
.LBB2371:
	ldr	r4, [sp, #68]
.LBE2371:
.LBE2406:
	.loc 1 104 0 discriminator 4
	ldr	r9, [sp, #188]
	str	lr, [sp, #64]
.LBB2407:
.LBB2372:
	.loc 2 33 0
	ldr	lr, [sp, #68]
.LBE2372:
.LBE2407:
.LBB2408:
.LBB2346:
	ldr	r6, [sp, #72]
.LBE2346:
.LBE2408:
.LBB2409:
.LBB2373:
	eor	lr, r9, lr
	orr	r9, r9, r4
.LBE2373:
.LBE2409:
.LBB2410:
.LBB2347:
	ldr	r4, [sp, #200]
.LBE2347:
.LBE2410:
.LBB2411:
.LBB2374:
	and	lr, lr, r3
	sub	lr, r9, lr, lsr #1
.LBE2374:
.LBE2411:
.LBB2412:
.LBB2348:
	eor	r4, r4, r6
	ldr	r9, [sp, #72]
	ldr	r6, [sp, #200]
.LBE2348:
.LBE2412:
.LBB2413:
.LBB2375:
	ldr	r10, [sp, #76]
.LBE2375:
.LBE2413:
.LBB2414:
.LBB2349:
	orr	r6, r6, r9
.LBE2349:
.LBE2414:
.LBB2415:
.LBB2376:
	ldr	r9, [sp, #204]
.LBE2376:
.LBE2415:
.LBB2416:
.LBB2350:
	sub	ip, ip, r7, lsr #1
.LBE2350:
.LBE2416:
	.loc 1 104 0 discriminator 4
	str	ip, [sp, #48]
.LVL1925:
	ldr	r7, [sp, #216]
	ldr	ip, [sp, #80]
	str	r0, [sp, #52]
.LVL1926:
	str	r1, [sp, #56]
.LBE2331:
.LBE2330:
.LBE2329:
	.loc 5 697 0 discriminator 3
	mov	r0, r8
	mov	r1, r5
.LBB2432:
.LBB2430:
.LBB2428:
	.loc 1 104 0 discriminator 4
	ldr	r8, [sp, #220]
.LVL1927:
	ldr	r5, [sp, #84]
.LVL1928:
.LBE2428:
.LBE2430:
.LBE2432:
	.loc 5 697 0 discriminator 3
	mov	r2, fp
.LBB2433:
.LBB2431:
.LBB2429:
.LBB2417:
.LBB2377:
	.loc 2 33 0
	eor	r9, r9, r10
	ldr	fp, [sp, #76]
.LVL1929:
	ldr	r10, [sp, #204]
.LBE2377:
.LBE2417:
.LBB2418:
.LBB2351:
	and	r4, r4, r3
.LBE2351:
.LBE2418:
.LBB2419:
.LBB2378:
	orr	r10, r10, fp
.LBE2378:
.LBE2419:
.LBB2420:
.LBB2352:
	eor	fp, r7, ip
	orr	ip, r7, ip
.LBE2352:
.LBE2420:
.LBB2421:
.LBB2379:
	eor	r7, r8, r5
.LBE2379:
.LBE2421:
.LBB2422:
.LBB2353:
	and	fp, fp, r3
.LBE2353:
.LBE2422:
.LBB2423:
.LBB2380:
	and	r9, r9, r3
	orr	r5, r8, r5
	and	r3, r3, r7
.LBE2380:
.LBE2423:
.LBB2424:
.LBB2354:
	sub	ip, ip, fp, lsr #1
.LBE2354:
.LBE2424:
.LBB2425:
.LBB2381:
	sub	r5, r5, r3, lsr #1
.LBE2381:
.LBE2425:
.LBB2426:
.LBB2355:
	sub	r4, r6, r4, lsr #1
.LBE2355:
.LBE2426:
.LBB2427:
.LBB2382:
	sub	r9, r10, r9, lsr #1
.LBE2382:
.LBE2427:
	.loc 1 104 0 discriminator 4
	str	lr, [sp, #68]
.LVL1930:
	str	r4, [sp, #72]
.LVL1931:
	str	r9, [sp, #76]
.LVL1932:
	str	ip, [sp, #80]
	str	r5, [sp, #84]
.LVL1933:
.LBE2429:
.LBE2431:
.LBE2433:
	.loc 5 697 0 discriminator 3
	bl	avg_mpeg4_qpel8_v_lowpass.constprop.3(PLT)
.LVL1934:
	.loc 5 697 0 is_stmt 0
	add	sp, sp, #236
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1935:
.L275:
	.align	2
.L274:
	.word	-16843010
	.cfi_endproc
.LFE215:
	.size	avg_qpel8_mc12_c, .-avg_qpel8_mc12_c
	.align	2
	.type	avg_qpel8_mc32_c, %function
avg_qpel8_mc32_c:
.LFB217:
	.loc 5 697 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 224
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1936:
.LBB2443:
.LBB2444:
	.loc 6 64 0
	add	r3, r1, r2
.LBE2444:
.LBE2443:
	.loc 5 697 0
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
.LBB2450:
.LBB2445:
	.loc 6 64 0
	add	r8, r3, r2
.LBE2445:
.LBE2450:
	.loc 5 697 0
	mov	r4, r2
.LVL1937:
.LBB2451:
.LBB2446:
	.loc 6 61 0
	ldrb	lr, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r8, #5]	@ zero_extendqisi2
	ldrb	r2, [r8, #4]	@ zero_extendqisi2
.LVL1938:
	ldrb	r5, [r1, r4]	@ zero_extendqisi2
	ldrb	fp, [r3, #5]	@ zero_extendqisi2
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
	ldrb	r9, [r1]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #8
	ldrb	r10, [r1, #1]	@ zero_extendqisi2
	orr	r6, r5, r6, asl #8
	orr	ip, ip, fp, asl #8
	ldrb	r5, [r1, #4]	@ zero_extendqisi2
	ldrb	fp, [r1, #5]	@ zero_extendqisi2
	orr	r9, r9, r10, asl #8
	ldrb	r10, [r8, #6]	@ zero_extendqisi2
	ldrb	r7, [r8, #1]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #8
	orr	r2, r2, r10, asl #16
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	ldrb	r10, [r3, #6]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #8
	ldrb	r7, [r8, #2]	@ zero_extendqisi2
	orr	r6, r6, fp, asl #16
	orr	ip, ip, r10, asl #16
	ldrb	fp, [r1, #2]	@ zero_extendqisi2
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #16
	ldrb	r7, [r8, #3]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #16
	orr	r9, r9, fp, asl #16
	ldrb	r10, [r3, #3]	@ zero_extendqisi2
	ldrb	fp, [r8, #7]	@ zero_extendqisi2
	orr	r7, lr, r7, asl #24
	ldrb	lr, [r3, #7]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #24
	orr	r6, r6, r10, asl #24
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	orr	ip, ip, lr, asl #24
	.loc 6 64 0
	add	lr, r8, r4
.LBE2446:
.LBE2451:
	.loc 5 697 0
	sub	sp, sp, #236
	.cfi_def_cfa_offset 272
.LVL1939:
.LBB2452:
.LBB2447:
	.loc 6 61 0
	orr	r9, r9, fp, asl #24
	orr	r10, r5, r10, asl #24
	.loc 6 62 0
	ldrb	fp, [r1, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r5, lr, r4
	.loc 6 62 0
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
.LVL1940:
	.loc 6 61 0
	str	r7, [sp, #120]
	str	r6, [sp, #104]
	str	ip, [sp, #108]
	str	r9, [sp, #88]
	str	r10, [sp, #92]
	.loc 6 62 0
	strb	fp, [sp, #96]
.LVL1941:
	strb	r1, [sp, #112]
.LVL1942:
	.loc 6 61 0
	ldrb	r9, [r5, #1]	@ zero_extendqisi2
	ldrb	r6, [r8, r4, asl #1]	@ zero_extendqisi2
	str	r2, [sp, #124]
	ldrb	r10, [lr, #1]	@ zero_extendqisi2
	ldrb	r2, [r3, r4, asl #1]	@ zero_extendqisi2
	ldrb	r1, [r5, #4]	@ zero_extendqisi2
	ldrb	ip, [r5, #5]	@ zero_extendqisi2
	ldrb	r7, [lr, #5]	@ zero_extendqisi2
	ldrb	fp, [lr, #2]	@ zero_extendqisi2
	ldrb	r3, [lr, #4]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #8
	orr	r6, r6, r9, asl #8
	ldrb	r10, [r5, #2]	@ zero_extendqisi2
	ldrb	r9, [r5, #6]	@ zero_extendqisi2
	orr	ip, r1, ip, asl #8
	ldrb	r1, [lr, #6]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #16
	orr	r3, r3, r7, asl #8
	ldrb	fp, [r5, #3]	@ zero_extendqisi2
	ldrb	r7, [lr, #3]	@ zero_extendqisi2
	orr	r6, r6, r10, asl #16
	orr	ip, ip, r9, asl #16
	ldrb	r10, [r5, #7]	@ zero_extendqisi2
	ldrb	r9, [lr, #7]	@ zero_extendqisi2
	orr	r3, r3, r1, asl #16
	orr	r7, r2, r7, asl #24
	.loc 6 64 0
	add	r1, r5, r4
	.loc 6 62 0
	ldrb	r8, [r8, #8]	@ zero_extendqisi2
.LVL1943:
	.loc 6 61 0
	orr	r6, r6, fp, asl #24
	orr	ip, ip, r10, asl #24
	orr	fp, r3, r9, asl #24
	.loc 6 62 0
	ldrb	r10, [r5, #8]	@ zero_extendqisi2
	ldrb	r9, [lr, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r2, r1, r4
	.loc 6 61 0
	str	r7, [sp, #136]
	.loc 6 62 0
	strb	r8, [sp, #128]
.LVL1944:
	.loc 6 61 0
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	ldrb	r8, [r1, #5]	@ zero_extendqisi2
	str	r6, [sp, #152]
	str	ip, [sp, #156]
	ldrb	r6, [r1, #2]	@ zero_extendqisi2
	str	fp, [sp, #140]
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r10, [sp, #160]
	strb	r9, [sp, #144]
.LVL1945:
	.loc 6 61 0
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	ldrb	lr, [lr, r4, asl #1]	@ zero_extendqisi2
	.loc 6 64 0
	add	r3, r2, r4
	.loc 6 61 0
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	str	r10, [sp, #12]
	ldrb	r5, [r5, r4, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r3, #1]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	orr	lr, lr, r7, asl #8
	ldrb	r8, [r1, r4, asl #1]	@ zero_extendqisi2
	ldrb	r7, [r2, #1]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #8
	orr	r7, r5, r7, asl #8
	ldrb	r10, [r3, #5]	@ zero_extendqisi2
	ldrb	r5, [r3, #4]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #16
	orr	r10, r5, r10, asl #8
	ldrb	r9, [r2, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #4]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #16
	orr	r9, r5, r9, asl #8
	ldrb	r5, [r2, #2]	@ zero_extendqisi2
	ldrb	r6, [r3, #2]	@ zero_extendqisi2
	orr	r7, r7, r5, asl #16
	ldrb	r5, [r2, #6]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	orr	r8, r8, r6, asl #16
	ldr	fp, [sp, #12]
	ldrb	r6, [r3, #6]	@ zero_extendqisi2
	orr	r5, r9, r5, asl #16
	ldrb	r9, [r3, #3]	@ zero_extendqisi2
	orr	ip, ip, fp, asl #24
	orr	r8, r8, r9, asl #24
	ldrb	fp, [r3, #7]	@ zero_extendqisi2
	ldrb	r9, [r2, #7]	@ zero_extendqisi2
	orr	r6, r10, r6, asl #16
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	orr	r6, r6, fp, asl #24
	orr	r7, r7, r10, asl #24
	orr	r5, r5, r9, asl #24
	.loc 6 62 0
	ldrb	r10, [r3, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r3, r3, r4
	.loc 6 62 0
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
.LVL1946:
	ldrb	r9, [r2, #8]	@ zero_extendqisi2
	.loc 6 61 0
	str	r6, [sp, #204]
	str	r5, [sp, #188]
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	ldrb	r5, [r2, r4, asl #1]	@ zero_extendqisi2
	str	lr, [sp, #168]
	str	ip, [sp, #172]
	.loc 6 62 0
	strb	r1, [sp, #176]
.LVL1947:
	.loc 6 61 0
	str	r8, [sp, #200]
	str	r7, [sp, #184]
	.loc 6 62 0
	strb	r10, [sp, #208]
	strb	r9, [sp, #192]
.LVL1948:
	.loc 6 61 0
	ldrb	lr, [r3, #2]	@ zero_extendqisi2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	ldrb	r8, [r3, #3]	@ zero_extendqisi2
	ldrb	ip, [r3, #6]	@ zero_extendqisi2
	orr	r5, r5, r6, asl #8
	ldrb	r7, [r3, #7]	@ zero_extendqisi2
	orr	r2, r1, r2, asl #8
	orr	r1, r5, lr, asl #16
	orr	lr, r1, r8, asl #24
	orr	r2, r2, ip, asl #16
.LBE2447:
.LBE2452:
	.loc 5 697 0 discriminator 1
	add	r8, sp, #16
	mov	r6, #9
.LBB2453:
.LBB2448:
	.loc 6 61 0
	orr	ip, r2, r7, asl #24
	.loc 6 62 0
	ldrb	r5, [r3, #8]	@ zero_extendqisi2
.LBE2448:
.LBE2453:
	.loc 5 697 0
	str	r0, [sp, #12]
	.loc 5 697 0 is_stmt 0 discriminator 1
	str	r6, [sp]
	mov	r0, r8
.LVL1949:
	add	r1, sp, #88
	mov	r2, #8
	mov	r3, #16
.LVL1950:
.LBB2454:
.LBB2449:
	.loc 6 61 0 is_stmt 1
	str	lr, [sp, #216]
	str	ip, [sp, #220]
	.loc 6 62 0
	strb	r5, [sp, #224]
.LVL1951:
.LBE2449:
.LBE2454:
	.loc 5 697 0 discriminator 1
	bl	put_mpeg4_qpel8_h_lowpass(PLT)
.LVL1952:
.LBB2455:
.LBB2456:
.LBB2457:
	.loc 1 104 0 discriminator 4
	ldrb	fp, [sp, #96]	@ zero_extendqisi2
	ldrb	r6, [sp, #128]	@ zero_extendqisi2
	ldr	r1, [sp, #92]
	ldrb	r3, [sp, #92]	@ zero_extendqisi2
	ldrb	r9, [sp, #108]	@ zero_extendqisi2
	mov	ip, r6, asl #24
	mov	r10, fp, asl #24
	ldr	r6, [sp, #88]
	orr	fp, r10, r1, lsr #8
	ldrb	r7, [sp, #112]	@ zero_extendqisi2
	ldr	r1, [sp, #104]
	mov	r3, r3, asl #24
	orr	r3, r3, r6, lsr #8
	ldrb	r2, [sp, #124]	@ zero_extendqisi2
	ldr	r6, [sp, #108]
	mov	r9, r9, asl #24
	orr	r9, r9, r1, lsr #8
	mov	r7, r7, asl #24
	ldr	r1, [sp, #120]
	ldr	r0, [sp, #16]
.LVL1953:
	ldrb	lr, [sp, #144]	@ zero_extendqisi2
	orr	r7, r7, r6, lsr #8
	mov	r2, r2, asl #24
	ldr	r6, [sp, #124]
	orr	r2, r2, r1, lsr #8
	ldr	r1, [sp, #140]
	orr	r6, ip, r6, lsr #8
	ldrb	r5, [sp, #140]	@ zero_extendqisi2
.LBB2458:
.LBB2459:
	.loc 2 33 0
	eor	ip, r3, r0
.LBE2459:
.LBE2458:
	.loc 1 104 0 discriminator 4
	mov	lr, lr, asl #24
.LBB2486:
.LBB2460:
	.loc 2 33 0
	orr	r0, r3, r0
.LVL1954:
	ldr	r3, .L278
.LVL1955:
.LBE2460:
.LBE2486:
	.loc 1 104 0 discriminator 4
	ldr	r10, [sp, #136]
	orr	lr, lr, r1, lsr #8
	ldr	r1, [sp, #20]
.LVL1956:
.LBB2487:
.LBB2461:
	.loc 2 33 0
	and	ip, ip, r3
.LBE2461:
.LBE2487:
	.loc 1 104 0 discriminator 4
	mov	r5, r5, asl #24
	orr	r5, r5, r10, lsr #8
.LBB2488:
.LBB2462:
	.loc 2 33 0
	sub	r0, r0, ip, lsr #1
.LBE2462:
.LBE2488:
.LBB2489:
.LBB2490:
	eor	r10, fp, r1
.LBE2490:
.LBE2489:
	.loc 1 104 0 discriminator 4
	str	r0, [sp, #16]
.LVL1957:
.LBB2518:
.LBB2491:
	.loc 2 33 0
	orr	r1, fp, r1
.LVL1958:
	and	r0, r10, r3
	sub	r10, r1, r0, lsr #1
.LBE2491:
.LBE2518:
	.loc 1 104 0 discriminator 4
	str	r10, [sp, #20]
.LVL1959:
.LBB2519:
.LBB2463:
	.loc 2 33 0
	ldr	r10, [sp, #24]
	ldr	fp, [sp, #24]
	eor	r10, r9, r10
	and	r10, r10, r3
	orr	r9, r9, fp
.LVL1960:
	sub	r9, r9, r10, lsr #1
.LBE2463:
.LBE2519:
	.loc 1 104 0 discriminator 4
	str	r9, [sp, #24]
.LVL1961:
.LBB2520:
.LBB2492:
	.loc 2 33 0
	ldr	r9, [sp, #28]
	ldr	r10, [sp, #28]
	eor	r9, r7, r9
	and	r9, r9, r3
	orr	r7, r7, r10
.LVL1962:
.LBE2492:
.LBE2520:
	.loc 1 104 0 discriminator 4
	ldr	ip, [sp, #36]
.LBB2521:
.LBB2464:
	.loc 2 33 0
	ldr	r10, [sp, #32]
.LBE2464:
.LBE2521:
	.loc 1 104 0 discriminator 4
	ldr	r0, [sp, #40]
.LBB2522:
.LBB2493:
	.loc 2 33 0
	sub	r9, r7, r9, lsr #1
.LBE2493:
.LBE2522:
.LBB2523:
.LBB2465:
	ldr	r7, [sp, #32]
.LBE2465:
.LBE2523:
	.loc 1 104 0 discriminator 4
	ldr	r1, [sp, #44]
.LBB2524:
.LBB2466:
	.loc 2 33 0
	eor	fp, r5, r0
.LVL1963:
	eor	r7, r2, r7
	orr	r2, r2, r10
.LBE2466:
.LBE2524:
.LBB2525:
.LBB2494:
	eor	r10, r6, ip
.LBE2494:
.LBE2525:
.LBB2526:
.LBB2467:
	and	r7, r7, r3
.LBE2467:
.LBE2526:
.LBB2527:
.LBB2495:
	and	r10, r10, r3
.LBE2495:
.LBE2527:
.LBB2528:
.LBB2468:
	and	fp, fp, r3
.LBE2468:
.LBE2528:
.LBB2529:
.LBB2496:
	orr	ip, r6, ip
.LBE2496:
.LBE2529:
.LBB2530:
.LBB2469:
	orr	r0, r5, r0
	sub	r2, r2, r7, lsr #1
.LBE2469:
.LBE2530:
.LBB2531:
.LBB2497:
	eor	r5, lr, r1
	sub	ip, ip, r10, lsr #1
.LBE2497:
.LBE2531:
.LBB2532:
.LBB2470:
	sub	r0, r0, fp, lsr #1
.LBE2470:
.LBE2532:
.LBB2533:
.LBB2498:
	and	r5, r5, r3
.LBE2498:
.LBE2533:
	.loc 1 104 0 discriminator 4
	str	r9, [sp, #28]
.LVL1964:
	str	r2, [sp, #32]
.LVL1965:
	str	ip, [sp, #36]
.LVL1966:
.LBB2534:
.LBB2499:
	.loc 2 33 0
	orr	r1, lr, r1
.LVL1967:
.LBE2499:
.LBE2534:
	.loc 1 104 0 discriminator 4
	str	r0, [sp, #40]
.LVL1968:
	ldrb	lr, [sp, #160]	@ zero_extendqisi2
.LVL1969:
.LBB2535:
.LBB2500:
	.loc 2 33 0
	sub	r1, r1, r5, lsr #1
.LBE2500:
.LBE2535:
	.loc 1 104 0 discriminator 4
	ldrb	r5, [sp, #156]	@ zero_extendqisi2
	mov	ip, lr, asl #24
	ldr	lr, [sp, #152]
	mov	r5, r5, asl #24
	orr	r5, r5, lr, lsr #8
	ldr	lr, [sp, #156]
	ldrb	r10, [sp, #172]	@ zero_extendqisi2
	orr	lr, ip, lr, lsr #8
	ldr	ip, [sp, #168]
	ldrb	r0, [sp, #176]	@ zero_extendqisi2
	mov	r10, r10, asl #24
	orr	r10, r10, ip, lsr #8
	ldr	ip, [sp, #172]
	ldrb	r2, [sp, #188]	@ zero_extendqisi2
	mov	r0, r0, asl #24
	orr	r0, r0, ip, lsr #8
	ldr	ip, [sp, #184]
	ldr	r9, [sp, #48]
	ldrb	r7, [sp, #204]	@ zero_extendqisi2
	mov	r2, r2, asl #24
	str	r1, [sp, #44]
.LVL1970:
	orr	r2, r2, ip, lsr #8
	ldrb	r1, [sp, #192]	@ zero_extendqisi2
	ldr	ip, [sp, #200]
.LBB2536:
.LBB2471:
	.loc 2 33 0
	eor	fp, r5, r9
.LBE2471:
.LBE2536:
	.loc 1 104 0 discriminator 4
	mov	r7, r7, asl #24
.LBB2537:
.LBB2472:
	.loc 2 33 0
	orr	r5, r5, r9
.LVL1971:
.LBE2472:
.LBE2537:
	.loc 1 104 0 discriminator 4
	ldr	r9, [sp, #188]
.LVL1972:
	orr	r7, r7, ip, lsr #8
	ldrb	r6, [sp, #208]	@ zero_extendqisi2
	ldr	ip, [sp, #52]
.LVL1973:
.LBB2538:
.LBB2473:
	.loc 2 33 0
	and	fp, fp, r3
.LBE2473:
.LBE2538:
	.loc 1 104 0 discriminator 4
	mov	r1, r1, asl #24
	orr	r1, r1, r9, lsr #8
.LBB2539:
.LBB2474:
	.loc 2 33 0
	sub	fp, r5, fp, lsr #1
.LBE2474:
.LBE2539:
	.loc 1 104 0 discriminator 4
	ldr	r9, [sp, #204]
	str	fp, [sp, #48]
.LVL1974:
	mov	r6, r6, asl #24
.LBB2540:
.LBB2501:
	.loc 2 33 0
	eor	fp, lr, ip
.LBE2501:
.LBE2540:
	.loc 1 104 0 discriminator 4
	orr	r6, r6, r9, lsr #8
.LBB2541:
.LBB2502:
	.loc 2 33 0
	orr	ip, lr, ip
.LVL1975:
.LBE2502:
.LBE2541:
	.loc 1 104 0 discriminator 4
	ldr	r9, [sp, #56]
.LBB2542:
.LBB2503:
	.loc 2 33 0
	and	fp, fp, r3
	sub	fp, ip, fp, lsr #1
.LBE2503:
.LBE2542:
	.loc 1 104 0 discriminator 4
	str	fp, [sp, #52]
.LVL1976:
.LBB2543:
.LBB2475:
	.loc 2 33 0
	eor	fp, r10, r9
	and	fp, fp, r3
	orr	r9, r10, r9
.LVL1977:
	sub	r9, r9, fp, lsr #1
.LBE2475:
.LBE2543:
.LBB2544:
.LBB2504:
	ldr	r10, [sp, #60]
.LVL1978:
.LBE2504:
.LBE2544:
	.loc 1 104 0 discriminator 4
	str	r9, [sp, #56]
.LVL1979:
.LBB2545:
.LBB2505:
	.loc 2 33 0
	ldr	r9, [sp, #60]
.LBE2505:
.LBE2545:
	.loc 1 104 0 discriminator 4
	ldr	r5, [sp, #68]
	ldr	lr, [sp, #72]
	ldr	ip, [sp, #76]
.LBB2546:
.LBB2506:
	.loc 2 33 0
	eor	r9, r0, r9
	orr	r0, r0, r10
.LVL1980:
.LBE2506:
.LBE2546:
.LBB2547:
.LBB2476:
	ldr	r10, [sp, #64]
.LBE2476:
.LBE2547:
.LBB2548:
.LBB2507:
	and	r9, r9, r3
	sub	r9, r0, r9, lsr #1
.LBE2507:
.LBE2548:
.LBB2549:
.LBB2477:
	eor	fp, r7, lr
	eor	r0, r2, r10
	orr	r2, r2, r10
.LBE2477:
.LBE2549:
.LBB2550:
.LBB2508:
	eor	r10, r1, r5
	orr	r5, r1, r5
	eor	r1, r6, ip
.LBE2508:
.LBE2550:
.LBB2551:
.LBB2478:
	and	r0, r0, r3
.LBE2478:
.LBE2551:
.LBB2552:
.LBB2509:
	and	r10, r10, r3
.LBE2509:
.LBE2552:
.LBB2553:
.LBB2479:
	and	fp, fp, r3
.LBE2479:
.LBE2553:
.LBB2554:
.LBB2510:
	and	r1, r1, r3
.LBE2510:
.LBE2554:
.LBB2555:
.LBB2480:
	orr	lr, r7, lr
.LBE2480:
.LBE2555:
.LBB2556:
.LBB2511:
	orr	ip, r6, ip
.LBE2511:
.LBE2556:
.LBB2557:
.LBB2481:
	sub	r2, r2, r0, lsr #1
.LBE2481:
.LBE2557:
.LBB2558:
.LBB2512:
	sub	r5, r5, r10, lsr #1
.LBE2512:
.LBE2558:
.LBB2559:
.LBB2482:
	sub	lr, lr, fp, lsr #1
.LBE2482:
.LBE2559:
.LBB2560:
.LBB2513:
	sub	ip, ip, r1, lsr #1
.LBE2513:
.LBE2560:
	.loc 1 104 0 discriminator 4
	str	r2, [sp, #64]
	str	r5, [sp, #68]
	str	lr, [sp, #72]
	str	r9, [sp, #60]
.LVL1981:
	str	ip, [sp, #76]
.LVL1982:
	ldrb	lr, [sp, #220]	@ zero_extendqisi2
	ldrb	r0, [sp, #224]	@ zero_extendqisi2
	ldr	r5, [sp, #216]
	ldr	ip, [sp, #220]
	ldr	r1, [sp, #80]
.LVL1983:
	ldr	r2, [sp, #84]
	mov	r0, r0, asl #24
	mov	lr, lr, asl #24
	orr	lr, lr, r5, lsr #8
.LVL1984:
	orr	ip, r0, ip, lsr #8
.LVL1985:
.LBB2561:
.LBB2514:
	.loc 2 33 0
	eor	r0, ip, r2
.LBE2514:
.LBE2561:
.LBB2562:
.LBB2483:
	eor	r5, lr, r1
.LBE2483:
.LBE2562:
.LBB2563:
.LBB2515:
	orr	ip, ip, r2
.LVL1986:
.LBE2515:
.LBE2563:
.LBB2564:
.LBB2484:
	and	r5, r5, r3
	orr	lr, lr, r1
.LVL1987:
.LBE2484:
.LBE2564:
.LBB2565:
.LBB2516:
	and	r3, r3, r0
.LBE2516:
.LBE2565:
.LBB2566:
.LBB2485:
	sub	lr, lr, r5, lsr #1
.LBE2485:
.LBE2566:
.LBB2567:
.LBB2517:
	sub	r3, ip, r3, lsr #1
.LBE2517:
.LBE2567:
.LBE2457:
.LBE2456:
.LBE2455:
	.loc 5 697 0 discriminator 3
	ldr	r0, [sp, #12]
	mov	r1, r8
.LVL1988:
	mov	r2, r4
.LVL1989:
.LBB2570:
.LBB2569:
.LBB2568:
	.loc 1 104 0 discriminator 4
	str	lr, [sp, #80]
.LVL1990:
	str	r3, [sp, #84]
.LVL1991:
.LBE2568:
.LBE2569:
.LBE2570:
	.loc 5 697 0 discriminator 3
	bl	avg_mpeg4_qpel8_v_lowpass.constprop.3(PLT)
.LVL1992:
	.loc 5 697 0 is_stmt 0
	add	sp, sp, #236
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL1993:
.L279:
	.align	2
.L278:
	.word	-16843010
	.cfi_endproc
.LFE217:
	.size	avg_qpel8_mc32_c, .-avg_qpel8_mc32_c
	.align	2
	.type	avg_qpel8_mc11_c, %function
avg_qpel8_mc11_c:
.LFB205:
	.loc 5 697 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 288
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1994:
.LBB2580:
.LBB2581:
	.loc 6 64 0
	add	r3, r1, r2
.LBE2581:
.LBE2580:
	.loc 5 697 0
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
.LBB2587:
.LBB2582:
	.loc 6 64 0
	add	r7, r3, r2
.LBE2582:
.LBE2587:
	.loc 5 697 0
	mov	fp, r2
.LBB2588:
.LBB2583:
	.loc 6 61 0
	ldrb	lr, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #4]	@ zero_extendqisi2
.LVL1995:
	ldrb	r4, [r1, fp]	@ zero_extendqisi2
	ldrb	r10, [r3, #5]	@ zero_extendqisi2
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
	ldrb	r8, [r1]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #8
	ldrb	r9, [r1, #1]	@ zero_extendqisi2
	orr	r5, r4, r5, asl #8
	orr	ip, ip, r10, asl #8
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	orr	r8, r8, r9, asl #8
	ldrb	r9, [r7, #6]	@ zero_extendqisi2
	ldrb	r6, [r7, #1]	@ zero_extendqisi2
	orr	r4, r4, r10, asl #8
	orr	r2, r2, r9, asl #16
	ldrb	r10, [r3, #2]	@ zero_extendqisi2
	ldrb	r9, [r3, #6]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #8
	ldrb	r6, [r7, #2]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #16
	orr	ip, ip, r9, asl #16
	ldrb	r10, [r1, #2]	@ zero_extendqisi2
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #16
	ldrb	r6, [r7, #3]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #16
	orr	r8, r8, r10, asl #16
	ldrb	r9, [r3, #3]	@ zero_extendqisi2
	ldrb	r10, [r7, #7]	@ zero_extendqisi2
	orr	r6, lr, r6, asl #24
	ldrb	lr, [r3, #7]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #24
	orr	r5, r5, r9, asl #24
	ldrb	r10, [r1, #3]	@ zero_extendqisi2
	ldrb	r9, [r1, #7]	@ zero_extendqisi2
	orr	ip, ip, lr, asl #24
	.loc 6 64 0
	add	lr, r7, fp
.LBE2583:
.LBE2588:
	.loc 5 697 0
	sub	sp, sp, #308
	.cfi_def_cfa_offset 344
.LVL1996:
.LBB2589:
.LBB2584:
	.loc 6 61 0
	orr	r8, r8, r10, asl #24
	orr	r9, r4, r9, asl #24
	.loc 6 62 0
	ldrb	r10, [r1, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r4, lr, fp
	.loc 6 62 0
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
.LVL1997:
	.loc 6 61 0
	str	r6, [sp, #192]
	str	r5, [sp, #176]
	str	ip, [sp, #180]
	str	r8, [sp, #160]
	str	r9, [sp, #164]
	.loc 6 62 0
	strb	r10, [sp, #168]
.LVL1998:
	strb	r1, [sp, #184]
.LVL1999:
	.loc 6 61 0
	ldrb	r1, [r4, #4]	@ zero_extendqisi2
	ldrb	ip, [r4, #5]	@ zero_extendqisi2
	ldrb	r9, [lr, #1]	@ zero_extendqisi2
	ldrb	r8, [r4, #1]	@ zero_extendqisi2
	ldrb	r5, [r7, fp, asl #1]	@ zero_extendqisi2
	ldrb	r10, [lr, #5]	@ zero_extendqisi2
	str	r2, [sp, #196]
	ldrb	r2, [r3, fp, asl #1]	@ zero_extendqisi2
	ldrb	r3, [lr, #4]	@ zero_extendqisi2
	ldrb	r6, [lr, #2]	@ zero_extendqisi2
	orr	ip, r1, ip, asl #8
	ldrb	r1, [lr, #6]	@ zero_extendqisi2
	str	fp, [sp, #16]
	orr	r2, r2, r9, asl #8
	ldrb	fp, [lr, #3]	@ zero_extendqisi2
.LVL2000:
	ldrb	r9, [r4, #2]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #8
	orr	r3, r3, r10, asl #8
	ldrb	r8, [r4, #6]	@ zero_extendqisi2
	orr	r3, r3, r1, asl #16
	orr	r2, r2, r6, asl #16
	.loc 6 64 0
	ldr	r1, [sp, #16]
	.loc 6 61 0
	ldrb	r10, [r4, #3]	@ zero_extendqisi2
	orr	r6, r2, fp, asl #24
	orr	r5, r5, r9, asl #16
	.loc 6 64 0
	ldr	fp, [sp, #16]
	.loc 6 61 0
	ldrb	r9, [r4, #7]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	ldrb	r8, [lr, #7]	@ zero_extendqisi2
	.loc 6 64 0
	add	r1, r4, r1
	add	r2, r1, fp
	.loc 6 62 0
	ldrb	r7, [r7, #8]	@ zero_extendqisi2
.LVL2001:
	.loc 6 61 0
	orr	r5, r5, r10, asl #24
	orr	ip, ip, r9, asl #24
	orr	r10, r3, r8, asl #24
	.loc 6 62 0
	ldrb	r9, [r4, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r3, r2, fp
	.loc 6 62 0
	ldrb	r8, [lr, #8]	@ zero_extendqisi2
	.loc 6 61 0
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	str	r6, [sp, #208]
	.loc 6 62 0
	strb	r7, [sp, #200]
.LVL2002:
	.loc 6 61 0
	ldrb	r6, [r1, #1]	@ zero_extendqisi2
	ldrb	r7, [r1, #5]	@ zero_extendqisi2
	str	r5, [sp, #224]
	str	ip, [sp, #228]
	ldrb	r5, [r1, #2]	@ zero_extendqisi2
	str	r10, [sp, #212]
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r9, [sp, #232]
	.loc 6 61 0
	ldr	r9, [sp, #16]
	orr	ip, ip, r7, asl #8
	ldrb	lr, [lr, r9, asl #1]	@ zero_extendqisi2
.LVL2003:
	ldrb	r4, [r4, r9, asl #1]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #8
	ldr	r6, [sp, #16]
	ldrb	r9, [r3, #1]	@ zero_extendqisi2
	ldrb	r7, [r1, r6, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r2, #1]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r8, [sp, #216]
.LVL2004:
	.loc 6 61 0
	orr	r7, r7, r9, asl #8
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	r9, [r3, #5]	@ zero_extendqisi2
	orr	r6, r4, r6, asl #8
	ldrb	r4, [r3, #4]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r9, r4, r9, asl #8
	ldrb	r8, [r2, #5]	@ zero_extendqisi2
	ldrb	r4, [r2, #4]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #16
	orr	r8, r4, r8, asl #8
	ldrb	r4, [r2, #2]	@ zero_extendqisi2
	ldrb	r5, [r3, #2]	@ zero_extendqisi2
	orr	r6, r6, r4, asl #16
	ldrb	r4, [r2, #6]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	orr	r7, r7, r5, asl #16
	orr	r4, r8, r4, asl #16
	ldrb	r5, [r3, #6]	@ zero_extendqisi2
	ldrb	r8, [r3, #3]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	orr	ip, ip, r10, asl #24
	ldrb	fp, [r3, #7]	@ zero_extendqisi2
	.loc 6 64 0
	ldr	r10, [sp, #16]
	.loc 6 61 0
	orr	r7, r7, r8, asl #24
	orr	r5, r9, r5, asl #16
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	ldrb	r9, [r2, #3]	@ zero_extendqisi2
	.loc 6 62 0
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
.LVL2005:
	.loc 6 61 0
	orr	r6, r6, r9, asl #24
	orr	r5, r5, fp, asl #24
	orr	r4, r4, r8, asl #24
	.loc 6 62 0
	ldrb	r9, [r3, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r3, r3, r10
	.loc 6 62 0
	ldrb	r8, [r2, #8]	@ zero_extendqisi2
	.loc 6 61 0
	str	lr, [sp, #240]
	str	ip, [sp, #244]
	.loc 6 62 0
	strb	r1, [sp, #248]
.LVL2006:
	.loc 6 61 0
	str	r7, [sp, #272]
	str	r6, [sp, #256]
	str	r5, [sp, #276]
	str	r4, [sp, #260]
	.loc 6 62 0
	strb	r9, [sp, #280]
	.loc 6 61 0
	ldrb	r4, [r2, r10, asl #1]	@ zero_extendqisi2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
.LVL2007:
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	ip, [r3, #6]	@ zero_extendqisi2
	ldrb	lr, [r3, #2]	@ zero_extendqisi2
	ldrb	r6, [r3, #7]	@ zero_extendqisi2
	orr	r2, r1, r2, asl #8
	ldrb	r7, [r3, #3]	@ zero_extendqisi2
	orr	r4, r4, r5, asl #8
	orr	r2, r2, ip, asl #16
	orr	ip, r2, r6, asl #24
	orr	r1, r4, lr, asl #16
.LBE2584:
.LBE2589:
	.loc 5 697 0 discriminator 1
	add	r6, sp, #88
	mov	r5, #9
.LBB2590:
.LBB2585:
	.loc 6 61 0
	orr	lr, r1, r7, asl #24
	.loc 6 62 0
	ldrb	r4, [r3, #8]	@ zero_extendqisi2
.LBE2585:
.LBE2590:
	.loc 5 697 0
	str	r0, [sp, #20]
	.loc 5 697 0 is_stmt 0 discriminator 1
	str	r5, [sp]
	mov	r0, r6
.LVL2008:
	add	r1, sp, #160
	mov	r2, #8
	mov	r3, #16
.LBB2591:
.LBB2586:
	.loc 6 62 0 is_stmt 1
	strb	r8, [sp, #264]
.LVL2009:
	.loc 6 61 0
	str	lr, [sp, #288]
	str	ip, [sp, #292]
	.loc 6 62 0
	strb	r4, [sp, #296]
.LVL2010:
.LBE2586:
.LBE2591:
	.loc 5 697 0 discriminator 1
	bl	put_mpeg4_qpel8_h_lowpass(PLT)
.LVL2011:
.LBB2592:
.LBB2593:
.LBB2594:
	.loc 1 104 0 discriminator 4
	ldr	r3, [sp, #88]
.LVL2012:
	ldr	lr, [sp, #160]
.LVL2013:
	ldr	ip, [sp, #92]
.LVL2014:
.LBB2595:
.LBB2596:
	.loc 2 33 0
	eor	r4, lr, r3
	orr	lr, lr, r3
.LVL2015:
	ldr	r3, .L282
.LVL2016:
.LBE2596:
.LBE2595:
	.loc 1 104 0 discriminator 4
	ldr	r9, [sp, #164]
.LVL2017:
.LBB2618:
.LBB2597:
	.loc 2 33 0
	and	r4, r4, r3
	sub	lr, lr, r4, lsr #1
.LBE2597:
.LBE2618:
	.loc 1 104 0 discriminator 4
	str	lr, [sp, #88]
.LVL2018:
.LBB2619:
.LBB2620:
	.loc 2 33 0
	eor	lr, r9, ip
.LBE2620:
.LBE2619:
	.loc 1 104 0 discriminator 4
	ldr	r0, [sp, #96]
	ldr	r8, [sp, #176]
.LBB2644:
.LBB2621:
	.loc 2 33 0
	and	lr, lr, r3
	orr	ip, r9, ip
.LVL2019:
	sub	ip, ip, lr, lsr #1
.LBE2621:
.LBE2644:
	.loc 1 104 0 discriminator 4
	str	ip, [sp, #92]
.LVL2020:
.LBB2645:
.LBB2598:
	.loc 2 33 0
	eor	ip, r8, r0
.LBE2598:
.LBE2645:
	.loc 1 104 0 discriminator 4
	ldr	r1, [sp, #100]
.LVL2021:
	ldr	r7, [sp, #180]
.LVL2022:
.LBB2646:
.LBB2599:
	.loc 2 33 0
	and	ip, ip, r3
	orr	r0, r8, r0
.LVL2023:
	sub	r0, r0, ip, lsr #1
.LBE2599:
.LBE2646:
	.loc 1 104 0 discriminator 4
	str	r0, [sp, #96]
.LVL2024:
.LBB2647:
.LBB2622:
	.loc 2 33 0
	eor	r0, r7, r1
.LBE2622:
.LBE2647:
	.loc 1 104 0 discriminator 4
	ldr	r2, [sp, #104]
	ldr	r5, [sp, #192]
.LBB2648:
.LBB2623:
	.loc 2 33 0
	and	r0, r0, r3
	orr	r1, r7, r1
.LVL2025:
	sub	r1, r1, r0, lsr #1
.LBE2623:
.LBE2648:
	.loc 1 104 0 discriminator 4
	str	r1, [sp, #100]
.LVL2026:
.LBB2649:
.LBB2600:
	.loc 2 33 0
	eor	r1, r5, r2
	and	r1, r1, r3
	orr	r2, r5, r2
.LVL2027:
	sub	r2, r2, r1, lsr #1
.LBE2600:
.LBE2649:
	.loc 1 104 0 discriminator 4
	ldr	r10, [sp, #196]
.LVL2028:
	str	r2, [sp, #104]
.LVL2029:
.LBB2650:
.LBB2624:
	.loc 2 33 0
	ldr	r2, [sp, #108]
	ldr	r5, [sp, #108]
.LVL2030:
	eor	r2, r10, r2
	and	r2, r2, r3
	orr	r10, r10, r5
.LVL2031:
.LBE2624:
.LBE2650:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #208]
.LBB2651:
.LBB2625:
	.loc 2 33 0
	sub	r10, r10, r2, lsr #1
.LBE2625:
.LBE2651:
.LBB2652:
.LBB2601:
	ldr	r2, [sp, #112]
	ldr	r5, [sp, #112]
.LBE2601:
.LBE2652:
	.loc 1 104 0 discriminator 4
	ldr	lr, [sp, #116]
	ldr	r4, [sp, #212]
	ldr	ip, [sp, #120]
	ldr	r9, [sp, #224]
	ldr	r8, [sp, #228]
	ldr	r7, [sp, #240]
	ldr	r0, [sp, #124]
	ldr	r1, [sp, #128]
.LBB2653:
.LBB2602:
	.loc 2 33 0
	eor	r2, fp, r2
	and	r2, r2, r3
	orr	fp, fp, r5
.LBE2602:
.LBE2653:
	.loc 1 104 0 discriminator 4
	str	r10, [sp, #108]
.LVL2032:
.LBB2654:
.LBB2603:
	.loc 2 33 0
	sub	r2, fp, r2, lsr #1
.LBE2603:
.LBE2654:
.LBB2655:
.LBB2626:
	eor	r5, r4, lr
.LVL2033:
.LBE2626:
.LBE2655:
.LBB2656:
.LBB2604:
	eor	r10, r9, ip
.LBE2604:
.LBE2656:
.LBB2657:
.LBB2627:
	eor	fp, r8, r0
	orr	lr, r4, lr
.LVL2034:
.LBE2627:
.LBE2657:
.LBB2658:
.LBB2605:
	eor	r4, r7, r1
.LVL2035:
.LBE2605:
.LBE2658:
.LBB2659:
.LBB2628:
	and	r5, r5, r3
.LBE2628:
.LBE2659:
.LBB2660:
.LBB2606:
	and	r10, r10, r3
.LBE2606:
.LBE2660:
.LBB2661:
.LBB2629:
	and	fp, fp, r3
.LBE2629:
.LBE2661:
.LBB2662:
.LBB2607:
	and	r4, r4, r3
	orr	ip, r9, ip
.LBE2607:
.LBE2662:
.LBB2663:
.LBB2630:
	orr	r0, r8, r0
.LBE2630:
.LBE2663:
.LBB2664:
.LBB2608:
	orr	r1, r7, r1
.LBE2608:
.LBE2664:
.LBB2665:
.LBB2631:
	sub	lr, lr, r5, lsr #1
.LBE2631:
.LBE2665:
.LBB2666:
.LBB2609:
	sub	ip, ip, r10, lsr #1
.LBE2609:
.LBE2666:
.LBB2667:
.LBB2632:
	sub	r0, r0, fp, lsr #1
.LBE2632:
.LBE2667:
.LBB2668:
.LBB2610:
	sub	r1, r1, r4, lsr #1
.LBE2610:
.LBE2668:
	.loc 1 104 0 discriminator 4
	str	r2, [sp, #112]
.LVL2036:
	str	lr, [sp, #116]
.LVL2037:
	str	ip, [sp, #120]
.LVL2038:
	str	r0, [sp, #124]
.LVL2039:
	ldr	r2, [sp, #132]
.LVL2040:
	str	r1, [sp, #128]
.LVL2041:
	ldr	r1, [sp, #244]
.LVL2042:
	ldr	r5, [sp, #136]
.LBB2669:
.LBB2633:
	.loc 2 33 0
	eor	r0, r1, r2
.LBE2633:
.LBE2669:
	.loc 1 104 0 discriminator 4
	ldr	r10, [sp, #256]
.LBB2670:
.LBB2634:
	.loc 2 33 0
	and	r0, r0, r3
	orr	r2, r1, r2
.LVL2043:
	sub	r1, r2, r0, lsr #1
.LVL2044:
.LBE2634:
.LBE2670:
	.loc 1 104 0 discriminator 4
	ldr	r4, [sp, #140]
	ldr	r9, [sp, #260]
	str	r1, [sp, #132]
.LVL2045:
.LBB2671:
.LBB2611:
	.loc 2 33 0
	eor	r1, r10, r5
	and	r1, r1, r3
	orr	r5, r10, r5
.LVL2046:
.LBE2611:
.LBE2671:
	.loc 1 104 0 discriminator 4
	ldr	lr, [sp, #144]
	ldr	r8, [sp, #272]
.LBB2672:
.LBB2612:
	.loc 2 33 0
	sub	r5, r5, r1, lsr #1
.LBE2612:
.LBE2672:
.LBB2673:
.LBB2635:
	eor	r1, r9, r4
.LBE2635:
.LBE2673:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #276]
	str	r5, [sp, #136]
.LVL2047:
.LBB2674:
.LBB2636:
	.loc 2 33 0
	and	r1, r1, r3
	ldr	r5, [sp, #148]
	orr	r4, r9, r4
.LVL2048:
.LBE2636:
.LBE2674:
	.loc 1 104 0 discriminator 4
	ldr	r2, [sp, #156]
	ldr	ip, [sp, #152]
	ldr	r7, [sp, #288]
	ldr	r0, [sp, #292]
.LBB2675:
.LBB2637:
	.loc 2 33 0
	sub	r4, r4, r1, lsr #1
.LBE2637:
.LBE2675:
.LBB2676:
.LBB2613:
	eor	r1, r8, lr
	orr	lr, r8, lr
.LBE2613:
.LBE2676:
.LBB2677:
.LBB2638:
	ldr	r8, [sp, #148]
	eor	r5, fp, r5
	and	r5, r5, r3
.LBE2638:
.LBE2677:
.LBB2678:
.LBB2614:
	eor	r9, r7, ip
.LVL2049:
.LBE2614:
.LBE2678:
.LBB2679:
.LBB2639:
	orr	fp, fp, r8
.LBE2639:
.LBE2679:
.LBB2680:
.LBB2615:
	orr	ip, r7, ip
.LBE2615:
.LBE2680:
.LBB2681:
.LBB2640:
	eor	r7, r0, r2
.LBE2640:
.LBE2681:
.LBB2682:
.LBB2616:
	and	r1, r1, r3
	and	r9, r9, r3
.LBE2616:
.LBE2682:
.LBB2683:
.LBB2641:
	orr	r0, r0, r2
	sub	fp, fp, r5, lsr #1
.LBE2641:
.LBE2683:
.LBE2594:
.LBE2593:
.LBE2592:
	.loc 5 697 0 discriminator 3
	mov	r2, #8
	add	r5, sp, #24
.LBB2691:
.LBB2689:
.LBB2687:
.LBB2684:
.LBB2642:
	.loc 2 33 0
	and	r3, r3, r7
.LBE2642:
.LBE2684:
.LBB2685:
.LBB2617:
	sub	lr, lr, r1, lsr #1
	sub	ip, ip, r9, lsr #1
.LBE2617:
.LBE2685:
.LBB2686:
.LBB2643:
	sub	r7, r0, r3, lsr #1
.LBE2643:
.LBE2686:
.LBE2687:
.LBE2689:
.LBE2691:
	.loc 5 697 0 discriminator 3
	mov	r1, r6
	mov	r0, r5
	mov	r3, r2
.LBB2692:
.LBB2690:
.LBB2688:
	.loc 1 104 0 discriminator 4
	str	lr, [sp, #144]
	str	ip, [sp, #152]
	str	r4, [sp, #140]
.LVL2050:
	str	fp, [sp, #148]
.LVL2051:
	str	r7, [sp, #156]
.LVL2052:
.LBE2688:
.LBE2690:
.LBE2692:
	.loc 5 697 0 discriminator 3
	bl	put_mpeg4_qpel8_v_lowpass(PLT)
.LVL2053:
	.loc 5 697 0 is_stmt 0 discriminator 4
	mov	ip, #8
	ldr	r0, [sp, #20]
	mov	r1, r6
	mov	r2, r5
	ldr	r3, [sp, #16]
	str	ip, [sp]
	str	ip, [sp, #4]
	str	ip, [sp, #8]
	bl	avg_pixels8_l2_8(PLT)
.LVL2054:
	.loc 5 697 0
	add	sp, sp, #308
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2055:
.L283:
	.align	2
.L282:
	.word	-16843010
	.cfi_endproc
.LFE205:
	.size	avg_qpel8_mc11_c, .-avg_qpel8_mc11_c
	.align	2
	.type	avg_qpel8_mc31_c, %function
avg_qpel8_mc31_c:
.LFB207:
	.loc 5 697 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 288
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2056:
.LBB2702:
.LBB2703:
	.loc 6 64 0
	add	r3, r1, r2
.LBE2703:
.LBE2702:
	.loc 5 697 0
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
.LBB2709:
.LBB2704:
	.loc 6 64 0
	add	r7, r3, r2
.LBE2704:
.LBE2709:
	.loc 5 697 0
	mov	fp, r2
.LBB2710:
.LBB2705:
	.loc 6 61 0
	ldrb	lr, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #4]	@ zero_extendqisi2
.LVL2057:
	ldrb	r4, [r1, fp]	@ zero_extendqisi2
	ldrb	r10, [r3, #5]	@ zero_extendqisi2
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
	ldrb	r8, [r1]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #8
	ldrb	r9, [r1, #1]	@ zero_extendqisi2
	orr	r5, r4, r5, asl #8
	orr	ip, ip, r10, asl #8
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	orr	r8, r8, r9, asl #8
	ldrb	r9, [r7, #6]	@ zero_extendqisi2
	ldrb	r6, [r7, #1]	@ zero_extendqisi2
	orr	r4, r4, r10, asl #8
	orr	r2, r2, r9, asl #16
	ldrb	r10, [r3, #2]	@ zero_extendqisi2
	ldrb	r9, [r3, #6]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #8
	ldrb	r6, [r7, #2]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #16
	orr	ip, ip, r9, asl #16
	ldrb	r10, [r1, #2]	@ zero_extendqisi2
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #16
	ldrb	r6, [r7, #3]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #16
	orr	r8, r8, r10, asl #16
	ldrb	r9, [r3, #3]	@ zero_extendqisi2
	ldrb	r10, [r7, #7]	@ zero_extendqisi2
	orr	r6, lr, r6, asl #24
	ldrb	lr, [r3, #7]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #24
	orr	r5, r5, r9, asl #24
	ldrb	r10, [r1, #3]	@ zero_extendqisi2
	ldrb	r9, [r1, #7]	@ zero_extendqisi2
	orr	ip, ip, lr, asl #24
	.loc 6 64 0
	add	lr, r7, fp
.LBE2705:
.LBE2710:
	.loc 5 697 0
	sub	sp, sp, #308
	.cfi_def_cfa_offset 344
.LVL2058:
.LBB2711:
.LBB2706:
	.loc 6 61 0
	orr	r8, r8, r10, asl #24
	orr	r9, r4, r9, asl #24
	.loc 6 62 0
	ldrb	r10, [r1, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r4, lr, fp
	.loc 6 62 0
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
.LVL2059:
	.loc 6 61 0
	str	r6, [sp, #192]
	str	r5, [sp, #176]
	str	ip, [sp, #180]
	str	r8, [sp, #160]
	str	r9, [sp, #164]
	.loc 6 62 0
	strb	r10, [sp, #168]
.LVL2060:
	strb	r1, [sp, #184]
.LVL2061:
	.loc 6 61 0
	ldrb	r1, [r4, #4]	@ zero_extendqisi2
	ldrb	ip, [r4, #5]	@ zero_extendqisi2
	ldrb	r9, [lr, #1]	@ zero_extendqisi2
	ldrb	r8, [r4, #1]	@ zero_extendqisi2
	ldrb	r5, [r7, fp, asl #1]	@ zero_extendqisi2
	ldrb	r10, [lr, #5]	@ zero_extendqisi2
	str	r2, [sp, #196]
	ldrb	r2, [r3, fp, asl #1]	@ zero_extendqisi2
	ldrb	r3, [lr, #4]	@ zero_extendqisi2
	ldrb	r6, [lr, #2]	@ zero_extendqisi2
	orr	ip, r1, ip, asl #8
	ldrb	r1, [lr, #6]	@ zero_extendqisi2
	str	fp, [sp, #16]
	orr	r2, r2, r9, asl #8
	ldrb	fp, [lr, #3]	@ zero_extendqisi2
.LVL2062:
	ldrb	r9, [r4, #2]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #8
	orr	r3, r3, r10, asl #8
	ldrb	r8, [r4, #6]	@ zero_extendqisi2
	orr	r3, r3, r1, asl #16
	orr	r2, r2, r6, asl #16
	.loc 6 64 0
	ldr	r1, [sp, #16]
	.loc 6 61 0
	ldrb	r10, [r4, #3]	@ zero_extendqisi2
	orr	r6, r2, fp, asl #24
	orr	r5, r5, r9, asl #16
	.loc 6 64 0
	ldr	fp, [sp, #16]
	.loc 6 61 0
	ldrb	r9, [r4, #7]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	ldrb	r8, [lr, #7]	@ zero_extendqisi2
	.loc 6 64 0
	add	r1, r4, r1
	add	r2, r1, fp
	.loc 6 62 0
	ldrb	r7, [r7, #8]	@ zero_extendqisi2
.LVL2063:
	.loc 6 61 0
	orr	r5, r5, r10, asl #24
	orr	ip, ip, r9, asl #24
	orr	r10, r3, r8, asl #24
	.loc 6 62 0
	ldrb	r9, [r4, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r3, r2, fp
	.loc 6 62 0
	ldrb	r8, [lr, #8]	@ zero_extendqisi2
	.loc 6 61 0
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	str	r6, [sp, #208]
	.loc 6 62 0
	strb	r7, [sp, #200]
.LVL2064:
	.loc 6 61 0
	ldrb	r6, [r1, #1]	@ zero_extendqisi2
	ldrb	r7, [r1, #5]	@ zero_extendqisi2
	str	r5, [sp, #224]
	str	ip, [sp, #228]
	ldrb	r5, [r1, #2]	@ zero_extendqisi2
	str	r10, [sp, #212]
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r9, [sp, #232]
	.loc 6 61 0
	ldr	r9, [sp, #16]
	orr	ip, ip, r7, asl #8
	ldrb	lr, [lr, r9, asl #1]	@ zero_extendqisi2
.LVL2065:
	ldrb	r4, [r4, r9, asl #1]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #8
	ldr	r6, [sp, #16]
	ldrb	r9, [r3, #1]	@ zero_extendqisi2
	ldrb	r7, [r1, r6, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r2, #1]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r8, [sp, #216]
.LVL2066:
	.loc 6 61 0
	orr	r7, r7, r9, asl #8
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	r9, [r3, #5]	@ zero_extendqisi2
	orr	r6, r4, r6, asl #8
	ldrb	r4, [r3, #4]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r9, r4, r9, asl #8
	ldrb	r8, [r2, #5]	@ zero_extendqisi2
	ldrb	r4, [r2, #4]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #16
	orr	r8, r4, r8, asl #8
	ldrb	r4, [r2, #2]	@ zero_extendqisi2
	ldrb	r5, [r3, #2]	@ zero_extendqisi2
	orr	r6, r6, r4, asl #16
	ldrb	r4, [r2, #6]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	orr	r7, r7, r5, asl #16
	orr	r4, r8, r4, asl #16
	ldrb	r5, [r3, #6]	@ zero_extendqisi2
	ldrb	r8, [r3, #3]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	orr	ip, ip, r10, asl #24
	ldrb	fp, [r3, #7]	@ zero_extendqisi2
	.loc 6 64 0
	ldr	r10, [sp, #16]
	.loc 6 61 0
	orr	r7, r7, r8, asl #24
	orr	r5, r9, r5, asl #16
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	ldrb	r9, [r2, #3]	@ zero_extendqisi2
	.loc 6 62 0
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
.LVL2067:
	.loc 6 61 0
	orr	r6, r6, r9, asl #24
	orr	r5, r5, fp, asl #24
	orr	r4, r4, r8, asl #24
	.loc 6 62 0
	ldrb	r9, [r3, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r3, r3, r10
	.loc 6 62 0
	ldrb	r8, [r2, #8]	@ zero_extendqisi2
	.loc 6 61 0
	str	lr, [sp, #240]
	str	ip, [sp, #244]
	.loc 6 62 0
	strb	r1, [sp, #248]
.LVL2068:
	.loc 6 61 0
	str	r7, [sp, #272]
	str	r6, [sp, #256]
	str	r5, [sp, #276]
	str	r4, [sp, #260]
	.loc 6 62 0
	strb	r9, [sp, #280]
	.loc 6 61 0
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	r4, [r2, r10, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r3, #2]	@ zero_extendqisi2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
.LVL2069:
	ldrb	r7, [r3, #3]	@ zero_extendqisi2
	ldrb	ip, [r3, #6]	@ zero_extendqisi2
	orr	r4, r4, r5, asl #8
	ldrb	r6, [r3, #7]	@ zero_extendqisi2
	orr	r2, r1, r2, asl #8
	orr	r1, r4, lr, asl #16
	orr	lr, r1, r7, asl #24
	orr	r2, r2, ip, asl #16
.LBE2706:
.LBE2711:
	.loc 5 697 0 discriminator 1
	add	r7, sp, #88
	mov	r5, #9
.LBB2712:
.LBB2707:
	.loc 6 61 0
	orr	ip, r2, r6, asl #24
	.loc 6 62 0
	ldrb	r4, [r3, #8]	@ zero_extendqisi2
.LBE2707:
.LBE2712:
	.loc 5 697 0
	str	r0, [sp, #20]
	.loc 5 697 0 is_stmt 0 discriminator 1
	str	r5, [sp]
	mov	r0, r7
.LVL2070:
	add	r1, sp, #160
	mov	r2, #8
	mov	r3, #16
.LBB2713:
.LBB2708:
	.loc 6 62 0 is_stmt 1
	strb	r8, [sp, #264]
.LVL2071:
	.loc 6 61 0
	str	lr, [sp, #288]
	str	ip, [sp, #292]
	.loc 6 62 0
	strb	r4, [sp, #296]
.LVL2072:
.LBE2708:
.LBE2713:
	.loc 5 697 0 discriminator 1
	bl	put_mpeg4_qpel8_h_lowpass(PLT)
.LVL2073:
.LBB2714:
.LBB2715:
.LBB2716:
	.loc 1 104 0 discriminator 4
	ldrb	r10, [sp, #168]	@ zero_extendqisi2
	ldrb	r5, [sp, #200]	@ zero_extendqisi2
	ldr	r1, [sp, #164]
	ldrb	r6, [sp, #184]	@ zero_extendqisi2
	ldrb	r3, [sp, #164]	@ zero_extendqisi2
	ldrb	r2, [sp, #196]	@ zero_extendqisi2
	mov	ip, r5, asl #24
	mov	r9, r10, asl #24
	ldr	r5, [sp, #180]
	orr	r10, r9, r1, lsr #8
	ldr	fp, [sp, #160]
	ldr	r1, [sp, #192]
	mov	r6, r6, asl #24
	ldr	r0, [sp, #88]
.LVL2074:
	ldrb	lr, [sp, #216]	@ zero_extendqisi2
	orr	r6, r6, r5, lsr #8
	mov	r3, r3, asl #24
	ldr	r5, [sp, #196]
	mov	r2, r2, asl #24
	orr	r3, r3, fp, lsr #8
.LVL2075:
	orr	r2, r2, r1, lsr #8
	ldr	r1, [sp, #212]
	orr	r5, ip, r5, lsr #8
	ldrb	r4, [sp, #212]	@ zero_extendqisi2
.LBB2717:
.LBB2718:
	.loc 2 33 0
	eor	ip, r3, r0
.LBE2718:
.LBE2717:
	.loc 1 104 0 discriminator 4
	mov	lr, lr, asl #24
.LBB2745:
.LBB2719:
	.loc 2 33 0
	orr	r0, r3, r0
.LVL2076:
	ldr	r3, .L286
.LVL2077:
.LBE2719:
.LBE2745:
	.loc 1 104 0 discriminator 4
	ldr	r9, [sp, #208]
	orr	lr, lr, r1, lsr #8
	ldr	r1, [sp, #92]
.LVL2078:
.LBB2746:
.LBB2720:
	.loc 2 33 0
	and	ip, ip, r3
.LBE2720:
.LBE2746:
	.loc 1 104 0 discriminator 4
	mov	r4, r4, asl #24
	orr	r4, r4, r9, lsr #8
.LBB2747:
.LBB2721:
	.loc 2 33 0
	sub	r0, r0, ip, lsr #1
.LBE2721:
.LBE2747:
.LBB2748:
.LBB2749:
	eor	r9, r10, r1
.LBE2749:
.LBE2748:
	.loc 1 104 0 discriminator 4
	ldrb	r8, [sp, #180]	@ zero_extendqisi2
	str	r0, [sp, #88]
.LVL2079:
.LBB2777:
.LBB2750:
	.loc 2 33 0
	orr	r1, r10, r1
.LVL2080:
	and	r0, r9, r3
.LBE2750:
.LBE2777:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #176]
.LVL2081:
.LBB2778:
.LBB2751:
	.loc 2 33 0
	sub	r9, r1, r0, lsr #1
.LBE2751:
.LBE2778:
	.loc 1 104 0 discriminator 4
	str	r9, [sp, #92]
.LVL2082:
	mov	r8, r8, asl #24
.LBB2779:
.LBB2722:
	.loc 2 33 0
	ldr	r9, [sp, #96]
	ldr	r10, [sp, #96]
.LVL2083:
.LBE2722:
.LBE2779:
	.loc 1 104 0 discriminator 4
	orr	r8, r8, fp, lsr #8
.LVL2084:
.LBB2780:
.LBB2723:
	.loc 2 33 0
	eor	r9, r8, r9
	and	r9, r9, r3
	orr	r8, r8, r10
.LVL2085:
	sub	r8, r8, r9, lsr #1
.LBE2723:
.LBE2780:
	.loc 1 104 0 discriminator 4
	str	r8, [sp, #96]
.LVL2086:
.LBB2781:
.LBB2752:
	.loc 2 33 0
	ldr	r8, [sp, #100]
	ldr	r9, [sp, #100]
.LBE2752:
.LBE2781:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #104]
.LVL2087:
	ldr	ip, [sp, #108]
	ldr	r0, [sp, #112]
	ldr	r1, [sp, #116]
.LBB2782:
.LBB2753:
	.loc 2 33 0
	eor	r8, r6, r8
	and	r8, r8, r3
	orr	r6, r6, r9
.LVL2088:
	sub	r8, r6, r8, lsr #1
	eor	r9, r5, ip
.LBE2753:
.LBE2782:
.LBB2783:
.LBB2724:
	eor	r6, r2, fp
	eor	r10, r4, r0
.LVL2089:
	orr	r0, r4, r0
.LBE2724:
.LBE2783:
.LBB2784:
.LBB2754:
	eor	r4, lr, r1
.LBE2754:
.LBE2784:
.LBB2785:
.LBB2725:
	and	r6, r6, r3
.LBE2725:
.LBE2785:
.LBB2786:
.LBB2755:
	and	r9, r9, r3
.LBE2755:
.LBE2786:
.LBB2787:
.LBB2726:
	and	r10, r10, r3
.LBE2726:
.LBE2787:
.LBB2788:
.LBB2756:
	and	r4, r4, r3
.LBE2756:
.LBE2788:
.LBB2789:
.LBB2727:
	orr	r2, r2, fp
.LBE2727:
.LBE2789:
.LBB2790:
.LBB2757:
	orr	ip, r5, ip
	orr	r1, lr, r1
.LBE2757:
.LBE2790:
.LBB2791:
.LBB2728:
	sub	r2, r2, r6, lsr #1
.LBE2728:
.LBE2791:
.LBB2792:
.LBB2758:
	sub	ip, ip, r9, lsr #1
.LBE2758:
.LBE2792:
.LBB2793:
.LBB2729:
	sub	r0, r0, r10, lsr #1
.LBE2729:
.LBE2793:
.LBB2794:
.LBB2759:
	sub	r1, r1, r4, lsr #1
.LBE2759:
.LBE2794:
	.loc 1 104 0 discriminator 4
	str	r8, [sp, #100]
.LVL2090:
	str	r2, [sp, #104]
	str	ip, [sp, #108]
.LVL2091:
	str	r0, [sp, #112]
	str	r1, [sp, #116]
.LVL2092:
	ldrb	lr, [sp, #228]	@ zero_extendqisi2
.LVL2093:
	ldr	ip, [sp, #224]
	ldrb	fp, [sp, #232]	@ zero_extendqisi2
	mov	lr, lr, asl #24
	orr	lr, lr, ip, lsr #8
	ldr	ip, [sp, #228]
	ldrb	r0, [sp, #248]	@ zero_extendqisi2
	mov	fp, fp, asl #24
	orr	fp, fp, ip, lsr #8
	ldr	ip, [sp, #244]
	ldrb	r2, [sp, #260]	@ zero_extendqisi2
	mov	r0, r0, asl #24
	orr	r0, r0, ip, lsr #8
	ldr	ip, [sp, #256]
	ldrb	r6, [sp, #276]	@ zero_extendqisi2
	mov	r2, r2, asl #24
	ldr	r4, [sp, #120]
.LVL2094:
	orr	r2, r2, ip, lsr #8
	ldr	ip, [sp, #272]
	mov	r6, r6, asl #24
	orr	r6, r6, ip, lsr #8
	ldrb	r9, [sp, #244]	@ zero_extendqisi2
	ldr	ip, [sp, #124]
.LVL2095:
.LBB2795:
.LBB2730:
	.loc 2 33 0
	eor	r10, lr, r4
.LBE2730:
.LBE2795:
	.loc 1 104 0 discriminator 4
	ldr	r8, [sp, #240]
.LBB2796:
.LBB2731:
	.loc 2 33 0
	and	r10, r10, r3
	orr	lr, lr, r4
.LVL2096:
	sub	lr, lr, r10, lsr #1
.LBE2731:
.LBE2796:
	.loc 1 104 0 discriminator 4
	mov	r9, r9, asl #24
.LBB2797:
.LBB2760:
	.loc 2 33 0
	eor	r10, fp, ip
.LBE2760:
.LBE2797:
	.loc 1 104 0 discriminator 4
	orr	r9, r9, r8, lsr #8
	str	lr, [sp, #120]
	ldr	r8, [sp, #128]
.LBB2798:
.LBB2761:
	.loc 2 33 0
	and	lr, r10, r3
	orr	ip, fp, ip
.LVL2097:
	sub	r10, ip, lr, lsr #1
.LBE2761:
.LBE2798:
	.loc 1 104 0 discriminator 4
	ldrb	r1, [sp, #264]	@ zero_extendqisi2
	str	r10, [sp, #124]
.LVL2098:
.LBB2799:
.LBB2732:
	.loc 2 33 0
	eor	r10, r9, r8
.LBE2732:
.LBE2799:
	.loc 1 104 0 discriminator 4
	ldr	r4, [sp, #260]
.LBB2800:
.LBB2733:
	.loc 2 33 0
	and	r10, r10, r3
	orr	r8, r9, r8
.LVL2099:
.LBE2733:
.LBE2800:
	.loc 1 104 0 discriminator 4
	ldrb	r5, [sp, #280]	@ zero_extendqisi2
.LBB2801:
.LBB2734:
	.loc 2 33 0
	sub	r8, r8, r10, lsr #1
.LBE2734:
.LBE2801:
	.loc 1 104 0 discriminator 4
	mov	r1, r1, asl #24
.LBB2802:
.LBB2762:
	.loc 2 33 0
	ldr	r9, [sp, #132]
.LVL2100:
.LBE2762:
.LBE2802:
	.loc 1 104 0 discriminator 4
	orr	r1, r1, r4, lsr #8
	str	r8, [sp, #128]
.LVL2101:
	ldr	r4, [sp, #276]
.LBB2803:
.LBB2763:
	.loc 2 33 0
	ldr	r8, [sp, #132]
.LBE2763:
.LBE2803:
	.loc 1 104 0 discriminator 4
	mov	r5, r5, asl #24
	ldr	lr, [sp, #144]
	ldr	ip, [sp, #148]
	orr	r5, r5, r4, lsr #8
.LBB2804:
.LBB2764:
	.loc 2 33 0
	eor	r8, r0, r8
.LBE2764:
.LBE2804:
	.loc 1 104 0 discriminator 4
	ldr	r4, [sp, #140]
.LBB2805:
.LBB2765:
	.loc 2 33 0
	orr	r0, r0, r9
.LVL2102:
.LBE2765:
.LBE2805:
.LBB2806:
.LBB2735:
	ldr	r9, [sp, #136]
.LBE2735:
.LBE2806:
.LBB2807:
.LBB2766:
	and	r8, r8, r3
	sub	r8, r0, r8, lsr #1
.LBE2766:
.LBE2807:
.LBB2808:
.LBB2736:
	eor	r10, r6, lr
	eor	r0, r2, r9
.LBE2736:
.LBE2808:
.LBB2809:
.LBB2767:
	eor	fp, r5, ip
.LBE2767:
.LBE2809:
.LBB2810:
.LBB2737:
	orr	r2, r2, r9
.LBE2737:
.LBE2810:
.LBB2811:
.LBB2768:
	eor	r9, r1, r4
.LBE2768:
.LBE2811:
.LBB2812:
.LBB2738:
	and	r0, r0, r3
.LBE2738:
.LBE2812:
.LBB2813:
.LBB2769:
	and	r9, r9, r3
.LBE2769:
.LBE2813:
.LBB2814:
.LBB2739:
	and	r10, r10, r3
.LBE2739:
.LBE2814:
.LBB2815:
.LBB2770:
	and	fp, fp, r3
	orr	r4, r1, r4
.LBE2770:
.LBE2815:
.LBB2816:
.LBB2740:
	orr	lr, r6, lr
.LBE2740:
.LBE2816:
.LBB2817:
.LBB2771:
	orr	ip, r5, ip
.LBE2771:
.LBE2817:
.LBB2818:
.LBB2741:
	sub	r2, r2, r0, lsr #1
.LBE2741:
.LBE2818:
.LBB2819:
.LBB2772:
	sub	r4, r4, r9, lsr #1
.LBE2772:
.LBE2819:
.LBB2820:
.LBB2742:
	sub	lr, lr, r10, lsr #1
.LBE2742:
.LBE2820:
.LBB2821:
.LBB2773:
	sub	ip, ip, fp, lsr #1
.LBE2773:
.LBE2821:
	.loc 1 104 0 discriminator 4
	str	r2, [sp, #136]
	str	r4, [sp, #140]
	str	lr, [sp, #144]
	str	ip, [sp, #148]
	str	r8, [sp, #132]
.LVL2103:
	ldr	r1, [sp, #152]
.LVL2104:
	ldrb	lr, [sp, #292]	@ zero_extendqisi2
	ldrb	r0, [sp, #296]	@ zero_extendqisi2
	ldr	r4, [sp, #288]
	ldr	ip, [sp, #292]
	ldr	r2, [sp, #156]
	mov	r0, r0, asl #24
	mov	lr, lr, asl #24
	orr	lr, lr, r4, lsr #8
.LVL2105:
	orr	ip, r0, ip, lsr #8
.LVL2106:
.LBB2822:
.LBB2774:
	.loc 2 33 0
	eor	r4, ip, r2
.LBE2774:
.LBE2822:
.LBB2823:
.LBB2743:
	eor	r0, lr, r1
	and	r0, r0, r3
	orr	r1, lr, r1
.LVL2107:
.LBE2743:
.LBE2823:
.LBB2824:
.LBB2775:
	and	r3, r3, r4
	orr	ip, ip, r2
.LVL2108:
.LBE2775:
.LBE2824:
.LBE2716:
.LBE2715:
.LBE2714:
	.loc 5 697 0 discriminator 3
	add	r4, sp, #24
	mov	r2, #8
.LVL2109:
.LBB2831:
.LBB2829:
.LBB2827:
.LBB2825:
.LBB2744:
	.loc 2 33 0
	sub	lr, r1, r0, lsr #1
.LVL2110:
.LBE2744:
.LBE2825:
.LBB2826:
.LBB2776:
	sub	ip, ip, r3, lsr #1
.LBE2776:
.LBE2826:
.LBE2827:
.LBE2829:
.LBE2831:
	.loc 5 697 0 discriminator 3
	mov	r1, r7
	mov	r0, r4
	mov	r3, r2
.LBB2832:
.LBB2830:
.LBB2828:
	.loc 1 104 0 discriminator 4
	str	lr, [sp, #152]
.LVL2111:
	str	ip, [sp, #156]
.LVL2112:
.LBE2828:
.LBE2830:
.LBE2832:
	.loc 5 697 0 discriminator 3
	bl	put_mpeg4_qpel8_v_lowpass(PLT)
.LVL2113:
	.loc 5 697 0 is_stmt 0 discriminator 4
	mov	ip, #8
	ldr	r0, [sp, #20]
	mov	r1, r7
	mov	r2, r4
	ldr	r3, [sp, #16]
	str	ip, [sp]
	str	ip, [sp, #4]
	str	ip, [sp, #8]
	bl	avg_pixels8_l2_8(PLT)
.LVL2114:
	.loc 5 697 0
	add	sp, sp, #308
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2115:
.L287:
	.align	2
.L286:
	.word	-16843010
	.cfi_endproc
.LFE207:
	.size	avg_qpel8_mc31_c, .-avg_qpel8_mc31_c
	.align	2
	.type	avg_qpel8_mc13_c, %function
avg_qpel8_mc13_c:
.LFB209:
	.loc 5 697 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 288
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2116:
.LBB2842:
.LBB2843:
	.loc 6 64 0
	add	r3, r1, r2
.LBE2843:
.LBE2842:
	.loc 5 697 0
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
.LBB2849:
.LBB2844:
	.loc 6 64 0
	add	r7, r3, r2
.LBE2844:
.LBE2849:
	.loc 5 697 0
	mov	fp, r2
.LBB2850:
.LBB2845:
	.loc 6 61 0
	ldrb	lr, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #4]	@ zero_extendqisi2
.LVL2117:
	ldrb	r4, [r1, fp]	@ zero_extendqisi2
	ldrb	r10, [r3, #5]	@ zero_extendqisi2
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
	ldrb	r8, [r1]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #8
	ldrb	r9, [r1, #1]	@ zero_extendqisi2
	orr	r5, r4, r5, asl #8
	orr	ip, ip, r10, asl #8
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	orr	r8, r8, r9, asl #8
	ldrb	r9, [r7, #6]	@ zero_extendqisi2
	ldrb	r6, [r7, #1]	@ zero_extendqisi2
	orr	r4, r4, r10, asl #8
	orr	r2, r2, r9, asl #16
	ldrb	r10, [r3, #2]	@ zero_extendqisi2
	ldrb	r9, [r3, #6]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #8
	ldrb	r6, [r7, #2]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #16
	orr	ip, ip, r9, asl #16
	ldrb	r10, [r1, #2]	@ zero_extendqisi2
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #16
	ldrb	r6, [r7, #3]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #16
	orr	r8, r8, r10, asl #16
	ldrb	r9, [r3, #3]	@ zero_extendqisi2
	ldrb	r10, [r7, #7]	@ zero_extendqisi2
	orr	r6, lr, r6, asl #24
	ldrb	lr, [r3, #7]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #24
	orr	r5, r5, r9, asl #24
	ldrb	r10, [r1, #3]	@ zero_extendqisi2
	ldrb	r9, [r1, #7]	@ zero_extendqisi2
	orr	ip, ip, lr, asl #24
	.loc 6 64 0
	add	lr, r7, fp
.LBE2845:
.LBE2850:
	.loc 5 697 0
	sub	sp, sp, #308
	.cfi_def_cfa_offset 344
.LVL2118:
.LBB2851:
.LBB2846:
	.loc 6 61 0
	orr	r8, r8, r10, asl #24
	orr	r9, r4, r9, asl #24
	.loc 6 62 0
	ldrb	r10, [r1, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r4, lr, fp
	.loc 6 62 0
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
.LVL2119:
	.loc 6 61 0
	str	r6, [sp, #192]
	str	r5, [sp, #176]
	str	ip, [sp, #180]
	str	r8, [sp, #160]
	str	r9, [sp, #164]
	.loc 6 62 0
	strb	r10, [sp, #168]
.LVL2120:
	strb	r1, [sp, #184]
.LVL2121:
	.loc 6 61 0
	ldrb	r1, [r4, #4]	@ zero_extendqisi2
	ldrb	ip, [r4, #5]	@ zero_extendqisi2
	ldrb	r9, [lr, #1]	@ zero_extendqisi2
	ldrb	r8, [r4, #1]	@ zero_extendqisi2
	ldrb	r5, [r7, fp, asl #1]	@ zero_extendqisi2
	ldrb	r10, [lr, #5]	@ zero_extendqisi2
	str	r2, [sp, #196]
	ldrb	r2, [r3, fp, asl #1]	@ zero_extendqisi2
	ldrb	r3, [lr, #4]	@ zero_extendqisi2
	ldrb	r6, [lr, #2]	@ zero_extendqisi2
	orr	ip, r1, ip, asl #8
	ldrb	r1, [lr, #6]	@ zero_extendqisi2
	str	fp, [sp, #16]
	orr	r2, r2, r9, asl #8
	ldrb	fp, [lr, #3]	@ zero_extendqisi2
.LVL2122:
	ldrb	r9, [r4, #2]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #8
	orr	r3, r3, r10, asl #8
	ldrb	r8, [r4, #6]	@ zero_extendqisi2
	orr	r3, r3, r1, asl #16
	orr	r2, r2, r6, asl #16
	.loc 6 64 0
	ldr	r1, [sp, #16]
	.loc 6 61 0
	ldrb	r10, [r4, #3]	@ zero_extendqisi2
	orr	r6, r2, fp, asl #24
	orr	r5, r5, r9, asl #16
	.loc 6 64 0
	ldr	fp, [sp, #16]
	.loc 6 61 0
	ldrb	r9, [r4, #7]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	ldrb	r8, [lr, #7]	@ zero_extendqisi2
	.loc 6 64 0
	add	r1, r4, r1
	add	r2, r1, fp
	.loc 6 62 0
	ldrb	r7, [r7, #8]	@ zero_extendqisi2
.LVL2123:
	.loc 6 61 0
	orr	r5, r5, r10, asl #24
	orr	ip, ip, r9, asl #24
	orr	r10, r3, r8, asl #24
	.loc 6 62 0
	ldrb	r9, [r4, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r3, r2, fp
	.loc 6 62 0
	ldrb	r8, [lr, #8]	@ zero_extendqisi2
	.loc 6 61 0
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	str	r6, [sp, #208]
	.loc 6 62 0
	strb	r7, [sp, #200]
.LVL2124:
	.loc 6 61 0
	ldrb	r6, [r1, #1]	@ zero_extendqisi2
	ldrb	r7, [r1, #5]	@ zero_extendqisi2
	str	r5, [sp, #224]
	str	ip, [sp, #228]
	ldrb	r5, [r1, #2]	@ zero_extendqisi2
	str	r10, [sp, #212]
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r9, [sp, #232]
	.loc 6 61 0
	ldr	r9, [sp, #16]
	orr	ip, ip, r7, asl #8
	ldrb	lr, [lr, r9, asl #1]	@ zero_extendqisi2
.LVL2125:
	ldrb	r4, [r4, r9, asl #1]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #8
	ldr	r6, [sp, #16]
	ldrb	r9, [r3, #1]	@ zero_extendqisi2
	ldrb	r7, [r1, r6, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r2, #1]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r8, [sp, #216]
.LVL2126:
	.loc 6 61 0
	orr	r7, r7, r9, asl #8
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	r9, [r3, #5]	@ zero_extendqisi2
	orr	r6, r4, r6, asl #8
	ldrb	r4, [r3, #4]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r9, r4, r9, asl #8
	ldrb	r8, [r2, #5]	@ zero_extendqisi2
	ldrb	r4, [r2, #4]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #16
	orr	r8, r4, r8, asl #8
	ldrb	r4, [r2, #2]	@ zero_extendqisi2
	ldrb	r5, [r3, #2]	@ zero_extendqisi2
	orr	r6, r6, r4, asl #16
	ldrb	r4, [r2, #6]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	orr	r7, r7, r5, asl #16
	orr	r4, r8, r4, asl #16
	ldrb	r5, [r3, #6]	@ zero_extendqisi2
	ldrb	r8, [r3, #3]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	orr	ip, ip, r10, asl #24
	ldrb	fp, [r3, #7]	@ zero_extendqisi2
	.loc 6 64 0
	ldr	r10, [sp, #16]
	.loc 6 61 0
	orr	r7, r7, r8, asl #24
	orr	r5, r9, r5, asl #16
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	ldrb	r9, [r2, #3]	@ zero_extendqisi2
	.loc 6 62 0
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
.LVL2127:
	.loc 6 61 0
	orr	r6, r6, r9, asl #24
	orr	r5, r5, fp, asl #24
	orr	r4, r4, r8, asl #24
	.loc 6 62 0
	ldrb	r9, [r3, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r3, r3, r10
	.loc 6 62 0
	ldrb	r8, [r2, #8]	@ zero_extendqisi2
	.loc 6 61 0
	str	lr, [sp, #240]
	str	ip, [sp, #244]
	.loc 6 62 0
	strb	r1, [sp, #248]
.LVL2128:
	.loc 6 61 0
	str	r7, [sp, #272]
	str	r6, [sp, #256]
	str	r5, [sp, #276]
	str	r4, [sp, #260]
	.loc 6 62 0
	strb	r9, [sp, #280]
	.loc 6 61 0
	ldrb	r4, [r2, r10, asl #1]	@ zero_extendqisi2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
.LVL2129:
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	ip, [r3, #6]	@ zero_extendqisi2
	ldrb	lr, [r3, #2]	@ zero_extendqisi2
	ldrb	r6, [r3, #7]	@ zero_extendqisi2
	orr	r2, r1, r2, asl #8
	ldrb	r7, [r3, #3]	@ zero_extendqisi2
	orr	r4, r4, r5, asl #8
	orr	r2, r2, ip, asl #16
	orr	ip, r2, r6, asl #24
	orr	r1, r4, lr, asl #16
.LBE2846:
.LBE2851:
	.loc 5 697 0 discriminator 1
	add	r6, sp, #88
	mov	r5, #9
.LBB2852:
.LBB2847:
	.loc 6 61 0
	orr	lr, r1, r7, asl #24
	.loc 6 62 0
	ldrb	r4, [r3, #8]	@ zero_extendqisi2
.LBE2847:
.LBE2852:
	.loc 5 697 0
	str	r0, [sp, #20]
	.loc 5 697 0 is_stmt 0 discriminator 1
	str	r5, [sp]
	mov	r0, r6
.LVL2130:
	add	r1, sp, #160
	mov	r2, #8
	mov	r3, #16
.LBB2853:
.LBB2848:
	.loc 6 62 0 is_stmt 1
	strb	r8, [sp, #264]
.LVL2131:
	.loc 6 61 0
	str	lr, [sp, #288]
	str	ip, [sp, #292]
	.loc 6 62 0
	strb	r4, [sp, #296]
.LVL2132:
.LBE2848:
.LBE2853:
	.loc 5 697 0 discriminator 1
	bl	put_mpeg4_qpel8_h_lowpass(PLT)
.LVL2133:
.LBB2854:
.LBB2855:
.LBB2856:
	.loc 1 104 0 discriminator 4
	ldr	r3, [sp, #88]
.LVL2134:
	ldr	lr, [sp, #160]
.LVL2135:
	ldr	ip, [sp, #92]
.LVL2136:
.LBB2857:
.LBB2858:
	.loc 2 33 0
	eor	r4, lr, r3
	orr	lr, lr, r3
.LVL2137:
	ldr	r3, .L290
.LVL2138:
.LBE2858:
.LBE2857:
	.loc 1 104 0 discriminator 4
	ldr	r9, [sp, #164]
.LVL2139:
.LBB2879:
.LBB2859:
	.loc 2 33 0
	and	r4, r4, r3
	sub	lr, lr, r4, lsr #1
.LBE2859:
.LBE2879:
	.loc 1 104 0 discriminator 4
	str	lr, [sp, #88]
.LVL2140:
.LBB2880:
.LBB2881:
	.loc 2 33 0
	eor	lr, r9, ip
.LBE2881:
.LBE2880:
	.loc 1 104 0 discriminator 4
	ldr	r0, [sp, #96]
	ldr	r8, [sp, #176]
.LBB2904:
.LBB2882:
	.loc 2 33 0
	and	lr, lr, r3
	orr	ip, r9, ip
.LVL2141:
	sub	ip, ip, lr, lsr #1
.LBE2882:
.LBE2904:
	.loc 1 104 0 discriminator 4
	str	ip, [sp, #92]
.LVL2142:
.LBB2905:
.LBB2860:
	.loc 2 33 0
	eor	ip, r8, r0
.LBE2860:
.LBE2905:
	.loc 1 104 0 discriminator 4
	ldr	r1, [sp, #100]
.LVL2143:
	ldr	r7, [sp, #180]
.LVL2144:
.LBB2906:
.LBB2861:
	.loc 2 33 0
	and	ip, ip, r3
	orr	r0, r8, r0
.LVL2145:
	sub	r0, r0, ip, lsr #1
.LBE2861:
.LBE2906:
	.loc 1 104 0 discriminator 4
	str	r0, [sp, #96]
.LVL2146:
.LBB2907:
.LBB2883:
	.loc 2 33 0
	eor	r0, r7, r1
.LBE2883:
.LBE2907:
	.loc 1 104 0 discriminator 4
	ldr	r2, [sp, #104]
	ldr	r5, [sp, #192]
.LBB2908:
.LBB2884:
	.loc 2 33 0
	and	r0, r0, r3
	orr	r1, r7, r1
.LVL2147:
	sub	r1, r1, r0, lsr #1
.LBE2884:
.LBE2908:
	.loc 1 104 0 discriminator 4
	str	r1, [sp, #100]
.LVL2148:
.LBB2909:
.LBB2862:
	.loc 2 33 0
	eor	r1, r5, r2
	and	r1, r1, r3
	orr	r2, r5, r2
.LVL2149:
	sub	r2, r2, r1, lsr #1
.LBE2862:
.LBE2909:
	.loc 1 104 0 discriminator 4
	ldr	r10, [sp, #196]
.LVL2150:
	str	r2, [sp, #104]
.LVL2151:
.LBB2910:
.LBB2885:
	.loc 2 33 0
	ldr	r2, [sp, #108]
	ldr	r5, [sp, #108]
.LVL2152:
	eor	r2, r10, r2
	and	r2, r2, r3
	orr	r10, r10, r5
.LVL2153:
.LBE2885:
.LBE2910:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #208]
.LBB2911:
.LBB2886:
	.loc 2 33 0
	sub	r10, r10, r2, lsr #1
.LBE2886:
.LBE2911:
.LBB2912:
.LBB2863:
	ldr	r2, [sp, #112]
	ldr	r5, [sp, #112]
.LBE2863:
.LBE2912:
	.loc 1 104 0 discriminator 4
	ldr	lr, [sp, #116]
	ldr	r4, [sp, #212]
	ldr	ip, [sp, #120]
	ldr	r9, [sp, #224]
	ldr	r8, [sp, #228]
	ldr	r7, [sp, #240]
	ldr	r0, [sp, #124]
	ldr	r1, [sp, #128]
.LBB2913:
.LBB2864:
	.loc 2 33 0
	eor	r2, fp, r2
	and	r2, r2, r3
	orr	fp, fp, r5
.LBE2864:
.LBE2913:
	.loc 1 104 0 discriminator 4
	str	r10, [sp, #108]
.LVL2154:
.LBB2914:
.LBB2865:
	.loc 2 33 0
	sub	r2, fp, r2, lsr #1
.LBE2865:
.LBE2914:
.LBB2915:
.LBB2887:
	eor	r5, r4, lr
.LVL2155:
.LBE2887:
.LBE2915:
.LBB2916:
.LBB2866:
	eor	r10, r9, ip
.LBE2866:
.LBE2916:
.LBB2917:
.LBB2888:
	eor	fp, r8, r0
	orr	lr, r4, lr
.LVL2156:
.LBE2888:
.LBE2917:
.LBB2918:
.LBB2867:
	eor	r4, r7, r1
.LVL2157:
.LBE2867:
.LBE2918:
.LBB2919:
.LBB2889:
	and	r5, r5, r3
.LBE2889:
.LBE2919:
.LBB2920:
.LBB2868:
	and	r10, r10, r3
.LBE2868:
.LBE2920:
.LBB2921:
.LBB2890:
	and	fp, fp, r3
.LBE2890:
.LBE2921:
.LBB2922:
.LBB2869:
	and	r4, r4, r3
	orr	ip, r9, ip
.LBE2869:
.LBE2922:
.LBB2923:
.LBB2891:
	orr	r0, r8, r0
.LBE2891:
.LBE2923:
.LBB2924:
.LBB2870:
	orr	r1, r7, r1
.LBE2870:
.LBE2924:
.LBB2925:
.LBB2892:
	sub	lr, lr, r5, lsr #1
.LBE2892:
.LBE2925:
.LBB2926:
.LBB2871:
	sub	ip, ip, r10, lsr #1
.LBE2871:
.LBE2926:
.LBB2927:
.LBB2893:
	sub	r0, r0, fp, lsr #1
.LBE2893:
.LBE2927:
.LBB2928:
.LBB2872:
	sub	r1, r1, r4, lsr #1
.LBE2872:
.LBE2928:
	.loc 1 104 0 discriminator 4
	str	r2, [sp, #112]
.LVL2158:
	str	lr, [sp, #116]
.LVL2159:
	str	ip, [sp, #120]
.LVL2160:
	str	r0, [sp, #124]
.LVL2161:
	ldr	r2, [sp, #132]
.LVL2162:
	str	r1, [sp, #128]
.LVL2163:
	ldr	r1, [sp, #244]
.LVL2164:
	ldr	r5, [sp, #136]
.LBB2929:
.LBB2894:
	.loc 2 33 0
	eor	r0, r1, r2
.LBE2894:
.LBE2929:
	.loc 1 104 0 discriminator 4
	ldr	r10, [sp, #256]
.LBB2930:
.LBB2895:
	.loc 2 33 0
	and	fp, r0, r3
	orr	r2, r1, r2
.LVL2165:
	sub	r0, r2, fp, lsr #1
.LBE2895:
.LBE2930:
	.loc 1 104 0 discriminator 4
	ldr	r4, [sp, #140]
	ldr	r9, [sp, #260]
	str	r0, [sp, #132]
.LVL2166:
.LBB2931:
.LBB2873:
	.loc 2 33 0
	eor	r0, r10, r5
	and	r0, r0, r3
	orr	r5, r10, r5
.LVL2167:
.LBE2873:
.LBE2931:
	.loc 1 104 0 discriminator 4
	ldr	lr, [sp, #144]
	ldr	r8, [sp, #272]
.LBB2932:
.LBB2874:
	.loc 2 33 0
	sub	r5, r5, r0, lsr #1
.LBE2874:
.LBE2932:
.LBB2933:
.LBB2896:
	eor	r0, r9, r4
	and	r0, r0, r3
	orr	r4, r9, r4
.LVL2168:
.LBE2896:
.LBE2933:
	.loc 1 104 0 discriminator 4
	str	r5, [sp, #136]
.LVL2169:
.LBB2934:
.LBB2897:
	.loc 2 33 0
	sub	r4, r4, r0, lsr #1
	ldr	r5, [sp, #276]
.LBE2897:
.LBE2934:
.LBB2935:
.LBB2875:
	eor	r0, r8, lr
	orr	lr, r8, lr
.LBE2875:
.LBE2935:
.LBB2936:
.LBB2898:
	ldr	r8, [sp, #148]
.LBE2898:
.LBE2936:
	.loc 1 104 0 discriminator 4
	ldr	r2, [sp, #156]
	ldr	ip, [sp, #152]
	ldr	r7, [sp, #288]
.LBE2856:
.LBE2855:
.LBE2854:
	.loc 5 697 0 discriminator 3
	mov	r1, r6
.LBB2953:
.LBB2949:
.LBB2945:
	.loc 1 104 0 discriminator 4
	ldr	r6, [sp, #292]
.LVL2170:
.LBB2937:
.LBB2899:
	.loc 2 33 0
	ldr	r9, [sp, #148]
.LVL2171:
	eor	r5, r5, r8
	ldr	r8, [sp, #276]
.LBE2899:
.LBE2937:
.LBB2938:
.LBB2876:
	eor	r10, r7, ip
.LVL2172:
	orr	ip, r7, ip
.LBE2876:
.LBE2938:
.LBB2939:
.LBB2900:
	eor	r7, r6, r2
.LBE2900:
.LBE2939:
.LBB2940:
.LBB2877:
	and	r0, r0, r3
	and	r10, r10, r3
.LBE2877:
.LBE2940:
.LBE2945:
.LBE2949:
.LBE2953:
	.loc 5 697 0 discriminator 3
	add	fp, sp, #24
.LBB2954:
.LBB2950:
.LBB2946:
.LBB2941:
.LBB2901:
	.loc 2 33 0
	and	r5, r5, r3
	orr	r9, r8, r9
	and	r3, r3, r7
	orr	r6, r6, r2
.LBE2901:
.LBE2941:
.LBE2946:
.LBE2950:
.LBE2954:
	.loc 5 697 0 discriminator 3
	mov	r2, #8
.LBB2955:
.LBB2951:
.LBB2947:
.LBB2942:
.LBB2878:
	.loc 2 33 0
	sub	lr, lr, r0, lsr #1
	sub	ip, ip, r10, lsr #1
.LBE2878:
.LBE2942:
.LBB2943:
.LBB2902:
	sub	r6, r6, r3, lsr #1
.LBE2902:
.LBE2943:
.LBE2947:
.LBE2951:
.LBE2955:
	.loc 5 697 0 discriminator 3
	mov	r0, fp
	mov	r3, r2
.LBB2956:
.LBB2952:
.LBB2948:
.LBB2944:
.LBB2903:
	.loc 2 33 0
	sub	r5, r9, r5, lsr #1
.LBE2903:
.LBE2944:
	.loc 1 104 0 discriminator 4
	str	lr, [sp, #144]
	str	ip, [sp, #152]
	str	r4, [sp, #140]
.LVL2173:
	str	r5, [sp, #148]
.LVL2174:
	str	r6, [sp, #156]
.LVL2175:
.LBE2948:
.LBE2952:
.LBE2956:
	.loc 5 697 0 discriminator 3
	bl	put_mpeg4_qpel8_v_lowpass(PLT)
.LVL2176:
	.loc 5 697 0 is_stmt 0 discriminator 4
	mov	r1, #8
	str	r1, [sp]
	str	r1, [sp, #4]
	str	r1, [sp, #8]
	ldr	r0, [sp, #20]
	mov	r2, fp
	ldr	r3, [sp, #16]
	add	r1, sp, #96
	bl	avg_pixels8_l2_8(PLT)
.LVL2177:
	.loc 5 697 0
	add	sp, sp, #308
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L291:
	.align	2
.L290:
	.word	-16843010
	.cfi_endproc
.LFE209:
	.size	avg_qpel8_mc13_c, .-avg_qpel8_mc13_c
	.align	2
	.type	avg_qpel8_mc33_c, %function
avg_qpel8_mc33_c:
.LFB211:
	.loc 5 697 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 288
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2178:
.LBB2966:
.LBB2967:
	.loc 6 64 0
	add	r3, r1, r2
.LBE2967:
.LBE2966:
	.loc 5 697 0
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
.LBB2973:
.LBB2968:
	.loc 6 64 0
	add	r7, r3, r2
.LBE2968:
.LBE2973:
	.loc 5 697 0
	mov	fp, r2
.LBB2974:
.LBB2969:
	.loc 6 61 0
	ldrb	lr, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #4]	@ zero_extendqisi2
.LVL2179:
	ldrb	r4, [r1, fp]	@ zero_extendqisi2
	ldrb	r10, [r3, #5]	@ zero_extendqisi2
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
	ldrb	r8, [r1]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #8
	ldrb	r9, [r1, #1]	@ zero_extendqisi2
	orr	r5, r4, r5, asl #8
	orr	ip, ip, r10, asl #8
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	orr	r8, r8, r9, asl #8
	ldrb	r9, [r7, #6]	@ zero_extendqisi2
	ldrb	r6, [r7, #1]	@ zero_extendqisi2
	orr	r4, r4, r10, asl #8
	orr	r2, r2, r9, asl #16
	ldrb	r10, [r3, #2]	@ zero_extendqisi2
	ldrb	r9, [r3, #6]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #8
	ldrb	r6, [r7, #2]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #16
	orr	ip, ip, r9, asl #16
	ldrb	r10, [r1, #2]	@ zero_extendqisi2
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #16
	ldrb	r6, [r7, #3]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #16
	orr	r8, r8, r10, asl #16
	ldrb	r9, [r3, #3]	@ zero_extendqisi2
	ldrb	r10, [r7, #7]	@ zero_extendqisi2
	orr	r6, lr, r6, asl #24
	ldrb	lr, [r3, #7]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #24
	orr	r5, r5, r9, asl #24
	ldrb	r10, [r1, #3]	@ zero_extendqisi2
	ldrb	r9, [r1, #7]	@ zero_extendqisi2
	orr	ip, ip, lr, asl #24
	.loc 6 64 0
	add	lr, r7, fp
.LBE2969:
.LBE2974:
	.loc 5 697 0
	sub	sp, sp, #308
	.cfi_def_cfa_offset 344
.LVL2180:
.LBB2975:
.LBB2970:
	.loc 6 61 0
	orr	r8, r8, r10, asl #24
	orr	r9, r4, r9, asl #24
	.loc 6 62 0
	ldrb	r10, [r1, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r4, lr, fp
	.loc 6 62 0
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
.LVL2181:
	.loc 6 61 0
	str	r6, [sp, #192]
	str	r5, [sp, #176]
	str	ip, [sp, #180]
	str	r8, [sp, #160]
	str	r9, [sp, #164]
	.loc 6 62 0
	strb	r10, [sp, #168]
.LVL2182:
	strb	r1, [sp, #184]
.LVL2183:
	.loc 6 61 0
	ldrb	r1, [r4, #4]	@ zero_extendqisi2
	ldrb	ip, [r4, #5]	@ zero_extendqisi2
	ldrb	r9, [lr, #1]	@ zero_extendqisi2
	ldrb	r8, [r4, #1]	@ zero_extendqisi2
	ldrb	r5, [r7, fp, asl #1]	@ zero_extendqisi2
	ldrb	r10, [lr, #5]	@ zero_extendqisi2
	str	r2, [sp, #196]
	ldrb	r2, [r3, fp, asl #1]	@ zero_extendqisi2
	ldrb	r3, [lr, #4]	@ zero_extendqisi2
	ldrb	r6, [lr, #2]	@ zero_extendqisi2
	orr	ip, r1, ip, asl #8
	ldrb	r1, [lr, #6]	@ zero_extendqisi2
	str	fp, [sp, #16]
	orr	r2, r2, r9, asl #8
	ldrb	fp, [lr, #3]	@ zero_extendqisi2
.LVL2184:
	ldrb	r9, [r4, #2]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #8
	orr	r3, r3, r10, asl #8
	ldrb	r8, [r4, #6]	@ zero_extendqisi2
	orr	r3, r3, r1, asl #16
	orr	r2, r2, r6, asl #16
	.loc 6 64 0
	ldr	r1, [sp, #16]
	.loc 6 61 0
	ldrb	r10, [r4, #3]	@ zero_extendqisi2
	orr	r6, r2, fp, asl #24
	orr	r5, r5, r9, asl #16
	.loc 6 64 0
	ldr	fp, [sp, #16]
	.loc 6 61 0
	ldrb	r9, [r4, #7]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	ldrb	r8, [lr, #7]	@ zero_extendqisi2
	.loc 6 64 0
	add	r1, r4, r1
	add	r2, r1, fp
	.loc 6 62 0
	ldrb	r7, [r7, #8]	@ zero_extendqisi2
.LVL2185:
	.loc 6 61 0
	orr	r5, r5, r10, asl #24
	orr	ip, ip, r9, asl #24
	orr	r10, r3, r8, asl #24
	.loc 6 62 0
	ldrb	r9, [r4, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r3, r2, fp
	.loc 6 62 0
	ldrb	r8, [lr, #8]	@ zero_extendqisi2
	.loc 6 61 0
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	str	r6, [sp, #208]
	.loc 6 62 0
	strb	r7, [sp, #200]
.LVL2186:
	.loc 6 61 0
	ldrb	r6, [r1, #1]	@ zero_extendqisi2
	ldrb	r7, [r1, #5]	@ zero_extendqisi2
	str	r5, [sp, #224]
	str	ip, [sp, #228]
	ldrb	r5, [r1, #2]	@ zero_extendqisi2
	str	r10, [sp, #212]
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r9, [sp, #232]
	.loc 6 61 0
	ldr	r9, [sp, #16]
	orr	ip, ip, r7, asl #8
	ldrb	lr, [lr, r9, asl #1]	@ zero_extendqisi2
.LVL2187:
	ldrb	r4, [r4, r9, asl #1]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #8
	ldr	r6, [sp, #16]
	ldrb	r9, [r3, #1]	@ zero_extendqisi2
	ldrb	r7, [r1, r6, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r2, #1]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r8, [sp, #216]
.LVL2188:
	.loc 6 61 0
	orr	r7, r7, r9, asl #8
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	r9, [r3, #5]	@ zero_extendqisi2
	orr	r6, r4, r6, asl #8
	ldrb	r4, [r3, #4]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r9, r4, r9, asl #8
	ldrb	r8, [r2, #5]	@ zero_extendqisi2
	ldrb	r4, [r2, #4]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #16
	orr	r8, r4, r8, asl #8
	ldrb	r4, [r2, #2]	@ zero_extendqisi2
	ldrb	r5, [r3, #2]	@ zero_extendqisi2
	orr	r6, r6, r4, asl #16
	ldrb	r4, [r2, #6]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	orr	r7, r7, r5, asl #16
	orr	r4, r8, r4, asl #16
	ldrb	r5, [r3, #6]	@ zero_extendqisi2
	ldrb	r8, [r3, #3]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	orr	ip, ip, r10, asl #24
	ldrb	fp, [r3, #7]	@ zero_extendqisi2
	.loc 6 64 0
	ldr	r10, [sp, #16]
	.loc 6 61 0
	orr	r7, r7, r8, asl #24
	orr	r5, r9, r5, asl #16
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	ldrb	r9, [r2, #3]	@ zero_extendqisi2
	.loc 6 62 0
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
.LVL2189:
	.loc 6 61 0
	orr	r6, r6, r9, asl #24
	orr	r5, r5, fp, asl #24
	orr	r4, r4, r8, asl #24
	.loc 6 62 0
	ldrb	r9, [r3, #8]	@ zero_extendqisi2
	.loc 6 64 0
	add	r3, r3, r10
	.loc 6 62 0
	ldrb	r8, [r2, #8]	@ zero_extendqisi2
	.loc 6 61 0
	str	lr, [sp, #240]
	str	ip, [sp, #244]
	.loc 6 62 0
	strb	r1, [sp, #248]
.LVL2190:
	.loc 6 61 0
	str	r7, [sp, #272]
	str	r6, [sp, #256]
	str	r5, [sp, #276]
	str	r4, [sp, #260]
	.loc 6 62 0
	strb	r9, [sp, #280]
	.loc 6 61 0
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	r4, [r2, r10, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r3, #2]	@ zero_extendqisi2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
.LVL2191:
	ldrb	r7, [r3, #3]	@ zero_extendqisi2
	ldrb	ip, [r3, #6]	@ zero_extendqisi2
	orr	r4, r4, r5, asl #8
	ldrb	r6, [r3, #7]	@ zero_extendqisi2
	orr	r2, r1, r2, asl #8
	orr	r1, r4, lr, asl #16
	orr	lr, r1, r7, asl #24
	orr	r2, r2, ip, asl #16
.LBE2970:
.LBE2975:
	.loc 5 697 0 discriminator 1
	add	r7, sp, #88
	mov	r5, #9
.LBB2976:
.LBB2971:
	.loc 6 61 0
	orr	ip, r2, r6, asl #24
	.loc 6 62 0
	ldrb	r4, [r3, #8]	@ zero_extendqisi2
.LBE2971:
.LBE2976:
	.loc 5 697 0
	str	r0, [sp, #20]
	.loc 5 697 0 is_stmt 0 discriminator 1
	str	r5, [sp]
	mov	r0, r7
.LVL2192:
	add	r1, sp, #160
	mov	r2, #8
	mov	r3, #16
.LBB2977:
.LBB2972:
	.loc 6 62 0 is_stmt 1
	strb	r8, [sp, #264]
.LVL2193:
	.loc 6 61 0
	str	lr, [sp, #288]
	str	ip, [sp, #292]
	.loc 6 62 0
	strb	r4, [sp, #296]
.LVL2194:
.LBE2972:
.LBE2977:
	.loc 5 697 0 discriminator 1
	bl	put_mpeg4_qpel8_h_lowpass(PLT)
.LVL2195:
.LBB2978:
.LBB2979:
.LBB2980:
	.loc 1 104 0 discriminator 4
	ldrb	r10, [sp, #168]	@ zero_extendqisi2
	ldrb	r5, [sp, #200]	@ zero_extendqisi2
	ldr	r1, [sp, #164]
	ldrb	r6, [sp, #184]	@ zero_extendqisi2
	ldrb	r3, [sp, #164]	@ zero_extendqisi2
	ldrb	r2, [sp, #196]	@ zero_extendqisi2
	mov	ip, r5, asl #24
	mov	r9, r10, asl #24
	ldr	r5, [sp, #180]
	orr	r10, r9, r1, lsr #8
	ldr	fp, [sp, #160]
	ldr	r1, [sp, #192]
	mov	r6, r6, asl #24
	ldr	r0, [sp, #88]
.LVL2196:
	ldrb	lr, [sp, #216]	@ zero_extendqisi2
	orr	r6, r6, r5, lsr #8
	mov	r3, r3, asl #24
	ldr	r5, [sp, #196]
	mov	r2, r2, asl #24
	orr	r3, r3, fp, lsr #8
.LVL2197:
	orr	r2, r2, r1, lsr #8
	ldr	r1, [sp, #212]
	orr	r5, ip, r5, lsr #8
	ldrb	r4, [sp, #212]	@ zero_extendqisi2
.LBB2981:
.LBB2982:
	.loc 2 33 0
	eor	ip, r3, r0
.LBE2982:
.LBE2981:
	.loc 1 104 0 discriminator 4
	mov	lr, lr, asl #24
.LBB3009:
.LBB2983:
	.loc 2 33 0
	orr	r0, r3, r0
.LVL2198:
	ldr	r3, .L294
.LVL2199:
.LBE2983:
.LBE3009:
	.loc 1 104 0 discriminator 4
	ldr	r9, [sp, #208]
	orr	lr, lr, r1, lsr #8
	ldr	r1, [sp, #92]
.LVL2200:
.LBB3010:
.LBB2984:
	.loc 2 33 0
	and	ip, ip, r3
.LBE2984:
.LBE3010:
	.loc 1 104 0 discriminator 4
	mov	r4, r4, asl #24
	orr	r4, r4, r9, lsr #8
.LBB3011:
.LBB2985:
	.loc 2 33 0
	sub	r0, r0, ip, lsr #1
.LBE2985:
.LBE3011:
.LBB3012:
.LBB3013:
	eor	r9, r10, r1
.LBE3013:
.LBE3012:
	.loc 1 104 0 discriminator 4
	ldrb	r8, [sp, #180]	@ zero_extendqisi2
	str	r0, [sp, #88]
.LVL2201:
.LBB3041:
.LBB3014:
	.loc 2 33 0
	orr	r1, r10, r1
.LVL2202:
	and	r0, r9, r3
.LBE3014:
.LBE3041:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #176]
.LVL2203:
.LBB3042:
.LBB3015:
	.loc 2 33 0
	sub	r9, r1, r0, lsr #1
.LBE3015:
.LBE3042:
	.loc 1 104 0 discriminator 4
	str	r9, [sp, #92]
.LVL2204:
	mov	r8, r8, asl #24
.LBB3043:
.LBB2986:
	.loc 2 33 0
	ldr	r9, [sp, #96]
	ldr	r10, [sp, #96]
.LVL2205:
.LBE2986:
.LBE3043:
	.loc 1 104 0 discriminator 4
	orr	r8, r8, fp, lsr #8
.LVL2206:
.LBB3044:
.LBB2987:
	.loc 2 33 0
	eor	r9, r8, r9
	and	r9, r9, r3
	orr	r8, r8, r10
.LVL2207:
	sub	r8, r8, r9, lsr #1
.LBE2987:
.LBE3044:
	.loc 1 104 0 discriminator 4
	str	r8, [sp, #96]
.LVL2208:
.LBB3045:
.LBB3016:
	.loc 2 33 0
	ldr	r8, [sp, #100]
	ldr	r9, [sp, #100]
.LBE3016:
.LBE3045:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #104]
.LVL2209:
	ldr	ip, [sp, #108]
	ldr	r0, [sp, #112]
	ldr	r1, [sp, #116]
.LBB3046:
.LBB3017:
	.loc 2 33 0
	eor	r8, r6, r8
	and	r8, r8, r3
	orr	r6, r6, r9
.LVL2210:
	sub	r8, r6, r8, lsr #1
	eor	r9, r5, ip
.LBE3017:
.LBE3046:
.LBB3047:
.LBB2988:
	eor	r6, r2, fp
	eor	r10, r4, r0
.LVL2211:
	orr	r0, r4, r0
.LBE2988:
.LBE3047:
.LBB3048:
.LBB3018:
	eor	r4, lr, r1
.LBE3018:
.LBE3048:
.LBB3049:
.LBB2989:
	and	r6, r6, r3
.LBE2989:
.LBE3049:
.LBB3050:
.LBB3019:
	and	r9, r9, r3
.LBE3019:
.LBE3050:
.LBB3051:
.LBB2990:
	and	r10, r10, r3
.LBE2990:
.LBE3051:
.LBB3052:
.LBB3020:
	and	r4, r4, r3
.LBE3020:
.LBE3052:
.LBB3053:
.LBB2991:
	orr	r2, r2, fp
.LBE2991:
.LBE3053:
.LBB3054:
.LBB3021:
	orr	ip, r5, ip
	orr	r1, lr, r1
.LBE3021:
.LBE3054:
.LBB3055:
.LBB2992:
	sub	r2, r2, r6, lsr #1
.LBE2992:
.LBE3055:
.LBB3056:
.LBB3022:
	sub	ip, ip, r9, lsr #1
.LBE3022:
.LBE3056:
.LBB3057:
.LBB2993:
	sub	r0, r0, r10, lsr #1
.LBE2993:
.LBE3057:
.LBB3058:
.LBB3023:
	sub	r1, r1, r4, lsr #1
.LBE3023:
.LBE3058:
	.loc 1 104 0 discriminator 4
	str	r8, [sp, #100]
.LVL2212:
	str	r2, [sp, #104]
	str	ip, [sp, #108]
.LVL2213:
	str	r0, [sp, #112]
	str	r1, [sp, #116]
.LVL2214:
	ldrb	lr, [sp, #228]	@ zero_extendqisi2
.LVL2215:
	ldr	ip, [sp, #224]
	ldrb	fp, [sp, #232]	@ zero_extendqisi2
	mov	lr, lr, asl #24
	orr	lr, lr, ip, lsr #8
	ldr	ip, [sp, #228]
	ldrb	r0, [sp, #248]	@ zero_extendqisi2
	mov	fp, fp, asl #24
	orr	fp, fp, ip, lsr #8
	ldr	ip, [sp, #244]
	ldrb	r2, [sp, #260]	@ zero_extendqisi2
	mov	r0, r0, asl #24
	orr	r0, r0, ip, lsr #8
	ldr	ip, [sp, #256]
	ldrb	r6, [sp, #276]	@ zero_extendqisi2
	mov	r2, r2, asl #24
	ldr	r4, [sp, #120]
.LVL2216:
	orr	r2, r2, ip, lsr #8
	ldr	ip, [sp, #272]
	mov	r6, r6, asl #24
	orr	r6, r6, ip, lsr #8
	ldrb	r9, [sp, #244]	@ zero_extendqisi2
	ldr	ip, [sp, #124]
.LVL2217:
.LBB3059:
.LBB2994:
	.loc 2 33 0
	eor	r10, lr, r4
.LBE2994:
.LBE3059:
	.loc 1 104 0 discriminator 4
	ldr	r8, [sp, #240]
.LBB3060:
.LBB2995:
	.loc 2 33 0
	and	r10, r10, r3
	orr	lr, lr, r4
.LVL2218:
	sub	lr, lr, r10, lsr #1
.LBE2995:
.LBE3060:
	.loc 1 104 0 discriminator 4
	mov	r9, r9, asl #24
.LBB3061:
.LBB3024:
	.loc 2 33 0
	eor	r10, fp, ip
.LBE3024:
.LBE3061:
	.loc 1 104 0 discriminator 4
	orr	r9, r9, r8, lsr #8
	str	lr, [sp, #120]
	ldr	r8, [sp, #128]
.LBB3062:
.LBB3025:
	.loc 2 33 0
	and	lr, r10, r3
	orr	ip, fp, ip
.LVL2219:
	sub	r10, ip, lr, lsr #1
.LBE3025:
.LBE3062:
	.loc 1 104 0 discriminator 4
	ldrb	r1, [sp, #264]	@ zero_extendqisi2
	str	r10, [sp, #124]
.LVL2220:
.LBB3063:
.LBB2996:
	.loc 2 33 0
	eor	r10, r9, r8
.LBE2996:
.LBE3063:
	.loc 1 104 0 discriminator 4
	ldr	r4, [sp, #260]
.LBB3064:
.LBB2997:
	.loc 2 33 0
	and	r10, r10, r3
	orr	r8, r9, r8
.LVL2221:
.LBE2997:
.LBE3064:
	.loc 1 104 0 discriminator 4
	ldrb	r5, [sp, #280]	@ zero_extendqisi2
.LBB3065:
.LBB2998:
	.loc 2 33 0
	sub	r8, r8, r10, lsr #1
.LBE2998:
.LBE3065:
	.loc 1 104 0 discriminator 4
	mov	r1, r1, asl #24
.LBB3066:
.LBB3026:
	.loc 2 33 0
	ldr	r9, [sp, #132]
.LVL2222:
.LBE3026:
.LBE3066:
	.loc 1 104 0 discriminator 4
	orr	r1, r1, r4, lsr #8
	str	r8, [sp, #128]
.LVL2223:
	ldr	r4, [sp, #276]
.LBB3067:
.LBB3027:
	.loc 2 33 0
	ldr	r8, [sp, #132]
.LBE3027:
.LBE3067:
	.loc 1 104 0 discriminator 4
	mov	r5, r5, asl #24
	ldr	lr, [sp, #144]
	ldr	ip, [sp, #148]
	orr	r5, r5, r4, lsr #8
.LBB3068:
.LBB3028:
	.loc 2 33 0
	eor	r8, r0, r8
.LBE3028:
.LBE3068:
	.loc 1 104 0 discriminator 4
	ldr	r4, [sp, #140]
.LBB3069:
.LBB3029:
	.loc 2 33 0
	orr	r0, r0, r9
.LVL2224:
.LBE3029:
.LBE3069:
.LBB3070:
.LBB2999:
	ldr	r9, [sp, #136]
.LBE2999:
.LBE3070:
.LBB3071:
.LBB3030:
	and	r8, r8, r3
	sub	r8, r0, r8, lsr #1
.LBE3030:
.LBE3071:
.LBB3072:
.LBB3000:
	eor	r10, r6, lr
	eor	r0, r2, r9
.LBE3000:
.LBE3072:
.LBB3073:
.LBB3031:
	eor	fp, r5, ip
.LBE3031:
.LBE3073:
.LBB3074:
.LBB3001:
	orr	r2, r2, r9
.LBE3001:
.LBE3074:
.LBB3075:
.LBB3032:
	eor	r9, r1, r4
.LBE3032:
.LBE3075:
.LBB3076:
.LBB3002:
	and	r0, r0, r3
.LBE3002:
.LBE3076:
.LBB3077:
.LBB3033:
	and	r9, r9, r3
.LBE3033:
.LBE3077:
.LBB3078:
.LBB3003:
	and	r10, r10, r3
.LBE3003:
.LBE3078:
.LBB3079:
.LBB3034:
	and	fp, fp, r3
	orr	r4, r1, r4
.LBE3034:
.LBE3079:
.LBB3080:
.LBB3004:
	orr	lr, r6, lr
.LBE3004:
.LBE3080:
.LBB3081:
.LBB3035:
	orr	ip, r5, ip
.LBE3035:
.LBE3081:
.LBB3082:
.LBB3005:
	sub	r2, r2, r0, lsr #1
.LBE3005:
.LBE3082:
.LBB3083:
.LBB3036:
	sub	r4, r4, r9, lsr #1
.LBE3036:
.LBE3083:
.LBB3084:
.LBB3006:
	sub	lr, lr, r10, lsr #1
.LBE3006:
.LBE3084:
.LBB3085:
.LBB3037:
	sub	ip, ip, fp, lsr #1
.LBE3037:
.LBE3085:
	.loc 1 104 0 discriminator 4
	str	r2, [sp, #136]
	str	r4, [sp, #140]
	str	lr, [sp, #144]
	str	ip, [sp, #148]
	str	r8, [sp, #132]
.LVL2225:
	ldr	r1, [sp, #152]
.LVL2226:
	ldrb	r0, [sp, #292]	@ zero_extendqisi2
	ldrb	ip, [sp, #296]	@ zero_extendqisi2
	ldr	lr, [sp, #288]
	ldr	r4, [sp, #292]
	ldr	r2, [sp, #156]
	mov	r0, r0, asl #24
	mov	ip, ip, asl #24
	orr	r0, r0, lr, lsr #8
.LVL2227:
	orr	ip, ip, r4, lsr #8
.LVL2228:
.LBB3086:
.LBB3038:
	.loc 2 33 0
	eor	r4, ip, r2
.LBE3038:
.LBE3086:
.LBB3087:
.LBB3007:
	eor	lr, r0, r1
	and	lr, lr, r3
	orr	r0, r0, r1
.LVL2229:
.LBE3007:
.LBE3087:
.LBB3088:
.LBB3039:
	and	r3, r3, r4
	orr	ip, ip, r2
.LVL2230:
.LBE3039:
.LBE3088:
.LBE2980:
.LBE2979:
.LBE2978:
	.loc 5 697 0 discriminator 3
	add	r4, sp, #24
	mov	r2, #8
.LVL2231:
.LBB3095:
.LBB3093:
.LBB3091:
.LBB3089:
.LBB3008:
	.loc 2 33 0
	sub	lr, r0, lr, lsr #1
.LBE3008:
.LBE3089:
.LBB3090:
.LBB3040:
	sub	ip, ip, r3, lsr #1
.LBE3040:
.LBE3090:
.LBE3091:
.LBE3093:
.LBE3095:
	.loc 5 697 0 discriminator 3
	mov	r1, r7
.LVL2232:
	mov	r0, r4
	mov	r3, r2
.LBB3096:
.LBB3094:
.LBB3092:
	.loc 1 104 0 discriminator 4
	str	lr, [sp, #152]
.LVL2233:
	str	ip, [sp, #156]
.LVL2234:
.LBE3092:
.LBE3094:
.LBE3096:
	.loc 5 697 0 discriminator 3
	bl	put_mpeg4_qpel8_v_lowpass(PLT)
.LVL2235:
	.loc 5 697 0 is_stmt 0 discriminator 4
	mov	r1, #8
	str	r1, [sp]
	str	r1, [sp, #4]
	str	r1, [sp, #8]
	ldr	r0, [sp, #20]
	mov	r2, r4
	ldr	r3, [sp, #16]
	add	r1, sp, #96
	bl	avg_pixels8_l2_8(PLT)
.LVL2236:
	.loc 5 697 0
	add	sp, sp, #308
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2237:
.L295:
	.align	2
.L294:
	.word	-16843010
	.cfi_endproc
.LFE211:
	.size	avg_qpel8_mc33_c, .-avg_qpel8_mc33_c
	.align	2
	.type	avg_qpel8_mc30_c, %function
avg_qpel8_mc30_c:
.LFB200:
	.loc 5 697 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2238:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	mov	r6, r2
	sub	sp, sp, #72
	.cfi_def_cfa_offset 96
	.loc 5 697 0
	mov	r2, #8
.LVL2239:
	mov	r4, r0
	mov	r5, r1
	add	r0, sp, r2
.LVL2240:
	mov	r3, r6
	str	r2, [sp]
	bl	put_mpeg4_qpel8_h_lowpass(PLT)
.LVL2241:
.LBB3108:
.LBB3109:
.LBB3110:
	.loc 1 103 0 discriminator 6
	ldrb	r0, [r5, #1]	@ zero_extendqisi2
	ldrb	r1, [r5, #2]	@ zero_extendqisi2
	ldrb	r2, [r5, #3]	@ zero_extendqisi2
	ldrb	r3, [r5, #4]	@ zero_extendqisi2
	orr	r1, r0, r1, asl #8
	orr	r1, r1, r2, asl #16
	ldr	r0, [sp, #8]
.LBB3111:
.LBB3112:
	.loc 2 33 0
	ldr	ip, .L298
.LBE3112:
.LBE3111:
	.loc 1 103 0 discriminator 6
	orr	r2, r1, r3, asl #24
.LBB3129:
.LBB3113:
	.loc 2 33 0
	eor	r3, r0, r2
.LBE3113:
.LBE3129:
	.loc 1 103 0 discriminator 6
	ldr	r1, [r4]
.LBB3130:
.LBB3114:
	.loc 2 33 0
	orr	r2, r0, r2
	and	r3, r3, ip
	sub	r3, r2, r3, lsr #1
.LBE3114:
.LBE3130:
.LBB3131:
.LBB3132:
	eor	r2, r3, r1
	and	r2, r2, ip
	orr	r3, r3, r1
	sub	r3, r3, r2, lsr #1
.LBE3132:
.LBE3131:
	.loc 1 103 0 discriminator 6
	str	r3, [r4]
	ldrb	r1, [r5, #5]	@ zero_extendqisi2
	ldrb	r0, [r5, #6]	@ zero_extendqisi2
	ldrb	r2, [r5, #7]	@ zero_extendqisi2
	ldrb	r3, [r5, #8]	@ zero_extendqisi2
	orr	r0, r1, r0, asl #8
	orr	r0, r0, r2, asl #16
	ldr	r1, [sp, #12]
	orr	r2, r0, r3, asl #24
.LBB3147:
.LBB3148:
	.loc 2 33 0
	eor	r3, r1, r2
.LBE3148:
.LBE3147:
	.loc 1 103 0 discriminator 6
	ldr	r0, [r4, #4]
.LBB3164:
.LBB3149:
	.loc 2 33 0
	orr	r2, r1, r2
	and	r3, r3, ip
	sub	r3, r2, r3, lsr #1
.LBE3149:
.LBE3164:
.LBB3165:
.LBB3166:
	eor	r2, r3, r0
.LBE3166:
.LBE3165:
.LBE3110:
.LBE3109:
.LBE3108:
	.loc 5 697 0
	add	r1, r5, #1
.LVL2242:
.LBB3243:
.LBB3242:
.LBB3241:
.LBB3183:
.LBB3167:
	.loc 2 33 0
	orr	r3, r3, r0
.LVL2243:
	and	r0, r2, ip
.LVL2244:
.LBE3167:
.LBE3183:
	.loc 1 103 0 discriminator 6
	mov	r5, r1
.LVL2245:
.LBB3184:
.LBB3168:
	.loc 2 33 0
	sub	r3, r3, r0, lsr #1
.LBE3168:
.LBE3184:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, #4]
.LVL2246:
	ldrb	lr, [r5, r6]!	@ zero_extendqisi2
	ldr	r3, [sp, #16]
	ldrb	r0, [r5, #1]	@ zero_extendqisi2
	ldrb	r2, [r5, #2]	@ zero_extendqisi2
	orr	r0, lr, r0, asl #8
	ldrb	lr, [r5, #3]	@ zero_extendqisi2
	orr	r0, r0, r2, asl #16
	orr	r2, r0, lr, asl #24
.LVL2247:
.LBB3185:
.LBB3115:
	.loc 2 33 0
	eor	r0, r3, r2
.LBE3115:
.LBE3185:
	.loc 1 103 0 discriminator 6
	ldr	lr, [r4, r6]
.LVL2248:
.LBB3186:
.LBB3116:
	.loc 2 33 0
	and	r0, r0, ip
	orr	r2, r3, r2
.LVL2249:
	sub	r3, r2, r0, lsr #1
.LVL2250:
.LBE3116:
.LBE3186:
.LBB3187:
.LBB3133:
	eor	r2, lr, r3
	and	r2, r2, ip
	orr	r3, lr, r3
.LVL2251:
.LBE3133:
.LBE3187:
	.loc 1 103 0 discriminator 6
	mov	r7, r1
	add	r5, r6, #4
.LVL2252:
.LBB3188:
.LBB3134:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE3134:
.LBE3188:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, r6]
.LVL2253:
	ldrb	lr, [r7, r5]!	@ zero_extendqisi2
.LVL2254:
	ldr	r3, [sp, #20]
	ldrb	r0, [r7, #1]	@ zero_extendqisi2
	ldrb	r2, [r7, #2]	@ zero_extendqisi2
	orr	r0, lr, r0, asl #8
	ldrb	lr, [r7, #3]	@ zero_extendqisi2
	orr	r0, r0, r2, asl #16
	orr	r2, r0, lr, asl #24
.LVL2255:
.LBB3189:
.LBB3150:
	.loc 2 33 0
	eor	r0, r3, r2
.LBE3150:
.LBE3189:
	.loc 1 103 0 discriminator 6
	ldr	lr, [r4, r5]
.LVL2256:
.LBB3190:
.LBB3151:
	.loc 2 33 0
	and	r0, r0, ip
	orr	r2, r3, r2
.LVL2257:
	sub	r3, r2, r0, lsr #1
.LVL2258:
.LBE3151:
.LBE3190:
.LBB3191:
.LBB3169:
	eor	r2, lr, r3
.LBE3169:
.LBE3191:
	.loc 1 103 0 discriminator 6
	mov	r0, r6, asl #1
.LBB3192:
.LBB3170:
	.loc 2 33 0
	and	r2, r2, ip
	orr	r3, lr, r3
.LVL2259:
.LBE3170:
.LBE3192:
	.loc 1 103 0 discriminator 6
	add	r7, r1, r0
.LVL2260:
.LBB3193:
.LBB3171:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE3171:
.LBE3193:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, r5]
.LVL2261:
	ldrb	r5, [r1, r6, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r7, #1]	@ zero_extendqisi2
.LVL2262:
	ldrb	r2, [r7, #2]	@ zero_extendqisi2
	orr	lr, r5, lr, asl #8
	ldrb	r5, [r7, #3]	@ zero_extendqisi2
	ldr	r3, [sp, #24]
	orr	lr, lr, r2, asl #16
	orr	r2, lr, r5, asl #24
.LVL2263:
.LBB3194:
.LBB3117:
	.loc 2 33 0
	eor	lr, r3, r2
.LBE3117:
.LBE3194:
	.loc 1 103 0 discriminator 6
	ldr	r5, [r4, r6, asl #1]
.LVL2264:
.LBB3195:
.LBB3118:
	.loc 2 33 0
	and	lr, lr, ip
	orr	r2, r3, r2
.LVL2265:
	sub	r3, r2, lr, lsr #1
.LVL2266:
.LBE3118:
.LBE3195:
.LBB3196:
.LBB3135:
	eor	r2, r5, r3
	and	r2, r2, ip
	orr	r3, r5, r3
.LVL2267:
.LBE3135:
.LBE3196:
	.loc 1 103 0 discriminator 6
	mov	r8, r1
	add	r7, r0, #4
.LVL2268:
.LBB3197:
.LBB3136:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE3136:
.LBE3197:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, r6, asl #1]
.LVL2269:
	ldrb	r5, [r8, r7]!	@ zero_extendqisi2
.LVL2270:
	ldr	r3, [sp, #28]
	ldrb	lr, [r8, #1]	@ zero_extendqisi2
	ldrb	r2, [r8, #2]	@ zero_extendqisi2
	orr	lr, r5, lr, asl #8
	ldrb	r5, [r8, #3]	@ zero_extendqisi2
	orr	lr, lr, r2, asl #16
	orr	r2, lr, r5, asl #24
.LVL2271:
.LBB3198:
.LBB3152:
	.loc 2 33 0
	eor	lr, r3, r2
.LBE3152:
.LBE3198:
	.loc 1 103 0 discriminator 6
	ldr	r5, [r4, r7]
.LVL2272:
.LBB3199:
.LBB3153:
	.loc 2 33 0
	and	lr, lr, ip
	orr	r2, r3, r2
.LVL2273:
	sub	r3, r2, lr, lsr #1
.LVL2274:
.LBE3153:
.LBE3199:
.LBB3200:
.LBB3172:
	eor	r2, r5, r3
	and	r2, r2, ip
	orr	r3, r5, r3
.LVL2275:
.LBE3172:
.LBE3200:
	.loc 1 103 0 discriminator 6
	mov	r8, r1
.LVL2276:
	add	r0, r0, r6
.LBB3201:
.LBB3173:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE3173:
.LBE3201:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, r7]
.LVL2277:
	ldrb	r5, [r8, r0]!	@ zero_extendqisi2
.LVL2278:
	ldr	r3, [sp, #32]
	ldrb	lr, [r8, #1]	@ zero_extendqisi2
	ldrb	r2, [r8, #2]	@ zero_extendqisi2
	orr	lr, r5, lr, asl #8
	ldrb	r5, [r8, #3]	@ zero_extendqisi2
	orr	lr, lr, r2, asl #16
	orr	r2, lr, r5, asl #24
.LVL2279:
.LBB3202:
.LBB3119:
	.loc 2 33 0
	eor	lr, r3, r2
.LBE3119:
.LBE3202:
	.loc 1 103 0 discriminator 6
	ldr	r5, [r4, r0]
.LVL2280:
.LBB3203:
.LBB3120:
	.loc 2 33 0
	and	lr, lr, ip
	orr	r2, r3, r2
.LVL2281:
	sub	r3, r2, lr, lsr #1
.LVL2282:
.LBE3120:
.LBE3203:
.LBB3204:
.LBB3137:
	eor	r2, r5, r3
	and	r2, r2, ip
	orr	r3, r5, r3
.LVL2283:
.LBE3137:
.LBE3204:
	.loc 1 103 0 discriminator 6
	mov	r8, r1
.LVL2284:
	add	r7, r0, #4
.LBB3205:
.LBB3138:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE3138:
.LBE3205:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, r0]
.LVL2285:
	ldrb	r5, [r8, r7]!	@ zero_extendqisi2
.LVL2286:
	ldr	r3, [sp, #36]
	ldrb	lr, [r8, #1]	@ zero_extendqisi2
	ldrb	r2, [r8, #2]	@ zero_extendqisi2
	orr	lr, r5, lr, asl #8
	ldrb	r5, [r8, #3]	@ zero_extendqisi2
	orr	lr, lr, r2, asl #16
	orr	r2, lr, r5, asl #24
.LVL2287:
.LBB3206:
.LBB3154:
	.loc 2 33 0
	eor	lr, r3, r2
.LBE3154:
.LBE3206:
	.loc 1 103 0 discriminator 6
	ldr	r5, [r4, r7]
.LVL2288:
.LBB3207:
.LBB3155:
	.loc 2 33 0
	and	lr, lr, ip
	orr	r2, r3, r2
.LVL2289:
	sub	r3, r2, lr, lsr #1
.LVL2290:
.LBE3155:
.LBE3207:
.LBB3208:
.LBB3174:
	eor	r2, r5, r3
	and	r2, r2, ip
	orr	r3, r5, r3
.LVL2291:
.LBE3174:
.LBE3208:
	.loc 1 103 0 discriminator 6
	mov	r8, r1
.LVL2292:
	add	r0, r0, r6
.LBB3209:
.LBB3175:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE3175:
.LBE3209:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, r7]
.LVL2293:
	ldrb	r5, [r8, r0]!	@ zero_extendqisi2
.LVL2294:
	ldr	r3, [sp, #40]
	ldrb	lr, [r8, #1]	@ zero_extendqisi2
	ldrb	r2, [r8, #2]	@ zero_extendqisi2
	orr	lr, r5, lr, asl #8
	ldrb	r5, [r8, #3]	@ zero_extendqisi2
	orr	lr, lr, r2, asl #16
	orr	r2, lr, r5, asl #24
.LVL2295:
.LBB3210:
.LBB3121:
	.loc 2 33 0
	eor	lr, r3, r2
.LBE3121:
.LBE3210:
	.loc 1 103 0 discriminator 6
	ldr	r5, [r4, r0]
.LVL2296:
.LBB3211:
.LBB3122:
	.loc 2 33 0
	and	lr, lr, ip
	orr	r2, r3, r2
.LVL2297:
	sub	r3, r2, lr, lsr #1
.LVL2298:
.LBE3122:
.LBE3211:
.LBB3212:
.LBB3139:
	eor	r2, r5, r3
	and	r2, r2, ip
	orr	r3, r5, r3
.LVL2299:
.LBE3139:
.LBE3212:
	.loc 1 103 0 discriminator 6
	mov	r8, r1
.LVL2300:
	add	r7, r0, #4
.LBB3213:
.LBB3140:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE3140:
.LBE3213:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, r0]
.LVL2301:
	ldrb	r5, [r8, r7]!	@ zero_extendqisi2
.LVL2302:
	add	r0, r0, r6
	ldrb	lr, [r8, #1]	@ zero_extendqisi2
	ldrb	r2, [r8, #2]	@ zero_extendqisi2
	orr	lr, r5, lr, asl #8
	ldrb	r5, [r8, #3]	@ zero_extendqisi2
	orr	lr, lr, r2, asl #16
	ldr	r3, [sp, #44]
	orr	r2, lr, r5, asl #24
.LVL2303:
.LBB3214:
.LBB3156:
	.loc 2 33 0
	eor	lr, r3, r2
.LBE3156:
.LBE3214:
	.loc 1 103 0 discriminator 6
	ldr	r5, [r4, r7]
.LVL2304:
.LBB3215:
.LBB3157:
	.loc 2 33 0
	and	lr, lr, ip
	orr	r2, r3, r2
.LVL2305:
	sub	r3, r2, lr, lsr #1
.LVL2306:
.LBE3157:
.LBE3215:
.LBB3216:
.LBB3176:
	eor	r2, r5, r3
	and	r2, r2, ip
	orr	r3, r5, r3
.LVL2307:
.LBE3176:
.LBE3216:
	.loc 1 103 0 discriminator 6
	mov	r8, r1
.LVL2308:
.LBB3217:
.LBB3177:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE3177:
.LBE3217:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, r7]
.LVL2309:
	ldrb	r5, [r8, r0]!	@ zero_extendqisi2
.LVL2310:
	ldr	r3, [sp, #48]
	ldrb	lr, [r8, #1]	@ zero_extendqisi2
	ldrb	r2, [r8, #2]	@ zero_extendqisi2
	orr	lr, r5, lr, asl #8
	ldrb	r5, [r8, #3]	@ zero_extendqisi2
	orr	lr, lr, r2, asl #16
	orr	r2, lr, r5, asl #24
.LVL2311:
.LBB3218:
.LBB3123:
	.loc 2 33 0
	eor	lr, r3, r2
.LBE3123:
.LBE3218:
	.loc 1 103 0 discriminator 6
	ldr	r5, [r4, r0]
.LVL2312:
.LBB3219:
.LBB3124:
	.loc 2 33 0
	and	lr, lr, ip
	orr	r2, r3, r2
.LVL2313:
	sub	r3, r2, lr, lsr #1
.LVL2314:
.LBE3124:
.LBE3219:
.LBB3220:
.LBB3141:
	eor	r2, r5, r3
	and	r2, r2, ip
	orr	r3, r5, r3
.LVL2315:
.LBE3141:
.LBE3220:
	.loc 1 103 0 discriminator 6
	mov	r8, r1
.LVL2316:
	add	r5, r0, #4
.LVL2317:
.LBB3221:
.LBB3142:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE3142:
.LBE3221:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, r0]
.LVL2318:
	ldrb	r7, [r8, r5]!	@ zero_extendqisi2
	ldr	r3, [sp, #52]
	ldrb	lr, [r8, #1]	@ zero_extendqisi2
	ldrb	r2, [r8, #2]	@ zero_extendqisi2
	orr	lr, r7, lr, asl #8
	ldrb	r7, [r8, #3]	@ zero_extendqisi2
	orr	lr, lr, r2, asl #16
	orr	r2, lr, r7, asl #24
.LVL2319:
.LBB3222:
.LBB3158:
	.loc 2 33 0
	eor	lr, r3, r2
.LBE3158:
.LBE3222:
	.loc 1 103 0 discriminator 6
	ldr	r7, [r4, r5]
.LVL2320:
.LBB3223:
.LBB3159:
	.loc 2 33 0
	and	lr, lr, ip
	orr	r2, r3, r2
.LVL2321:
	sub	r3, r2, lr, lsr #1
.LVL2322:
.LBE3159:
.LBE3223:
.LBB3224:
.LBB3178:
	eor	r2, r7, r3
	and	r2, r2, ip
	orr	r3, r7, r3
.LVL2323:
.LBE3178:
.LBE3224:
	.loc 1 103 0 discriminator 6
	add	r0, r0, r6
	mov	r7, r1
.LVL2324:
.LBB3225:
.LBB3179:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE3179:
.LBE3225:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, r5]
.LVL2325:
	ldrb	r5, [r7, r0]!	@ zero_extendqisi2
	ldr	r3, [sp, #56]
	ldrb	lr, [r7, #1]	@ zero_extendqisi2
	ldrb	r2, [r7, #2]	@ zero_extendqisi2
	orr	lr, r5, lr, asl #8
	ldrb	r5, [r7, #3]	@ zero_extendqisi2
	orr	lr, lr, r2, asl #16
	orr	r2, lr, r5, asl #24
.LVL2326:
.LBB3226:
.LBB3125:
	.loc 2 33 0
	eor	lr, r3, r2
.LBE3125:
.LBE3226:
	.loc 1 103 0 discriminator 6
	ldr	r5, [r4, r0]
.LVL2327:
.LBB3227:
.LBB3126:
	.loc 2 33 0
	and	lr, lr, ip
	orr	r2, r3, r2
.LVL2328:
	sub	r3, r2, lr, lsr #1
.LVL2329:
.LBE3126:
.LBE3227:
.LBB3228:
.LBB3143:
	eor	r2, r5, r3
	and	r2, r2, ip
	orr	r3, r5, r3
.LVL2330:
.LBE3143:
.LBE3228:
	.loc 1 103 0 discriminator 6
	mov	r8, r1
.LBB3229:
.LBB3144:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE3144:
.LBE3229:
	.loc 1 103 0 discriminator 6
	add	r2, r0, #4
	str	r3, [r4, r0]
.LVL2331:
	ldrb	r7, [r8, r2]!	@ zero_extendqisi2
	ldr	lr, [sp, #60]
	ldrb	r3, [r8, #1]	@ zero_extendqisi2
	ldrb	r5, [r8, #2]	@ zero_extendqisi2
.LVL2332:
	orr	r3, r7, r3, asl #8
	ldrb	r7, [r8, #3]	@ zero_extendqisi2
	orr	r3, r3, r5, asl #16
	orr	r5, r3, r7, asl #24
.LVL2333:
.LBB3230:
.LBB3160:
	.loc 2 33 0
	eor	r3, lr, r5
.LBE3160:
.LBE3230:
	.loc 1 103 0 discriminator 6
	ldr	r7, [r4, r2]
.LVL2334:
.LBB3231:
.LBB3161:
	.loc 2 33 0
	and	r3, r3, ip
	orr	r5, lr, r5
.LVL2335:
	sub	lr, r5, r3, lsr #1
.LVL2336:
.LBE3161:
.LBE3231:
.LBB3232:
.LBB3180:
	eor	r3, r7, lr
	and	r3, r3, ip
	orr	lr, r7, lr
.LVL2337:
.LBE3180:
.LBE3232:
	.loc 1 103 0 discriminator 6
	add	r0, r0, r6
.LBB3233:
.LBB3181:
	.loc 2 33 0
	sub	lr, lr, r3, lsr #1
.LBE3181:
.LBE3233:
	.loc 1 103 0 discriminator 6
	mov	r6, r1
.LVL2338:
	str	lr, [r4, r2]
.LVL2339:
	ldrb	r5, [r6, r0]!	@ zero_extendqisi2
	ldrb	lr, [r6, #1]	@ zero_extendqisi2
	ldrb	r2, [r6, #2]	@ zero_extendqisi2
	orr	lr, r5, lr, asl #8
	ldrb	r5, [r6, #3]	@ zero_extendqisi2
	ldr	r3, [sp, #64]
	orr	lr, lr, r2, asl #16
	orr	r2, lr, r5, asl #24
.LVL2340:
.LBB3234:
.LBB3127:
	.loc 2 33 0
	eor	lr, r3, r2
.LBE3127:
.LBE3234:
	.loc 1 103 0 discriminator 6
	ldr	r5, [r4, r0]
.LVL2341:
.LBB3235:
.LBB3128:
	.loc 2 33 0
	and	lr, lr, ip
	orr	r2, r3, r2
.LVL2342:
	sub	r3, r2, lr, lsr #1
.LVL2343:
.LBE3128:
.LBE3235:
.LBB3236:
.LBB3145:
	eor	r2, r5, r3
	and	r2, r2, ip
	orr	r3, r5, r3
.LVL2344:
.LBE3145:
.LBE3236:
	.loc 1 103 0 discriminator 6
	add	lr, r0, #4
.LVL2345:
.LBB3237:
.LBB3146:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE3146:
.LBE3237:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, r0]
.LVL2346:
	ldrb	r0, [r1, lr]!	@ zero_extendqisi2
.LVL2347:
	ldr	r3, [sp, #68]
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
.LVL2348:
	ldrb	r2, [r1, #2]	@ zero_extendqisi2
	orr	r0, r0, r5, asl #8
	ldrb	r5, [r1, #3]	@ zero_extendqisi2
	orr	r1, r0, r2, asl #16
	orr	r2, r1, r5, asl #24
.LVL2349:
.LBB3238:
.LBB3162:
	.loc 2 33 0
	eor	r1, r3, r2
.LBE3162:
.LBE3238:
	.loc 1 103 0 discriminator 6
	ldr	r0, [r4, lr]
.LVL2350:
.LBB3239:
.LBB3163:
	.loc 2 33 0
	and	r1, r1, ip
	orr	r2, r3, r2
.LVL2351:
	sub	r3, r2, r1, lsr #1
.LVL2352:
.LBE3163:
.LBE3239:
.LBB3240:
.LBB3182:
	eor	r2, r0, r3
	and	ip, ip, r2
	orr	r3, r0, r3
.LVL2353:
	sub	ip, r3, ip, lsr #1
.LBE3182:
.LBE3240:
	.loc 1 103 0 discriminator 6
	str	ip, [r4, lr]
.LVL2354:
.LBE3241:
.LBE3242:
.LBE3243:
	.loc 5 697 0
	add	sp, sp, #72
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL2355:
.L299:
	.align	2
.L298:
	.word	-16843010
	.cfi_endproc
.LFE200:
	.size	avg_qpel8_mc30_c, .-avg_qpel8_mc30_c
	.align	2
	.type	avg_qpel8_mc10_c, %function
avg_qpel8_mc10_c:
.LFB198:
	.loc 5 697 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2356:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	mov	r6, r2
	sub	sp, sp, #72
	.cfi_def_cfa_offset 96
	.loc 5 697 0
	mov	r2, #8
.LVL2357:
	mov	r4, r0
	mov	r5, r1
	add	r0, sp, r2
.LVL2358:
	mov	r3, r6
	str	r2, [sp]
	bl	put_mpeg4_qpel8_h_lowpass(PLT)
.LVL2359:
.LBB3255:
.LBB3256:
.LBB3257:
	.loc 1 103 0 discriminator 6
	ldrb	r0, [r5]	@ zero_extendqisi2
	ldrb	r1, [r5, #1]	@ zero_extendqisi2
	ldrb	r2, [r5, #2]	@ zero_extendqisi2
	ldrb	r3, [r5, #3]	@ zero_extendqisi2
	orr	r1, r0, r1, asl #8
	orr	r1, r1, r2, asl #16
	ldr	r0, [sp, #8]
.LBB3258:
.LBB3259:
	.loc 2 33 0
	ldr	ip, .L302
.LBE3259:
.LBE3258:
	.loc 1 103 0 discriminator 6
	orr	r2, r1, r3, asl #24
.LVL2360:
.LBB3276:
.LBB3260:
	.loc 2 33 0
	eor	r3, r0, r2
.LBE3260:
.LBE3276:
	.loc 1 103 0 discriminator 6
	ldr	r1, [r4]
.LVL2361:
.LBB3277:
.LBB3261:
	.loc 2 33 0
	orr	r2, r0, r2
.LVL2362:
	and	r3, r3, ip
	sub	r3, r2, r3, lsr #1
.LVL2363:
.LBE3261:
.LBE3277:
.LBB3278:
.LBB3279:
	eor	r2, r3, r1
	and	r2, r2, ip
	orr	r3, r3, r1
.LVL2364:
	sub	r3, r3, r2, lsr #1
.LBE3279:
.LBE3278:
	.loc 1 103 0 discriminator 6
	str	r3, [r4]
.LVL2365:
	ldrb	r0, [r5, #4]	@ zero_extendqisi2
.LVL2366:
	ldrb	r1, [r5, #5]	@ zero_extendqisi2
.LVL2367:
	ldrb	r2, [r5, #6]	@ zero_extendqisi2
	ldrb	r3, [r5, #7]	@ zero_extendqisi2
	orr	r1, r0, r1, asl #8
	orr	r1, r1, r2, asl #16
	ldr	r0, [sp, #12]
	orr	r2, r1, r3, asl #24
.LVL2368:
.LBB3293:
.LBB3294:
	.loc 2 33 0
	eor	r3, r0, r2
.LBE3294:
.LBE3293:
	.loc 1 103 0 discriminator 6
	ldr	r1, [r4, #4]
.LVL2369:
.LBB3310:
.LBB3295:
	.loc 2 33 0
	orr	r2, r0, r2
.LVL2370:
	and	r3, r3, ip
	sub	r3, r2, r3, lsr #1
.LVL2371:
.LBE3295:
.LBE3310:
.LBB3311:
.LBB3312:
	eor	r2, r3, r1
	orr	r3, r3, r1
.LVL2372:
	and	r1, r2, ip
.LVL2373:
.LBE3312:
.LBE3311:
	.loc 1 103 0 discriminator 6
	mov	lr, r5
.LBB3327:
.LBB3313:
	.loc 2 33 0
	sub	r3, r3, r1, lsr #1
.LBE3313:
.LBE3327:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, #4]
.LVL2374:
	ldrb	r0, [lr, r6]!	@ zero_extendqisi2
.LVL2375:
	ldr	r3, [sp, #16]
	ldrb	r1, [lr, #1]	@ zero_extendqisi2
	ldrb	r2, [lr, #2]	@ zero_extendqisi2
	orr	r1, r0, r1, asl #8
	ldrb	r0, [lr, #3]	@ zero_extendqisi2
	orr	r1, r1, r2, asl #16
	orr	r2, r1, r0, asl #24
.LVL2376:
.LBB3328:
.LBB3262:
	.loc 2 33 0
	eor	r1, r3, r2
.LBE3262:
.LBE3328:
	.loc 1 103 0 discriminator 6
	ldr	r0, [r4, r6]
.LVL2377:
.LBB3329:
.LBB3263:
	.loc 2 33 0
	and	r1, r1, ip
	orr	r2, r3, r2
.LVL2378:
	sub	r3, r2, r1, lsr #1
.LVL2379:
.LBE3263:
.LBE3329:
.LBB3330:
.LBB3280:
	eor	r2, r0, r3
	and	r2, r2, ip
	orr	r3, r0, r3
.LVL2380:
.LBE3280:
.LBE3330:
	.loc 1 103 0 discriminator 6
	mov	r7, r5
	add	lr, r6, #4
.LVL2381:
.LBB3331:
.LBB3281:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE3281:
.LBE3331:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, r6]
.LVL2382:
	ldrb	r0, [r7, lr]!	@ zero_extendqisi2
.LVL2383:
	ldr	r3, [sp, #20]
	ldrb	r1, [r7, #1]	@ zero_extendqisi2
	ldrb	r2, [r7, #2]	@ zero_extendqisi2
	orr	r1, r0, r1, asl #8
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	orr	r1, r1, r2, asl #16
	orr	r2, r1, r0, asl #24
.LVL2384:
.LBB3332:
.LBB3296:
	.loc 2 33 0
	eor	r1, r3, r2
.LBE3296:
.LBE3332:
	.loc 1 103 0 discriminator 6
	ldr	r0, [r4, lr]
.LVL2385:
.LBB3333:
.LBB3297:
	.loc 2 33 0
	and	r1, r1, ip
	orr	r2, r3, r2
.LVL2386:
	sub	r3, r2, r1, lsr #1
.LVL2387:
.LBE3297:
.LBE3333:
.LBB3334:
.LBB3314:
	eor	r2, r0, r3
	and	r2, r2, ip
	orr	r3, r0, r3
.LVL2388:
.LBE3314:
.LBE3334:
	.loc 1 103 0 discriminator 6
	mov	r0, r6, asl #1
.LVL2389:
	add	r7, r5, r0
.LVL2390:
.LBB3335:
.LBB3315:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE3315:
.LBE3335:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, lr]
.LVL2391:
	ldrb	lr, [r5, r6, asl #1]	@ zero_extendqisi2
	ldrb	r1, [r7, #1]	@ zero_extendqisi2
	ldrb	r2, [r7, #2]	@ zero_extendqisi2
	orr	r1, lr, r1, asl #8
	ldrb	lr, [r7, #3]	@ zero_extendqisi2
	ldr	r3, [sp, #24]
	orr	r1, r1, r2, asl #16
	orr	r2, r1, lr, asl #24
.LVL2392:
.LBB3336:
.LBB3264:
	.loc 2 33 0
	eor	r1, r3, r2
.LBE3264:
.LBE3336:
	.loc 1 103 0 discriminator 6
	ldr	lr, [r4, r6, asl #1]
.LVL2393:
.LBB3337:
.LBB3265:
	.loc 2 33 0
	and	r1, r1, ip
	orr	r2, r3, r2
.LVL2394:
	sub	r3, r2, r1, lsr #1
.LVL2395:
.LBE3265:
.LBE3337:
.LBB3338:
.LBB3282:
	eor	r2, lr, r3
	and	r2, r2, ip
	orr	r3, lr, r3
.LVL2396:
.LBE3282:
.LBE3338:
	.loc 1 103 0 discriminator 6
	mov	r8, r5
	add	r7, r0, #4
.LVL2397:
.LBB3339:
.LBB3283:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE3283:
.LBE3339:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, r6, asl #1]
.LVL2398:
	ldrb	lr, [r8, r7]!	@ zero_extendqisi2
.LVL2399:
	ldr	r3, [sp, #28]
	ldrb	r1, [r8, #1]	@ zero_extendqisi2
	ldrb	r2, [r8, #2]	@ zero_extendqisi2
	orr	r1, lr, r1, asl #8
	ldrb	lr, [r8, #3]	@ zero_extendqisi2
	orr	r1, r1, r2, asl #16
	orr	r2, r1, lr, asl #24
.LVL2400:
.LBB3340:
.LBB3298:
	.loc 2 33 0
	eor	r1, r3, r2
.LBE3298:
.LBE3340:
	.loc 1 103 0 discriminator 6
	ldr	lr, [r4, r7]
.LVL2401:
.LBB3341:
.LBB3299:
	.loc 2 33 0
	and	r1, r1, ip
	orr	r2, r3, r2
.LVL2402:
	sub	r3, r2, r1, lsr #1
.LVL2403:
.LBE3299:
.LBE3341:
.LBB3342:
.LBB3316:
	eor	r2, lr, r3
	and	r2, r2, ip
	orr	r3, lr, r3
.LVL2404:
.LBE3316:
.LBE3342:
	.loc 1 103 0 discriminator 6
	mov	r8, r5
.LVL2405:
	add	r0, r0, r6
.LBB3343:
.LBB3317:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE3317:
.LBE3343:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, r7]
.LVL2406:
	ldrb	lr, [r8, r0]!	@ zero_extendqisi2
.LVL2407:
	ldr	r3, [sp, #32]
	ldrb	r1, [r8, #1]	@ zero_extendqisi2
	ldrb	r2, [r8, #2]	@ zero_extendqisi2
	orr	r1, lr, r1, asl #8
	ldrb	lr, [r8, #3]	@ zero_extendqisi2
	orr	r1, r1, r2, asl #16
	orr	r2, r1, lr, asl #24
.LVL2408:
.LBB3344:
.LBB3266:
	.loc 2 33 0
	eor	r1, r3, r2
.LBE3266:
.LBE3344:
	.loc 1 103 0 discriminator 6
	ldr	lr, [r4, r0]
.LVL2409:
.LBB3345:
.LBB3267:
	.loc 2 33 0
	and	r1, r1, ip
	orr	r2, r3, r2
.LVL2410:
	sub	r3, r2, r1, lsr #1
.LVL2411:
.LBE3267:
.LBE3345:
.LBB3346:
.LBB3284:
	eor	r2, lr, r3
	and	r2, r2, ip
	orr	r3, lr, r3
.LVL2412:
.LBE3284:
.LBE3346:
	.loc 1 103 0 discriminator 6
	mov	r8, r5
.LVL2413:
	add	r7, r0, #4
.LBB3347:
.LBB3285:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE3285:
.LBE3347:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, r0]
.LVL2414:
	ldrb	lr, [r8, r7]!	@ zero_extendqisi2
.LVL2415:
	ldr	r3, [sp, #36]
	ldrb	r1, [r8, #1]	@ zero_extendqisi2
	ldrb	r2, [r8, #2]	@ zero_extendqisi2
	orr	r1, lr, r1, asl #8
	ldrb	lr, [r8, #3]	@ zero_extendqisi2
	orr	r1, r1, r2, asl #16
	orr	r2, r1, lr, asl #24
.LVL2416:
.LBB3348:
.LBB3300:
	.loc 2 33 0
	eor	r1, r3, r2
.LBE3300:
.LBE3348:
	.loc 1 103 0 discriminator 6
	ldr	lr, [r4, r7]
.LVL2417:
.LBB3349:
.LBB3301:
	.loc 2 33 0
	and	r1, r1, ip
	orr	r2, r3, r2
.LVL2418:
	sub	r3, r2, r1, lsr #1
.LVL2419:
.LBE3301:
.LBE3349:
.LBB3350:
.LBB3318:
	eor	r2, lr, r3
	and	r2, r2, ip
	orr	r3, lr, r3
.LVL2420:
.LBE3318:
.LBE3350:
	.loc 1 103 0 discriminator 6
	mov	r8, r5
.LVL2421:
	add	r0, r0, r6
.LBB3351:
.LBB3319:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE3319:
.LBE3351:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, r7]
.LVL2422:
	ldrb	lr, [r8, r0]!	@ zero_extendqisi2
.LVL2423:
	ldr	r3, [sp, #40]
	ldrb	r1, [r8, #1]	@ zero_extendqisi2
	ldrb	r2, [r8, #2]	@ zero_extendqisi2
	orr	r1, lr, r1, asl #8
	ldrb	lr, [r8, #3]	@ zero_extendqisi2
	orr	r1, r1, r2, asl #16
	orr	r2, r1, lr, asl #24
.LVL2424:
.LBB3352:
.LBB3268:
	.loc 2 33 0
	eor	r1, r3, r2
.LBE3268:
.LBE3352:
	.loc 1 103 0 discriminator 6
	ldr	lr, [r4, r0]
.LVL2425:
.LBB3353:
.LBB3269:
	.loc 2 33 0
	and	r1, r1, ip
	orr	r2, r3, r2
.LVL2426:
	sub	r3, r2, r1, lsr #1
.LVL2427:
.LBE3269:
.LBE3353:
.LBB3354:
.LBB3286:
	eor	r2, lr, r3
	and	r2, r2, ip
	orr	r3, lr, r3
.LVL2428:
.LBE3286:
.LBE3354:
	.loc 1 103 0 discriminator 6
	mov	r8, r5
.LVL2429:
	add	r7, r0, #4
.LBB3355:
.LBB3287:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE3287:
.LBE3355:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, r0]
.LVL2430:
	ldrb	lr, [r8, r7]!	@ zero_extendqisi2
.LVL2431:
	add	r0, r0, r6
	ldrb	r1, [r8, #1]	@ zero_extendqisi2
	ldrb	r2, [r8, #2]	@ zero_extendqisi2
	orr	r1, lr, r1, asl #8
	ldrb	lr, [r8, #3]	@ zero_extendqisi2
	orr	r1, r1, r2, asl #16
	ldr	r3, [sp, #44]
	orr	r2, r1, lr, asl #24
.LVL2432:
.LBB3356:
.LBB3302:
	.loc 2 33 0
	eor	r1, r3, r2
.LBE3302:
.LBE3356:
	.loc 1 103 0 discriminator 6
	ldr	lr, [r4, r7]
.LVL2433:
.LBB3357:
.LBB3303:
	.loc 2 33 0
	and	r1, r1, ip
	orr	r2, r3, r2
.LVL2434:
	sub	r3, r2, r1, lsr #1
.LVL2435:
.LBE3303:
.LBE3357:
.LBB3358:
.LBB3320:
	eor	r2, lr, r3
	and	r2, r2, ip
	orr	r3, lr, r3
.LVL2436:
.LBE3320:
.LBE3358:
	.loc 1 103 0 discriminator 6
	mov	r8, r5
.LVL2437:
.LBB3359:
.LBB3321:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE3321:
.LBE3359:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, r7]
.LVL2438:
	ldrb	lr, [r8, r0]!	@ zero_extendqisi2
.LVL2439:
	ldr	r3, [sp, #48]
	ldrb	r1, [r8, #1]	@ zero_extendqisi2
	ldrb	r2, [r8, #2]	@ zero_extendqisi2
	orr	r1, lr, r1, asl #8
	ldrb	lr, [r8, #3]	@ zero_extendqisi2
	orr	r1, r1, r2, asl #16
	orr	r2, r1, lr, asl #24
.LVL2440:
.LBB3360:
.LBB3270:
	.loc 2 33 0
	eor	r1, r3, r2
.LBE3270:
.LBE3360:
	.loc 1 103 0 discriminator 6
	ldr	lr, [r4, r0]
.LVL2441:
.LBB3361:
.LBB3271:
	.loc 2 33 0
	and	r1, r1, ip
	orr	r2, r3, r2
.LVL2442:
	sub	r3, r2, r1, lsr #1
.LVL2443:
.LBE3271:
.LBE3361:
.LBB3362:
.LBB3288:
	eor	r2, lr, r3
	and	r2, r2, ip
	orr	r3, lr, r3
.LVL2444:
.LBE3288:
.LBE3362:
	.loc 1 103 0 discriminator 6
	mov	r8, r5
.LVL2445:
	add	lr, r0, #4
.LVL2446:
.LBB3363:
.LBB3289:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE3289:
.LBE3363:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, r0]
.LVL2447:
	ldrb	r7, [r8, lr]!	@ zero_extendqisi2
	ldr	r3, [sp, #52]
	ldrb	r1, [r8, #1]	@ zero_extendqisi2
	ldrb	r2, [r8, #2]	@ zero_extendqisi2
	orr	r1, r7, r1, asl #8
	ldrb	r7, [r8, #3]	@ zero_extendqisi2
	orr	r1, r1, r2, asl #16
	orr	r2, r1, r7, asl #24
.LVL2448:
.LBB3364:
.LBB3304:
	.loc 2 33 0
	eor	r1, r3, r2
.LBE3304:
.LBE3364:
	.loc 1 103 0 discriminator 6
	ldr	r7, [r4, lr]
.LVL2449:
.LBB3365:
.LBB3305:
	.loc 2 33 0
	and	r1, r1, ip
	orr	r2, r3, r2
.LVL2450:
	sub	r3, r2, r1, lsr #1
.LVL2451:
.LBE3305:
.LBE3365:
.LBB3366:
.LBB3322:
	eor	r2, r7, r3
	and	r2, r2, ip
	orr	r3, r7, r3
.LVL2452:
.LBE3322:
.LBE3366:
	.loc 1 103 0 discriminator 6
	add	r0, r0, r6
	mov	r7, r5
.LVL2453:
.LBB3367:
.LBB3323:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE3323:
.LBE3367:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, lr]
.LVL2454:
	ldrb	lr, [r7, r0]!	@ zero_extendqisi2
	ldr	r3, [sp, #56]
	ldrb	r1, [r7, #1]	@ zero_extendqisi2
	ldrb	r2, [r7, #2]	@ zero_extendqisi2
	orr	r1, lr, r1, asl #8
	ldrb	lr, [r7, #3]	@ zero_extendqisi2
	orr	r1, r1, r2, asl #16
	orr	r2, r1, lr, asl #24
.LVL2455:
.LBB3368:
.LBB3272:
	.loc 2 33 0
	eor	r1, r3, r2
.LBE3272:
.LBE3368:
	.loc 1 103 0 discriminator 6
	ldr	lr, [r4, r0]
.LVL2456:
.LBB3369:
.LBB3273:
	.loc 2 33 0
	and	r1, r1, ip
	orr	r2, r3, r2
.LVL2457:
	sub	r3, r2, r1, lsr #1
.LVL2458:
.LBE3273:
.LBE3369:
.LBB3370:
.LBB3290:
	eor	r2, lr, r3
	and	r2, r2, ip
	orr	r3, lr, r3
.LVL2459:
.LBE3290:
.LBE3370:
	.loc 1 103 0 discriminator 6
	mov	r8, r5
.LBB3371:
.LBB3291:
	.loc 2 33 0
	sub	r3, r3, r2, lsr #1
.LBE3291:
.LBE3371:
	.loc 1 103 0 discriminator 6
	add	r2, r0, #4
	str	r3, [r4, r0]
.LVL2460:
	ldrb	r7, [r8, r2]!	@ zero_extendqisi2
	ldr	r1, [sp, #60]
	ldrb	r3, [r8, #1]	@ zero_extendqisi2
	ldrb	lr, [r8, #2]	@ zero_extendqisi2
.LVL2461:
	orr	r3, r7, r3, asl #8
	ldrb	r7, [r8, #3]	@ zero_extendqisi2
	orr	r3, r3, lr, asl #16
	orr	lr, r3, r7, asl #24
.LVL2462:
.LBB3372:
.LBB3306:
	.loc 2 33 0
	eor	r3, r1, lr
.LBE3306:
.LBE3372:
	.loc 1 103 0 discriminator 6
	ldr	r7, [r4, r2]
.LVL2463:
.LBB3373:
.LBB3307:
	.loc 2 33 0
	and	r3, r3, ip
	orr	lr, r1, lr
.LVL2464:
	sub	r1, lr, r3, lsr #1
.LVL2465:
.LBE3307:
.LBE3373:
.LBB3374:
.LBB3324:
	eor	r3, r7, r1
	and	r3, r3, ip
	orr	r1, r7, r1
.LVL2466:
.LBE3324:
.LBE3374:
	.loc 1 103 0 discriminator 6
	add	r0, r0, r6
.LBB3375:
.LBB3325:
	.loc 2 33 0
	sub	r1, r1, r3, lsr #1
.LBE3325:
.LBE3375:
	.loc 1 103 0 discriminator 6
	mov	r6, r5
.LVL2467:
	str	r1, [r4, r2]
.LVL2468:
	ldrb	lr, [r6, r0]!	@ zero_extendqisi2
	ldrb	r1, [r6, #1]	@ zero_extendqisi2
	ldrb	r2, [r6, #2]	@ zero_extendqisi2
	orr	r1, lr, r1, asl #8
	ldrb	lr, [r6, #3]	@ zero_extendqisi2
	ldr	r3, [sp, #64]
	orr	r1, r1, r2, asl #16
	orr	r2, r1, lr, asl #24
.LVL2469:
.LBB3376:
.LBB3274:
	.loc 2 33 0
	eor	r1, r3, r2
.LBE3274:
.LBE3376:
	.loc 1 103 0 discriminator 6
	ldr	lr, [r4, r0]
.LVL2470:
.LBB3377:
.LBB3275:
	.loc 2 33 0
	and	r1, r1, ip
	orr	r2, r3, r2
.LVL2471:
	sub	r3, r2, r1, lsr #1
.LVL2472:
.LBE3275:
.LBE3377:
.LBB3378:
.LBB3292:
	eor	r2, lr, r3
	and	r2, r2, ip
	orr	r3, lr, r3
.LVL2473:
	sub	r3, r3, r2, lsr #1
.LBE3292:
.LBE3378:
	.loc 1 103 0 discriminator 6
	add	lr, r0, #4
.LVL2474:
	str	r3, [r4, r0]
.LVL2475:
	ldrb	r0, [r5, lr]!	@ zero_extendqisi2
.LVL2476:
	ldr	r3, [sp, #68]
	ldrb	r1, [r5, #1]	@ zero_extendqisi2
	ldrb	r2, [r5, #2]	@ zero_extendqisi2
	orr	r1, r0, r1, asl #8
	ldrb	r0, [r5, #3]	@ zero_extendqisi2
	orr	r1, r1, r2, asl #16
	orr	r2, r1, r0, asl #24
.LVL2477:
.LBB3379:
.LBB3308:
	.loc 2 33 0
	eor	r1, r3, r2
.LBE3308:
.LBE3379:
	.loc 1 103 0 discriminator 6
	ldr	r0, [r4, lr]
.LVL2478:
.LBB3380:
.LBB3309:
	.loc 2 33 0
	and	r1, r1, ip
	orr	r2, r3, r2
.LVL2479:
	sub	r3, r2, r1, lsr #1
.LVL2480:
.LBE3309:
.LBE3380:
.LBB3381:
.LBB3326:
	eor	r2, r0, r3
	and	ip, ip, r2
	orr	r3, r0, r3
.LVL2481:
	sub	ip, r3, ip, lsr #1
.LBE3326:
.LBE3381:
	.loc 1 103 0 discriminator 6
	str	ip, [r4, lr]
.LVL2482:
.LBE3257:
.LBE3256:
.LBE3255:
	.loc 5 697 0
	add	sp, sp, #72
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL2483:
.L303:
	.align	2
.L302:
	.word	-16843010
	.cfi_endproc
.LFE198:
	.size	avg_qpel8_mc10_c, .-avg_qpel8_mc10_c
	.align	2
	.type	put_no_rnd_qpel16_mc10_c, %function
put_no_rnd_qpel16_mc10_c:
.LFB173:
	.loc 5 696 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2484:
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
	mov	r5, r2
	sub	sp, sp, #268
	.cfi_def_cfa_offset 304
	.loc 5 696 0
	mov	r2, #16
.LVL2485:
	mov	r4, r0
	mov	r6, r1
	add	r0, sp, #8
.LVL2486:
	mov	r3, r5
	str	r2, [sp]
	bl	put_no_rnd_mpeg4_qpel16_h_lowpass(PLT)
.LVL2487:
	add	r7, sp, #268
	add	r1, r6, #4
	add	lr, r4, #4
	add	r0, sp, #12
.LVL2488:
.L305:
.LBB3398:
.LBB3399:
.LBB3400:
.LBB3401:
	.loc 4 219 0 discriminator 4
	ldrb	ip, [r1, #-4]	@ zero_extendqisi2
	ldrb	r2, [r1, #-3]	@ zero_extendqisi2
	ldrb	r3, [r1, #-2]	@ zero_extendqisi2
	ldrb	r8, [r1, #-1]	@ zero_extendqisi2
	orr	r2, ip, r2, asl #8
	orr	r2, r2, r3, asl #16
	ldr	ip, [r0, #-4]
	orr	r3, r2, r8, asl #24
.LVL2489:
.LBB3402:
.LBB3403:
	.loc 2 38 0
	ldr	r2, .L310
	eor	r8, ip, r3
	and	r2, r2, r8
	and	r3, r3, ip
.LVL2490:
	add	r3, r3, r2, lsr #1
.LBE3403:
.LBE3402:
	.loc 4 219 0 discriminator 4
	str	r3, [lr, #-4]
.LVL2491:
	ldrb	r8, [r0]	@ zero_extendqisi2
	ldrb	r3, [r1]	@ zero_extendqisi2
	ldrb	r2, [r1, #1]	@ zero_extendqisi2
	ldrb	ip, [r0, #1]	@ zero_extendqisi2
.LVL2492:
	ldrb	fp, [r1, #2]	@ zero_extendqisi2
	ldrb	r10, [r0, #2]	@ zero_extendqisi2
	ldrb	r9, [r1, #3]	@ zero_extendqisi2
	orr	r2, r3, r2, asl #8
	orr	ip, r8, ip, asl #8
	ldrb	r8, [r0, #3]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #16
	orr	ip, ip, r10, asl #16
	orr	r3, r2, r9, asl #24
.LVL2493:
	orr	r2, ip, r8, asl #24
.LVL2494:
.LBB3404:
.LBB3405:
	.loc 2 38 0
	ldr	ip, .L310
	eor	r8, r2, r3
	add	r0, r0, #16
.LVL2495:
	and	r3, r3, r2
.LVL2496:
	and	ip, ip, r8
	add	r3, r3, ip, lsr #1
.LBE3405:
.LBE3404:
.LBE3401:
	.loc 4 219 0 discriminator 1
	cmp	r0, r7
	add	r1, r1, r5
.LVL2497:
.LBB3406:
	.loc 4 219 0 is_stmt 0 discriminator 4
	str	r3, [lr], r5
.LBE3406:
	.loc 4 219 0 discriminator 1
	bne	.L305
.LVL2498:
	add	r1, r6, #12
	add	r0, r4, #12
.LVL2499:
	add	r3, sp, #16
.LVL2500:
	add	r2, sp, #272
.LVL2501:
.L306:
.LBE3400:
.LBE3399:
.LBB3407:
.LBB3408:
.LBB3409:
	.loc 4 219 0 discriminator 4
	ldrb	r4, [r1, #-4]	@ zero_extendqisi2
	ldrb	lr, [r1, #-3]	@ zero_extendqisi2
	ldrb	ip, [r1, #-2]	@ zero_extendqisi2
	ldrb	r6, [r1, #-1]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r4, [r3]
	orr	ip, lr, r6, asl #24
.LVL2502:
.LBB3410:
.LBB3411:
	.loc 2 38 0 is_stmt 1
	ldr	lr, .L310
	eor	r6, r4, ip
	and	lr, lr, r6
	and	ip, ip, r4
.LVL2503:
	add	ip, ip, lr, lsr #1
.LBE3411:
.LBE3410:
	.loc 4 219 0 discriminator 4
	str	ip, [r0, #-4]
.LVL2504:
	ldrb	r6, [r3, #4]	@ zero_extendqisi2
	ldrb	r4, [r1]	@ zero_extendqisi2
.LVL2505:
	ldrb	lr, [r1, #1]	@ zero_extendqisi2
	ldrb	r9, [r3, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #2]	@ zero_extendqisi2
	ldrb	r8, [r3, #6]	@ zero_extendqisi2
	ldrb	r7, [r1, #3]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #8
	orr	r4, r6, r9, asl #8
	ldrb	r6, [r3, #7]	@ zero_extendqisi2
	orr	lr, lr, ip, asl #16
	orr	r4, r4, r8, asl #16
	orr	ip, lr, r7, asl #24
.LVL2506:
	orr	lr, r4, r6, asl #24
.LVL2507:
.LBB3412:
.LBB3413:
	.loc 2 38 0
	ldr	r4, .L310
	eor	r6, lr, ip
	add	r3, r3, #16
.LVL2508:
	and	ip, ip, lr
.LVL2509:
	and	r4, r4, r6
	add	ip, ip, r4, lsr #1
.LBE3413:
.LBE3412:
.LBE3409:
	.loc 4 219 0 discriminator 1
	cmp	r3, r2
	add	r1, r1, r5
.LVL2510:
.LBB3414:
	.loc 4 219 0 is_stmt 0 discriminator 4
	str	ip, [r0], r5
.LBE3414:
	.loc 4 219 0 discriminator 1
	bne	.L306
.LBE3408:
.LBE3407:
.LBE3398:
	.loc 5 696 0 is_stmt 1
	add	sp, sp, #268
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2511:
.L311:
	.align	2
.L310:
	.word	-16843010
	.cfi_endproc
.LFE173:
	.size	put_no_rnd_qpel16_mc10_c, .-put_no_rnd_qpel16_mc10_c
	.align	2
	.type	put_no_rnd_qpel16_mc30_c, %function
put_no_rnd_qpel16_mc30_c:
.LFB175:
	.loc 5 696 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2512:
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
	mov	r5, r2
	sub	sp, sp, #268
	.cfi_def_cfa_offset 304
	.loc 5 696 0
	mov	r2, #16
.LVL2513:
	mov	r4, r0
	mov	r6, r1
	add	r0, sp, #8
.LVL2514:
	mov	r3, r5
	str	r2, [sp]
	bl	put_no_rnd_mpeg4_qpel16_h_lowpass(PLT)
.LVL2515:
	add	r7, sp, #268
	add	r1, r6, #5
	add	lr, r4, #4
	add	r0, sp, #12
.LVL2516:
.L313:
.LBB3431:
.LBB3432:
.LBB3433:
.LBB3434:
	.loc 4 219 0 discriminator 4
	ldrb	ip, [r1, #-4]	@ zero_extendqisi2
	ldrb	r2, [r1, #-3]	@ zero_extendqisi2
	ldrb	r3, [r1, #-2]	@ zero_extendqisi2
	ldrb	r8, [r1, #-1]	@ zero_extendqisi2
	orr	r2, ip, r2, asl #8
	orr	r2, r2, r3, asl #16
	ldr	ip, [r0, #-4]
	orr	r3, r2, r8, asl #24
.LVL2517:
.LBB3435:
.LBB3436:
	.loc 2 38 0
	ldr	r2, .L318
	eor	r8, ip, r3
	and	r2, r2, r8
	and	r3, r3, ip
.LVL2518:
	add	r3, r3, r2, lsr #1
.LBE3436:
.LBE3435:
	.loc 4 219 0 discriminator 4
	str	r3, [lr, #-4]
.LVL2519:
	ldrb	r8, [r0]	@ zero_extendqisi2
	ldrb	r3, [r1]	@ zero_extendqisi2
	ldrb	r2, [r1, #1]	@ zero_extendqisi2
	ldrb	ip, [r0, #1]	@ zero_extendqisi2
.LVL2520:
	ldrb	fp, [r1, #2]	@ zero_extendqisi2
	ldrb	r10, [r0, #2]	@ zero_extendqisi2
	ldrb	r9, [r1, #3]	@ zero_extendqisi2
	orr	r2, r3, r2, asl #8
	orr	ip, r8, ip, asl #8
	ldrb	r8, [r0, #3]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #16
	orr	ip, ip, r10, asl #16
	orr	r3, r2, r9, asl #24
.LVL2521:
	orr	r2, ip, r8, asl #24
.LVL2522:
.LBB3437:
.LBB3438:
	.loc 2 38 0
	ldr	ip, .L318
	eor	r8, r2, r3
	add	r0, r0, #16
.LVL2523:
	and	r3, r3, r2
.LVL2524:
	and	ip, ip, r8
	add	r3, r3, ip, lsr #1
.LBE3438:
.LBE3437:
.LBE3434:
	.loc 4 219 0 discriminator 1
	cmp	r0, r7
	add	r1, r1, r5
.LVL2525:
.LBB3439:
	.loc 4 219 0 is_stmt 0 discriminator 4
	str	r3, [lr], r5
.LBE3439:
	.loc 4 219 0 discriminator 1
	bne	.L313
.LVL2526:
	add	r1, r6, #13
	add	r0, r4, #12
.LVL2527:
	add	r3, sp, #16
.LVL2528:
	add	r2, sp, #272
.LVL2529:
.L314:
.LBE3433:
.LBE3432:
.LBB3440:
.LBB3441:
.LBB3442:
	.loc 4 219 0 discriminator 4
	ldrb	r4, [r1, #-4]	@ zero_extendqisi2
	ldrb	lr, [r1, #-3]	@ zero_extendqisi2
	ldrb	ip, [r1, #-2]	@ zero_extendqisi2
	ldrb	r6, [r1, #-1]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #8
	orr	lr, lr, ip, asl #16
	ldr	r4, [r3]
	orr	ip, lr, r6, asl #24
.LVL2530:
.LBB3443:
.LBB3444:
	.loc 2 38 0 is_stmt 1
	ldr	lr, .L318
	eor	r6, r4, ip
	and	lr, lr, r6
	and	ip, ip, r4
.LVL2531:
	add	ip, ip, lr, lsr #1
.LBE3444:
.LBE3443:
	.loc 4 219 0 discriminator 4
	str	ip, [r0, #-4]
.LVL2532:
	ldrb	r6, [r3, #4]	@ zero_extendqisi2
	ldrb	r4, [r1]	@ zero_extendqisi2
.LVL2533:
	ldrb	lr, [r1, #1]	@ zero_extendqisi2
	ldrb	r9, [r3, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #2]	@ zero_extendqisi2
	ldrb	r8, [r3, #6]	@ zero_extendqisi2
	ldrb	r7, [r1, #3]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #8
	orr	r4, r6, r9, asl #8
	ldrb	r6, [r3, #7]	@ zero_extendqisi2
	orr	lr, lr, ip, asl #16
	orr	r4, r4, r8, asl #16
	orr	ip, lr, r7, asl #24
.LVL2534:
	orr	lr, r4, r6, asl #24
.LVL2535:
.LBB3445:
.LBB3446:
	.loc 2 38 0
	ldr	r4, .L318
	eor	r6, lr, ip
	add	r3, r3, #16
.LVL2536:
	and	ip, ip, lr
.LVL2537:
	and	r4, r4, r6
	add	ip, ip, r4, lsr #1
.LBE3446:
.LBE3445:
.LBE3442:
	.loc 4 219 0 discriminator 1
	cmp	r3, r2
	add	r1, r1, r5
.LVL2538:
.LBB3447:
	.loc 4 219 0 is_stmt 0 discriminator 4
	str	ip, [r0], r5
.LBE3447:
	.loc 4 219 0 discriminator 1
	bne	.L314
.LBE3441:
.LBE3440:
.LBE3431:
	.loc 5 696 0 is_stmt 1
	add	sp, sp, #268
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2539:
.L319:
	.align	2
.L318:
	.word	-16843010
	.cfi_endproc
.LFE175:
	.size	put_no_rnd_qpel16_mc30_c, .-put_no_rnd_qpel16_mc30_c
	.align	2
	.type	put_no_rnd_qpel16_mc31_c, %function
put_no_rnd_qpel16_mc31_c:
.LFB182:
	.loc 5 696 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 944
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2540:
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
	sub	sp, sp, #964
	.cfi_def_cfa_offset 1000
.LVL2541:
.LBB3461:
.LBB3462:
	.loc 6 85 0
	add	r4, r1, r2
	.loc 6 82 0
	str	r2, [sp, #16]
	ldrb	r3, [r1, r2]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r2, [r1]	@ zero_extendqisi2
.LVL2542:
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	ldrb	r6, [r1, #4]	@ zero_extendqisi2
	orr	r7, r2, r7, asl #8
	orr	r6, r6, r10, asl #8
	ldrb	r2, [r4, #4]	@ zero_extendqisi2
	ldrb	r10, [r4, #5]	@ zero_extendqisi2
	ldrb	r9, [r1, #9]	@ zero_extendqisi2
	ldrb	r8, [r1, #13]	@ zero_extendqisi2
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
	ldrb	ip, [r1, #12]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #8
	ldrb	r10, [r1, #10]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #8
	orr	ip, ip, r8, asl #8
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	lr, [r4, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #2]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #16
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #16
	ldrb	r8, [r4, #6]	@ zero_extendqisi2
	orr	r6, r6, r10, asl #24
	orr	r3, r3, lr, asl #8
	ldrb	r10, [r4, #7]	@ zero_extendqisi2
	ldrb	lr, [r4, #2]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #16
	ldrb	r9, [r1, #14]	@ zero_extendqisi2
	orr	r2, r2, r8, asl #16
	orr	r3, r3, lr, asl #16
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	lr, [r4, #3]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #16
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #24
	.loc 6 85 0
	ldr	r10, [sp, #16]
	.loc 6 82 0
	orr	lr, r3, lr, asl #24
	orr	r7, r7, fp, asl #24
	add	r3, sp, #560
	orr	r5, r5, r9, asl #24
	orr	r8, ip, r8, asl #24
	.loc 6 85 0
	add	ip, r4, r10
	.loc 6 83 0
	ldrb	r9, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	stmia	r3, {r5, r8}
	str	lr, [r3, #16]
	str	r7, [r3, #-8]
	str	r6, [r3, #-4]
	str	r2, [r3, #20]
	ldrb	r2, [r1, r10, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r4, #13]	@ zero_extendqisi2
	ldrb	r1, [r4, #12]	@ zero_extendqisi2
.LVL2543:
	ldrb	r10, [ip, #5]	@ zero_extendqisi2
	ldrb	r7, [ip, #4]	@ zero_extendqisi2
	ldrb	r5, [ip, #1]	@ zero_extendqisi2
	orr	r8, r1, r8, asl #8
	orr	r7, r7, r10, asl #8
	ldrb	r1, [ip, #12]	@ zero_extendqisi2
	ldrb	r10, [ip, #13]	@ zero_extendqisi2
	ldrb	r6, [ip, #8]	@ zero_extendqisi2
	orr	r2, r2, r5, asl #8
	ldrb	r5, [ip, #9]	@ zero_extendqisi2
	ldrb	lr, [r4, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #568]
.LVL2544:
	.loc 6 82 0
	orr	r1, r1, r10, asl #8
	ldrb	r9, [r4, #9]	@ zero_extendqisi2
	ldrb	r10, [ip, #6]	@ zero_extendqisi2
	ldrb	fp, [r4, #14]	@ zero_extendqisi2
	orr	r6, r6, r5, asl #8
	ldrb	r5, [ip, #2]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #8
	orr	r7, r7, r10, asl #16
	ldrb	r9, [r4, #10]	@ zero_extendqisi2
	ldrb	r10, [ip, #14]	@ zero_extendqisi2
	orr	r2, r2, r5, asl #16
	orr	r8, r8, fp, asl #16
	ldrb	r5, [ip, #10]	@ zero_extendqisi2
	ldrb	fp, [ip, #7]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #16
	orr	r1, r1, r10, asl #16
	ldrb	r9, [r4, #11]	@ zero_extendqisi2
	ldrb	r10, [r4, #15]	@ zero_extendqisi2
	orr	r7, r7, fp, asl #24
	orr	r6, r6, r5, asl #16
	.loc 6 85 0
	ldr	fp, [sp, #16]
	.loc 6 82 0
	ldrb	r5, [ip, #3]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #24
	orr	r8, r8, r10, asl #24
	ldrb	r9, [ip, #11]	@ zero_extendqisi2
	ldrb	r10, [ip, #15]	@ zero_extendqisi2
	orr	r5, r2, r5, asl #24
	.loc 6 85 0
	add	r2, ip, fp
	.loc 6 82 0
	orr	r6, r6, r9, asl #24
	orr	r1, r1, r10, asl #24
	str	lr, [r3, #24]
	.loc 6 85 0
	add	lr, r2, fp
	.loc 6 83 0
	ldrb	r10, [ip, #16]	@ zero_extendqisi2
	ldrb	r9, [r4, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r5, [r3, #40]
	str	r8, [r3, #28]
	str	r7, [r3, #44]
	str	r6, [r3, #48]
	str	r1, [r3, #52]
	ldrb	r7, [ip, fp, asl #1]	@ zero_extendqisi2
	ldrb	r8, [lr, #1]	@ zero_extendqisi2
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r10, [sp, #616]
	strb	r9, [sp, #592]
.LVL2545:
	.loc 6 82 0
	ldrb	r10, [r4, fp, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r2, #9]	@ zero_extendqisi2
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	ldrb	r4, [r2, #12]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	ldrb	r8, [r2, #13]	@ zero_extendqisi2
	orr	r6, r1, r6, asl #8
	orr	r5, r5, r9, asl #8
	ldrb	r1, [lr, #4]	@ zero_extendqisi2
	ldrb	r9, [lr, #5]	@ zero_extendqisi2
	orr	r4, r4, r8, asl #8
	ldrb	r8, [lr, #2]	@ zero_extendqisi2
	ldrb	ip, [r2, #1]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r9, [r2, #6]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	orr	ip, r10, ip, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	r10, [r2, #2]	@ zero_extendqisi2
	ldrb	r9, [r2, #14]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	ldrb	r8, [lr, #6]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #16
	orr	r1, r1, r8, asl #16
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #16
	ldrb	r9, [lr, #3]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #24
	orr	r7, r7, r9, asl #24
	ldrb	r10, [r2, #11]	@ zero_extendqisi2
	ldrb	r9, [r2, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [lr, #7]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	orr	r4, r4, r9, asl #24
	orr	r8, r1, r8, asl #24
	.loc 6 85 0
	add	r1, lr, fp
	.loc 6 83 0
	ldrb	r9, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	ip, [r3, #64]
	str	r7, [r3, #88]
	str	r6, [r3, #68]
	str	r4, [r3, #76]
	str	r8, [r3, #92]
	str	r5, [r3, #72]
	ldrb	r5, [lr, #8]	@ zero_extendqisi2
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	ldrb	r2, [r2, fp, asl #1]	@ zero_extendqisi2
.LVL2546:
	ldrb	ip, [lr, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r8, [lr, #13]	@ zero_extendqisi2
	ldrb	r7, [r1, #4]	@ zero_extendqisi2
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #8
	ldrb	r4, [r1, #9]	@ zero_extendqisi2
	orr	r8, ip, r8, asl #8
	orr	r7, r7, r10, asl #8
	ldrb	ip, [r1, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #640]
.LVL2547:
	.loc 6 82 0
	orr	r6, r6, r4, asl #8
	ldrb	r9, [lr, #9]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #8
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #16
	orr	r5, r5, r9, asl #8
	ldrb	r4, [r1, #10]	@ zero_extendqisi2
	ldrb	r9, [lr, #10]	@ zero_extendqisi2
	orr	r7, r7, r10, asl #16
	ldrb	r10, [r1, #14]	@ zero_extendqisi2
	ldrb	fp, [lr, #14]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	orr	r6, r6, r4, asl #16
	ldrb	r9, [lr, #11]	@ zero_extendqisi2
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #16
	ldrb	r10, [lr, #15]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	orr	r4, r2, r4, asl #24
	orr	r8, r8, fp, asl #16
	.loc 6 85 0
	ldr	r2, [sp, #16]
	.loc 6 82 0
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #24
	str	r5, [r3, #96]
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	.loc 6 85 0
	ldr	r5, [sp, #16]
	add	r2, r1, r2
	.loc 6 82 0
	orr	r7, r7, fp, asl #24
	orr	r6, r6, r9, asl #24
	orr	r10, ip, r10, asl #24
	.loc 6 85 0
	add	ip, r2, r5
	.loc 6 83 0
	ldrb	fp, [r1, #16]	@ zero_extendqisi2
	ldrb	r9, [lr, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [r3, #112]
	str	r8, [r3, #100]
	str	r7, [r3, #116]
	str	r6, [r3, #120]
	ldrb	r7, [r1, r5, asl #1]	@ zero_extendqisi2
	ldrb	r8, [ip, #1]	@ zero_extendqisi2
	str	r10, [r3, #124]
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	.loc 6 83 0
	strb	fp, [sp, #688]
	strb	r9, [sp, #664]
.LVL2548:
	.loc 6 82 0
	mov	fp, r5
	ldrb	r9, [r2, #9]	@ zero_extendqisi2
	ldrb	lr, [lr, r5, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	ldrb	r4, [r2, #12]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	ldrb	r8, [r2, #13]	@ zero_extendqisi2
	orr	r6, r1, r6, asl #8
	orr	r5, r5, r9, asl #8
	ldrb	r1, [ip, #4]	@ zero_extendqisi2
	ldrb	r9, [ip, #5]	@ zero_extendqisi2
	orr	r4, r4, r8, asl #8
	ldrb	r8, [ip, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #1]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r9, [r2, #6]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	r10, [r2, #2]	@ zero_extendqisi2
	ldrb	r9, [r2, #14]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	ldrb	r8, [ip, #6]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	orr	r1, r1, r8, asl #16
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #16
	ldrb	r9, [ip, #3]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #24
	orr	r7, r7, r9, asl #24
	ldrb	r10, [r2, #11]	@ zero_extendqisi2
	ldrb	r9, [r2, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [ip, #7]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	orr	r4, r4, r9, asl #24
	orr	r8, r1, r8, asl #24
	.loc 6 85 0
	add	r1, ip, fp
	.loc 6 83 0
	ldrb	r9, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	lr, [r3, #136]
	str	r7, [r3, #160]
	str	r6, [r3, #140]
	str	r5, [r3, #144]
	str	r4, [r3, #148]
	str	r8, [r3, #164]
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	ldrb	r2, [r2, fp, asl #1]	@ zero_extendqisi2
.LVL2549:
	ldrb	lr, [ip, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r8, [ip, #13]	@ zero_extendqisi2
	ldrb	r7, [r1, #4]	@ zero_extendqisi2
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #8
	ldrb	r4, [r1, #9]	@ zero_extendqisi2
	orr	r8, lr, r8, asl #8
	orr	r7, r7, r10, asl #8
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	ldrb	r5, [ip, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #712]
.LVL2550:
	.loc 6 82 0
	orr	r6, r6, r4, asl #8
	ldrb	r9, [ip, #9]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #8
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #16
	orr	r5, r5, r9, asl #8
	ldrb	r4, [r1, #10]	@ zero_extendqisi2
	ldrb	r9, [ip, #10]	@ zero_extendqisi2
	orr	r7, r7, r10, asl #16
	ldrb	r10, [r1, #14]	@ zero_extendqisi2
	ldrb	fp, [ip, #14]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	orr	r6, r6, r4, asl #16
	ldrb	r9, [ip, #11]	@ zero_extendqisi2
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	ldrb	r10, [ip, #15]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	orr	r4, r2, r4, asl #24
	orr	r8, r8, fp, asl #16
	.loc 6 85 0
	ldr	r2, [sp, #16]
	.loc 6 82 0
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #24
	str	r5, [r3, #168]
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	.loc 6 85 0
	ldr	r5, [sp, #16]
	add	r2, r1, r2
	.loc 6 82 0
	orr	r7, r7, fp, asl #24
	orr	r6, r6, r9, asl #24
	orr	r10, lr, r10, asl #24
	.loc 6 83 0
	ldrb	r9, [ip, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	lr, r2, r5
	.loc 6 83 0
	ldrb	fp, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [r3, #184]
	str	r8, [r3, #172]
	str	r7, [r3, #188]
	str	r6, [r3, #192]
	ldrb	r8, [r1, r5, asl #1]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #736]
.LVL2551:
	.loc 6 82 0
	ldrb	r9, [lr, #1]	@ zero_extendqisi2
	str	r10, [r3, #196]
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	ldrb	r10, [r2, #9]	@ zero_extendqisi2
	.loc 6 83 0
	strb	fp, [sp, #760]
	.loc 6 82 0
	ldrb	ip, [ip, r5, asl #1]	@ zero_extendqisi2
	mov	fp, r5
	ldrb	r7, [r2, #5]	@ zero_extendqisi2
	ldrb	r6, [r2, #8]	@ zero_extendqisi2
	ldrb	r5, [r2, #12]	@ zero_extendqisi2
	orr	r8, r8, r9, asl #8
	ldrb	r9, [r2, #13]	@ zero_extendqisi2
	orr	r7, r1, r7, asl #8
	orr	r6, r6, r10, asl #8
	ldrb	r1, [lr, #4]	@ zero_extendqisi2
	ldrb	r10, [lr, #5]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #8
	ldrb	r9, [lr, #2]	@ zero_extendqisi2
	ldrb	r4, [r2, #1]	@ zero_extendqisi2
	orr	r1, r1, r10, asl #8
	orr	r8, r8, r9, asl #16
	ldrb	r10, [r2, #6]	@ zero_extendqisi2
	ldrb	r9, [r2, #10]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #8
	orr	r7, r7, r10, asl #16
	ldrb	r4, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #14]	@ zero_extendqisi2
	orr	r6, r6, r9, asl #16
	ldrb	r9, [lr, #6]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #16
	orr	r5, r5, r10, asl #16
	ldrb	r4, [r2, #3]	@ zero_extendqisi2
	ldrb	r10, [lr, #3]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #16
	ldrb	r9, [r2, #7]	@ zero_extendqisi2
	orr	r4, ip, r4, asl #24
	orr	r8, r8, r10, asl #24
	ldrb	ip, [r2, #11]	@ zero_extendqisi2
	ldrb	r10, [r2, #15]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #24
	ldrb	r9, [lr, #7]	@ zero_extendqisi2
	orr	r6, r6, ip, asl #24
	orr	r5, r5, r10, asl #24
	.loc 6 85 0
	add	ip, lr, fp
	.loc 6 82 0
	orr	r1, r1, r9, asl #24
	str	r4, [r3, #208]
	.loc 6 83 0
	ldrb	r9, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r8, [r3, #232]
	str	r7, [r3, #212]
	str	r6, [r3, #216]
	str	r5, [r3, #220]
	str	r1, [r3, #236]
	ldrb	r1, [r2, fp, asl #1]	@ zero_extendqisi2
	ldrb	r6, [lr, #12]	@ zero_extendqisi2
	ldrb	r10, [ip, #5]	@ zero_extendqisi2
	ldrb	r8, [lr, #13]	@ zero_extendqisi2
	ldrb	r2, [ip, #4]	@ zero_extendqisi2
.LVL2552:
	ldrb	r4, [ip, #1]	@ zero_extendqisi2
	orr	r8, r6, r8, asl #8
	orr	r2, r2, r10, asl #8
	ldrb	r6, [ip, #12]	@ zero_extendqisi2
	ldrb	r10, [ip, #13]	@ zero_extendqisi2
	ldrb	r5, [lr, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #784]
.LVL2553:
	.loc 6 82 0
	ldrb	r7, [ip, #8]	@ zero_extendqisi2
	ldrb	r9, [lr, #9]	@ zero_extendqisi2
	orr	r1, r1, r4, asl #8
	orr	r6, r6, r10, asl #8
	ldrb	r4, [ip, #9]	@ zero_extendqisi2
	ldrb	r10, [ip, #6]	@ zero_extendqisi2
	ldrb	fp, [lr, #14]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #16
	orr	r5, r5, r9, asl #8
	ldrb	r10, [ip, #14]	@ zero_extendqisi2
	ldrb	r9, [lr, #10]	@ zero_extendqisi2
	orr	r7, r7, r4, asl #8
	ldrb	r4, [ip, #2]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	orr	r1, r1, r4, asl #16
	ldrb	r9, [lr, #11]	@ zero_extendqisi2
	ldrb	r4, [ip, #10]	@ zero_extendqisi2
	orr	r8, r8, fp, asl #16
	orr	r6, r6, r10, asl #16
	ldrb	fp, [ip, #7]	@ zero_extendqisi2
	ldrb	r10, [lr, #15]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	orr	r8, r8, r10, asl #24
	ldrb	r9, [ip, #11]	@ zero_extendqisi2
	ldrb	r10, [ip, #15]	@ zero_extendqisi2
	orr	fp, r2, fp, asl #24
	orr	r7, r7, r4, asl #16
	.loc 6 85 0
	ldr	r2, [sp, #16]
	.loc 6 82 0
	ldrb	r4, [ip, #3]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #24
	orr	r4, r1, r4, asl #24
	.loc 6 83 0
	ldrb	r9, [ip, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	r1, ip, r2
	.loc 6 82 0
	orr	r6, r6, r10, asl #24
	str	r5, [r3, #240]
	.loc 6 85 0
	mov	r5, r2
	.loc 6 82 0
	str	r4, [sp, #816]
	str	r8, [r3, #244]
	.loc 6 83 0
	ldrb	r4, [lr, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	fp, [sp, #820]
	str	r7, [sp, #824]
	mov	fp, r5
	str	r6, [sp, #828]
	ldrb	r3, [lr, r5, asl #1]	@ zero_extendqisi2
	ldrb	r6, [ip, r5, asl #1]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #832]
	.loc 6 82 0
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	.loc 6 85 0
	add	r2, r1, r2
	.loc 6 82 0
	ldrb	r7, [r2, #1]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	ldrb	r8, [r2, #5]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r4, [sp, #808]
.LVL2554:
	.loc 6 82 0
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
	ldrb	r4, [r1, #12]	@ zero_extendqisi2
	orr	r5, r3, r5, asl #8
	orr	ip, ip, r9, asl #8
	ldrb	r3, [r1, #8]	@ zero_extendqisi2
	ldrb	r9, [r1, #9]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #8
	orr	r4, r4, r10, asl #8
	ldrb	r7, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r1, #2]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	orr	r3, r3, r9, asl #8
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	r9, [r1, #14]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #16
	orr	r5, r5, r10, asl #16
	ldrb	r7, [r2, #3]	@ zero_extendqisi2
	ldrb	r10, [r2, #6]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r4, r4, r9, asl #16
	ldrb	r8, [r1, #10]	@ zero_extendqisi2
	ldrb	r9, [r1, #3]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #24
	orr	r5, r5, r9, asl #24
	ldrb	r7, [r2, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #24
	orr	r4, r4, r8, asl #24
	orr	r7, lr, r7, asl #24
	orr	r9, r3, r9, asl #24
	.loc 6 85 0
	add	r3, r2, fp
	.loc 6 83 0
	ldrb	r8, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r6, [sp, #864]
	str	r5, [sp, #840]
	str	ip, [sp, #844]
	str	r7, [sp, #868]
	str	r9, [sp, #848]
	str	r4, [sp, #852]
	ldrb	r4, [r2, #8]	@ zero_extendqisi2
	ldrb	lr, [r1, fp, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r3, #5]	@ zero_extendqisi2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
.LVL2555:
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	r10, [r2, #13]	@ zero_extendqisi2
	ldrb	ip, [r2, #12]	@ zero_extendqisi2
	ldrb	r7, [r2, #9]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #8
	ldrb	r9, [r3, #2]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r8, [sp, #856]
.LVL2556:
	.loc 6 82 0
	ldrb	r6, [r3, #12]	@ zero_extendqisi2
	ldrb	r8, [r3, #13]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #8
	orr	ip, ip, r10, asl #8
	ldrb	r5, [r3, #8]	@ zero_extendqisi2
	ldrb	r10, [r3, #9]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #8
	orr	lr, lr, r9, asl #16
	ldrb	r7, [r2, #10]	@ zero_extendqisi2
	ldrb	r9, [r3, #14]	@ zero_extendqisi2
	ldrb	fp, [r3, #3]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #8
	orr	r5, r5, r10, asl #8
	ldrb	r8, [r2, #14]	@ zero_extendqisi2
	ldrb	r10, [r3, #6]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #16
	orr	r6, r6, r9, asl #16
	ldrb	r7, [r2, #11]	@ zero_extendqisi2
	ldrb	r9, [r2, #15]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r1, r1, r10, asl #16
	ldrb	r8, [r3, #10]	@ zero_extendqisi2
	ldrb	r10, [r3, #7]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	.loc 6 85 0
	ldr	fp, [sp, #16]
	.loc 6 82 0
	orr	r4, r4, r7, asl #24
	orr	r9, ip, r9, asl #24
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	ldrb	ip, [r3, #11]	@ zero_extendqisi2
	orr	r10, r1, r10, asl #24
	orr	r5, r5, r8, asl #16
	.loc 6 85 0
	add	r1, r3, fp
	.loc 6 82 0
	orr	r6, r6, r7, asl #24
	orr	r5, r5, ip, asl #24
	.loc 6 85 0
	add	ip, r1, fp
	.loc 6 83 0
	ldrb	r7, [r3, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [sp, #872]
	str	lr, [sp, #888]
	str	r9, [sp, #876]
	.loc 6 83 0
	ldrb	lr, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r10, [sp, #892]
	str	r6, [sp, #900]
	str	r5, [sp, #896]
	ldrb	r6, [r2, fp, asl #1]	@ zero_extendqisi2
	ldrb	r10, [ip, #5]	@ zero_extendqisi2
	ldrb	r2, [r3, fp, asl #1]	@ zero_extendqisi2
.LVL2557:
	ldrb	r5, [ip, #4]	@ zero_extendqisi2
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #5]	@ zero_extendqisi2
	ldrb	r8, [r1, #9]	@ zero_extendqisi2
	.loc 6 83 0
	strb	lr, [sp, #880]
.LVL2558:
	.loc 6 82 0
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	lr, [r1, #8]	@ zero_extendqisi2
	orr	r6, r6, r3, asl #8
	orr	r5, r5, r10, asl #8
	ldrb	r3, [r1, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r7, [sp, #904]
	.loc 6 82 0
	orr	r4, r4, r9, asl #8
	ldrb	r7, [ip, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #2]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	orr	r3, r3, r10, asl #8
	ldrb	r8, [ip, #6]	@ zero_extendqisi2
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	r7, [ip, #2]	@ zero_extendqisi2
	ldrb	r9, [r1, #10]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	orr	r4, r4, r10, asl #16
	ldrb	r8, [r1, #14]	@ zero_extendqisi2
	ldrb	r10, [ip, #7]	@ zero_extendqisi2
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	orr	r2, r2, r7, asl #16
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	ldrb	r7, [ip, #3]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	r9, [r1, #7]	@ zero_extendqisi2
	ldrb	r8, [r1, #11]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #24
	orr	r6, r6, fp, asl #24
	orr	r4, r4, r9, asl #24
	orr	lr, lr, r8, asl #24
	orr	r3, r3, r10, asl #24
	.loc 6 83 0
	ldrb	r1, [r1, #16]	@ zero_extendqisi2
.LVL2559:
	.loc 6 82 0
	str	r2, [sp, #936]
	str	r6, [sp, #912]
	str	r5, [sp, #940]
	str	r4, [sp, #916]
	str	lr, [sp, #920]
	str	r3, [sp, #924]
	.loc 6 83 0
	strb	r1, [sp, #928]
.LVL2560:
	.loc 6 82 0
	ldrb	r2, [ip, #8]	@ zero_extendqisi2
	ldrb	r1, [ip, #12]	@ zero_extendqisi2
	ldrb	r5, [ip, #13]	@ zero_extendqisi2
	ldrb	r3, [ip, #9]	@ zero_extendqisi2
	ldrb	r4, [ip, #14]	@ zero_extendqisi2
	ldrb	lr, [ip, #10]	@ zero_extendqisi2
	ldrb	r6, [ip, #15]	@ zero_extendqisi2
	orr	r3, r2, r3, asl #8
	orr	r2, r1, r5, asl #8
	orr	r2, r2, r4, asl #16
	ldrb	r1, [ip, #11]	@ zero_extendqisi2
	orr	r4, r2, r6, asl #24
.LBE3462:
.LBE3461:
	.loc 5 696 0 discriminator 1
	add	r8, sp, #552
	add	r6, sp, #280
	mov	r5, #17
.LBB3465:
.LBB3463:
	.loc 6 82 0
	orr	r3, r3, lr, asl #16
	orr	lr, r3, r1, asl #24
	.loc 6 83 0
	ldrb	ip, [ip, #16]	@ zero_extendqisi2
.LVL2561:
.LBE3463:
.LBE3465:
	.loc 5 696 0
	str	r0, [sp, #20]
	.loc 5 696 0 is_stmt 0 discriminator 1
	mov	r1, r8
	mov	r0, r6
.LVL2562:
	str	r5, [sp]
	mov	r2, #16
	mov	r3, #24
.LBB3466:
.LBB3464:
	.loc 6 82 0 is_stmt 1
	str	lr, [sp, #944]
	str	r4, [sp, #948]
	.loc 6 83 0
	strb	ip, [sp, #952]
.LVL2563:
.LBE3464:
.LBE3466:
	.loc 5 696 0 discriminator 1
	bl	put_no_rnd_mpeg4_qpel16_h_lowpass(PLT)
.LVL2564:
.LBB3467:
.LBB3468:
	.loc 4 219 0
	mov	r3, #16
	mov	ip, #24
	stmia	sp, {r3, ip}
	str	r5, [sp, #8]
	add	r2, r8, #1
	mov	r0, r6
	mov	r1, r6
	bl	put_no_rnd_pixels8_l2_8(PLT)
.LVL2565:
.LBB3469:
.LBB3470:
.LBB3471:
	.loc 4 219 0 is_stmt 0 discriminator 4
	ldrb	r3, [sp, #564]	@ zero_extendqisi2
	ldr	r1, [sp, #560]
	ldrb	r6, [sp, #592]	@ zero_extendqisi2
.LVL2566:
	mov	r3, r3, asl #24
	ldrb	r7, [sp, #588]	@ zero_extendqisi2
	ldrb	r5, [sp, #616]	@ zero_extendqisi2
	orr	r3, r3, r1, lsr #8
	ldr	r1, [sp, #588]
	ldrb	r9, [sp, #568]	@ zero_extendqisi2
	ldrb	r4, [sp, #636]	@ zero_extendqisi2
	mov	r6, r6, asl #24
	ldr	r10, [sp, #288]
.LVL2567:
	ldr	fp, [sp, #584]
	mov	ip, r7, asl #24
	mov	r0, r5, asl #24
	ldr	r7, [sp, #564]
	ldr	r5, [sp, #612]
	orr	r6, r6, r1, lsr #8
	ldr	r1, [sp, #632]
	ldrb	r2, [sp, #612]	@ zero_extendqisi2
	ldrb	lr, [sp, #640]	@ zero_extendqisi2
	mov	r8, r9, asl #24
	mov	r4, r4, asl #24
	orr	r9, r8, r7, lsr #8
	orr	r5, r0, r5, lsr #8
	orr	r7, ip, fp, lsr #8
	ldr	r8, [sp, #608]
	ldr	ip, [sp, #636]
	orr	r4, r4, r1, lsr #8
.LBB3472:
.LBB3473:
	.loc 2 38 0 is_stmt 1
	eor	r0, r3, r10
	and	r1, r3, r10
	ldr	r3, .L322
.LVL2568:
.LBE3473:
.LBE3472:
	.loc 4 219 0 discriminator 4
	mov	r2, r2, asl #24
	mov	lr, lr, asl #24
	orr	r2, r2, r8, lsr #8
	orr	lr, lr, ip, lsr #8
	ldr	r8, [sp, #292]
.LVL2569:
	ldr	ip, [sp, #304]
.LBB3516:
.LBB3474:
	.loc 2 38 0
	and	r10, r0, r3
.LVL2570:
	add	r10, r1, r10, lsr #1
.LBE3474:
.LBE3516:
	.loc 4 219 0 discriminator 4
	str	r10, [sp, #288]
.LVL2571:
.LBB3517:
.LBB3518:
	.loc 2 38 0
	eor	r10, r9, r8
	and	r8, r8, r9
.LVL2572:
.LBE3518:
.LBE3517:
.LBB3560:
.LBB3475:
	eor	r9, r7, ip
.LVL2573:
	and	r9, r9, r3
	and	ip, ip, r7
	add	r9, ip, r9, lsr #1
.LBE3475:
.LBE3560:
.LBB3561:
.LBB3519:
	ldr	ip, [sp, #308]
	ldr	r7, [sp, #308]
	and	r10, r10, r3
.LBE3519:
.LBE3561:
	.loc 4 219 0 discriminator 4
	ldr	fp, [sp, #320]
	ldr	r0, [sp, #324]
	ldr	r1, [sp, #336]
.LBB3562:
.LBB3520:
	.loc 2 38 0
	add	r10, r8, r10, lsr #1
	eor	ip, r6, ip
.LBE3520:
.LBE3562:
	.loc 4 219 0 discriminator 4
	ldr	r8, [sp, #340]
.LBB3563:
.LBB3521:
	.loc 2 38 0
	and	r6, r6, r7
	and	ip, ip, r3
.LBE3521:
.LBE3563:
	.loc 4 219 0 discriminator 4
	str	r10, [sp, #292]
.LVL2574:
.LBB3564:
.LBB3522:
	.loc 2 38 0
	add	ip, r6, ip, lsr #1
	eor	r7, r5, r0
.LVL2575:
.LBE3522:
.LBE3564:
.LBB3565:
.LBB3476:
	eor	r6, r2, fp
	eor	r10, r4, r1
	and	r1, r1, r4
.LBE3476:
.LBE3565:
.LBB3566:
.LBB3523:
	eor	r4, lr, r8
.LBE3523:
.LBE3566:
.LBB3567:
.LBB3477:
	and	r6, r6, r3
.LBE3477:
.LBE3567:
.LBB3568:
.LBB3524:
	and	r7, r7, r3
.LBE3524:
.LBE3568:
.LBB3569:
.LBB3478:
	and	r10, r10, r3
.LBE3478:
.LBE3569:
.LBB3570:
.LBB3525:
	and	r4, r4, r3
.LBE3525:
.LBE3570:
.LBB3571:
.LBB3479:
	and	r2, r2, fp
.LBE3479:
.LBE3571:
.LBB3572:
.LBB3526:
	and	r0, r0, r5
	and	lr, lr, r8
.LBE3526:
.LBE3572:
.LBB3573:
.LBB3480:
	add	r2, r2, r6, lsr #1
.LBE3480:
.LBE3573:
.LBB3574:
.LBB3527:
	add	r0, r0, r7, lsr #1
.LBE3527:
.LBE3574:
.LBB3575:
.LBB3481:
	add	r1, r1, r10, lsr #1
.LBE3481:
.LBE3575:
.LBB3576:
.LBB3528:
	add	lr, lr, r4, lsr #1
.LBE3528:
.LBE3576:
	.loc 4 219 0 discriminator 4
	str	r9, [sp, #304]
	str	ip, [sp, #308]
.LVL2576:
	str	r2, [sp, #320]
	str	r0, [sp, #324]
.LVL2577:
	str	r1, [sp, #336]
	str	lr, [sp, #340]
.LVL2578:
	ldr	r10, [sp, #352]
.LVL2579:
	ldrb	r7, [sp, #684]	@ zero_extendqisi2
	ldrb	r5, [sp, #712]	@ zero_extendqisi2
	ldrb	r1, [sp, #660]	@ zero_extendqisi2
	ldrb	r6, [sp, #688]	@ zero_extendqisi2
	mov	ip, r7, asl #24
	ldr	r7, [sp, #656]
	ldrb	r9, [sp, #664]	@ zero_extendqisi2
	mov	r0, r5, asl #24
	mov	r1, r1, asl #24
	ldr	r5, [sp, #684]
	orr	fp, r1, r7, lsr #8
.LVL2580:
	mov	r6, r6, asl #24
	ldr	r1, [sp, #660]
	ldrb	r2, [sp, #708]	@ zero_extendqisi2
	orr	r6, r6, r5, lsr #8
	mov	r8, r9, asl #24
.LVL2581:
	ldr	r5, [sp, #708]
	orr	r9, r8, r1, lsr #8
	ldrb	lr, [sp, #736]	@ zero_extendqisi2
	ldr	r1, [sp, #704]
	orr	r5, r0, r5, lsr #8
	ldrb	r4, [sp, #732]	@ zero_extendqisi2
	ldr	r0, [sp, #732]
	mov	r2, r2, asl #24
	ldr	r7, [sp, #680]
	orr	r2, r2, r1, lsr #8
	mov	lr, lr, asl #24
	ldr	r1, [sp, #728]
	orr	lr, lr, r0, lsr #8
	mov	r4, r4, asl #24
.LBB3577:
.LBB3482:
	.loc 2 38 0
	eor	r0, fp, r10
.LBE3482:
.LBE3577:
	.loc 4 219 0 discriminator 4
	ldr	r8, [sp, #356]
.LVL2582:
	orr	r7, ip, r7, lsr #8
	orr	r4, r4, r1, lsr #8
	ldr	ip, [sp, #368]
.LBB3578:
.LBB3483:
	.loc 2 38 0
	and	r0, r0, r3
	and	r1, fp, r10
	add	r10, r1, r0, lsr #1
.LVL2583:
.LBE3483:
.LBE3578:
	.loc 4 219 0 discriminator 4
	str	r10, [sp, #352]
.LVL2584:
.LBB3579:
.LBB3529:
	.loc 2 38 0
	eor	r10, r9, r8
	and	r8, r8, r9
.LVL2585:
.LBE3529:
.LBE3579:
.LBB3580:
.LBB3484:
	eor	r9, r7, ip
.LVL2586:
	and	r9, r9, r3
	and	ip, ip, r7
	add	r9, ip, r9, lsr #1
.LBE3484:
.LBE3580:
.LBB3581:
.LBB3530:
	ldr	ip, [sp, #372]
	ldr	r7, [sp, #372]
	and	r10, r10, r3
.LBE3530:
.LBE3581:
	.loc 4 219 0 discriminator 4
	ldr	fp, [sp, #384]
.LVL2587:
	ldr	r0, [sp, #388]
	ldr	r1, [sp, #400]
.LBB3582:
.LBB3531:
	.loc 2 38 0
	add	r10, r8, r10, lsr #1
	eor	ip, r6, ip
.LBE3531:
.LBE3582:
	.loc 4 219 0 discriminator 4
	ldr	r8, [sp, #404]
.LBB3583:
.LBB3532:
	.loc 2 38 0
	and	r6, r6, r7
	and	ip, ip, r3
.LBE3532:
.LBE3583:
	.loc 4 219 0 discriminator 4
	str	r10, [sp, #356]
.LVL2588:
.LBB3584:
.LBB3533:
	.loc 2 38 0
	add	ip, r6, ip, lsr #1
	eor	r7, r5, r0
.LVL2589:
.LBE3533:
.LBE3584:
.LBB3585:
.LBB3485:
	eor	r6, r2, fp
	eor	r10, r4, r1
	and	r1, r1, r4
.LBE3485:
.LBE3585:
.LBB3586:
.LBB3534:
	eor	r4, lr, r8
.LBE3534:
.LBE3586:
.LBB3587:
.LBB3486:
	and	r6, r6, r3
.LBE3486:
.LBE3587:
.LBB3588:
.LBB3535:
	and	r7, r7, r3
.LBE3535:
.LBE3588:
.LBB3589:
.LBB3487:
	and	r10, r10, r3
.LBE3487:
.LBE3589:
.LBB3590:
.LBB3536:
	and	r4, r4, r3
.LBE3536:
.LBE3590:
.LBB3591:
.LBB3488:
	and	r2, r2, fp
.LBE3488:
.LBE3591:
.LBB3592:
.LBB3537:
	and	r0, r0, r5
	and	lr, lr, r8
.LBE3537:
.LBE3592:
.LBB3593:
.LBB3489:
	add	r2, r2, r6, lsr #1
.LBE3489:
.LBE3593:
.LBB3594:
.LBB3538:
	add	r0, r0, r7, lsr #1
.LBE3538:
.LBE3594:
.LBB3595:
.LBB3490:
	add	r1, r1, r10, lsr #1
.LBE3490:
.LBE3595:
.LBB3596:
.LBB3539:
	add	lr, lr, r4, lsr #1
.LBE3539:
.LBE3596:
	.loc 4 219 0 discriminator 4
	str	r9, [sp, #368]
	str	ip, [sp, #372]
.LVL2590:
	str	r2, [sp, #384]
	str	r0, [sp, #388]
.LVL2591:
	str	r1, [sp, #400]
	str	lr, [sp, #404]
.LVL2592:
	ldr	r8, [sp, #416]
.LVL2593:
	ldrb	fp, [sp, #760]	@ zero_extendqisi2
	ldrb	r9, [sp, #780]	@ zero_extendqisi2
	mov	r1, fp, asl #24
	ldr	fp, [sp, #756]
	ldrb	ip, [sp, #756]	@ zero_extendqisi2
	orr	fp, r1, fp, lsr #8
	ldr	r1, [sp, #776]
	ldrb	r7, [sp, #784]	@ zero_extendqisi2
	mov	r9, r9, asl #24
	ldr	r10, [sp, #752]
	orr	r9, r9, r1, lsr #8
	ldr	r1, [sp, #780]
	ldrb	r6, [sp, #804]	@ zero_extendqisi2
	mov	r0, ip, asl #24
	mov	r7, r7, asl #24
	orr	r7, r7, r1, lsr #8
	orr	ip, r0, r10, lsr #8
.LVL2594:
	ldr	r1, [sp, #800]
.LBB3597:
.LBB3491:
	.loc 2 38 0
	eor	r0, ip, r8
.LBE3491:
.LBE3597:
	.loc 4 219 0 discriminator 4
	ldrb	r2, [sp, #808]	@ zero_extendqisi2
	ldrb	r4, [sp, #832]	@ zero_extendqisi2
	mov	r6, r6, asl #24
.LBB3598:
.LBB3492:
	.loc 2 38 0
	and	r10, r0, r3
.LBE3492:
.LBE3598:
	.loc 4 219 0 discriminator 4
	orr	r6, r6, r1, lsr #8
	ldr	r0, [sp, #804]
	ldr	r1, [sp, #828]
	ldrb	r5, [sp, #828]	@ zero_extendqisi2
	mov	r2, r2, asl #24
	mov	r4, r4, asl #24
	orr	r4, r4, r1, lsr #8
	ldrb	lr, [sp, #852]	@ zero_extendqisi2
	ldr	r1, [sp, #420]
.LVL2595:
	orr	r2, r2, r0, lsr #8
	ldr	r0, [sp, #824]
.LBB3599:
.LBB3493:
	.loc 2 38 0
	and	ip, ip, r8
.LVL2596:
.LBE3493:
.LBE3599:
	.loc 4 219 0 discriminator 4
	mov	r5, r5, asl #24
	ldr	r8, [sp, #848]
.LVL2597:
	orr	r5, r5, r0, lsr #8
	mov	lr, lr, asl #24
.LBB3600:
.LBB3494:
	.loc 2 38 0
	add	r0, ip, r10, lsr #1
.LBE3494:
.LBE3600:
.LBB3601:
.LBB3540:
	eor	r10, fp, r1
.LBE3540:
.LBE3601:
	.loc 4 219 0 discriminator 4
	orr	lr, lr, r8, lsr #8
	str	r0, [sp, #416]
.LVL2598:
	ldr	r8, [sp, #432]
.LBB3602:
.LBB3541:
	.loc 2 38 0
	and	r0, r10, r3
	and	r1, r1, fp
.LVL2599:
	add	r10, r1, r0, lsr #1
.LBE3541:
.LBE3602:
	.loc 4 219 0 discriminator 4
	ldr	ip, [sp, #436]
	str	r10, [sp, #420]
.LVL2600:
.LBB3603:
.LBB3495:
	.loc 2 38 0
	eor	r10, r9, r8
	and	r10, r10, r3
	and	r8, r8, r9
.LVL2601:
	add	r10, r8, r10, lsr #1
.LBE3495:
.LBE3603:
.LBB3604:
.LBB3542:
	eor	r8, r7, ip
	and	r8, r8, r3
	and	ip, ip, r7
.LVL2602:
	add	r8, ip, r8, lsr #1
.LBE3542:
.LBE3604:
.LBB3605:
.LBB3496:
	ldr	r7, [sp, #448]
.LVL2603:
	ldr	ip, [sp, #448]
.LBE3496:
.LBE3605:
	.loc 4 219 0 discriminator 4
	ldr	r0, [sp, #464]
.LBB3606:
.LBB3497:
	.loc 2 38 0
	eor	ip, r6, ip
	and	r6, r6, r7
.LBE3497:
.LBE3606:
.LBB3607:
.LBB3543:
	ldr	r7, [sp, #452]
.LBE3543:
.LBE3607:
	.loc 4 219 0 discriminator 4
	ldr	r1, [sp, #468]
.LBB3608:
.LBB3498:
	.loc 2 38 0
	and	ip, ip, r3
	add	ip, r6, ip, lsr #1
.LBE3498:
.LBE3608:
.LBB3609:
.LBB3544:
	eor	r6, r2, r7
	and	r6, r6, r3
	eor	r9, r4, r1
.LVL2604:
	and	r2, r2, r7
.LBE3544:
.LBE3609:
.LBB3610:
.LBB3499:
	eor	r7, r5, r0
	and	r7, r7, r3
.LBE3499:
.LBE3610:
.LBB3611:
.LBB3545:
	and	r9, r9, r3
	add	r2, r2, r6, lsr #1
.LBE3545:
.LBE3611:
.LBB3612:
.LBB3500:
	and	r0, r0, r5
.LBE3500:
.LBE3612:
.LBB3613:
.LBB3546:
	and	r1, r1, r4
.LBE3546:
.LBE3613:
	.loc 4 219 0 discriminator 4
	ldr	fp, [sp, #480]
	str	r10, [sp, #432]
.LVL2605:
.LBB3614:
.LBB3501:
	.loc 2 38 0
	add	r0, r0, r7, lsr #1
.LBE3501:
.LBE3614:
.LBB3615:
.LBB3547:
	add	r1, r1, r9, lsr #1
.LBE3547:
.LBE3615:
	.loc 4 219 0 discriminator 4
	str	r8, [sp, #436]
.LVL2606:
	str	ip, [sp, #448]
	str	r2, [sp, #452]
	ldrb	r7, [sp, #880]	@ zero_extendqisi2
	ldrb	r5, [sp, #924]	@ zero_extendqisi2
	str	r1, [sp, #468]
	ldrb	r1, [sp, #856]	@ zero_extendqisi2
	ldrb	r6, [sp, #900]	@ zero_extendqisi2
	mov	ip, r7, asl #24
	ldr	r7, [sp, #852]
	ldrb	r9, [sp, #876]	@ zero_extendqisi2
.LBB3616:
.LBB3502:
	.loc 2 38 0
	eor	r10, lr, fp
.LBE3502:
.LBE3616:
	.loc 4 219 0 discriminator 4
	str	r0, [sp, #464]
	mov	r1, r1, asl #24
	mov	r0, r5, asl #24
	ldr	r5, [sp, #896]
.LBB3617:
.LBB3503:
	.loc 2 38 0
	and	r10, r10, r3
.LVL2607:
	and	lr, lr, fp
.LVL2608:
.LBE3503:
.LBE3617:
	.loc 4 219 0 discriminator 4
	mov	r6, r6, asl #24
	orr	fp, r1, r7, lsr #8
.LVL2609:
	ldr	r1, [sp, #872]
.LBB3618:
.LBB3504:
	.loc 2 38 0
	add	lr, lr, r10, lsr #1
.LBE3504:
.LBE3618:
	.loc 4 219 0 discriminator 4
	ldrb	r2, [sp, #904]	@ zero_extendqisi2
	orr	r6, r6, r5, lsr #8
	mov	r8, r9, asl #24
	ldr	r5, [sp, #920]
	orr	r9, r8, r1, lsr #8
	str	lr, [sp, #480]
.LVL2610:
	ldr	r1, [sp, #900]
	ldrb	lr, [sp, #948]	@ zero_extendqisi2
	ldr	r10, [sp, #484]
.LVL2611:
	orr	r5, r0, r5, lsr #8
	ldrb	r4, [sp, #928]	@ zero_extendqisi2
	ldr	r0, [sp, #944]
	mov	r2, r2, asl #24
	ldr	r7, [sp, #876]
	orr	r2, r2, r1, lsr #8
	mov	lr, lr, asl #24
	ldr	r1, [sp, #924]
	orr	lr, lr, r0, lsr #8
	mov	r4, r4, asl #24
.LBB3619:
.LBB3548:
	.loc 2 38 0
	eor	r0, fp, r10
.LBE3548:
.LBE3619:
	.loc 4 219 0 discriminator 4
	ldr	r8, [sp, #496]
	orr	r7, ip, r7, lsr #8
	orr	r4, r4, r1, lsr #8
	ldr	ip, [sp, #500]
.LBB3620:
.LBB3549:
	.loc 2 38 0
	and	r0, r0, r3
	and	r1, fp, r10
	add	r10, r1, r0, lsr #1
.LVL2612:
.LBE3549:
.LBE3620:
	.loc 4 219 0 discriminator 4
	str	r10, [sp, #484]
.LVL2613:
.LBB3621:
.LBB3505:
	.loc 2 38 0
	eor	r10, r9, r8
	and	r8, r8, r9
.LVL2614:
.LBE3505:
.LBE3621:
.LBB3622:
.LBB3550:
	eor	r9, r7, ip
.LVL2615:
	and	r9, r9, r3
	and	ip, ip, r7
.LVL2616:
	add	r9, ip, r9, lsr #1
.LBE3550:
.LBE3622:
.LBB3623:
.LBB3506:
	ldr	ip, [sp, #512]
	ldr	r7, [sp, #512]
.LVL2617:
.LBE3506:
.LBE3623:
	.loc 4 219 0 discriminator 4
	ldr	fp, [sp, #516]
	ldr	r0, [sp, #528]
	ldr	r1, [sp, #532]
.LBB3624:
.LBB3507:
	.loc 2 38 0
	and	r10, r10, r3
	eor	ip, r6, ip
	add	r10, r8, r10, lsr #1
	and	r6, r6, r7
	and	ip, ip, r3
	add	ip, r6, ip, lsr #1
.LBE3507:
.LBE3624:
	.loc 4 219 0 discriminator 4
	str	r10, [sp, #496]
.LVL2618:
.LBB3625:
.LBB3551:
	.loc 2 38 0
	eor	r6, r2, fp
.LBE3551:
.LBE3625:
.LBB3626:
.LBB3508:
	eor	r7, r5, r0
.LBE3508:
.LBE3626:
.LBB3627:
.LBB3552:
	eor	r10, r4, r1
	and	r6, r6, r3
.LBE3552:
.LBE3627:
.LBB3628:
.LBB3509:
	and	r7, r7, r3
.LBE3509:
.LBE3628:
.LBB3629:
.LBB3553:
	and	r10, r10, r3
	and	r2, r2, fp
.LBE3553:
.LBE3629:
.LBB3630:
.LBB3510:
	and	r0, r0, r5
.LBE3510:
.LBE3630:
.LBB3631:
.LBB3554:
	and	r1, r1, r4
	add	r2, r2, r6, lsr #1
.LBE3554:
.LBE3631:
.LBB3632:
.LBB3511:
	add	r0, r0, r7, lsr #1
.LBE3511:
.LBE3632:
.LBB3633:
.LBB3555:
	add	r1, r1, r10, lsr #1
.LBE3555:
.LBE3633:
	.loc 4 219 0 discriminator 4
	str	ip, [sp, #512]
	ldr	r8, [sp, #544]
	str	r2, [sp, #516]
	str	r9, [sp, #500]
.LVL2619:
	str	r0, [sp, #528]
	str	r1, [sp, #532]
	ldrb	r1, [sp, #952]	@ zero_extendqisi2
	ldr	r0, [sp, #948]
	ldr	r2, [sp, #548]
	mov	r1, r1, asl #24
	orr	r1, r1, r0, lsr #8
.LBB3634:
.LBB3556:
	.loc 2 38 0
	eor	r0, r1, r2
.LBE3556:
.LBE3634:
.LBB3635:
.LBB3512:
	eor	r4, lr, r8
.LBE3512:
.LBE3635:
.LBE3471:
.LBE3470:
.LBE3469:
.LBE3468:
.LBE3467:
	.loc 5 696 0 discriminator 3
	add	r5, sp, #24
	add	r6, sp, #280
.LVL2620:
.LBB3650:
.LBB3648:
.LBB3646:
.LBB3644:
.LBB3642:
.LBB3636:
.LBB3513:
	.loc 2 38 0
	and	r4, r4, r3
.LVL2621:
.LBE3513:
.LBE3636:
.LBB3637:
.LBB3557:
	and	r2, r2, r1
.LVL2622:
.LBE3557:
.LBE3637:
.LBB3638:
.LBB3514:
	and	lr, lr, r8
.LVL2623:
.LBE3514:
.LBE3638:
.LBB3639:
.LBB3558:
	and	r3, r3, r0
.LBE3558:
.LBE3639:
.LBB3640:
.LBB3515:
	add	lr, lr, r4, lsr #1
.LBE3515:
.LBE3640:
.LBB3641:
.LBB3559:
	add	r3, r2, r3, lsr #1
.LBE3559:
.LBE3641:
.LBE3642:
.LBE3644:
.LBE3646:
.LBE3648:
.LBE3650:
	.loc 5 696 0 discriminator 3
	mov	r0, r5
	mov	r1, r6
.LVL2624:
	mov	r2, #16
.LBB3651:
.LBB3652:
	.loc 4 219 0
	mov	r4, r2
.LBE3652:
.LBE3651:
.LBB3654:
.LBB3649:
.LBB3647:
.LBB3645:
.LBB3643:
	.loc 4 219 0 is_stmt 0 discriminator 4
	str	lr, [sp, #544]
	str	r3, [sp, #548]
.LVL2625:
.LBE3643:
.LBE3645:
.LBE3647:
.LBE3649:
.LBE3654:
	.loc 5 696 0 is_stmt 1 discriminator 3
	bl	put_no_rnd_mpeg4_qpel16_v_lowpass.constprop.5(PLT)
.LVL2626:
.LBB3655:
.LBB3653:
	.loc 4 219 0
	mov	r1, r6
	mov	r2, r5
	ldr	r6, [sp, #20]
.LVL2627:
	ldr	r5, [sp, #16]
.LVL2628:
	mov	r0, r6
	mov	r3, r5
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #8]
	bl	put_no_rnd_pixels8_l2_8(PLT)
.LVL2629:
	.loc 4 219 0 is_stmt 0 discriminator 1
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #8]
	add	r0, r6, #8
	mov	r3, r5
	add	r1, sp, #288
.LVL2630:
	add	r2, sp, #32
	bl	put_no_rnd_pixels8_l2_8(PLT)
.LVL2631:
.LBE3653:
.LBE3655:
	.loc 5 696 0 is_stmt 1
	add	sp, sp, #964
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2632:
.L323:
	.align	2
.L322:
	.word	-16843010
	.cfi_endproc
.LFE182:
	.size	put_no_rnd_qpel16_mc31_c, .-put_no_rnd_qpel16_mc31_c
	.align	2
	.type	put_no_rnd_qpel16_mc13_c, %function
put_no_rnd_qpel16_mc13_c:
.LFB184:
	.loc 5 696 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 944
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2633:
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
	sub	sp, sp, #964
	.cfi_def_cfa_offset 1000
.LVL2634:
.LBB3669:
.LBB3670:
	.loc 6 85 0
	add	r4, r1, r2
	.loc 6 82 0
	str	r2, [sp, #20]
	ldrb	r3, [r1, r2]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r2, [r1]	@ zero_extendqisi2
.LVL2635:
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	ldrb	r6, [r1, #4]	@ zero_extendqisi2
	orr	r7, r2, r7, asl #8
	orr	r6, r6, r10, asl #8
	ldrb	r2, [r4, #4]	@ zero_extendqisi2
	ldrb	r10, [r4, #5]	@ zero_extendqisi2
	ldrb	r9, [r1, #9]	@ zero_extendqisi2
	ldrb	r8, [r1, #13]	@ zero_extendqisi2
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
	ldrb	ip, [r1, #12]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #8
	ldrb	r10, [r1, #10]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #8
	orr	ip, ip, r8, asl #8
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	lr, [r4, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #2]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #16
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #16
	ldrb	r8, [r4, #6]	@ zero_extendqisi2
	orr	r6, r6, r10, asl #24
	orr	r3, r3, lr, asl #8
	ldrb	r10, [r4, #7]	@ zero_extendqisi2
	ldrb	lr, [r4, #2]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #16
	ldrb	r9, [r1, #14]	@ zero_extendqisi2
	orr	r2, r2, r8, asl #16
	orr	r3, r3, lr, asl #16
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	lr, [r4, #3]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #16
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #24
	.loc 6 85 0
	ldr	r10, [sp, #20]
	.loc 6 82 0
	orr	lr, r3, lr, asl #24
	orr	r7, r7, fp, asl #24
	add	r3, sp, #560
	orr	r5, r5, r9, asl #24
	orr	r8, ip, r8, asl #24
	.loc 6 85 0
	add	ip, r4, r10
	.loc 6 83 0
	ldrb	r9, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	stmia	r3, {r5, r8}
	str	lr, [r3, #16]
	str	r7, [r3, #-8]
	str	r6, [r3, #-4]
	str	r2, [r3, #20]
	ldrb	r2, [r1, r10, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r4, #13]	@ zero_extendqisi2
	ldrb	r1, [r4, #12]	@ zero_extendqisi2
.LVL2636:
	ldrb	r10, [ip, #5]	@ zero_extendqisi2
	ldrb	r7, [ip, #4]	@ zero_extendqisi2
	ldrb	r5, [ip, #1]	@ zero_extendqisi2
	orr	r8, r1, r8, asl #8
	orr	r7, r7, r10, asl #8
	ldrb	r1, [ip, #12]	@ zero_extendqisi2
	ldrb	r10, [ip, #13]	@ zero_extendqisi2
	ldrb	r6, [ip, #8]	@ zero_extendqisi2
	orr	r2, r2, r5, asl #8
	ldrb	r5, [ip, #9]	@ zero_extendqisi2
	ldrb	lr, [r4, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #568]
.LVL2637:
	.loc 6 82 0
	orr	r1, r1, r10, asl #8
	ldrb	r9, [r4, #9]	@ zero_extendqisi2
	ldrb	r10, [ip, #6]	@ zero_extendqisi2
	ldrb	fp, [r4, #14]	@ zero_extendqisi2
	orr	r6, r6, r5, asl #8
	ldrb	r5, [ip, #2]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #8
	orr	r7, r7, r10, asl #16
	ldrb	r9, [r4, #10]	@ zero_extendqisi2
	ldrb	r10, [ip, #14]	@ zero_extendqisi2
	orr	r2, r2, r5, asl #16
	orr	r8, r8, fp, asl #16
	ldrb	r5, [ip, #10]	@ zero_extendqisi2
	ldrb	fp, [ip, #7]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #16
	orr	r1, r1, r10, asl #16
	ldrb	r9, [r4, #11]	@ zero_extendqisi2
	ldrb	r10, [r4, #15]	@ zero_extendqisi2
	orr	r7, r7, fp, asl #24
	orr	r6, r6, r5, asl #16
	.loc 6 85 0
	ldr	fp, [sp, #20]
	.loc 6 82 0
	ldrb	r5, [ip, #3]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #24
	orr	r8, r8, r10, asl #24
	ldrb	r9, [ip, #11]	@ zero_extendqisi2
	ldrb	r10, [ip, #15]	@ zero_extendqisi2
	orr	r5, r2, r5, asl #24
	.loc 6 85 0
	add	r2, ip, fp
	.loc 6 82 0
	orr	r6, r6, r9, asl #24
	orr	r1, r1, r10, asl #24
	str	lr, [r3, #24]
	.loc 6 85 0
	add	lr, r2, fp
	.loc 6 83 0
	ldrb	r10, [ip, #16]	@ zero_extendqisi2
	ldrb	r9, [r4, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r5, [r3, #40]
	str	r8, [r3, #28]
	str	r7, [r3, #44]
	str	r6, [r3, #48]
	str	r1, [r3, #52]
	ldrb	r7, [ip, fp, asl #1]	@ zero_extendqisi2
	ldrb	r8, [lr, #1]	@ zero_extendqisi2
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r10, [sp, #616]
	strb	r9, [sp, #592]
.LVL2638:
	.loc 6 82 0
	ldrb	r10, [r4, fp, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r2, #9]	@ zero_extendqisi2
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	ldrb	r4, [r2, #12]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	ldrb	r8, [r2, #13]	@ zero_extendqisi2
	orr	r6, r1, r6, asl #8
	orr	r5, r5, r9, asl #8
	ldrb	r1, [lr, #4]	@ zero_extendqisi2
	ldrb	r9, [lr, #5]	@ zero_extendqisi2
	orr	r4, r4, r8, asl #8
	ldrb	r8, [lr, #2]	@ zero_extendqisi2
	ldrb	ip, [r2, #1]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r9, [r2, #6]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	orr	ip, r10, ip, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	r10, [r2, #2]	@ zero_extendqisi2
	ldrb	r9, [r2, #14]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	ldrb	r8, [lr, #6]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #16
	orr	r1, r1, r8, asl #16
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #16
	ldrb	r9, [lr, #3]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #24
	orr	r7, r7, r9, asl #24
	ldrb	r10, [r2, #11]	@ zero_extendqisi2
	ldrb	r9, [r2, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [lr, #7]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	orr	r4, r4, r9, asl #24
	orr	r8, r1, r8, asl #24
	.loc 6 85 0
	add	r1, lr, fp
	.loc 6 83 0
	ldrb	r9, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	ip, [r3, #64]
	str	r7, [r3, #88]
	str	r6, [r3, #68]
	str	r4, [r3, #76]
	str	r8, [r3, #92]
	str	r5, [r3, #72]
	ldrb	r5, [lr, #8]	@ zero_extendqisi2
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	ldrb	r2, [r2, fp, asl #1]	@ zero_extendqisi2
.LVL2639:
	ldrb	ip, [lr, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r8, [lr, #13]	@ zero_extendqisi2
	ldrb	r7, [r1, #4]	@ zero_extendqisi2
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #8
	ldrb	r4, [r1, #9]	@ zero_extendqisi2
	orr	r8, ip, r8, asl #8
	orr	r7, r7, r10, asl #8
	ldrb	ip, [r1, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #640]
.LVL2640:
	.loc 6 82 0
	orr	r6, r6, r4, asl #8
	ldrb	r9, [lr, #9]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #8
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #16
	orr	r5, r5, r9, asl #8
	ldrb	r4, [r1, #10]	@ zero_extendqisi2
	ldrb	r9, [lr, #10]	@ zero_extendqisi2
	orr	r7, r7, r10, asl #16
	ldrb	r10, [r1, #14]	@ zero_extendqisi2
	ldrb	fp, [lr, #14]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	orr	r6, r6, r4, asl #16
	ldrb	r9, [lr, #11]	@ zero_extendqisi2
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #16
	ldrb	r10, [lr, #15]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	orr	r4, r2, r4, asl #24
	orr	r8, r8, fp, asl #16
	.loc 6 85 0
	ldr	r2, [sp, #20]
	.loc 6 82 0
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #24
	str	r5, [r3, #96]
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	.loc 6 85 0
	ldr	r5, [sp, #20]
	add	r2, r1, r2
	.loc 6 82 0
	orr	r7, r7, fp, asl #24
	orr	r6, r6, r9, asl #24
	orr	r10, ip, r10, asl #24
	.loc 6 85 0
	add	ip, r2, r5
	.loc 6 83 0
	ldrb	fp, [r1, #16]	@ zero_extendqisi2
	ldrb	r9, [lr, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [r3, #112]
	str	r8, [r3, #100]
	str	r7, [r3, #116]
	str	r6, [r3, #120]
	ldrb	r7, [r1, r5, asl #1]	@ zero_extendqisi2
	ldrb	r8, [ip, #1]	@ zero_extendqisi2
	str	r10, [r3, #124]
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	.loc 6 83 0
	strb	fp, [sp, #688]
	strb	r9, [sp, #664]
.LVL2641:
	.loc 6 82 0
	mov	fp, r5
	ldrb	r9, [r2, #9]	@ zero_extendqisi2
	ldrb	lr, [lr, r5, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	ldrb	r4, [r2, #12]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	ldrb	r8, [r2, #13]	@ zero_extendqisi2
	orr	r6, r1, r6, asl #8
	orr	r5, r5, r9, asl #8
	ldrb	r1, [ip, #4]	@ zero_extendqisi2
	ldrb	r9, [ip, #5]	@ zero_extendqisi2
	orr	r4, r4, r8, asl #8
	ldrb	r8, [ip, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #1]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r9, [r2, #6]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	r10, [r2, #2]	@ zero_extendqisi2
	ldrb	r9, [r2, #14]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	ldrb	r8, [ip, #6]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	orr	r1, r1, r8, asl #16
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #16
	ldrb	r9, [ip, #3]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #24
	orr	r7, r7, r9, asl #24
	ldrb	r10, [r2, #11]	@ zero_extendqisi2
	ldrb	r9, [r2, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [ip, #7]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	orr	r4, r4, r9, asl #24
	orr	r8, r1, r8, asl #24
	.loc 6 85 0
	add	r1, ip, fp
	.loc 6 83 0
	ldrb	r9, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	lr, [r3, #136]
	str	r7, [r3, #160]
	str	r6, [r3, #140]
	str	r5, [r3, #144]
	str	r4, [r3, #148]
	str	r8, [r3, #164]
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	ldrb	r2, [r2, fp, asl #1]	@ zero_extendqisi2
.LVL2642:
	ldrb	lr, [ip, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r8, [ip, #13]	@ zero_extendqisi2
	ldrb	r7, [r1, #4]	@ zero_extendqisi2
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #8
	ldrb	r4, [r1, #9]	@ zero_extendqisi2
	orr	r8, lr, r8, asl #8
	orr	r7, r7, r10, asl #8
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	ldrb	r5, [ip, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #712]
.LVL2643:
	.loc 6 82 0
	orr	r6, r6, r4, asl #8
	ldrb	r9, [ip, #9]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #8
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #16
	orr	r5, r5, r9, asl #8
	ldrb	r4, [r1, #10]	@ zero_extendqisi2
	ldrb	r9, [ip, #10]	@ zero_extendqisi2
	orr	r7, r7, r10, asl #16
	ldrb	r10, [r1, #14]	@ zero_extendqisi2
	ldrb	fp, [ip, #14]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	orr	r6, r6, r4, asl #16
	ldrb	r9, [ip, #11]	@ zero_extendqisi2
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	ldrb	r10, [ip, #15]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	orr	r4, r2, r4, asl #24
	orr	r8, r8, fp, asl #16
	.loc 6 85 0
	ldr	r2, [sp, #20]
	.loc 6 82 0
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #24
	str	r5, [r3, #168]
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	.loc 6 85 0
	ldr	r5, [sp, #20]
	add	r2, r1, r2
	.loc 6 82 0
	orr	r7, r7, fp, asl #24
	orr	r6, r6, r9, asl #24
	orr	r10, lr, r10, asl #24
	.loc 6 83 0
	ldrb	r9, [ip, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	lr, r2, r5
	.loc 6 83 0
	ldrb	fp, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [r3, #184]
	str	r8, [r3, #172]
	str	r7, [r3, #188]
	str	r6, [r3, #192]
	ldrb	r8, [r1, r5, asl #1]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #736]
.LVL2644:
	.loc 6 82 0
	ldrb	r9, [lr, #1]	@ zero_extendqisi2
	str	r10, [r3, #196]
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	ldrb	r10, [r2, #9]	@ zero_extendqisi2
	.loc 6 83 0
	strb	fp, [sp, #760]
	.loc 6 82 0
	ldrb	ip, [ip, r5, asl #1]	@ zero_extendqisi2
	mov	fp, r5
	ldrb	r7, [r2, #5]	@ zero_extendqisi2
	ldrb	r6, [r2, #8]	@ zero_extendqisi2
	ldrb	r5, [r2, #12]	@ zero_extendqisi2
	orr	r8, r8, r9, asl #8
	ldrb	r9, [r2, #13]	@ zero_extendqisi2
	orr	r7, r1, r7, asl #8
	orr	r6, r6, r10, asl #8
	ldrb	r1, [lr, #4]	@ zero_extendqisi2
	ldrb	r10, [lr, #5]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #8
	ldrb	r9, [lr, #2]	@ zero_extendqisi2
	ldrb	r4, [r2, #1]	@ zero_extendqisi2
	orr	r1, r1, r10, asl #8
	orr	r8, r8, r9, asl #16
	ldrb	r10, [r2, #6]	@ zero_extendqisi2
	ldrb	r9, [r2, #10]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #8
	orr	r7, r7, r10, asl #16
	ldrb	r4, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #14]	@ zero_extendqisi2
	orr	r6, r6, r9, asl #16
	ldrb	r9, [lr, #6]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #16
	orr	r5, r5, r10, asl #16
	ldrb	r4, [r2, #3]	@ zero_extendqisi2
	ldrb	r10, [lr, #3]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #16
	ldrb	r9, [r2, #7]	@ zero_extendqisi2
	orr	r4, ip, r4, asl #24
	orr	r8, r8, r10, asl #24
	ldrb	ip, [r2, #11]	@ zero_extendqisi2
	ldrb	r10, [r2, #15]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #24
	ldrb	r9, [lr, #7]	@ zero_extendqisi2
	orr	r6, r6, ip, asl #24
	orr	r5, r5, r10, asl #24
	.loc 6 85 0
	add	ip, lr, fp
	.loc 6 82 0
	orr	r1, r1, r9, asl #24
	str	r4, [r3, #208]
	.loc 6 83 0
	ldrb	r9, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r8, [r3, #232]
	str	r7, [r3, #212]
	str	r6, [r3, #216]
	str	r5, [r3, #220]
	str	r1, [r3, #236]
	ldrb	r1, [r2, fp, asl #1]	@ zero_extendqisi2
	ldrb	r6, [lr, #12]	@ zero_extendqisi2
	ldrb	r10, [ip, #5]	@ zero_extendqisi2
	ldrb	r8, [lr, #13]	@ zero_extendqisi2
	ldrb	r2, [ip, #4]	@ zero_extendqisi2
.LVL2645:
	ldrb	r4, [ip, #1]	@ zero_extendqisi2
	orr	r8, r6, r8, asl #8
	orr	r2, r2, r10, asl #8
	ldrb	r6, [ip, #12]	@ zero_extendqisi2
	ldrb	r10, [ip, #13]	@ zero_extendqisi2
	ldrb	r5, [lr, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #784]
.LVL2646:
	.loc 6 82 0
	ldrb	r7, [ip, #8]	@ zero_extendqisi2
	ldrb	r9, [lr, #9]	@ zero_extendqisi2
	orr	r1, r1, r4, asl #8
	orr	r6, r6, r10, asl #8
	ldrb	r4, [ip, #9]	@ zero_extendqisi2
	ldrb	r10, [ip, #6]	@ zero_extendqisi2
	ldrb	fp, [lr, #14]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #16
	orr	r5, r5, r9, asl #8
	ldrb	r10, [ip, #14]	@ zero_extendqisi2
	ldrb	r9, [lr, #10]	@ zero_extendqisi2
	orr	r7, r7, r4, asl #8
	ldrb	r4, [ip, #2]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	orr	r1, r1, r4, asl #16
	ldrb	r9, [lr, #11]	@ zero_extendqisi2
	ldrb	r4, [ip, #10]	@ zero_extendqisi2
	orr	r8, r8, fp, asl #16
	orr	r6, r6, r10, asl #16
	ldrb	fp, [ip, #7]	@ zero_extendqisi2
	ldrb	r10, [lr, #15]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	orr	r8, r8, r10, asl #24
	ldrb	r9, [ip, #11]	@ zero_extendqisi2
	ldrb	r10, [ip, #15]	@ zero_extendqisi2
	orr	fp, r2, fp, asl #24
	orr	r7, r7, r4, asl #16
	.loc 6 85 0
	ldr	r2, [sp, #20]
	.loc 6 82 0
	ldrb	r4, [ip, #3]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #24
	orr	r4, r1, r4, asl #24
	.loc 6 83 0
	ldrb	r9, [ip, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	r1, ip, r2
	.loc 6 82 0
	orr	r6, r6, r10, asl #24
	str	r5, [r3, #240]
	.loc 6 85 0
	mov	r5, r2
	.loc 6 82 0
	str	r4, [sp, #816]
	str	r8, [r3, #244]
	.loc 6 83 0
	ldrb	r4, [lr, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	fp, [sp, #820]
	str	r7, [sp, #824]
	mov	fp, r5
	str	r6, [sp, #828]
	ldrb	r3, [lr, r5, asl #1]	@ zero_extendqisi2
	ldrb	r6, [ip, r5, asl #1]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #832]
	.loc 6 82 0
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	.loc 6 85 0
	add	r2, r1, r2
	.loc 6 82 0
	ldrb	r7, [r2, #1]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	ldrb	r8, [r2, #5]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r4, [sp, #808]
.LVL2647:
	.loc 6 82 0
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
	ldrb	r4, [r1, #12]	@ zero_extendqisi2
	orr	r5, r3, r5, asl #8
	orr	ip, ip, r9, asl #8
	ldrb	r3, [r1, #8]	@ zero_extendqisi2
	ldrb	r9, [r1, #9]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #8
	orr	r4, r4, r10, asl #8
	ldrb	r7, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r1, #2]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	orr	r3, r3, r9, asl #8
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	r9, [r1, #14]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #16
	orr	r5, r5, r10, asl #16
	ldrb	r7, [r2, #3]	@ zero_extendqisi2
	ldrb	r10, [r2, #6]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r4, r4, r9, asl #16
	ldrb	r8, [r1, #10]	@ zero_extendqisi2
	ldrb	r9, [r1, #3]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #24
	orr	r5, r5, r9, asl #24
	ldrb	r7, [r2, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #24
	orr	r4, r4, r8, asl #24
	orr	r7, lr, r7, asl #24
	orr	r9, r3, r9, asl #24
	.loc 6 85 0
	add	r3, r2, fp
	.loc 6 83 0
	ldrb	r8, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r6, [sp, #864]
	str	r5, [sp, #840]
	str	ip, [sp, #844]
	str	r7, [sp, #868]
	str	r9, [sp, #848]
	str	r4, [sp, #852]
	ldrb	r4, [r2, #8]	@ zero_extendqisi2
	ldrb	lr, [r1, fp, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r3, #5]	@ zero_extendqisi2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
.LVL2648:
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	r10, [r2, #13]	@ zero_extendqisi2
	ldrb	ip, [r2, #12]	@ zero_extendqisi2
	ldrb	r7, [r2, #9]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #8
	ldrb	r9, [r3, #2]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r8, [sp, #856]
.LVL2649:
	.loc 6 82 0
	ldrb	r6, [r3, #12]	@ zero_extendqisi2
	ldrb	r8, [r3, #13]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #8
	orr	ip, ip, r10, asl #8
	ldrb	r5, [r3, #8]	@ zero_extendqisi2
	ldrb	r10, [r3, #9]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #8
	orr	lr, lr, r9, asl #16
	ldrb	r7, [r2, #10]	@ zero_extendqisi2
	ldrb	r9, [r3, #14]	@ zero_extendqisi2
	ldrb	fp, [r3, #3]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #8
	orr	r5, r5, r10, asl #8
	ldrb	r8, [r2, #14]	@ zero_extendqisi2
	ldrb	r10, [r3, #6]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #16
	orr	r6, r6, r9, asl #16
	ldrb	r7, [r2, #11]	@ zero_extendqisi2
	ldrb	r9, [r2, #15]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r1, r1, r10, asl #16
	ldrb	r8, [r3, #10]	@ zero_extendqisi2
	ldrb	r10, [r3, #7]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	.loc 6 85 0
	ldr	fp, [sp, #20]
	.loc 6 82 0
	orr	r4, r4, r7, asl #24
	orr	r9, ip, r9, asl #24
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	ldrb	ip, [r3, #11]	@ zero_extendqisi2
	orr	r10, r1, r10, asl #24
	orr	r5, r5, r8, asl #16
	.loc 6 85 0
	add	r1, r3, fp
	.loc 6 82 0
	orr	r6, r6, r7, asl #24
	orr	r5, r5, ip, asl #24
	.loc 6 85 0
	add	ip, r1, fp
	.loc 6 83 0
	ldrb	r7, [r3, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [sp, #872]
	str	lr, [sp, #888]
	str	r9, [sp, #876]
	.loc 6 83 0
	ldrb	lr, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r10, [sp, #892]
	str	r6, [sp, #900]
	str	r5, [sp, #896]
	ldrb	r6, [r2, fp, asl #1]	@ zero_extendqisi2
	ldrb	r10, [ip, #5]	@ zero_extendqisi2
	ldrb	r2, [r3, fp, asl #1]	@ zero_extendqisi2
.LVL2650:
	ldrb	r5, [ip, #4]	@ zero_extendqisi2
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #5]	@ zero_extendqisi2
	ldrb	r8, [r1, #9]	@ zero_extendqisi2
	.loc 6 83 0
	strb	lr, [sp, #880]
.LVL2651:
	.loc 6 82 0
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	lr, [r1, #8]	@ zero_extendqisi2
	orr	r6, r6, r3, asl #8
	orr	r5, r5, r10, asl #8
	ldrb	r3, [r1, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r7, [sp, #904]
	.loc 6 82 0
	orr	r4, r4, r9, asl #8
	ldrb	r7, [ip, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #2]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	orr	r3, r3, r10, asl #8
	ldrb	r8, [ip, #6]	@ zero_extendqisi2
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	r7, [ip, #2]	@ zero_extendqisi2
	ldrb	r9, [r1, #10]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	orr	r4, r4, r10, asl #16
	ldrb	r8, [r1, #14]	@ zero_extendqisi2
	ldrb	r10, [ip, #7]	@ zero_extendqisi2
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	orr	r2, r2, r7, asl #16
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	ldrb	r7, [ip, #3]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	r9, [r1, #7]	@ zero_extendqisi2
	ldrb	r8, [r1, #11]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #24
	orr	r6, r6, fp, asl #24
	orr	r4, r4, r9, asl #24
	orr	lr, lr, r8, asl #24
	orr	r3, r3, r10, asl #24
	.loc 6 83 0
	ldrb	r1, [r1, #16]	@ zero_extendqisi2
.LVL2652:
	.loc 6 82 0
	str	r2, [sp, #936]
	str	r6, [sp, #912]
	str	r5, [sp, #940]
	str	r4, [sp, #916]
	str	lr, [sp, #920]
	str	r3, [sp, #924]
	.loc 6 83 0
	strb	r1, [sp, #928]
.LVL2653:
	.loc 6 82 0
	ldrb	r2, [ip, #8]	@ zero_extendqisi2
	ldrb	r1, [ip, #12]	@ zero_extendqisi2
	ldrb	r4, [ip, #13]	@ zero_extendqisi2
	ldrb	r3, [ip, #9]	@ zero_extendqisi2
	ldrb	r5, [ip, #14]	@ zero_extendqisi2
	ldrb	lr, [ip, #10]	@ zero_extendqisi2
	ldrb	r8, [ip, #15]	@ zero_extendqisi2
	ldrb	r6, [ip, #11]	@ zero_extendqisi2
	orr	r3, r2, r3, asl #8
	orr	r2, r1, r4, asl #8
	orr	r2, r2, r5, asl #16
	orr	r3, r3, lr, asl #16
.LBE3670:
.LBE3669:
	.loc 5 696 0 discriminator 1
	mov	r1, #17
.LBB3674:
.LBB3671:
	.loc 6 82 0
	orr	lr, r3, r6, asl #24
.LBE3671:
.LBE3674:
	.loc 5 696 0
	mov	r4, r0
.LBB3675:
.LBB3672:
	.loc 6 82 0
	orr	r5, r2, r8, asl #24
	.loc 6 83 0
	ldrb	ip, [ip, #16]	@ zero_extendqisi2
.LVL2654:
.LBE3672:
.LBE3675:
	.loc 5 696 0 discriminator 1
	add	r0, sp, #280
.LVL2655:
	str	r1, [sp]
	mov	r2, #16
	add	r1, sp, #552
	mov	r3, #24
.LBB3676:
.LBB3673:
	.loc 6 82 0
	str	r5, [sp, #948]
	str	lr, [sp, #944]
	.loc 6 83 0
	strb	ip, [sp, #952]
.LVL2656:
.LBE3673:
.LBE3676:
	.loc 5 696 0 discriminator 1
	bl	put_no_rnd_mpeg4_qpel16_h_lowpass(PLT)
.LVL2657:
.LBB3677:
.LBB3678:
.LBB3679:
.LBB3680:
.LBB3681:
	.loc 4 219 0 discriminator 4
	ldr	r3, [sp, #280]
.LVL2658:
	ldr	lr, [sp, #552]
.LVL2659:
	ldr	r0, [sp, #284]
.LVL2660:
.LBB3682:
.LBB3683:
	.loc 2 38 0
	eor	r5, lr, r3
	and	lr, lr, r3
.LVL2661:
	ldr	r3, .L326
.LVL2662:
.LBE3683:
.LBE3682:
	.loc 4 219 0 discriminator 4
	ldr	r10, [sp, #556]
.LVL2663:
.LBB3724:
.LBB3684:
	.loc 2 38 0
	and	r5, r5, r3
	add	lr, lr, r5, lsr #1
.LBE3684:
.LBE3724:
	.loc 4 219 0 discriminator 4
	str	lr, [sp, #280]
.LVL2664:
.LBB3725:
.LBB3726:
	.loc 2 38 0
	eor	lr, r10, r0
.LBE3726:
.LBE3725:
	.loc 4 219 0 discriminator 4
	ldr	ip, [sp, #296]
	ldr	r9, [sp, #576]
.LBB3768:
.LBB3727:
	.loc 2 38 0
	and	lr, lr, r3
	and	r0, r0, r10
.LVL2665:
	add	r0, r0, lr, lsr #1
.LBE3727:
.LBE3768:
	.loc 4 219 0 discriminator 4
	ldr	r1, [sp, #300]
	ldr	r8, [sp, #580]
	str	r0, [sp, #284]
.LVL2666:
.LBB3769:
.LBB3685:
	.loc 2 38 0
	eor	r0, r9, ip
	and	r0, r0, r3
	and	r9, r9, ip
.LVL2667:
	add	r9, r9, r0, lsr #1
.LBE3685:
.LBE3769:
.LBB3770:
.LBB3728:
	eor	r0, r8, r1
.LBE3728:
.LBE3770:
	.loc 4 219 0 discriminator 4
	ldr	r2, [sp, #312]
	ldr	r7, [sp, #600]
.LBB3771:
.LBB3729:
	.loc 2 38 0
	and	r0, r0, r3
	and	r1, r1, r8
.LVL2668:
	add	r1, r1, r0, lsr #1
.LBE3729:
.LBE3771:
	.loc 4 219 0 discriminator 4
	str	r1, [sp, #300]
.LVL2669:
.LBB3772:
.LBB3686:
	.loc 2 38 0
	eor	r1, r7, r2
	and	r1, r1, r3
	and	r2, r2, r7
.LVL2670:
	add	r1, r2, r1, lsr #1
.LBE3686:
.LBE3772:
	.loc 4 219 0 discriminator 4
	ldr	fp, [sp, #316]
.LVL2671:
.LBB3773:
.LBB3687:
	.loc 2 38 0
	ldr	r7, [sp, #328]
.LVL2672:
.LBE3687:
.LBE3773:
	.loc 4 219 0 discriminator 4
	ldr	r6, [sp, #604]
.LVL2673:
	str	r1, [sp, #312]
.LVL2674:
.LBB3774:
.LBB3688:
	.loc 2 38 0
	ldr	r1, [sp, #624]
.LBE3688:
.LBE3774:
.LBB3775:
.LBB3730:
	eor	r2, r6, fp
.LBE3730:
.LBE3775:
.LBB3776:
.LBB3689:
	eor	r1, r1, r7
.LBE3689:
.LBE3776:
.LBB3777:
.LBB3731:
	and	r6, r6, fp
.LVL2675:
.LBE3731:
.LBE3777:
.LBB3778:
.LBB3690:
	ldr	r7, [sp, #624]
	ldr	fp, [sp, #328]
.LVL2676:
.LBE3690:
.LBE3778:
.LBB3779:
.LBB3732:
	and	r2, r2, r3
.LBE3732:
.LBE3779:
	.loc 4 219 0 discriminator 4
	ldr	r5, [sp, #344]
	ldr	r10, [sp, #648]
	ldr	ip, [sp, #348]
	ldr	lr, [sp, #628]
	ldr	r0, [sp, #652]
.LBB3780:
.LBB3733:
	.loc 2 38 0
	add	r2, r6, r2, lsr #1
.LBE3733:
.LBE3780:
.LBB3781:
.LBB3691:
	and	r6, r7, fp
.LBE3691:
.LBE3781:
.LBB3782:
.LBB3734:
	ldr	r7, [sp, #332]
.LBE3734:
.LBE3782:
.LBB3783:
.LBB3692:
	and	r1, r1, r3
	add	r1, r6, r1, lsr #1
.LBE3692:
.LBE3783:
.LBB3784:
.LBB3735:
	eor	fp, r0, ip
	eor	r6, lr, r7
	and	lr, lr, r7
.LBE3735:
.LBE3784:
.LBB3785:
.LBB3693:
	eor	r7, r10, r5
.LBE3693:
.LBE3785:
.LBB3786:
.LBB3736:
	and	r6, r6, r3
.LBE3736:
.LBE3786:
.LBB3787:
.LBB3694:
	and	r7, r7, r3
.LBE3694:
.LBE3787:
.LBB3788:
.LBB3737:
	and	fp, fp, r3
.LBE3737:
.LBE3788:
.LBB3789:
.LBB3695:
	and	r5, r5, r10
.LBE3695:
.LBE3789:
.LBB3790:
.LBB3738:
	and	r0, r0, ip
.LBE3738:
.LBE3790:
	.loc 4 219 0 discriminator 4
	ldr	r8, [sp, #360]
	str	r9, [sp, #296]
.LBB3791:
.LBB3739:
	.loc 2 38 0
	add	lr, lr, r6, lsr #1
.LBE3739:
.LBE3791:
	.loc 4 219 0 discriminator 4
	ldr	r9, [sp, #672]
.LBB3792:
.LBB3696:
	.loc 2 38 0
	add	r5, r5, r7, lsr #1
.LBE3696:
.LBE3792:
.LBB3793:
.LBB3740:
	add	r0, r0, fp, lsr #1
.LBE3740:
.LBE3793:
	.loc 4 219 0 discriminator 4
	str	r2, [sp, #316]
.LVL2677:
	str	r1, [sp, #328]
	str	lr, [sp, #332]
	str	r5, [sp, #344]
	str	r0, [sp, #348]
	ldr	lr, [sp, #364]
	ldr	r10, [sp, #676]
.LBB3794:
.LBB3697:
	.loc 2 38 0
	eor	ip, r9, r8
	and	ip, ip, r3
.LVL2678:
.LBE3697:
.LBE3794:
.LBB3795:
.LBB3741:
	eor	r5, r10, lr
.LBE3741:
.LBE3795:
.LBB3796:
.LBB3698:
	and	r8, r8, r9
.LVL2679:
	add	r8, r8, ip, lsr #1
.LBE3698:
.LBE3796:
	.loc 4 219 0 discriminator 4
	ldr	r9, [sp, #696]
.LVL2680:
	ldr	ip, [sp, #376]
.LBB3797:
.LBB3742:
	.loc 2 38 0
	and	r5, r5, r3
	and	lr, lr, r10
.LVL2681:
	add	lr, lr, r5, lsr #1
.LBE3742:
.LBE3797:
	.loc 4 219 0 discriminator 4
	str	lr, [sp, #364]
.LVL2682:
.LBB3798:
.LBB3699:
	.loc 2 38 0
	eor	lr, r9, ip
.LBE3699:
.LBE3798:
	.loc 4 219 0 discriminator 4
	ldr	r0, [sp, #380]
.LVL2683:
	str	r8, [sp, #360]
.LBB3799:
.LBB3700:
	.loc 2 38 0
	and	lr, lr, r3
.LBE3700:
.LBE3799:
	.loc 4 219 0 discriminator 4
	ldr	r8, [sp, #700]
.LVL2684:
.LBB3800:
.LBB3701:
	.loc 2 38 0
	and	ip, ip, r9
.LVL2685:
	add	ip, ip, lr, lsr #1
.LBE3701:
.LBE3800:
	.loc 4 219 0 discriminator 4
	str	ip, [sp, #376]
.LVL2686:
.LBB3801:
.LBB3743:
	.loc 2 38 0
	eor	ip, r8, r0
.LBE3743:
.LBE3801:
	.loc 4 219 0 discriminator 4
	ldr	r1, [sp, #392]
	ldr	r7, [sp, #720]
.LBB3802:
.LBB3744:
	.loc 2 38 0
	and	ip, ip, r3
	and	r0, r0, r8
.LVL2687:
	add	r0, r0, ip, lsr #1
.LBE3744:
.LBE3802:
	.loc 4 219 0 discriminator 4
	str	r0, [sp, #380]
.LVL2688:
.LBB3803:
.LBB3702:
	.loc 2 38 0
	eor	r0, r7, r1
.LBE3702:
.LBE3803:
	.loc 4 219 0 discriminator 4
	ldr	r2, [sp, #396]
.LVL2689:
	ldr	r6, [sp, #724]
.LVL2690:
.LBB3804:
.LBB3703:
	.loc 2 38 0
	and	r0, r0, r3
	and	r1, r1, r7
.LVL2691:
	add	r1, r1, r0, lsr #1
.LBE3703:
.LBE3804:
	.loc 4 219 0 discriminator 4
	ldr	fp, [sp, #408]
	ldr	r10, [sp, #744]
	str	r1, [sp, #392]
.LVL2692:
.LBB3805:
.LBB3745:
	.loc 2 38 0
	eor	r1, r6, r2
	and	r1, r1, r3
	and	r2, r2, r6
.LVL2693:
	add	r1, r2, r1, lsr #1
.LBE3745:
.LBE3805:
.LBB3806:
.LBB3704:
	eor	r2, r10, fp
	and	r2, r2, r3
	and	r10, r10, fp
.LBE3704:
.LBE3806:
	.loc 4 219 0 discriminator 4
	str	r1, [sp, #396]
.LVL2694:
.LBB3807:
.LBB3705:
	.loc 2 38 0
	add	r2, r10, r2, lsr #1
.LBE3705:
.LBE3807:
.LBB3808:
.LBB3746:
	ldr	r1, [sp, #748]
	ldr	r10, [sp, #412]
	ldr	fp, [sp, #412]
.LVL2695:
	eor	r1, r1, r10
	ldr	r10, [sp, #748]
.LBE3746:
.LBE3808:
	.loc 4 219 0 discriminator 4
	ldr	ip, [sp, #772]
	ldr	lr, [sp, #768]
	ldr	r5, [sp, #428]
.LBB3809:
.LBB3747:
	.loc 2 38 0
	and	r6, r10, fp
.LBE3747:
.LBE3809:
.LBB3810:
.LBB3706:
	ldr	r10, [sp, #424]
.LBE3706:
.LBE3810:
.LBB3811:
.LBB3748:
	and	r1, r1, r3
	add	r1, r6, r1, lsr #1
.LBE3748:
.LBE3811:
.LBB3812:
.LBB3707:
	eor	r6, lr, r10
	and	lr, lr, r10
.LBE3707:
.LBE3812:
.LBB3813:
.LBB3749:
	eor	r10, ip, r5
.LBE3749:
.LBE3813:
	.loc 4 219 0 discriminator 4
	ldr	r9, [sp, #440]
	ldr	r0, [sp, #792]
.LBB3814:
.LBB3708:
	.loc 2 38 0
	and	r6, r6, r3
.LBE3708:
.LBE3814:
.LBB3815:
.LBB3750:
	and	r10, r10, r3
	and	r5, r5, ip
.LBE3750:
.LBE3815:
	.loc 4 219 0 discriminator 4
	ldr	r8, [sp, #796]
	ldr	r7, [sp, #444]
.LBB3816:
.LBB3709:
	.loc 2 38 0
	add	lr, lr, r6, lsr #1
.LBE3709:
.LBE3816:
.LBB3817:
.LBB3751:
	add	r5, r5, r10, lsr #1
.LBE3751:
.LBE3817:
.LBB3818:
.LBB3710:
	eor	fp, r0, r9
.LBE3710:
.LBE3818:
	.loc 4 219 0 discriminator 4
	str	r2, [sp, #408]
.LVL2696:
	str	r1, [sp, #412]
.LVL2697:
	str	lr, [sp, #424]
.LBB3819:
.LBB3711:
	.loc 2 38 0
	and	r0, r0, r9
.LBE3711:
.LBE3819:
	.loc 4 219 0 discriminator 4
	str	r5, [sp, #428]
	ldr	lr, [sp, #456]
	ldr	r9, [sp, #816]
.LBB3820:
.LBB3752:
	.loc 2 38 0
	eor	ip, r8, r7
	and	ip, ip, r3
.LBE3752:
.LBE3820:
.LBB3821:
.LBB3712:
	eor	r10, r9, lr
.LBE3712:
.LBE3821:
.LBB3822:
.LBB3753:
	and	r7, r7, r8
	add	r7, r7, ip, lsr #1
.LBE3753:
.LBE3822:
	.loc 4 219 0 discriminator 4
	ldr	r8, [sp, #820]
	ldr	ip, [sp, #460]
.LBB3823:
.LBB3713:
	.loc 2 38 0
	and	r10, r10, r3
	and	lr, lr, r9
	and	fp, fp, r3
.LVL2698:
	add	lr, lr, r10, lsr #1
	add	r0, r0, fp, lsr #1
.LBE3713:
.LBE3823:
	.loc 4 219 0 discriminator 4
	str	lr, [sp, #456]
.LBB3824:
.LBB3754:
	.loc 2 38 0
	eor	lr, r8, ip
.LBE3754:
.LBE3824:
	.loc 4 219 0 discriminator 4
	str	r0, [sp, #440]
	str	r7, [sp, #444]
.LVL2699:
	ldr	r0, [sp, #472]
	ldr	r7, [sp, #840]
.LBB3825:
.LBB3755:
	.loc 2 38 0
	and	lr, lr, r3
	and	ip, ip, r8
.LVL2700:
	add	ip, ip, lr, lsr #1
.LBE3755:
.LBE3825:
	.loc 4 219 0 discriminator 4
	str	ip, [sp, #460]
.LVL2701:
.LBB3826:
.LBB3714:
	.loc 2 38 0
	eor	ip, r7, r0
.LBE3714:
.LBE3826:
	.loc 4 219 0 discriminator 4
	ldr	r1, [sp, #476]
.LVL2702:
	ldr	r6, [sp, #844]
.LVL2703:
.LBB3827:
.LBB3715:
	.loc 2 38 0
	and	ip, ip, r3
	and	r0, r0, r7
.LVL2704:
	add	r0, r0, ip, lsr #1
.LBE3715:
.LBE3827:
	.loc 4 219 0 discriminator 4
	str	r0, [sp, #472]
.LVL2705:
.LBB3828:
.LBB3756:
	.loc 2 38 0
	eor	r0, r6, r1
.LBE3756:
.LBE3828:
	.loc 4 219 0 discriminator 4
	ldr	r2, [sp, #488]
	ldr	r5, [sp, #864]
.LBB3829:
.LBB3757:
	.loc 2 38 0
	and	r0, r0, r3
	and	r1, r1, r6
.LVL2706:
	add	r1, r1, r0, lsr #1
.LBE3757:
.LBE3829:
	.loc 4 219 0 discriminator 4
	str	r1, [sp, #476]
.LVL2707:
.LBB3830:
.LBB3716:
	.loc 2 38 0
	eor	r1, r5, r2
	and	r1, r1, r3
	and	r2, r2, r5
.LVL2708:
	add	r1, r2, r1, lsr #1
.LBE3716:
.LBE3830:
	.loc 4 219 0 discriminator 4
	ldr	fp, [sp, #868]
.LVL2709:
.LBB3831:
.LBB3758:
	.loc 2 38 0
	ldr	r2, [sp, #492]
.LBE3758:
.LBE3831:
	.loc 4 219 0 discriminator 4
	str	r1, [sp, #488]
.LVL2710:
.LBB3832:
.LBB3759:
	.loc 2 38 0
	ldr	r1, [sp, #492]
.LBE3759:
.LBE3832:
	.loc 4 219 0 discriminator 4
	ldr	r10, [sp, #888]
.LBB3833:
.LBB3760:
	.loc 2 38 0
	eor	r2, fp, r2
	and	fp, fp, r1
.LVL2711:
.LBE3760:
.LBE3833:
.LBB3834:
.LBB3717:
	ldr	r1, [sp, #504]
	ldr	r5, [sp, #504]
.LVL2712:
	eor	r1, r10, r1
	and	r1, r1, r3
	and	r10, r10, r5
.LBE3717:
.LBE3834:
	.loc 4 219 0 discriminator 4
	ldr	ip, [sp, #912]
	ldr	lr, [sp, #892]
	ldr	r9, [sp, #520]
	ldr	r6, [sp, #536]
	ldr	r7, [sp, #936]
.LBB3835:
.LBB3718:
	.loc 2 38 0
	add	r1, r10, r1, lsr #1
.LBE3718:
.LBE3835:
.LBB3836:
.LBB3761:
	ldr	r5, [sp, #508]
	ldr	r10, [sp, #508]
.LBE3761:
.LBE3836:
	.loc 4 219 0 discriminator 4
	ldr	r8, [sp, #524]
	ldr	r0, [sp, #916]
.LBB3837:
.LBB3762:
	.loc 2 38 0
	and	r2, r2, r3
	eor	r5, lr, r5
	and	lr, lr, r10
.LBE3762:
.LBE3837:
.LBB3838:
.LBB3719:
	eor	r10, ip, r9
	and	r9, r9, ip
	eor	ip, r7, r6
.LBE3719:
.LBE3838:
.LBB3839:
.LBB3763:
	add	r2, fp, r2, lsr #1
.LBE3763:
.LBE3839:
.LBB3840:
.LBB3720:
	and	ip, ip, r3
	and	r6, r6, r7
.LBE3720:
.LBE3840:
.LBB3841:
.LBB3764:
	eor	fp, r0, r8
.LBE3764:
.LBE3841:
.LBB3842:
.LBB3721:
	add	r6, r6, ip, lsr #1
.LBE3721:
.LBE3842:
	.loc 4 219 0 discriminator 4
	str	r2, [sp, #492]
.LVL2713:
	str	r1, [sp, #504]
	ldr	r2, [sp, #540]
	ldr	ip, [sp, #940]
.LBB3843:
.LBB3765:
	.loc 2 38 0
	and	r5, r5, r3
	and	fp, fp, r3
	and	r0, r0, r8
	add	lr, lr, r5, lsr #1
	add	r0, r0, fp, lsr #1
	eor	r1, ip, r2
.LBE3765:
.LBE3843:
.LBE3681:
.LBE3680:
.LBE3679:
	.loc 4 219 0 discriminator 1
	mov	r5, #16
.LBB3858:
.LBB3853:
.LBB3848:
.LBB3844:
.LBB3722:
	.loc 2 38 0
	and	r10, r10, r3
.LVL2714:
.LBE3722:
.LBE3844:
	.loc 4 219 0 discriminator 4
	str	lr, [sp, #508]
.LVL2715:
	str	r0, [sp, #524]
.LVL2716:
.LBE3848:
.LBE3853:
.LBE3858:
	.loc 4 219 0 is_stmt 0 discriminator 1
	mov	lr, #17
	add	r0, sp, #288
.LBB3859:
.LBB3854:
.LBB3849:
	.loc 4 219 0 discriminator 4
	str	r6, [sp, #536]
.LBB3845:
.LBB3766:
	.loc 2 38 0 is_stmt 1
	and	r1, r1, r3
	and	r2, r2, ip
.LVL2717:
.LBE3766:
.LBE3845:
.LBE3849:
.LBE3854:
.LBE3859:
	.loc 4 219 0 discriminator 1
	mov	r6, #24
.LBB3860:
.LBB3855:
.LBB3850:
.LBB3846:
.LBB3767:
	.loc 2 38 0
	add	ip, r2, r1, lsr #1
.LVL2718:
.LBE3767:
.LBE3846:
.LBE3850:
.LBE3855:
.LBE3860:
	.loc 4 219 0 discriminator 1
	stmib	sp, {r6, lr}
	mov	r3, r5
.LBE3678:
.LBE3677:
	.loc 5 696 0 discriminator 3
	add	r6, sp, r6
.LBB3864:
.LBB3863:
	.loc 4 219 0 discriminator 1
	mov	r1, r0
	add	r2, sp, #560
.LBB3861:
.LBB3856:
.LBB3851:
.LBB3847:
.LBB3723:
	.loc 2 38 0
	add	r9, r9, r10, lsr #1
.LBE3723:
.LBE3847:
.LBE3851:
.LBE3856:
.LBE3861:
	.loc 4 219 0 discriminator 1
	str	r5, [sp]
.LBB3862:
.LBB3857:
.LBB3852:
	.loc 4 219 0 is_stmt 0 discriminator 4
	str	ip, [sp, #540]
.LVL2719:
	str	r9, [sp, #520]
.LBE3852:
.LBE3857:
.LBE3862:
	.loc 4 219 0 discriminator 1
	bl	put_no_rnd_pixels8_l2_8(PLT)
.LVL2720:
.LBE3863:
.LBE3864:
	.loc 5 696 0 is_stmt 1 discriminator 3
	mov	r2, r5
	add	r1, sp, #280
.LVL2721:
	mov	r0, r6
	bl	put_no_rnd_mpeg4_qpel16_v_lowpass.constprop.5(PLT)
.LVL2722:
.LBB3865:
.LBB3866:
	.loc 4 219 0
	mov	r2, r6
	ldr	r6, [sp, #20]
	mov	r0, r4
	mov	r3, r6
	add	r1, sp, #296
.LVL2723:
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	bl	put_no_rnd_pixels8_l2_8(PLT)
.LVL2724:
	.loc 4 219 0 is_stmt 0 discriminator 1
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	add	r0, r4, #8
	mov	r3, r6
	add	r1, sp, #304
	add	r2, sp, #32
	bl	put_no_rnd_pixels8_l2_8(PLT)
.LVL2725:
.LBE3866:
.LBE3865:
	.loc 5 696 0 is_stmt 1
	add	sp, sp, #964
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2726:
.L327:
	.align	2
.L326:
	.word	-16843010
	.cfi_endproc
.LFE184:
	.size	put_no_rnd_qpel16_mc13_c, .-put_no_rnd_qpel16_mc13_c
	.align	2
	.type	put_no_rnd_qpel16_mc33_c, %function
put_no_rnd_qpel16_mc33_c:
.LFB186:
	.loc 5 696 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 944
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2727:
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
	sub	sp, sp, #964
	.cfi_def_cfa_offset 1000
.LVL2728:
.LBB3880:
.LBB3881:
	.loc 6 85 0
	add	r4, r1, r2
	.loc 6 82 0
	str	r2, [sp, #16]
	ldrb	r3, [r1, r2]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r2, [r1]	@ zero_extendqisi2
.LVL2729:
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	ldrb	r6, [r1, #4]	@ zero_extendqisi2
	orr	r7, r2, r7, asl #8
	orr	r6, r6, r10, asl #8
	ldrb	r2, [r4, #4]	@ zero_extendqisi2
	ldrb	r10, [r4, #5]	@ zero_extendqisi2
	ldrb	r9, [r1, #9]	@ zero_extendqisi2
	ldrb	r8, [r1, #13]	@ zero_extendqisi2
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
	ldrb	ip, [r1, #12]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #8
	ldrb	r10, [r1, #10]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #8
	orr	ip, ip, r8, asl #8
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	lr, [r4, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #2]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #16
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #16
	ldrb	r8, [r4, #6]	@ zero_extendqisi2
	orr	r6, r6, r10, asl #24
	orr	r3, r3, lr, asl #8
	ldrb	r10, [r4, #7]	@ zero_extendqisi2
	ldrb	lr, [r4, #2]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #16
	ldrb	r9, [r1, #14]	@ zero_extendqisi2
	orr	r2, r2, r8, asl #16
	orr	r3, r3, lr, asl #16
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	lr, [r4, #3]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #16
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #24
	.loc 6 85 0
	ldr	r10, [sp, #16]
	.loc 6 82 0
	orr	lr, r3, lr, asl #24
	orr	r7, r7, fp, asl #24
	add	r3, sp, #560
	orr	r5, r5, r9, asl #24
	orr	r8, ip, r8, asl #24
	.loc 6 85 0
	add	ip, r4, r10
	.loc 6 83 0
	ldrb	r9, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	stmia	r3, {r5, r8}
	str	lr, [r3, #16]
	str	r7, [r3, #-8]
	str	r6, [r3, #-4]
	str	r2, [r3, #20]
	ldrb	r2, [r1, r10, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r4, #13]	@ zero_extendqisi2
	ldrb	r1, [r4, #12]	@ zero_extendqisi2
.LVL2730:
	ldrb	r10, [ip, #5]	@ zero_extendqisi2
	ldrb	r7, [ip, #4]	@ zero_extendqisi2
	ldrb	r5, [ip, #1]	@ zero_extendqisi2
	orr	r8, r1, r8, asl #8
	orr	r7, r7, r10, asl #8
	ldrb	r1, [ip, #12]	@ zero_extendqisi2
	ldrb	r10, [ip, #13]	@ zero_extendqisi2
	ldrb	r6, [ip, #8]	@ zero_extendqisi2
	orr	r2, r2, r5, asl #8
	ldrb	r5, [ip, #9]	@ zero_extendqisi2
	ldrb	lr, [r4, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #568]
.LVL2731:
	.loc 6 82 0
	orr	r1, r1, r10, asl #8
	ldrb	r9, [r4, #9]	@ zero_extendqisi2
	ldrb	r10, [ip, #6]	@ zero_extendqisi2
	ldrb	fp, [r4, #14]	@ zero_extendqisi2
	orr	r6, r6, r5, asl #8
	ldrb	r5, [ip, #2]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #8
	orr	r7, r7, r10, asl #16
	ldrb	r9, [r4, #10]	@ zero_extendqisi2
	ldrb	r10, [ip, #14]	@ zero_extendqisi2
	orr	r2, r2, r5, asl #16
	orr	r8, r8, fp, asl #16
	ldrb	r5, [ip, #10]	@ zero_extendqisi2
	ldrb	fp, [ip, #7]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #16
	orr	r1, r1, r10, asl #16
	ldrb	r9, [r4, #11]	@ zero_extendqisi2
	ldrb	r10, [r4, #15]	@ zero_extendqisi2
	orr	r7, r7, fp, asl #24
	orr	r6, r6, r5, asl #16
	.loc 6 85 0
	ldr	fp, [sp, #16]
	.loc 6 82 0
	ldrb	r5, [ip, #3]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #24
	orr	r8, r8, r10, asl #24
	ldrb	r9, [ip, #11]	@ zero_extendqisi2
	ldrb	r10, [ip, #15]	@ zero_extendqisi2
	orr	r5, r2, r5, asl #24
	.loc 6 85 0
	add	r2, ip, fp
	.loc 6 82 0
	orr	r6, r6, r9, asl #24
	orr	r1, r1, r10, asl #24
	str	lr, [r3, #24]
	.loc 6 85 0
	add	lr, r2, fp
	.loc 6 83 0
	ldrb	r10, [ip, #16]	@ zero_extendqisi2
	ldrb	r9, [r4, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r5, [r3, #40]
	str	r8, [r3, #28]
	str	r7, [r3, #44]
	str	r6, [r3, #48]
	str	r1, [r3, #52]
	ldrb	r7, [ip, fp, asl #1]	@ zero_extendqisi2
	ldrb	r8, [lr, #1]	@ zero_extendqisi2
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r10, [sp, #616]
	strb	r9, [sp, #592]
.LVL2732:
	.loc 6 82 0
	ldrb	r10, [r4, fp, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r2, #9]	@ zero_extendqisi2
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	ldrb	r4, [r2, #12]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	ldrb	r8, [r2, #13]	@ zero_extendqisi2
	orr	r6, r1, r6, asl #8
	orr	r5, r5, r9, asl #8
	ldrb	r1, [lr, #4]	@ zero_extendqisi2
	ldrb	r9, [lr, #5]	@ zero_extendqisi2
	orr	r4, r4, r8, asl #8
	ldrb	r8, [lr, #2]	@ zero_extendqisi2
	ldrb	ip, [r2, #1]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r9, [r2, #6]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	orr	ip, r10, ip, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	r10, [r2, #2]	@ zero_extendqisi2
	ldrb	r9, [r2, #14]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	ldrb	r8, [lr, #6]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #16
	orr	r1, r1, r8, asl #16
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #16
	ldrb	r9, [lr, #3]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #24
	orr	r7, r7, r9, asl #24
	ldrb	r10, [r2, #11]	@ zero_extendqisi2
	ldrb	r9, [r2, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [lr, #7]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	orr	r4, r4, r9, asl #24
	orr	r8, r1, r8, asl #24
	.loc 6 85 0
	add	r1, lr, fp
	.loc 6 83 0
	ldrb	r9, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	ip, [r3, #64]
	str	r7, [r3, #88]
	str	r6, [r3, #68]
	str	r4, [r3, #76]
	str	r8, [r3, #92]
	str	r5, [r3, #72]
	ldrb	r5, [lr, #8]	@ zero_extendqisi2
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	ldrb	r2, [r2, fp, asl #1]	@ zero_extendqisi2
.LVL2733:
	ldrb	ip, [lr, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r8, [lr, #13]	@ zero_extendqisi2
	ldrb	r7, [r1, #4]	@ zero_extendqisi2
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #8
	ldrb	r4, [r1, #9]	@ zero_extendqisi2
	orr	r8, ip, r8, asl #8
	orr	r7, r7, r10, asl #8
	ldrb	ip, [r1, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #640]
.LVL2734:
	.loc 6 82 0
	orr	r6, r6, r4, asl #8
	ldrb	r9, [lr, #9]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #8
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #16
	orr	r5, r5, r9, asl #8
	ldrb	r4, [r1, #10]	@ zero_extendqisi2
	ldrb	r9, [lr, #10]	@ zero_extendqisi2
	orr	r7, r7, r10, asl #16
	ldrb	r10, [r1, #14]	@ zero_extendqisi2
	ldrb	fp, [lr, #14]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	orr	r6, r6, r4, asl #16
	ldrb	r9, [lr, #11]	@ zero_extendqisi2
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #16
	ldrb	r10, [lr, #15]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	orr	r4, r2, r4, asl #24
	orr	r8, r8, fp, asl #16
	.loc 6 85 0
	ldr	r2, [sp, #16]
	.loc 6 82 0
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #24
	str	r5, [r3, #96]
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	.loc 6 85 0
	ldr	r5, [sp, #16]
	add	r2, r1, r2
	.loc 6 82 0
	orr	r7, r7, fp, asl #24
	orr	r6, r6, r9, asl #24
	orr	r10, ip, r10, asl #24
	.loc 6 85 0
	add	ip, r2, r5
	.loc 6 83 0
	ldrb	fp, [r1, #16]	@ zero_extendqisi2
	ldrb	r9, [lr, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [r3, #112]
	str	r8, [r3, #100]
	str	r7, [r3, #116]
	str	r6, [r3, #120]
	ldrb	r7, [r1, r5, asl #1]	@ zero_extendqisi2
	ldrb	r8, [ip, #1]	@ zero_extendqisi2
	str	r10, [r3, #124]
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	.loc 6 83 0
	strb	fp, [sp, #688]
	strb	r9, [sp, #664]
.LVL2735:
	.loc 6 82 0
	mov	fp, r5
	ldrb	r9, [r2, #9]	@ zero_extendqisi2
	ldrb	lr, [lr, r5, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	ldrb	r4, [r2, #12]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	ldrb	r8, [r2, #13]	@ zero_extendqisi2
	orr	r6, r1, r6, asl #8
	orr	r5, r5, r9, asl #8
	ldrb	r1, [ip, #4]	@ zero_extendqisi2
	ldrb	r9, [ip, #5]	@ zero_extendqisi2
	orr	r4, r4, r8, asl #8
	ldrb	r8, [ip, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #1]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r9, [r2, #6]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	r10, [r2, #2]	@ zero_extendqisi2
	ldrb	r9, [r2, #14]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	ldrb	r8, [ip, #6]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	orr	r1, r1, r8, asl #16
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #16
	ldrb	r9, [ip, #3]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #24
	orr	r7, r7, r9, asl #24
	ldrb	r10, [r2, #11]	@ zero_extendqisi2
	ldrb	r9, [r2, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [ip, #7]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	orr	r4, r4, r9, asl #24
	orr	r8, r1, r8, asl #24
	.loc 6 85 0
	add	r1, ip, fp
	.loc 6 83 0
	ldrb	r9, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	lr, [r3, #136]
	str	r7, [r3, #160]
	str	r6, [r3, #140]
	str	r5, [r3, #144]
	str	r4, [r3, #148]
	str	r8, [r3, #164]
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	ldrb	r2, [r2, fp, asl #1]	@ zero_extendqisi2
.LVL2736:
	ldrb	lr, [ip, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r8, [ip, #13]	@ zero_extendqisi2
	ldrb	r7, [r1, #4]	@ zero_extendqisi2
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #8
	ldrb	r4, [r1, #9]	@ zero_extendqisi2
	orr	r8, lr, r8, asl #8
	orr	r7, r7, r10, asl #8
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	ldrb	r5, [ip, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #712]
.LVL2737:
	.loc 6 82 0
	orr	r6, r6, r4, asl #8
	ldrb	r9, [ip, #9]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #8
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #16
	orr	r5, r5, r9, asl #8
	ldrb	r4, [r1, #10]	@ zero_extendqisi2
	ldrb	r9, [ip, #10]	@ zero_extendqisi2
	orr	r7, r7, r10, asl #16
	ldrb	r10, [r1, #14]	@ zero_extendqisi2
	ldrb	fp, [ip, #14]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	orr	r6, r6, r4, asl #16
	ldrb	r9, [ip, #11]	@ zero_extendqisi2
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	ldrb	r10, [ip, #15]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	orr	r4, r2, r4, asl #24
	orr	r8, r8, fp, asl #16
	.loc 6 85 0
	ldr	r2, [sp, #16]
	.loc 6 82 0
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #24
	str	r5, [r3, #168]
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	.loc 6 85 0
	ldr	r5, [sp, #16]
	add	r2, r1, r2
	.loc 6 82 0
	orr	r7, r7, fp, asl #24
	orr	r6, r6, r9, asl #24
	orr	r10, lr, r10, asl #24
	.loc 6 83 0
	ldrb	r9, [ip, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	lr, r2, r5
	.loc 6 83 0
	ldrb	fp, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [r3, #184]
	str	r8, [r3, #172]
	str	r7, [r3, #188]
	str	r6, [r3, #192]
	ldrb	r8, [r1, r5, asl #1]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #736]
.LVL2738:
	.loc 6 82 0
	ldrb	r9, [lr, #1]	@ zero_extendqisi2
	str	r10, [r3, #196]
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	ldrb	r10, [r2, #9]	@ zero_extendqisi2
	.loc 6 83 0
	strb	fp, [sp, #760]
	.loc 6 82 0
	ldrb	ip, [ip, r5, asl #1]	@ zero_extendqisi2
	mov	fp, r5
	ldrb	r7, [r2, #5]	@ zero_extendqisi2
	ldrb	r6, [r2, #8]	@ zero_extendqisi2
	ldrb	r5, [r2, #12]	@ zero_extendqisi2
	orr	r8, r8, r9, asl #8
	ldrb	r9, [r2, #13]	@ zero_extendqisi2
	orr	r7, r1, r7, asl #8
	orr	r6, r6, r10, asl #8
	ldrb	r1, [lr, #4]	@ zero_extendqisi2
	ldrb	r10, [lr, #5]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #8
	ldrb	r9, [lr, #2]	@ zero_extendqisi2
	ldrb	r4, [r2, #1]	@ zero_extendqisi2
	orr	r1, r1, r10, asl #8
	orr	r8, r8, r9, asl #16
	ldrb	r10, [r2, #6]	@ zero_extendqisi2
	ldrb	r9, [r2, #10]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #8
	orr	r7, r7, r10, asl #16
	ldrb	r4, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #14]	@ zero_extendqisi2
	orr	r6, r6, r9, asl #16
	ldrb	r9, [lr, #6]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #16
	orr	r5, r5, r10, asl #16
	ldrb	r4, [r2, #3]	@ zero_extendqisi2
	ldrb	r10, [lr, #3]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #16
	ldrb	r9, [r2, #7]	@ zero_extendqisi2
	orr	r4, ip, r4, asl #24
	orr	r8, r8, r10, asl #24
	ldrb	ip, [r2, #11]	@ zero_extendqisi2
	ldrb	r10, [r2, #15]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #24
	ldrb	r9, [lr, #7]	@ zero_extendqisi2
	orr	r6, r6, ip, asl #24
	orr	r5, r5, r10, asl #24
	.loc 6 85 0
	add	ip, lr, fp
	.loc 6 82 0
	orr	r1, r1, r9, asl #24
	str	r4, [r3, #208]
	.loc 6 83 0
	ldrb	r9, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r8, [r3, #232]
	str	r7, [r3, #212]
	str	r6, [r3, #216]
	str	r5, [r3, #220]
	str	r1, [r3, #236]
	ldrb	r1, [r2, fp, asl #1]	@ zero_extendqisi2
	ldrb	r6, [lr, #12]	@ zero_extendqisi2
	ldrb	r10, [ip, #5]	@ zero_extendqisi2
	ldrb	r8, [lr, #13]	@ zero_extendqisi2
	ldrb	r2, [ip, #4]	@ zero_extendqisi2
.LVL2739:
	ldrb	r4, [ip, #1]	@ zero_extendqisi2
	orr	r8, r6, r8, asl #8
	orr	r2, r2, r10, asl #8
	ldrb	r6, [ip, #12]	@ zero_extendqisi2
	ldrb	r10, [ip, #13]	@ zero_extendqisi2
	ldrb	r5, [lr, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #784]
.LVL2740:
	.loc 6 82 0
	ldrb	r7, [ip, #8]	@ zero_extendqisi2
	ldrb	r9, [lr, #9]	@ zero_extendqisi2
	orr	r1, r1, r4, asl #8
	orr	r6, r6, r10, asl #8
	ldrb	r4, [ip, #9]	@ zero_extendqisi2
	ldrb	r10, [ip, #6]	@ zero_extendqisi2
	ldrb	fp, [lr, #14]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #16
	orr	r5, r5, r9, asl #8
	ldrb	r10, [ip, #14]	@ zero_extendqisi2
	ldrb	r9, [lr, #10]	@ zero_extendqisi2
	orr	r7, r7, r4, asl #8
	ldrb	r4, [ip, #2]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	orr	r1, r1, r4, asl #16
	ldrb	r9, [lr, #11]	@ zero_extendqisi2
	ldrb	r4, [ip, #10]	@ zero_extendqisi2
	orr	r8, r8, fp, asl #16
	orr	r6, r6, r10, asl #16
	ldrb	fp, [ip, #7]	@ zero_extendqisi2
	ldrb	r10, [lr, #15]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	orr	r8, r8, r10, asl #24
	ldrb	r9, [ip, #11]	@ zero_extendqisi2
	ldrb	r10, [ip, #15]	@ zero_extendqisi2
	orr	fp, r2, fp, asl #24
	orr	r7, r7, r4, asl #16
	.loc 6 85 0
	ldr	r2, [sp, #16]
	.loc 6 82 0
	ldrb	r4, [ip, #3]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #24
	orr	r4, r1, r4, asl #24
	.loc 6 83 0
	ldrb	r9, [ip, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	r1, ip, r2
	.loc 6 82 0
	orr	r6, r6, r10, asl #24
	str	r5, [r3, #240]
	.loc 6 85 0
	mov	r5, r2
	.loc 6 82 0
	str	r4, [sp, #816]
	str	r8, [r3, #244]
	.loc 6 83 0
	ldrb	r4, [lr, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	fp, [sp, #820]
	str	r7, [sp, #824]
	mov	fp, r5
	str	r6, [sp, #828]
	ldrb	r3, [lr, r5, asl #1]	@ zero_extendqisi2
	ldrb	r6, [ip, r5, asl #1]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #832]
	.loc 6 82 0
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	.loc 6 85 0
	add	r2, r1, r2
	.loc 6 82 0
	ldrb	r7, [r2, #1]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	ldrb	r8, [r2, #5]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r4, [sp, #808]
.LVL2741:
	.loc 6 82 0
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
	ldrb	r4, [r1, #12]	@ zero_extendqisi2
	orr	r5, r3, r5, asl #8
	orr	ip, ip, r9, asl #8
	ldrb	r3, [r1, #8]	@ zero_extendqisi2
	ldrb	r9, [r1, #9]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #8
	orr	r4, r4, r10, asl #8
	ldrb	r7, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r1, #2]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	orr	r3, r3, r9, asl #8
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	r9, [r1, #14]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #16
	orr	r5, r5, r10, asl #16
	ldrb	r7, [r2, #3]	@ zero_extendqisi2
	ldrb	r10, [r2, #6]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r4, r4, r9, asl #16
	ldrb	r8, [r1, #10]	@ zero_extendqisi2
	ldrb	r9, [r1, #3]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #24
	orr	r5, r5, r9, asl #24
	ldrb	r7, [r2, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #24
	orr	r4, r4, r8, asl #24
	orr	r7, lr, r7, asl #24
	orr	r9, r3, r9, asl #24
	.loc 6 85 0
	add	r3, r2, fp
	.loc 6 83 0
	ldrb	r8, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r6, [sp, #864]
	str	r5, [sp, #840]
	str	ip, [sp, #844]
	str	r7, [sp, #868]
	str	r9, [sp, #848]
	str	r4, [sp, #852]
	ldrb	r4, [r2, #8]	@ zero_extendqisi2
	ldrb	lr, [r1, fp, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r3, #5]	@ zero_extendqisi2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
.LVL2742:
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	r10, [r2, #13]	@ zero_extendqisi2
	ldrb	ip, [r2, #12]	@ zero_extendqisi2
	ldrb	r7, [r2, #9]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #8
	ldrb	r9, [r3, #2]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r8, [sp, #856]
.LVL2743:
	.loc 6 82 0
	ldrb	r6, [r3, #12]	@ zero_extendqisi2
	ldrb	r8, [r3, #13]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #8
	orr	ip, ip, r10, asl #8
	ldrb	r5, [r3, #8]	@ zero_extendqisi2
	ldrb	r10, [r3, #9]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #8
	orr	lr, lr, r9, asl #16
	ldrb	r7, [r2, #10]	@ zero_extendqisi2
	ldrb	r9, [r3, #14]	@ zero_extendqisi2
	ldrb	fp, [r3, #3]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #8
	orr	r5, r5, r10, asl #8
	ldrb	r8, [r2, #14]	@ zero_extendqisi2
	ldrb	r10, [r3, #6]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #16
	orr	r6, r6, r9, asl #16
	ldrb	r7, [r2, #11]	@ zero_extendqisi2
	ldrb	r9, [r2, #15]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r1, r1, r10, asl #16
	ldrb	r8, [r3, #10]	@ zero_extendqisi2
	ldrb	r10, [r3, #7]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	.loc 6 85 0
	ldr	fp, [sp, #16]
	.loc 6 82 0
	orr	r4, r4, r7, asl #24
	orr	r9, ip, r9, asl #24
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	ldrb	ip, [r3, #11]	@ zero_extendqisi2
	orr	r10, r1, r10, asl #24
	orr	r5, r5, r8, asl #16
	.loc 6 85 0
	add	r1, r3, fp
	.loc 6 82 0
	orr	r6, r6, r7, asl #24
	orr	r5, r5, ip, asl #24
	.loc 6 85 0
	add	ip, r1, fp
	.loc 6 83 0
	ldrb	r7, [r3, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [sp, #872]
	str	lr, [sp, #888]
	str	r9, [sp, #876]
	.loc 6 83 0
	ldrb	lr, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r10, [sp, #892]
	str	r6, [sp, #900]
	str	r5, [sp, #896]
	ldrb	r6, [r2, fp, asl #1]	@ zero_extendqisi2
	ldrb	r10, [ip, #5]	@ zero_extendqisi2
	ldrb	r2, [r3, fp, asl #1]	@ zero_extendqisi2
.LVL2744:
	ldrb	r5, [ip, #4]	@ zero_extendqisi2
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #5]	@ zero_extendqisi2
	ldrb	r8, [r1, #9]	@ zero_extendqisi2
	.loc 6 83 0
	strb	lr, [sp, #880]
.LVL2745:
	.loc 6 82 0
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	lr, [r1, #8]	@ zero_extendqisi2
	orr	r6, r6, r3, asl #8
	orr	r5, r5, r10, asl #8
	ldrb	r3, [r1, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r7, [sp, #904]
	.loc 6 82 0
	orr	r4, r4, r9, asl #8
	ldrb	r7, [ip, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #2]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	orr	r3, r3, r10, asl #8
	ldrb	r8, [ip, #6]	@ zero_extendqisi2
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	r7, [ip, #2]	@ zero_extendqisi2
	ldrb	r9, [r1, #10]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	orr	r4, r4, r10, asl #16
	ldrb	r8, [r1, #14]	@ zero_extendqisi2
	ldrb	r10, [ip, #7]	@ zero_extendqisi2
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	orr	r2, r2, r7, asl #16
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	ldrb	r7, [ip, #3]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	r9, [r1, #7]	@ zero_extendqisi2
	ldrb	r8, [r1, #11]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #24
	orr	r6, r6, fp, asl #24
	orr	r4, r4, r9, asl #24
	orr	lr, lr, r8, asl #24
	orr	r3, r3, r10, asl #24
	.loc 6 83 0
	ldrb	r1, [r1, #16]	@ zero_extendqisi2
.LVL2746:
	.loc 6 82 0
	str	r2, [sp, #936]
	str	r6, [sp, #912]
	str	r5, [sp, #940]
	str	r4, [sp, #916]
	str	lr, [sp, #920]
	str	r3, [sp, #924]
	.loc 6 83 0
	strb	r1, [sp, #928]
.LVL2747:
	.loc 6 82 0
	ldrb	r2, [ip, #8]	@ zero_extendqisi2
	ldrb	r1, [ip, #12]	@ zero_extendqisi2
	ldrb	r5, [ip, #13]	@ zero_extendqisi2
	ldrb	r3, [ip, #9]	@ zero_extendqisi2
	ldrb	r4, [ip, #14]	@ zero_extendqisi2
	ldrb	lr, [ip, #10]	@ zero_extendqisi2
	ldrb	r6, [ip, #15]	@ zero_extendqisi2
	orr	r3, r2, r3, asl #8
	orr	r2, r1, r5, asl #8
	orr	r2, r2, r4, asl #16
	ldrb	r1, [ip, #11]	@ zero_extendqisi2
	orr	r4, r2, r6, asl #24
.LBE3881:
.LBE3880:
	.loc 5 696 0 discriminator 1
	add	r8, sp, #552
	add	r6, sp, #280
	mov	r5, #17
.LBB3884:
.LBB3882:
	.loc 6 82 0
	orr	r3, r3, lr, asl #16
	orr	lr, r3, r1, asl #24
	.loc 6 83 0
	ldrb	ip, [ip, #16]	@ zero_extendqisi2
.LVL2748:
.LBE3882:
.LBE3884:
	.loc 5 696 0
	str	r0, [sp, #20]
	.loc 5 696 0 is_stmt 0 discriminator 1
	mov	r1, r8
	mov	r0, r6
.LVL2749:
	str	r5, [sp]
	mov	r2, #16
	mov	r3, #24
.LBB3885:
.LBB3883:
	.loc 6 82 0 is_stmt 1
	str	lr, [sp, #944]
	str	r4, [sp, #948]
	.loc 6 83 0
	strb	ip, [sp, #952]
.LVL2750:
.LBE3883:
.LBE3885:
	.loc 5 696 0 discriminator 1
	bl	put_no_rnd_mpeg4_qpel16_h_lowpass(PLT)
.LVL2751:
.LBB3886:
.LBB3887:
	.loc 4 219 0
	mov	r3, #16
	mov	ip, #24
	stmia	sp, {r3, ip}
	str	r5, [sp, #8]
	add	r2, r8, #1
	mov	r0, r6
	mov	r1, r6
	bl	put_no_rnd_pixels8_l2_8(PLT)
.LVL2752:
.LBB3888:
.LBB3889:
.LBB3890:
	.loc 4 219 0 is_stmt 0 discriminator 4
	ldrb	r3, [sp, #564]	@ zero_extendqisi2
	ldr	r1, [sp, #560]
	ldrb	r6, [sp, #592]	@ zero_extendqisi2
.LVL2753:
	mov	r3, r3, asl #24
	ldrb	r7, [sp, #588]	@ zero_extendqisi2
	ldrb	r5, [sp, #616]	@ zero_extendqisi2
	orr	r3, r3, r1, lsr #8
	ldr	r1, [sp, #588]
	ldrb	r9, [sp, #568]	@ zero_extendqisi2
	ldrb	r4, [sp, #636]	@ zero_extendqisi2
	mov	r6, r6, asl #24
	ldr	r10, [sp, #288]
.LVL2754:
	ldr	fp, [sp, #584]
	mov	ip, r7, asl #24
	mov	r0, r5, asl #24
	ldr	r7, [sp, #564]
	ldr	r5, [sp, #612]
	orr	r6, r6, r1, lsr #8
	ldr	r1, [sp, #632]
	ldrb	r2, [sp, #612]	@ zero_extendqisi2
	ldrb	lr, [sp, #640]	@ zero_extendqisi2
	mov	r8, r9, asl #24
	mov	r4, r4, asl #24
	orr	r9, r8, r7, lsr #8
	orr	r5, r0, r5, lsr #8
	orr	r7, ip, fp, lsr #8
	ldr	r8, [sp, #608]
	ldr	ip, [sp, #636]
	orr	r4, r4, r1, lsr #8
.LBB3891:
.LBB3892:
	.loc 2 38 0 is_stmt 1
	eor	r0, r3, r10
	and	r1, r3, r10
	ldr	r3, .L330
.LVL2755:
.LBE3892:
.LBE3891:
	.loc 4 219 0 discriminator 4
	mov	r2, r2, asl #24
	mov	lr, lr, asl #24
	orr	r2, r2, r8, lsr #8
	orr	lr, lr, ip, lsr #8
	ldr	r8, [sp, #292]
.LVL2756:
	ldr	ip, [sp, #304]
.LBB3935:
.LBB3893:
	.loc 2 38 0
	and	r10, r0, r3
.LVL2757:
	add	r10, r1, r10, lsr #1
.LBE3893:
.LBE3935:
	.loc 4 219 0 discriminator 4
	str	r10, [sp, #288]
.LVL2758:
.LBB3936:
.LBB3937:
	.loc 2 38 0
	eor	r10, r9, r8
	and	r8, r8, r9
.LVL2759:
.LBE3937:
.LBE3936:
.LBB3979:
.LBB3894:
	eor	r9, r7, ip
.LVL2760:
	and	r9, r9, r3
	and	ip, ip, r7
	add	r9, ip, r9, lsr #1
.LBE3894:
.LBE3979:
.LBB3980:
.LBB3938:
	ldr	ip, [sp, #308]
	ldr	r7, [sp, #308]
	and	r10, r10, r3
.LBE3938:
.LBE3980:
	.loc 4 219 0 discriminator 4
	ldr	fp, [sp, #320]
	ldr	r0, [sp, #324]
	ldr	r1, [sp, #336]
.LBB3981:
.LBB3939:
	.loc 2 38 0
	add	r10, r8, r10, lsr #1
	eor	ip, r6, ip
.LBE3939:
.LBE3981:
	.loc 4 219 0 discriminator 4
	ldr	r8, [sp, #340]
.LBB3982:
.LBB3940:
	.loc 2 38 0
	and	r6, r6, r7
	and	ip, ip, r3
.LBE3940:
.LBE3982:
	.loc 4 219 0 discriminator 4
	str	r10, [sp, #292]
.LVL2761:
.LBB3983:
.LBB3941:
	.loc 2 38 0
	add	ip, r6, ip, lsr #1
	eor	r7, r5, r0
.LVL2762:
.LBE3941:
.LBE3983:
.LBB3984:
.LBB3895:
	eor	r6, r2, fp
	eor	r10, r4, r1
	and	r1, r1, r4
.LBE3895:
.LBE3984:
.LBB3985:
.LBB3942:
	eor	r4, lr, r8
.LBE3942:
.LBE3985:
.LBB3986:
.LBB3896:
	and	r6, r6, r3
.LBE3896:
.LBE3986:
.LBB3987:
.LBB3943:
	and	r7, r7, r3
.LBE3943:
.LBE3987:
.LBB3988:
.LBB3897:
	and	r10, r10, r3
.LBE3897:
.LBE3988:
.LBB3989:
.LBB3944:
	and	r4, r4, r3
.LBE3944:
.LBE3989:
.LBB3990:
.LBB3898:
	and	r2, r2, fp
.LBE3898:
.LBE3990:
.LBB3991:
.LBB3945:
	and	r0, r0, r5
	and	lr, lr, r8
.LBE3945:
.LBE3991:
.LBB3992:
.LBB3899:
	add	r2, r2, r6, lsr #1
.LBE3899:
.LBE3992:
.LBB3993:
.LBB3946:
	add	r0, r0, r7, lsr #1
.LBE3946:
.LBE3993:
.LBB3994:
.LBB3900:
	add	r1, r1, r10, lsr #1
.LBE3900:
.LBE3994:
.LBB3995:
.LBB3947:
	add	lr, lr, r4, lsr #1
.LBE3947:
.LBE3995:
	.loc 4 219 0 discriminator 4
	str	r9, [sp, #304]
	str	ip, [sp, #308]
.LVL2763:
	str	r2, [sp, #320]
	str	r0, [sp, #324]
.LVL2764:
	str	r1, [sp, #336]
	str	lr, [sp, #340]
.LVL2765:
	ldr	r10, [sp, #352]
.LVL2766:
	ldrb	r7, [sp, #684]	@ zero_extendqisi2
	ldrb	r5, [sp, #712]	@ zero_extendqisi2
	ldrb	r1, [sp, #660]	@ zero_extendqisi2
	ldrb	r6, [sp, #688]	@ zero_extendqisi2
	mov	ip, r7, asl #24
	ldr	r7, [sp, #656]
	ldrb	r9, [sp, #664]	@ zero_extendqisi2
	mov	r0, r5, asl #24
	mov	r1, r1, asl #24
	ldr	r5, [sp, #684]
	orr	fp, r1, r7, lsr #8
.LVL2767:
	mov	r6, r6, asl #24
	ldr	r1, [sp, #660]
	ldrb	r2, [sp, #708]	@ zero_extendqisi2
	orr	r6, r6, r5, lsr #8
	mov	r8, r9, asl #24
.LVL2768:
	ldr	r5, [sp, #708]
	orr	r9, r8, r1, lsr #8
	ldrb	lr, [sp, #736]	@ zero_extendqisi2
	ldr	r1, [sp, #704]
	orr	r5, r0, r5, lsr #8
	ldrb	r4, [sp, #732]	@ zero_extendqisi2
	ldr	r0, [sp, #732]
	mov	r2, r2, asl #24
	ldr	r7, [sp, #680]
	orr	r2, r2, r1, lsr #8
	mov	lr, lr, asl #24
	ldr	r1, [sp, #728]
	orr	lr, lr, r0, lsr #8
	mov	r4, r4, asl #24
.LBB3996:
.LBB3901:
	.loc 2 38 0
	eor	r0, fp, r10
.LBE3901:
.LBE3996:
	.loc 4 219 0 discriminator 4
	ldr	r8, [sp, #356]
.LVL2769:
	orr	r7, ip, r7, lsr #8
	orr	r4, r4, r1, lsr #8
	ldr	ip, [sp, #368]
.LBB3997:
.LBB3902:
	.loc 2 38 0
	and	r0, r0, r3
	and	r1, fp, r10
	add	r10, r1, r0, lsr #1
.LVL2770:
.LBE3902:
.LBE3997:
	.loc 4 219 0 discriminator 4
	str	r10, [sp, #352]
.LVL2771:
.LBB3998:
.LBB3948:
	.loc 2 38 0
	eor	r10, r9, r8
	and	r8, r8, r9
.LVL2772:
.LBE3948:
.LBE3998:
.LBB3999:
.LBB3903:
	eor	r9, r7, ip
.LVL2773:
	and	r9, r9, r3
	and	ip, ip, r7
	add	r9, ip, r9, lsr #1
.LBE3903:
.LBE3999:
.LBB4000:
.LBB3949:
	ldr	ip, [sp, #372]
	ldr	r7, [sp, #372]
	and	r10, r10, r3
.LBE3949:
.LBE4000:
	.loc 4 219 0 discriminator 4
	ldr	fp, [sp, #384]
.LVL2774:
	ldr	r0, [sp, #388]
	ldr	r1, [sp, #400]
.LBB4001:
.LBB3950:
	.loc 2 38 0
	add	r10, r8, r10, lsr #1
	eor	ip, r6, ip
.LBE3950:
.LBE4001:
	.loc 4 219 0 discriminator 4
	ldr	r8, [sp, #404]
.LBB4002:
.LBB3951:
	.loc 2 38 0
	and	r6, r6, r7
	and	ip, ip, r3
.LBE3951:
.LBE4002:
	.loc 4 219 0 discriminator 4
	str	r10, [sp, #356]
.LVL2775:
.LBB4003:
.LBB3952:
	.loc 2 38 0
	add	ip, r6, ip, lsr #1
	eor	r7, r5, r0
.LVL2776:
.LBE3952:
.LBE4003:
.LBB4004:
.LBB3904:
	eor	r6, r2, fp
	eor	r10, r4, r1
	and	r1, r1, r4
.LBE3904:
.LBE4004:
.LBB4005:
.LBB3953:
	eor	r4, lr, r8
.LBE3953:
.LBE4005:
.LBB4006:
.LBB3905:
	and	r6, r6, r3
.LBE3905:
.LBE4006:
.LBB4007:
.LBB3954:
	and	r7, r7, r3
.LBE3954:
.LBE4007:
.LBB4008:
.LBB3906:
	and	r10, r10, r3
.LBE3906:
.LBE4008:
.LBB4009:
.LBB3955:
	and	r4, r4, r3
.LBE3955:
.LBE4009:
.LBB4010:
.LBB3907:
	and	r2, r2, fp
.LBE3907:
.LBE4010:
.LBB4011:
.LBB3956:
	and	r0, r0, r5
	and	lr, lr, r8
.LBE3956:
.LBE4011:
.LBB4012:
.LBB3908:
	add	r2, r2, r6, lsr #1
.LBE3908:
.LBE4012:
.LBB4013:
.LBB3957:
	add	r0, r0, r7, lsr #1
.LBE3957:
.LBE4013:
.LBB4014:
.LBB3909:
	add	r1, r1, r10, lsr #1
.LBE3909:
.LBE4014:
.LBB4015:
.LBB3958:
	add	lr, lr, r4, lsr #1
.LBE3958:
.LBE4015:
	.loc 4 219 0 discriminator 4
	str	r9, [sp, #368]
	str	ip, [sp, #372]
.LVL2777:
	str	r2, [sp, #384]
	str	r0, [sp, #388]
.LVL2778:
	str	r1, [sp, #400]
	str	lr, [sp, #404]
.LVL2779:
	ldr	r8, [sp, #416]
.LVL2780:
	ldrb	fp, [sp, #760]	@ zero_extendqisi2
	ldrb	r9, [sp, #780]	@ zero_extendqisi2
	mov	r1, fp, asl #24
	ldr	fp, [sp, #756]
	ldrb	ip, [sp, #756]	@ zero_extendqisi2
	orr	fp, r1, fp, lsr #8
	ldr	r1, [sp, #776]
	ldrb	r7, [sp, #784]	@ zero_extendqisi2
	mov	r9, r9, asl #24
	ldr	r10, [sp, #752]
	orr	r9, r9, r1, lsr #8
	ldr	r1, [sp, #780]
	ldrb	r6, [sp, #804]	@ zero_extendqisi2
	mov	r0, ip, asl #24
	mov	r7, r7, asl #24
	orr	r7, r7, r1, lsr #8
	orr	ip, r0, r10, lsr #8
.LVL2781:
	ldr	r1, [sp, #800]
.LBB4016:
.LBB3910:
	.loc 2 38 0
	eor	r0, ip, r8
.LBE3910:
.LBE4016:
	.loc 4 219 0 discriminator 4
	ldrb	r2, [sp, #808]	@ zero_extendqisi2
	ldrb	r4, [sp, #832]	@ zero_extendqisi2
	mov	r6, r6, asl #24
.LBB4017:
.LBB3911:
	.loc 2 38 0
	and	r10, r0, r3
.LBE3911:
.LBE4017:
	.loc 4 219 0 discriminator 4
	orr	r6, r6, r1, lsr #8
	ldr	r0, [sp, #804]
	ldr	r1, [sp, #828]
	ldrb	r5, [sp, #828]	@ zero_extendqisi2
	mov	r2, r2, asl #24
	mov	r4, r4, asl #24
	orr	r4, r4, r1, lsr #8
	ldrb	lr, [sp, #852]	@ zero_extendqisi2
	ldr	r1, [sp, #420]
.LVL2782:
	orr	r2, r2, r0, lsr #8
	ldr	r0, [sp, #824]
.LBB4018:
.LBB3912:
	.loc 2 38 0
	and	ip, ip, r8
.LVL2783:
.LBE3912:
.LBE4018:
	.loc 4 219 0 discriminator 4
	mov	r5, r5, asl #24
	ldr	r8, [sp, #848]
.LVL2784:
	orr	r5, r5, r0, lsr #8
	mov	lr, lr, asl #24
.LBB4019:
.LBB3913:
	.loc 2 38 0
	add	r0, ip, r10, lsr #1
.LBE3913:
.LBE4019:
.LBB4020:
.LBB3959:
	eor	r10, fp, r1
.LBE3959:
.LBE4020:
	.loc 4 219 0 discriminator 4
	orr	lr, lr, r8, lsr #8
	str	r0, [sp, #416]
.LVL2785:
	ldr	r8, [sp, #432]
.LBB4021:
.LBB3960:
	.loc 2 38 0
	and	r0, r10, r3
	and	r1, r1, fp
.LVL2786:
	add	r10, r1, r0, lsr #1
.LBE3960:
.LBE4021:
	.loc 4 219 0 discriminator 4
	ldr	ip, [sp, #436]
	str	r10, [sp, #420]
.LVL2787:
.LBB4022:
.LBB3914:
	.loc 2 38 0
	eor	r10, r9, r8
	and	r10, r10, r3
	and	r8, r8, r9
.LVL2788:
	add	r10, r8, r10, lsr #1
.LBE3914:
.LBE4022:
.LBB4023:
.LBB3961:
	eor	r8, r7, ip
	and	r8, r8, r3
	and	ip, ip, r7
.LVL2789:
	add	r8, ip, r8, lsr #1
.LBE3961:
.LBE4023:
.LBB4024:
.LBB3915:
	ldr	r7, [sp, #448]
.LVL2790:
	ldr	ip, [sp, #448]
.LBE3915:
.LBE4024:
	.loc 4 219 0 discriminator 4
	ldr	r0, [sp, #464]
.LBB4025:
.LBB3916:
	.loc 2 38 0
	eor	ip, r6, ip
	and	r6, r6, r7
.LBE3916:
.LBE4025:
.LBB4026:
.LBB3962:
	ldr	r7, [sp, #452]
.LBE3962:
.LBE4026:
	.loc 4 219 0 discriminator 4
	ldr	r1, [sp, #468]
.LBB4027:
.LBB3917:
	.loc 2 38 0
	and	ip, ip, r3
	add	ip, r6, ip, lsr #1
.LBE3917:
.LBE4027:
.LBB4028:
.LBB3963:
	eor	r6, r2, r7
	and	r6, r6, r3
	eor	r9, r4, r1
.LVL2791:
	and	r2, r2, r7
.LBE3963:
.LBE4028:
.LBB4029:
.LBB3918:
	eor	r7, r5, r0
	and	r7, r7, r3
.LBE3918:
.LBE4029:
.LBB4030:
.LBB3964:
	and	r9, r9, r3
	add	r2, r2, r6, lsr #1
.LBE3964:
.LBE4030:
.LBB4031:
.LBB3919:
	and	r0, r0, r5
.LBE3919:
.LBE4031:
.LBB4032:
.LBB3965:
	and	r1, r1, r4
.LBE3965:
.LBE4032:
	.loc 4 219 0 discriminator 4
	ldr	fp, [sp, #480]
	str	r10, [sp, #432]
.LVL2792:
.LBB4033:
.LBB3920:
	.loc 2 38 0
	add	r0, r0, r7, lsr #1
.LBE3920:
.LBE4033:
.LBB4034:
.LBB3966:
	add	r1, r1, r9, lsr #1
.LBE3966:
.LBE4034:
	.loc 4 219 0 discriminator 4
	str	r8, [sp, #436]
.LVL2793:
	str	ip, [sp, #448]
	str	r2, [sp, #452]
	ldrb	r7, [sp, #880]	@ zero_extendqisi2
	ldrb	r5, [sp, #924]	@ zero_extendqisi2
	str	r1, [sp, #468]
	ldrb	r1, [sp, #856]	@ zero_extendqisi2
	ldrb	r6, [sp, #900]	@ zero_extendqisi2
	mov	ip, r7, asl #24
	ldr	r7, [sp, #852]
	ldrb	r9, [sp, #876]	@ zero_extendqisi2
.LBB4035:
.LBB3921:
	.loc 2 38 0
	eor	r10, lr, fp
.LBE3921:
.LBE4035:
	.loc 4 219 0 discriminator 4
	str	r0, [sp, #464]
	mov	r1, r1, asl #24
	mov	r0, r5, asl #24
	ldr	r5, [sp, #896]
.LBB4036:
.LBB3922:
	.loc 2 38 0
	and	r10, r10, r3
.LVL2794:
	and	lr, lr, fp
.LVL2795:
.LBE3922:
.LBE4036:
	.loc 4 219 0 discriminator 4
	mov	r6, r6, asl #24
	orr	fp, r1, r7, lsr #8
.LVL2796:
	ldr	r1, [sp, #872]
.LBB4037:
.LBB3923:
	.loc 2 38 0
	add	lr, lr, r10, lsr #1
.LBE3923:
.LBE4037:
	.loc 4 219 0 discriminator 4
	ldrb	r2, [sp, #904]	@ zero_extendqisi2
	orr	r6, r6, r5, lsr #8
	mov	r8, r9, asl #24
	ldr	r5, [sp, #920]
	orr	r9, r8, r1, lsr #8
	str	lr, [sp, #480]
.LVL2797:
	ldr	r1, [sp, #900]
	ldrb	lr, [sp, #948]	@ zero_extendqisi2
	ldr	r10, [sp, #484]
.LVL2798:
	orr	r5, r0, r5, lsr #8
	ldrb	r4, [sp, #928]	@ zero_extendqisi2
	ldr	r0, [sp, #944]
	mov	r2, r2, asl #24
	ldr	r7, [sp, #876]
	orr	r2, r2, r1, lsr #8
	mov	lr, lr, asl #24
	ldr	r1, [sp, #924]
	orr	lr, lr, r0, lsr #8
	mov	r4, r4, asl #24
.LBB4038:
.LBB3967:
	.loc 2 38 0
	eor	r0, fp, r10
.LBE3967:
.LBE4038:
	.loc 4 219 0 discriminator 4
	ldr	r8, [sp, #496]
	orr	r7, ip, r7, lsr #8
	orr	r4, r4, r1, lsr #8
	ldr	ip, [sp, #500]
.LBB4039:
.LBB3968:
	.loc 2 38 0
	and	r0, r0, r3
	and	r1, fp, r10
	add	r10, r1, r0, lsr #1
.LVL2799:
.LBE3968:
.LBE4039:
	.loc 4 219 0 discriminator 4
	str	r10, [sp, #484]
.LVL2800:
.LBB4040:
.LBB3924:
	.loc 2 38 0
	eor	r10, r9, r8
	and	r8, r8, r9
.LVL2801:
.LBE3924:
.LBE4040:
.LBB4041:
.LBB3969:
	eor	r9, r7, ip
.LVL2802:
	and	r9, r9, r3
	and	ip, ip, r7
.LVL2803:
	add	r9, ip, r9, lsr #1
.LBE3969:
.LBE4041:
.LBB4042:
.LBB3925:
	ldr	ip, [sp, #512]
	ldr	r7, [sp, #512]
.LVL2804:
.LBE3925:
.LBE4042:
	.loc 4 219 0 discriminator 4
	ldr	fp, [sp, #516]
	ldr	r0, [sp, #528]
	ldr	r1, [sp, #532]
.LBB4043:
.LBB3926:
	.loc 2 38 0
	and	r10, r10, r3
	eor	ip, r6, ip
	add	r10, r8, r10, lsr #1
	and	r6, r6, r7
	and	ip, ip, r3
	add	ip, r6, ip, lsr #1
.LBE3926:
.LBE4043:
	.loc 4 219 0 discriminator 4
	str	r10, [sp, #496]
.LVL2805:
.LBB4044:
.LBB3970:
	.loc 2 38 0
	eor	r6, r2, fp
.LBE3970:
.LBE4044:
.LBB4045:
.LBB3927:
	eor	r7, r5, r0
.LBE3927:
.LBE4045:
.LBB4046:
.LBB3971:
	eor	r10, r4, r1
	and	r6, r6, r3
.LBE3971:
.LBE4046:
.LBB4047:
.LBB3928:
	and	r7, r7, r3
.LBE3928:
.LBE4047:
.LBB4048:
.LBB3972:
	and	r10, r10, r3
	and	r2, r2, fp
.LBE3972:
.LBE4048:
.LBB4049:
.LBB3929:
	and	r0, r0, r5
.LBE3929:
.LBE4049:
.LBB4050:
.LBB3973:
	and	r1, r1, r4
	add	r2, r2, r6, lsr #1
.LBE3973:
.LBE4050:
.LBB4051:
.LBB3930:
	add	r0, r0, r7, lsr #1
.LBE3930:
.LBE4051:
.LBB4052:
.LBB3974:
	add	r1, r1, r10, lsr #1
.LBE3974:
.LBE4052:
	.loc 4 219 0 discriminator 4
	str	ip, [sp, #512]
	ldr	r8, [sp, #544]
	str	r2, [sp, #516]
	str	r9, [sp, #500]
.LVL2806:
	str	r0, [sp, #528]
	str	r1, [sp, #532]
	ldrb	r1, [sp, #952]	@ zero_extendqisi2
	ldr	r0, [sp, #948]
	ldr	r2, [sp, #548]
	mov	r1, r1, asl #24
	orr	r1, r1, r0, lsr #8
.LBB4053:
.LBB3975:
	.loc 2 38 0
	eor	r0, r1, r2
.LBE3975:
.LBE4053:
.LBB4054:
.LBB3931:
	eor	r4, lr, r8
.LBE3931:
.LBE4054:
.LBE3890:
.LBE3889:
.LBE3888:
.LBE3887:
.LBE3886:
	.loc 5 696 0 discriminator 3
	add	r5, sp, #24
.LBB4069:
.LBB4067:
.LBB4065:
.LBB4063:
.LBB4061:
.LBB4055:
.LBB3932:
	.loc 2 38 0
	and	r4, r4, r3
.LVL2807:
.LBE3932:
.LBE4055:
.LBB4056:
.LBB3976:
	and	r2, r2, r1
.LVL2808:
.LBE3976:
.LBE4056:
.LBB4057:
.LBB3933:
	and	lr, lr, r8
.LVL2809:
.LBE3933:
.LBE4057:
.LBB4058:
.LBB3977:
	and	r3, r3, r0
.LBE3977:
.LBE4058:
.LBB4059:
.LBB3934:
	add	lr, lr, r4, lsr #1
.LBE3934:
.LBE4059:
.LBB4060:
.LBB3978:
	add	r3, r2, r3, lsr #1
.LBE3978:
.LBE4060:
.LBE4061:
.LBE4063:
.LBE4065:
.LBE4067:
.LBE4069:
	.loc 5 696 0 discriminator 3
	mov	r0, r5
	add	r1, sp, #280
.LVL2810:
	mov	r2, #16
.LBB4070:
.LBB4071:
	.loc 4 219 0
	mov	r4, r2
.LBE4071:
.LBE4070:
.LBB4073:
.LBB4068:
.LBB4066:
.LBB4064:
.LBB4062:
	.loc 4 219 0 is_stmt 0 discriminator 4
	str	lr, [sp, #544]
	str	r3, [sp, #548]
.LVL2811:
.LBE4062:
.LBE4064:
.LBE4066:
.LBE4068:
.LBE4073:
	.loc 5 696 0 is_stmt 1 discriminator 3
	bl	put_no_rnd_mpeg4_qpel16_v_lowpass.constprop.5(PLT)
.LVL2812:
.LBB4074:
.LBB4072:
	.loc 4 219 0
	ldr	r6, [sp, #20]
	mov	r2, r5
	ldr	r5, [sp, #16]
.LVL2813:
	mov	r0, r6
	mov	r3, r5
	add	r1, sp, #296
.LVL2814:
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #8]
	bl	put_no_rnd_pixels8_l2_8(PLT)
.LVL2815:
	.loc 4 219 0 is_stmt 0 discriminator 1
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #8]
	add	r0, r6, #8
	mov	r3, r5
	add	r1, sp, #304
	add	r2, sp, #32
	bl	put_no_rnd_pixels8_l2_8(PLT)
.LVL2816:
.LBE4072:
.LBE4074:
	.loc 5 696 0 is_stmt 1
	add	sp, sp, #964
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2817:
.L331:
	.align	2
.L330:
	.word	-16843010
	.cfi_endproc
.LFE186:
	.size	put_no_rnd_qpel16_mc33_c, .-put_no_rnd_qpel16_mc33_c
	.align	2
	.type	put_no_rnd_qpel16_mc21_c, %function
put_no_rnd_qpel16_mc21_c:
.LFB187:
	.loc 5 696 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 528
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2818:
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
	sub	sp, sp, #540
	.cfi_def_cfa_offset 576
	.loc 5 696 0
	add	r6, sp, #264
	mov	r4, r2
	mov	r2, #17
.LVL2819:
	mov	r5, r0
	mov	r3, r4
	mov	r0, r6
.LVL2820:
	str	r2, [sp]
	mov	r2, #16
	bl	put_no_rnd_mpeg4_qpel16_h_lowpass(PLT)
.LVL2821:
	.loc 5 696 0 is_stmt 0 discriminator 1
	mov	r1, r6
	add	r0, sp, #8
	mov	r2, #16
	bl	put_no_rnd_mpeg4_qpel16_v_lowpass.constprop.5(PLT)
.LVL2822:
	add	r6, sp, #524
.LVL2823:
	mov	r0, r5
	add	ip, sp, #268
	add	lr, sp, #12
.LVL2824:
.L333:
.LBB4091:
.LBB4092:
.LBB4093:
.LBB4094:
.LBB4095:
	.loc 4 219 0 is_stmt 1 discriminator 4
	ldrb	r8, [ip]	@ zero_extendqisi2
	ldrb	r7, [ip, #1]	@ zero_extendqisi2
	ldrb	r9, [lr, #1]	@ zero_extendqisi2
	ldrb	r2, [lr]	@ zero_extendqisi2
	ldrb	r3, [lr, #2]	@ zero_extendqisi2
	ldrb	r1, [ip, #2]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #8
	orr	r7, r8, r7, asl #8
	ldrb	r8, [lr, #3]	@ zero_extendqisi2
	ldrb	r10, [ip, #3]	@ zero_extendqisi2
	orr	r3, r2, r3, asl #16
	ldr	r9, [lr, #-4]
	ldr	r2, [ip, #-4]
.LVL2825:
	orr	r3, r3, r8, asl #24
	orr	r7, r7, r1, asl #16
.LBB4096:
.LBB4097:
	.loc 2 38 0
	ldr	r8, .L338
.LBE4097:
.LBE4096:
	.loc 4 219 0 discriminator 4
	orr	r1, r7, r10, asl #24
.LVL2826:
.LBB4101:
.LBB4098:
	.loc 2 38 0
	eor	fp, r3, r1
.LBE4098:
.LBE4101:
.LBB4102:
.LBB4103:
	mov	r7, r8
	eor	r10, r9, r2
.LBE4103:
.LBE4102:
.LBB4106:
.LBB4099:
	and	r1, r1, r3
.LVL2827:
	and	r8, r8, fp
	add	ip, ip, #16
.LVL2828:
.LBE4099:
.LBE4106:
.LBB4107:
.LBB4104:
	and	r2, r2, r9
.LVL2829:
	and	r7, r7, r10
.LBE4104:
.LBE4107:
.LBB4108:
.LBB4100:
	add	r1, r1, r8, lsr #1
.LBE4100:
.LBE4108:
.LBB4109:
.LBB4105:
	add	r2, r2, r7, lsr #1
.LBE4105:
.LBE4109:
.LBE4095:
	.loc 4 219 0 discriminator 1
	cmp	ip, r6
.LBB4110:
	.loc 4 219 0 is_stmt 0 discriminator 4
	str	r1, [r0, #4]
	str	r2, [r0]
	add	lr, lr, #16
	add	r0, r0, r4
.LBE4110:
	.loc 4 219 0 discriminator 1
	bne	.L333
.LVL2830:
.LBE4094:
.LBE4093:
	.loc 4 219 0
	add	r5, r5, #8
.LVL2831:
	add	r3, sp, #272
.LVL2832:
	add	r2, sp, #20
	add	r0, sp, #528
.LVL2833:
.L334:
.LBB4111:
.LBB4112:
.LBB4113:
	.loc 4 219 0 discriminator 4
	ldrb	r7, [r2, #-4]	@ zero_extendqisi2
	ldrb	r6, [r2, #-3]	@ zero_extendqisi2
	ldrb	lr, [r3, #4]	@ zero_extendqisi2
	ldrb	ip, [r3, #5]	@ zero_extendqisi2
	ldrb	r8, [r2, #-2]	@ zero_extendqisi2
	ldrb	r1, [r3, #6]	@ zero_extendqisi2
	ldrb	r10, [r2, #-1]	@ zero_extendqisi2
	orr	r6, r7, r6, asl #8
	ldrb	r9, [r3, #7]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #16
	orr	ip, lr, ip, asl #8
	ldr	r7, [r3]
.LVL2834:
	orr	lr, r6, r10, asl #24
.LVL2835:
	orr	ip, ip, r1, asl #16
	ldr	r8, [r2], #16
.LBB4114:
.LBB4115:
	.loc 2 38 0 is_stmt 1
	ldr	r6, .L338
.LBE4115:
.LBE4114:
	.loc 4 219 0 discriminator 4
	orr	r1, ip, r9, asl #24
.LVL2836:
.LBB4119:
.LBB4116:
	.loc 2 38 0
	eor	r10, lr, r7
.LBE4116:
.LBE4119:
.LBB4120:
.LBB4121:
	mov	ip, r6
	eor	r9, r8, r1
.LBE4121:
.LBE4120:
.LBB4124:
.LBB4117:
	and	lr, lr, r7
.LVL2837:
	and	r6, r6, r10
	add	r3, r3, #16
.LBE4117:
.LBE4124:
.LBB4125:
.LBB4122:
	and	r1, r1, r8
.LVL2838:
	and	ip, ip, r9
.LBE4122:
.LBE4125:
.LBB4126:
.LBB4118:
	add	lr, lr, r6, lsr #1
.LBE4118:
.LBE4126:
.LBB4127:
.LBB4123:
	add	r1, r1, ip, lsr #1
.LBE4123:
.LBE4127:
.LBE4113:
	.loc 4 219 0 discriminator 1
	cmp	r3, r0
.LBB4128:
	.loc 4 219 0 is_stmt 0 discriminator 4
	str	lr, [r5]
	str	r1, [r5, #4]
	add	r5, r5, r4
.LBE4128:
	.loc 4 219 0 discriminator 1
	bne	.L334
.LBE4112:
.LBE4111:
.LBE4092:
.LBE4091:
	.loc 5 696 0 is_stmt 1
	add	sp, sp, #540
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2839:
.L339:
	.align	2
.L338:
	.word	-16843010
	.cfi_endproc
.LFE187:
	.size	put_no_rnd_qpel16_mc21_c, .-put_no_rnd_qpel16_mc21_c
	.align	2
	.type	put_no_rnd_qpel16_mc23_c, %function
put_no_rnd_qpel16_mc23_c:
.LFB188:
	.loc 5 696 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 528
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2840:
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
	sub	sp, sp, #540
	.cfi_def_cfa_offset 576
	.loc 5 696 0
	add	r6, sp, #264
	mov	r4, r2
	mov	r2, #17
.LVL2841:
	mov	r5, r0
	mov	r3, r4
	mov	r0, r6
.LVL2842:
	str	r2, [sp]
	mov	r2, #16
	bl	put_no_rnd_mpeg4_qpel16_h_lowpass(PLT)
.LVL2843:
	.loc 5 696 0 is_stmt 0 discriminator 1
	mov	r1, r6
	add	r0, sp, #8
	mov	r2, #16
	bl	put_no_rnd_mpeg4_qpel16_v_lowpass.constprop.5(PLT)
.LVL2844:
	add	r6, sp, #536
	mov	r0, r5
	add	ip, sp, #280
.LVL2845:
	add	lr, sp, #12
.LVL2846:
.L341:
.LBB4145:
.LBB4146:
.LBB4147:
.LBB4148:
.LBB4149:
	.loc 4 219 0 is_stmt 1 discriminator 4
	ldrb	r8, [ip, #4]	@ zero_extendqisi2
	ldrb	r7, [ip, #5]	@ zero_extendqisi2
	ldrb	r9, [lr, #1]	@ zero_extendqisi2
	ldrb	r2, [lr]	@ zero_extendqisi2
	ldrb	r3, [lr, #2]	@ zero_extendqisi2
	ldrb	r1, [ip, #6]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #8
	orr	r7, r8, r7, asl #8
	ldrb	r8, [lr, #3]	@ zero_extendqisi2
	ldrb	r10, [ip, #7]	@ zero_extendqisi2
	orr	r3, r2, r3, asl #16
	ldr	r9, [lr, #-4]
	ldr	r2, [ip]
.LVL2847:
	orr	r3, r3, r8, asl #24
	orr	r7, r7, r1, asl #16
.LBB4150:
.LBB4151:
	.loc 2 38 0
	ldr	r8, .L346
.LBE4151:
.LBE4150:
	.loc 4 219 0 discriminator 4
	orr	r1, r7, r10, asl #24
.LVL2848:
.LBB4155:
.LBB4152:
	.loc 2 38 0
	eor	fp, r3, r1
.LBE4152:
.LBE4155:
.LBB4156:
.LBB4157:
	mov	r7, r8
	eor	r10, r9, r2
.LBE4157:
.LBE4156:
.LBB4160:
.LBB4153:
	and	r1, r1, r3
.LVL2849:
	and	r8, r8, fp
	add	ip, ip, #16
.LVL2850:
.LBE4153:
.LBE4160:
.LBB4161:
.LBB4158:
	and	r2, r2, r9
.LVL2851:
	and	r7, r7, r10
.LBE4158:
.LBE4161:
.LBB4162:
.LBB4154:
	add	r1, r1, r8, lsr #1
.LBE4154:
.LBE4162:
.LBB4163:
.LBB4159:
	add	r2, r2, r7, lsr #1
.LBE4159:
.LBE4163:
.LBE4149:
	.loc 4 219 0 discriminator 1
	cmp	ip, r6
.LBB4164:
	.loc 4 219 0 is_stmt 0 discriminator 4
	str	r1, [r0, #4]
	str	r2, [r0]
	add	lr, lr, #16
	add	r0, r0, r4
.LBE4164:
	.loc 4 219 0 discriminator 1
	bne	.L341
.LVL2852:
.LBE4148:
.LBE4147:
	.loc 4 219 0
	add	r5, r5, #8
.LVL2853:
	add	r3, sp, #288
.LVL2854:
	add	r2, sp, #20
	add	r0, sp, #544
.LVL2855:
.L342:
.LBB4165:
.LBB4166:
.LBB4167:
	.loc 4 219 0 discriminator 4
	ldrb	r7, [r2, #-4]	@ zero_extendqisi2
	ldrb	r6, [r2, #-3]	@ zero_extendqisi2
	ldrb	lr, [r3, #4]	@ zero_extendqisi2
	ldrb	ip, [r3, #5]	@ zero_extendqisi2
	ldrb	r8, [r2, #-2]	@ zero_extendqisi2
	ldrb	r1, [r3, #6]	@ zero_extendqisi2
	ldrb	r10, [r2, #-1]	@ zero_extendqisi2
	orr	r6, r7, r6, asl #8
	ldrb	r9, [r3, #7]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #16
	orr	ip, lr, ip, asl #8
	ldr	r7, [r3]
.LVL2856:
	orr	lr, r6, r10, asl #24
.LVL2857:
	orr	ip, ip, r1, asl #16
	ldr	r8, [r2], #16
.LBB4168:
.LBB4169:
	.loc 2 38 0 is_stmt 1
	ldr	r6, .L346
.LBE4169:
.LBE4168:
	.loc 4 219 0 discriminator 4
	orr	r1, ip, r9, asl #24
.LVL2858:
.LBB4173:
.LBB4170:
	.loc 2 38 0
	eor	r10, lr, r7
.LBE4170:
.LBE4173:
.LBB4174:
.LBB4175:
	mov	ip, r6
	eor	r9, r8, r1
.LBE4175:
.LBE4174:
.LBB4178:
.LBB4171:
	and	lr, lr, r7
.LVL2859:
	and	r6, r6, r10
	add	r3, r3, #16
.LBE4171:
.LBE4178:
.LBB4179:
.LBB4176:
	and	r1, r1, r8
.LVL2860:
	and	ip, ip, r9
.LBE4176:
.LBE4179:
.LBB4180:
.LBB4172:
	add	lr, lr, r6, lsr #1
.LBE4172:
.LBE4180:
.LBB4181:
.LBB4177:
	add	r1, r1, ip, lsr #1
.LBE4177:
.LBE4181:
.LBE4167:
	.loc 4 219 0 discriminator 1
	cmp	r3, r0
.LBB4182:
	.loc 4 219 0 is_stmt 0 discriminator 4
	str	lr, [r5]
	str	r1, [r5, #4]
	add	r5, r5, r4
.LBE4182:
	.loc 4 219 0 discriminator 1
	bne	.L342
.LBE4166:
.LBE4165:
.LBE4146:
.LBE4145:
	.loc 5 696 0 is_stmt 1
	add	sp, sp, #540
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL2861:
.L347:
	.align	2
.L346:
	.word	-16843010
	.cfi_endproc
.LFE188:
	.size	put_no_rnd_qpel16_mc23_c, .-put_no_rnd_qpel16_mc23_c
	.align	2
	.type	avg_qpel8_mc21_c, %function
avg_qpel8_mc21_c:
.LFB212:
	.loc 5 697 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2862:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	sub	sp, sp, #144
	.cfi_def_cfa_offset 168
	.loc 5 697 0
	mov	r5, r2
	add	r6, sp, #72
	mov	r2, #9
.LVL2863:
	mov	r4, r0
	mov	r3, r5
	mov	r0, r6
.LVL2864:
	str	r2, [sp]
	mov	r2, #8
	bl	put_mpeg4_qpel8_h_lowpass(PLT)
.LVL2865:
	.loc 5 697 0 is_stmt 0 discriminator 1
	mov	r2, #8
	add	r0, sp, r2
	mov	r1, r6
	mov	r3, r2
	bl	put_mpeg4_qpel8_v_lowpass(PLT)
.LVL2866:
.LBB4194:
.LBB4195:
.LBB4196:
	.loc 1 103 0 is_stmt 1 discriminator 6
	ldr	lr, [sp, #12]
	ldr	r3, [sp, #76]
	ldr	r6, [sp, #8]
.LVL2867:
	ldr	r0, [sp, #72]
.LVL2868:
.LBB4197:
.LBB4198:
	.loc 2 33 0
	ldr	r1, .L350
	eor	ip, r6, r0
.LBE4198:
.LBE4197:
.LBB4222:
.LBB4223:
	eor	r2, lr, r3
.LBE4223:
.LBE4222:
.LBB4248:
.LBB4199:
	orr	r0, r6, r0
.LVL2869:
.LBE4199:
.LBE4248:
.LBB4249:
.LBB4224:
	orr	r3, lr, r3
.LBE4224:
.LBE4249:
	.loc 1 103 0 discriminator 6
	ldr	r6, [r4]
.LVL2870:
	ldr	lr, [r4, #4]
.LBB4250:
.LBB4200:
	.loc 2 33 0
	and	ip, ip, r1
.LBE4200:
.LBE4250:
.LBB4251:
.LBB4225:
	and	r2, r2, r1
.LBE4225:
.LBE4251:
.LBB4252:
.LBB4201:
	sub	ip, r0, ip, lsr #1
.LVL2871:
.LBE4201:
.LBE4252:
.LBB4253:
.LBB4226:
	sub	r2, r3, r2, lsr #1
.LVL2872:
.LBE4226:
.LBE4253:
	.loc 1 103 0 discriminator 6
	ldr	r0, [sp, #16]
	ldr	r3, [sp, #80]
.LBB4254:
.LBB4255:
	.loc 2 33 0
	eor	r8, ip, r6
.LBE4255:
.LBE4254:
.LBB4274:
.LBB4275:
	eor	r7, r2, lr
.LBE4275:
.LBE4274:
.LBB4294:
.LBB4256:
	and	r8, r8, r1
	orr	ip, ip, r6
.LVL2873:
.LBE4256:
.LBE4294:
.LBB4295:
.LBB4276:
	orr	r2, r2, lr
.LVL2874:
	and	lr, r7, r1
.LVL2875:
.LBE4276:
.LBE4295:
.LBB4296:
.LBB4257:
	sub	ip, ip, r8, lsr #1
.LBE4257:
.LBE4296:
.LBB4297:
.LBB4277:
	sub	r2, r2, lr, lsr #1
.LBE4277:
.LBE4297:
.LBB4298:
.LBB4202:
	eor	lr, r0, r3
.LBE4202:
.LBE4298:
	.loc 1 103 0 discriminator 6
	str	ip, [r4]
.LVL2876:
	str	r2, [r4, #4]
.LVL2877:
.LBB4299:
.LBB4203:
	.loc 2 33 0
	orr	r3, r0, r3
.LVL2878:
.LBE4203:
.LBE4299:
	.loc 1 103 0 discriminator 6
	ldr	r6, [r4, r5]
.LVL2879:
.LBB4300:
.LBB4204:
	.loc 2 33 0
	and	r2, lr, r1
	sub	r0, r3, r2, lsr #1
.LVL2880:
.LBE4204:
.LBE4300:
.LBB4301:
.LBB4258:
	eor	ip, r6, r0
.LBE4258:
.LBE4301:
	.loc 1 103 0 discriminator 6
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #84]
.LVL2881:
.LBB4302:
.LBB4259:
	.loc 2 33 0
	and	ip, ip, r1
	orr	r0, r6, r0
.LVL2882:
.LBE4259:
.LBE4302:
	.loc 1 103 0 discriminator 6
	add	lr, r5, #4
.LBB4303:
.LBB4260:
	.loc 2 33 0
	sub	r0, r0, ip, lsr #1
.LBE4260:
.LBE4303:
.LBB4304:
.LBB4227:
	eor	ip, r2, r3
.LBE4227:
.LBE4304:
	.loc 1 103 0 discriminator 6
	str	r0, [r4, r5]
.LBB4305:
.LBB4228:
	.loc 2 33 0
	orr	r3, r2, r3
.LVL2883:
.LBE4228:
.LBE4305:
	.loc 1 103 0 discriminator 6
	ldr	r6, [r4, lr]
.LVL2884:
.LBB4306:
.LBB4229:
	.loc 2 33 0
	and	r0, ip, r1
	sub	r2, r3, r0, lsr #1
.LVL2885:
.LBE4229:
.LBE4306:
.LBB4307:
.LBB4278:
	eor	ip, r6, r2
.LBE4278:
.LBE4307:
	.loc 1 103 0 discriminator 6
	ldr	r0, [sp, #24]
	ldr	r3, [sp, #88]
.LBB4308:
.LBB4279:
	.loc 2 33 0
	and	ip, ip, r1
	orr	r2, r6, r2
.LVL2886:
	sub	r2, r2, ip, lsr #1
.LBE4279:
.LBE4308:
.LBB4309:
.LBB4205:
	eor	r6, r0, r3
.LVL2887:
.LBE4205:
.LBE4309:
	.loc 1 103 0 discriminator 6
	str	r2, [r4, lr]
.LVL2888:
.LBB4310:
.LBB4206:
	.loc 2 33 0
	orr	r3, r0, r3
.LVL2889:
.LBE4206:
.LBE4310:
	.loc 1 103 0 discriminator 6
	ldr	lr, [r4, r5, asl #1]
.LVL2890:
.LBB4311:
.LBB4207:
	.loc 2 33 0
	and	r2, r6, r1
	sub	r0, r3, r2, lsr #1
.LVL2891:
.LBE4207:
.LBE4311:
.LBB4312:
.LBB4261:
	eor	ip, lr, r0
.LBE4261:
.LBE4312:
	.loc 1 103 0 discriminator 6
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #92]
.LVL2892:
.LBB4313:
.LBB4262:
	.loc 2 33 0
	orr	lr, lr, r0
.LVL2893:
	and	ip, ip, r1
.LBE4262:
.LBE4313:
	.loc 1 103 0 discriminator 6
	mov	r0, r5, asl #1
.LVL2894:
	add	r6, r0, #4
.LBB4314:
.LBB4263:
	.loc 2 33 0
	sub	ip, lr, ip, lsr #1
.LBE4263:
.LBE4314:
.LBB4315:
.LBB4230:
	eor	lr, r2, r3
.LBE4230:
.LBE4315:
	.loc 1 103 0 discriminator 6
	str	ip, [r4, r5, asl #1]
.LVL2895:
.LBB4316:
.LBB4231:
	.loc 2 33 0
	orr	r3, r2, r3
.LVL2896:
.LBE4231:
.LBE4316:
	.loc 1 103 0 discriminator 6
	ldr	r7, [r4, r6]
.LVL2897:
.LBB4317:
.LBB4232:
	.loc 2 33 0
	and	ip, lr, r1
	sub	r2, r3, ip, lsr #1
.LVL2898:
.LBE4232:
.LBE4317:
.LBB4318:
.LBB4280:
	eor	lr, r7, r2
.LBE4280:
.LBE4318:
	.loc 1 103 0 discriminator 6
	ldr	ip, [sp, #32]
	ldr	r3, [sp, #96]
.LBB4319:
.LBB4281:
	.loc 2 33 0
	and	lr, lr, r1
	orr	r2, r7, r2
.LVL2899:
.LBE4281:
.LBE4319:
	.loc 1 103 0 discriminator 6
	add	r0, r0, r5
.LBB4320:
.LBB4282:
	.loc 2 33 0
	sub	r2, r2, lr, lsr #1
.LBE4282:
.LBE4320:
.LBB4321:
.LBB4208:
	eor	lr, ip, r3
.LBE4208:
.LBE4321:
	.loc 1 103 0 discriminator 6
	str	r2, [r4, r6]
.LVL2900:
.LBB4322:
.LBB4209:
	.loc 2 33 0
	orr	r3, ip, r3
.LVL2901:
.LBE4209:
.LBE4322:
	.loc 1 103 0 discriminator 6
	ldr	r6, [r4, r0]
.LVL2902:
.LBB4323:
.LBB4210:
	.loc 2 33 0
	and	r2, lr, r1
	sub	ip, r3, r2, lsr #1
.LVL2903:
.LBE4210:
.LBE4323:
.LBB4324:
.LBB4264:
	eor	lr, r6, ip
.LBE4264:
.LBE4324:
	.loc 1 103 0 discriminator 6
	ldr	r3, [sp, #36]
	ldr	r2, [sp, #100]
.LVL2904:
.LBB4325:
.LBB4265:
	.loc 2 33 0
	and	lr, lr, r1
	orr	ip, r6, ip
.LVL2905:
	sub	ip, ip, lr, lsr #1
.LBE4265:
.LBE4325:
.LBB4326:
.LBB4233:
	eor	r6, r3, r2
.LVL2906:
.LBE4233:
.LBE4326:
	.loc 1 103 0 discriminator 6
	add	lr, r0, #4
	str	ip, [r4, r0]
.LVL2907:
.LBB4327:
.LBB4234:
	.loc 2 33 0
	orr	r2, r3, r2
.LVL2908:
.LBE4234:
.LBE4327:
	.loc 1 103 0 discriminator 6
	ldr	r7, [r4, lr]
.LVL2909:
.LBB4328:
.LBB4235:
	.loc 2 33 0
	and	ip, r6, r1
	sub	r3, r2, ip, lsr #1
.LVL2910:
.LBE4235:
.LBE4328:
.LBB4329:
.LBB4283:
	eor	r2, r7, r3
	and	r2, r2, r1
	orr	r3, r7, r3
.LVL2911:
	sub	r3, r3, r2, lsr #1
.LBE4283:
.LBE4329:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, lr]
.LVL2912:
	ldr	r3, [sp, #104]
.LVL2913:
	ldr	ip, [sp, #40]
.LVL2914:
	add	r0, r0, r5
.LBB4330:
.LBB4211:
	.loc 2 33 0
	eor	r2, ip, r3
.LBE4211:
.LBE4330:
	.loc 1 103 0 discriminator 6
	ldr	r6, [r4, r0]
.LVL2915:
.LBB4331:
.LBB4212:
	.loc 2 33 0
	and	r2, r2, r1
	orr	r3, ip, r3
.LVL2916:
	sub	ip, r3, r2, lsr #1
.LVL2917:
.LBE4212:
.LBE4331:
.LBB4332:
.LBB4266:
	eor	lr, r6, ip
.LBE4266:
.LBE4332:
	.loc 1 103 0 discriminator 6
	ldr	r2, [sp, #44]
	ldr	r3, [sp, #108]
.LVL2918:
.LBB4333:
.LBB4267:
	.loc 2 33 0
	and	lr, lr, r1
	orr	ip, r6, ip
.LVL2919:
	sub	ip, ip, lr, lsr #1
.LBE4267:
.LBE4333:
	.loc 1 103 0 discriminator 6
	add	r6, r0, #4
.LVL2920:
.LBB4334:
.LBB4236:
	.loc 2 33 0
	eor	lr, r2, r3
.LBE4236:
.LBE4334:
	.loc 1 103 0 discriminator 6
	str	ip, [r4, r0]
.LVL2921:
.LBB4335:
.LBB4237:
	.loc 2 33 0
	orr	r3, r2, r3
.LVL2922:
.LBE4237:
.LBE4335:
	.loc 1 103 0 discriminator 6
	ldr	r7, [r4, r6]
.LVL2923:
.LBB4336:
.LBB4238:
	.loc 2 33 0
	and	ip, lr, r1
	sub	r2, r3, ip, lsr #1
.LVL2924:
.LBE4238:
.LBE4336:
.LBB4337:
.LBB4284:
	eor	lr, r7, r2
.LBE4284:
.LBE4337:
	.loc 1 103 0 discriminator 6
	ldr	ip, [sp, #48]
	ldr	r3, [sp, #112]
.LBB4338:
.LBB4285:
	.loc 2 33 0
	and	lr, lr, r1
	orr	r2, r7, r2
.LVL2925:
.LBE4285:
.LBE4338:
	.loc 1 103 0 discriminator 6
	add	r0, r0, r5
.LBB4339:
.LBB4286:
	.loc 2 33 0
	sub	r2, r2, lr, lsr #1
.LBE4286:
.LBE4339:
.LBB4340:
.LBB4213:
	eor	lr, ip, r3
.LBE4213:
.LBE4340:
	.loc 1 103 0 discriminator 6
	str	r2, [r4, r6]
.LVL2926:
.LBB4341:
.LBB4214:
	.loc 2 33 0
	orr	r3, ip, r3
.LVL2927:
.LBE4214:
.LBE4341:
	.loc 1 103 0 discriminator 6
	ldr	r6, [r4, r0]
.LVL2928:
.LBB4342:
.LBB4215:
	.loc 2 33 0
	and	r2, lr, r1
	sub	ip, r3, r2, lsr #1
.LVL2929:
.LBE4215:
.LBE4342:
.LBB4343:
.LBB4268:
	eor	lr, r6, ip
.LBE4268:
.LBE4343:
	.loc 1 103 0 discriminator 6
	ldr	r2, [sp, #52]
	ldr	r3, [sp, #116]
.LVL2930:
.LBB4344:
.LBB4269:
	.loc 2 33 0
	and	lr, lr, r1
	orr	ip, r6, ip
.LVL2931:
	sub	ip, ip, lr, lsr #1
.LBE4269:
.LBE4344:
	.loc 1 103 0 discriminator 6
	add	r6, r0, #4
.LVL2932:
.LBB4345:
.LBB4239:
	.loc 2 33 0
	eor	lr, r2, r3
.LBE4239:
.LBE4345:
	.loc 1 103 0 discriminator 6
	str	ip, [r4, r0]
.LVL2933:
.LBB4346:
.LBB4240:
	.loc 2 33 0
	orr	r3, r2, r3
.LVL2934:
.LBE4240:
.LBE4346:
	.loc 1 103 0 discriminator 6
	ldr	r7, [r4, r6]
.LVL2935:
.LBB4347:
.LBB4241:
	.loc 2 33 0
	and	ip, lr, r1
	sub	r2, r3, ip, lsr #1
.LVL2936:
.LBE4241:
.LBE4347:
.LBB4348:
.LBB4287:
	eor	lr, r7, r2
.LBE4287:
.LBE4348:
	.loc 1 103 0 discriminator 6
	ldr	ip, [sp, #56]
	ldr	r3, [sp, #120]
.LBB4349:
.LBB4288:
	.loc 2 33 0
	and	lr, lr, r1
	orr	r2, r7, r2
.LVL2937:
.LBE4288:
.LBE4349:
	.loc 1 103 0 discriminator 6
	add	r0, r0, r5
.LBB4350:
.LBB4289:
	.loc 2 33 0
	sub	r2, r2, lr, lsr #1
.LBE4289:
.LBE4350:
.LBB4351:
.LBB4216:
	eor	lr, ip, r3
.LBE4216:
.LBE4351:
	.loc 1 103 0 discriminator 6
	str	r2, [r4, r6]
.LVL2938:
.LBB4352:
.LBB4217:
	.loc 2 33 0
	orr	r3, ip, r3
.LVL2939:
.LBE4217:
.LBE4352:
	.loc 1 103 0 discriminator 6
	ldr	r6, [r4, r0]
.LVL2940:
.LBB4353:
.LBB4218:
	.loc 2 33 0
	and	r2, lr, r1
	sub	ip, r3, r2, lsr #1
.LVL2941:
.LBE4218:
.LBE4353:
.LBB4354:
.LBB4270:
	eor	lr, r6, ip
.LBE4270:
.LBE4354:
	.loc 1 103 0 discriminator 6
	ldr	r2, [sp, #60]
	ldr	r3, [sp, #124]
.LVL2942:
.LBB4355:
.LBB4271:
	.loc 2 33 0
	and	lr, lr, r1
	orr	ip, r6, ip
.LVL2943:
	sub	ip, ip, lr, lsr #1
.LBE4271:
.LBE4355:
	.loc 1 103 0 discriminator 6
	add	r6, r0, #4
.LVL2944:
.LBB4356:
.LBB4242:
	.loc 2 33 0
	eor	lr, r2, r3
.LBE4242:
.LBE4356:
	.loc 1 103 0 discriminator 6
	str	ip, [r4, r0]
.LVL2945:
.LBB4357:
.LBB4243:
	.loc 2 33 0
	orr	r3, r2, r3
.LVL2946:
.LBE4243:
.LBE4357:
	.loc 1 103 0 discriminator 6
	ldr	r7, [r4, r6]
.LVL2947:
.LBB4358:
.LBB4244:
	.loc 2 33 0
	and	ip, lr, r1
	sub	r2, r3, ip, lsr #1
.LVL2948:
.LBE4244:
.LBE4358:
.LBB4359:
.LBB4290:
	eor	lr, r7, r2
.LBE4290:
.LBE4359:
	.loc 1 103 0 discriminator 6
	ldr	ip, [sp, #64]
	ldr	r3, [sp, #128]
.LBB4360:
.LBB4291:
	.loc 2 33 0
	and	lr, lr, r1
	orr	r2, r7, r2
.LVL2949:
.LBE4291:
.LBE4360:
	.loc 1 103 0 discriminator 6
	add	r0, r0, r5
.LBB4361:
.LBB4292:
	.loc 2 33 0
	sub	r2, r2, lr, lsr #1
.LBE4292:
.LBE4361:
.LBB4362:
.LBB4219:
	eor	lr, ip, r3
.LBE4219:
.LBE4362:
	.loc 1 103 0 discriminator 6
	str	r2, [r4, r6]
.LVL2950:
.LBB4363:
.LBB4220:
	.loc 2 33 0
	orr	r3, ip, r3
.LVL2951:
.LBE4220:
.LBE4363:
	.loc 1 103 0 discriminator 6
	ldr	r5, [r4, r0]
.LVL2952:
.LBB4364:
.LBB4221:
	.loc 2 33 0
	and	r2, lr, r1
	sub	ip, r3, r2, lsr #1
.LVL2953:
.LBE4221:
.LBE4364:
.LBB4365:
.LBB4272:
	eor	lr, r5, ip
.LBE4272:
.LBE4365:
	.loc 1 103 0 discriminator 6
	ldr	r3, [sp, #68]
	ldr	r2, [sp, #132]
.LVL2954:
.LBB4366:
.LBB4273:
	.loc 2 33 0
	and	lr, lr, r1
	orr	ip, r5, ip
.LVL2955:
	sub	ip, ip, lr, lsr #1
.LBE4273:
.LBE4366:
	.loc 1 103 0 discriminator 6
	add	r5, r0, #4
.LVL2956:
.LBB4367:
.LBB4245:
	.loc 2 33 0
	eor	lr, r3, r2
.LBE4245:
.LBE4367:
	.loc 1 103 0 discriminator 6
	str	ip, [r4, r0]
.LVL2957:
.LBB4368:
.LBB4246:
	.loc 2 33 0
	orr	r2, r3, r2
.LVL2958:
.LBE4246:
.LBE4368:
	.loc 1 103 0 discriminator 6
	ldr	ip, [r4, r5]
.LVL2959:
.LBB4369:
.LBB4247:
	.loc 2 33 0
	and	r0, lr, r1
	sub	r3, r2, r0, lsr #1
.LVL2960:
.LBE4247:
.LBE4369:
.LBB4370:
.LBB4293:
	eor	r2, ip, r3
	and	r1, r1, r2
	orr	r3, ip, r3
.LVL2961:
	sub	r1, r3, r1, lsr #1
.LBE4293:
.LBE4370:
	.loc 1 103 0 discriminator 6
	str	r1, [r4, r5]
.LVL2962:
.LBE4196:
.LBE4195:
.LBE4194:
	.loc 5 697 0
	add	sp, sp, #144
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL2963:
.L351:
	.align	2
.L350:
	.word	-16843010
	.cfi_endproc
.LFE212:
	.size	avg_qpel8_mc21_c, .-avg_qpel8_mc21_c
	.align	2
	.type	avg_qpel8_mc23_c, %function
avg_qpel8_mc23_c:
.LFB213:
	.loc 5 697 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2964:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	sub	sp, sp, #144
	.cfi_def_cfa_offset 168
	.loc 5 697 0
	mov	r5, r2
	add	r6, sp, #72
	mov	r2, #9
.LVL2965:
	mov	r4, r0
	mov	r3, r5
	mov	r0, r6
.LVL2966:
	str	r2, [sp]
	mov	r2, #8
	bl	put_mpeg4_qpel8_h_lowpass(PLT)
.LVL2967:
	.loc 5 697 0 is_stmt 0 discriminator 1
	mov	r2, #8
	add	r0, sp, r2
	mov	r1, r6
	mov	r3, r2
	bl	put_mpeg4_qpel8_v_lowpass(PLT)
.LVL2968:
.LBB4382:
.LBB4383:
.LBB4384:
	.loc 1 103 0 is_stmt 1 discriminator 6
	ldr	lr, [sp, #12]
	ldr	r0, [sp, #80]
.LVL2969:
	ldr	r3, [sp, #84]
	ldr	r6, [sp, #8]
.LVL2970:
.LBB4385:
.LBB4386:
	.loc 2 33 0
	ldr	r1, .L354
	eor	ip, r6, r0
.LBE4386:
.LBE4385:
.LBB4410:
.LBB4411:
	eor	r2, lr, r3
.LBE4411:
.LBE4410:
.LBB4436:
.LBB4387:
	orr	r0, r6, r0
.LVL2971:
.LBE4387:
.LBE4436:
.LBB4437:
.LBB4412:
	orr	r3, lr, r3
.LBE4412:
.LBE4437:
	.loc 1 103 0 discriminator 6
	ldr	r6, [r4]
.LVL2972:
	ldr	lr, [r4, #4]
.LBB4438:
.LBB4388:
	.loc 2 33 0
	and	ip, ip, r1
.LBE4388:
.LBE4438:
.LBB4439:
.LBB4413:
	and	r2, r2, r1
.LBE4413:
.LBE4439:
.LBB4440:
.LBB4389:
	sub	ip, r0, ip, lsr #1
.LVL2973:
.LBE4389:
.LBE4440:
.LBB4441:
.LBB4414:
	sub	r2, r3, r2, lsr #1
.LVL2974:
.LBE4414:
.LBE4441:
	.loc 1 103 0 discriminator 6
	ldr	r0, [sp, #16]
	ldr	r3, [sp, #88]
.LBB4442:
.LBB4443:
	.loc 2 33 0
	eor	r8, ip, r6
.LBE4443:
.LBE4442:
.LBB4462:
.LBB4463:
	eor	r7, r2, lr
.LBE4463:
.LBE4462:
.LBB4482:
.LBB4444:
	and	r8, r8, r1
	orr	ip, ip, r6
.LVL2975:
.LBE4444:
.LBE4482:
.LBB4483:
.LBB4464:
	orr	r2, r2, lr
.LVL2976:
	and	lr, r7, r1
.LVL2977:
.LBE4464:
.LBE4483:
.LBB4484:
.LBB4445:
	sub	ip, ip, r8, lsr #1
.LBE4445:
.LBE4484:
.LBB4485:
.LBB4465:
	sub	r2, r2, lr, lsr #1
.LBE4465:
.LBE4485:
.LBB4486:
.LBB4390:
	eor	lr, r0, r3
.LBE4390:
.LBE4486:
	.loc 1 103 0 discriminator 6
	str	ip, [r4]
.LVL2978:
	str	r2, [r4, #4]
.LVL2979:
.LBB4487:
.LBB4391:
	.loc 2 33 0
	orr	r3, r0, r3
.LVL2980:
.LBE4391:
.LBE4487:
	.loc 1 103 0 discriminator 6
	ldr	r6, [r4, r5]
.LVL2981:
.LBB4488:
.LBB4392:
	.loc 2 33 0
	and	r2, lr, r1
	sub	r0, r3, r2, lsr #1
.LVL2982:
.LBE4392:
.LBE4488:
.LBB4489:
.LBB4446:
	eor	ip, r6, r0
.LBE4446:
.LBE4489:
	.loc 1 103 0 discriminator 6
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #92]
.LVL2983:
.LBB4490:
.LBB4447:
	.loc 2 33 0
	and	ip, ip, r1
	orr	r0, r6, r0
.LVL2984:
.LBE4447:
.LBE4490:
	.loc 1 103 0 discriminator 6
	add	lr, r5, #4
.LBB4491:
.LBB4448:
	.loc 2 33 0
	sub	r0, r0, ip, lsr #1
.LBE4448:
.LBE4491:
.LBB4492:
.LBB4415:
	eor	ip, r2, r3
.LBE4415:
.LBE4492:
	.loc 1 103 0 discriminator 6
	str	r0, [r4, r5]
.LBB4493:
.LBB4416:
	.loc 2 33 0
	orr	r3, r2, r3
.LVL2985:
.LBE4416:
.LBE4493:
	.loc 1 103 0 discriminator 6
	ldr	r6, [r4, lr]
.LVL2986:
.LBB4494:
.LBB4417:
	.loc 2 33 0
	and	r0, ip, r1
	sub	r2, r3, r0, lsr #1
.LVL2987:
.LBE4417:
.LBE4494:
.LBB4495:
.LBB4466:
	eor	ip, r6, r2
.LBE4466:
.LBE4495:
	.loc 1 103 0 discriminator 6
	ldr	r0, [sp, #24]
	ldr	r3, [sp, #96]
.LBB4496:
.LBB4467:
	.loc 2 33 0
	and	ip, ip, r1
	orr	r2, r6, r2
.LVL2988:
	sub	r2, r2, ip, lsr #1
.LBE4467:
.LBE4496:
.LBB4497:
.LBB4393:
	eor	r6, r0, r3
.LVL2989:
.LBE4393:
.LBE4497:
	.loc 1 103 0 discriminator 6
	str	r2, [r4, lr]
.LVL2990:
.LBB4498:
.LBB4394:
	.loc 2 33 0
	orr	r3, r0, r3
.LVL2991:
.LBE4394:
.LBE4498:
	.loc 1 103 0 discriminator 6
	ldr	lr, [r4, r5, asl #1]
.LVL2992:
.LBB4499:
.LBB4395:
	.loc 2 33 0
	and	r2, r6, r1
	sub	r0, r3, r2, lsr #1
.LVL2993:
.LBE4395:
.LBE4499:
.LBB4500:
.LBB4449:
	eor	ip, lr, r0
.LBE4449:
.LBE4500:
	.loc 1 103 0 discriminator 6
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #100]
.LVL2994:
.LBB4501:
.LBB4450:
	.loc 2 33 0
	orr	lr, lr, r0
.LVL2995:
	and	ip, ip, r1
.LBE4450:
.LBE4501:
	.loc 1 103 0 discriminator 6
	mov	r0, r5, asl #1
.LVL2996:
	add	r6, r0, #4
.LBB4502:
.LBB4451:
	.loc 2 33 0
	sub	ip, lr, ip, lsr #1
.LBE4451:
.LBE4502:
.LBB4503:
.LBB4418:
	eor	lr, r2, r3
.LBE4418:
.LBE4503:
	.loc 1 103 0 discriminator 6
	str	ip, [r4, r5, asl #1]
.LVL2997:
.LBB4504:
.LBB4419:
	.loc 2 33 0
	orr	r3, r2, r3
.LVL2998:
.LBE4419:
.LBE4504:
	.loc 1 103 0 discriminator 6
	ldr	r7, [r4, r6]
.LVL2999:
.LBB4505:
.LBB4420:
	.loc 2 33 0
	and	ip, lr, r1
	sub	r2, r3, ip, lsr #1
.LVL3000:
.LBE4420:
.LBE4505:
.LBB4506:
.LBB4468:
	eor	lr, r7, r2
.LBE4468:
.LBE4506:
	.loc 1 103 0 discriminator 6
	ldr	ip, [sp, #32]
	ldr	r3, [sp, #104]
.LBB4507:
.LBB4469:
	.loc 2 33 0
	and	lr, lr, r1
	orr	r2, r7, r2
.LVL3001:
.LBE4469:
.LBE4507:
	.loc 1 103 0 discriminator 6
	add	r0, r0, r5
.LBB4508:
.LBB4470:
	.loc 2 33 0
	sub	r2, r2, lr, lsr #1
.LBE4470:
.LBE4508:
.LBB4509:
.LBB4396:
	eor	lr, ip, r3
.LBE4396:
.LBE4509:
	.loc 1 103 0 discriminator 6
	str	r2, [r4, r6]
.LVL3002:
.LBB4510:
.LBB4397:
	.loc 2 33 0
	orr	r3, ip, r3
.LVL3003:
.LBE4397:
.LBE4510:
	.loc 1 103 0 discriminator 6
	ldr	r6, [r4, r0]
.LVL3004:
.LBB4511:
.LBB4398:
	.loc 2 33 0
	and	r2, lr, r1
	sub	ip, r3, r2, lsr #1
.LVL3005:
.LBE4398:
.LBE4511:
.LBB4512:
.LBB4452:
	eor	lr, r6, ip
.LBE4452:
.LBE4512:
	.loc 1 103 0 discriminator 6
	ldr	r3, [sp, #36]
	ldr	r2, [sp, #108]
.LVL3006:
.LBB4513:
.LBB4453:
	.loc 2 33 0
	and	lr, lr, r1
	orr	ip, r6, ip
.LVL3007:
	sub	ip, ip, lr, lsr #1
.LBE4453:
.LBE4513:
.LBB4514:
.LBB4421:
	eor	r6, r3, r2
.LVL3008:
.LBE4421:
.LBE4514:
	.loc 1 103 0 discriminator 6
	add	lr, r0, #4
	str	ip, [r4, r0]
.LVL3009:
.LBB4515:
.LBB4422:
	.loc 2 33 0
	orr	r2, r3, r2
.LVL3010:
.LBE4422:
.LBE4515:
	.loc 1 103 0 discriminator 6
	ldr	r7, [r4, lr]
.LVL3011:
.LBB4516:
.LBB4423:
	.loc 2 33 0
	and	ip, r6, r1
	sub	r3, r2, ip, lsr #1
.LVL3012:
.LBE4423:
.LBE4516:
.LBB4517:
.LBB4471:
	eor	r2, r7, r3
	and	r2, r2, r1
	orr	r3, r7, r3
.LVL3013:
	sub	r3, r3, r2, lsr #1
.LBE4471:
.LBE4517:
	.loc 1 103 0 discriminator 6
	str	r3, [r4, lr]
.LVL3014:
	ldr	r3, [sp, #112]
.LVL3015:
	ldr	ip, [sp, #40]
.LVL3016:
	add	r0, r0, r5
.LBB4518:
.LBB4399:
	.loc 2 33 0
	eor	r2, ip, r3
.LBE4399:
.LBE4518:
	.loc 1 103 0 discriminator 6
	ldr	r6, [r4, r0]
.LVL3017:
.LBB4519:
.LBB4400:
	.loc 2 33 0
	and	r2, r2, r1
	orr	r3, ip, r3
.LVL3018:
	sub	ip, r3, r2, lsr #1
.LVL3019:
.LBE4400:
.LBE4519:
.LBB4520:
.LBB4454:
	eor	lr, r6, ip
.LBE4454:
.LBE4520:
	.loc 1 103 0 discriminator 6
	ldr	r2, [sp, #44]
	ldr	r3, [sp, #116]
.LVL3020:
.LBB4521:
.LBB4455:
	.loc 2 33 0
	and	lr, lr, r1
	orr	ip, r6, ip
.LVL3021:
	sub	ip, ip, lr, lsr #1
.LBE4455:
.LBE4521:
	.loc 1 103 0 discriminator 6
	add	r6, r0, #4
.LVL3022:
.LBB4522:
.LBB4424:
	.loc 2 33 0
	eor	lr, r2, r3
.LBE4424:
.LBE4522:
	.loc 1 103 0 discriminator 6
	str	ip, [r4, r0]
.LVL3023:
.LBB4523:
.LBB4425:
	.loc 2 33 0
	orr	r3, r2, r3
.LVL3024:
.LBE4425:
.LBE4523:
	.loc 1 103 0 discriminator 6
	ldr	r7, [r4, r6]
.LVL3025:
.LBB4524:
.LBB4426:
	.loc 2 33 0
	and	ip, lr, r1
	sub	r2, r3, ip, lsr #1
.LVL3026:
.LBE4426:
.LBE4524:
.LBB4525:
.LBB4472:
	eor	lr, r7, r2
.LBE4472:
.LBE4525:
	.loc 1 103 0 discriminator 6
	ldr	ip, [sp, #48]
	ldr	r3, [sp, #120]
.LBB4526:
.LBB4473:
	.loc 2 33 0
	and	lr, lr, r1
	orr	r2, r7, r2
.LVL3027:
.LBE4473:
.LBE4526:
	.loc 1 103 0 discriminator 6
	add	r0, r0, r5
.LBB4527:
.LBB4474:
	.loc 2 33 0
	sub	r2, r2, lr, lsr #1
.LBE4474:
.LBE4527:
.LBB4528:
.LBB4401:
	eor	lr, ip, r3
.LBE4401:
.LBE4528:
	.loc 1 103 0 discriminator 6
	str	r2, [r4, r6]
.LVL3028:
.LBB4529:
.LBB4402:
	.loc 2 33 0
	orr	r3, ip, r3
.LVL3029:
.LBE4402:
.LBE4529:
	.loc 1 103 0 discriminator 6
	ldr	r6, [r4, r0]
.LVL3030:
.LBB4530:
.LBB4403:
	.loc 2 33 0
	and	r2, lr, r1
	sub	ip, r3, r2, lsr #1
.LVL3031:
.LBE4403:
.LBE4530:
.LBB4531:
.LBB4456:
	eor	lr, r6, ip
.LBE4456:
.LBE4531:
	.loc 1 103 0 discriminator 6
	ldr	r2, [sp, #52]
	ldr	r3, [sp, #124]
.LVL3032:
.LBB4532:
.LBB4457:
	.loc 2 33 0
	and	lr, lr, r1
	orr	ip, r6, ip
.LVL3033:
	sub	ip, ip, lr, lsr #1
.LBE4457:
.LBE4532:
	.loc 1 103 0 discriminator 6
	add	r6, r0, #4
.LVL3034:
.LBB4533:
.LBB4427:
	.loc 2 33 0
	eor	lr, r2, r3
.LBE4427:
.LBE4533:
	.loc 1 103 0 discriminator 6
	str	ip, [r4, r0]
.LVL3035:
.LBB4534:
.LBB4428:
	.loc 2 33 0
	orr	r3, r2, r3
.LVL3036:
.LBE4428:
.LBE4534:
	.loc 1 103 0 discriminator 6
	ldr	r7, [r4, r6]
.LVL3037:
.LBB4535:
.LBB4429:
	.loc 2 33 0
	and	ip, lr, r1
	sub	r2, r3, ip, lsr #1
.LVL3038:
.LBE4429:
.LBE4535:
.LBB4536:
.LBB4475:
	eor	lr, r7, r2
.LBE4475:
.LBE4536:
	.loc 1 103 0 discriminator 6
	ldr	ip, [sp, #56]
	ldr	r3, [sp, #128]
.LBB4537:
.LBB4476:
	.loc 2 33 0
	and	lr, lr, r1
	orr	r2, r7, r2
.LVL3039:
.LBE4476:
.LBE4537:
	.loc 1 103 0 discriminator 6
	add	r0, r0, r5
.LBB4538:
.LBB4477:
	.loc 2 33 0
	sub	r2, r2, lr, lsr #1
.LBE4477:
.LBE4538:
.LBB4539:
.LBB4404:
	eor	lr, ip, r3
.LBE4404:
.LBE4539:
	.loc 1 103 0 discriminator 6
	str	r2, [r4, r6]
.LVL3040:
.LBB4540:
.LBB4405:
	.loc 2 33 0
	orr	r3, ip, r3
.LVL3041:
.LBE4405:
.LBE4540:
	.loc 1 103 0 discriminator 6
	ldr	r6, [r4, r0]
.LVL3042:
.LBB4541:
.LBB4406:
	.loc 2 33 0
	and	r2, lr, r1
	sub	ip, r3, r2, lsr #1
.LVL3043:
.LBE4406:
.LBE4541:
.LBB4542:
.LBB4458:
	eor	lr, r6, ip
.LBE4458:
.LBE4542:
	.loc 1 103 0 discriminator 6
	ldr	r2, [sp, #60]
	ldr	r3, [sp, #132]
.LVL3044:
.LBB4543:
.LBB4459:
	.loc 2 33 0
	and	lr, lr, r1
	orr	ip, r6, ip
.LVL3045:
	sub	ip, ip, lr, lsr #1
.LBE4459:
.LBE4543:
	.loc 1 103 0 discriminator 6
	add	r6, r0, #4
.LVL3046:
.LBB4544:
.LBB4430:
	.loc 2 33 0
	eor	lr, r2, r3
.LBE4430:
.LBE4544:
	.loc 1 103 0 discriminator 6
	str	ip, [r4, r0]
.LVL3047:
.LBB4545:
.LBB4431:
	.loc 2 33 0
	orr	r3, r2, r3
.LVL3048:
.LBE4431:
.LBE4545:
	.loc 1 103 0 discriminator 6
	ldr	r7, [r4, r6]
.LVL3049:
.LBB4546:
.LBB4432:
	.loc 2 33 0
	and	ip, lr, r1
	sub	r2, r3, ip, lsr #1
.LVL3050:
.LBE4432:
.LBE4546:
.LBB4547:
.LBB4478:
	eor	lr, r7, r2
.LBE4478:
.LBE4547:
	.loc 1 103 0 discriminator 6
	ldr	ip, [sp, #64]
	ldr	r3, [sp, #136]
.LBB4548:
.LBB4479:
	.loc 2 33 0
	and	lr, lr, r1
	orr	r2, r7, r2
.LVL3051:
.LBE4479:
.LBE4548:
	.loc 1 103 0 discriminator 6
	add	r0, r0, r5
.LBB4549:
.LBB4480:
	.loc 2 33 0
	sub	r2, r2, lr, lsr #1
.LBE4480:
.LBE4549:
.LBB4550:
.LBB4407:
	eor	lr, ip, r3
.LBE4407:
.LBE4550:
	.loc 1 103 0 discriminator 6
	str	r2, [r4, r6]
.LVL3052:
.LBB4551:
.LBB4408:
	.loc 2 33 0
	orr	r3, ip, r3
.LVL3053:
.LBE4408:
.LBE4551:
	.loc 1 103 0 discriminator 6
	ldr	r5, [r4, r0]
.LVL3054:
.LBB4552:
.LBB4409:
	.loc 2 33 0
	and	r2, lr, r1
	sub	ip, r3, r2, lsr #1
.LVL3055:
.LBE4409:
.LBE4552:
.LBB4553:
.LBB4460:
	eor	lr, r5, ip
.LBE4460:
.LBE4553:
	.loc 1 103 0 discriminator 6
	ldr	r3, [sp, #68]
	ldr	r2, [sp, #140]
.LVL3056:
.LBB4554:
.LBB4461:
	.loc 2 33 0
	and	lr, lr, r1
	orr	ip, r5, ip
.LVL3057:
	sub	ip, ip, lr, lsr #1
.LBE4461:
.LBE4554:
	.loc 1 103 0 discriminator 6
	add	r5, r0, #4
.LVL3058:
.LBB4555:
.LBB4433:
	.loc 2 33 0
	eor	lr, r3, r2
.LBE4433:
.LBE4555:
	.loc 1 103 0 discriminator 6
	str	ip, [r4, r0]
.LVL3059:
.LBB4556:
.LBB4434:
	.loc 2 33 0
	orr	r2, r3, r2
.LVL3060:
.LBE4434:
.LBE4556:
	.loc 1 103 0 discriminator 6
	ldr	ip, [r4, r5]
.LVL3061:
.LBB4557:
.LBB4435:
	.loc 2 33 0
	and	r0, lr, r1
	sub	r3, r2, r0, lsr #1
.LVL3062:
.LBE4435:
.LBE4557:
.LBB4558:
.LBB4481:
	eor	r2, ip, r3
	and	r1, r1, r2
	orr	r3, ip, r3
.LVL3063:
	sub	r1, r3, r1, lsr #1
.LBE4481:
.LBE4558:
	.loc 1 103 0 discriminator 6
	str	r1, [r4, r5]
.LVL3064:
.LBE4384:
.LBE4383:
.LBE4382:
	.loc 5 697 0
	add	sp, sp, #144
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL3065:
.L355:
	.align	2
.L354:
	.word	-16843010
	.cfi_endproc
.LFE213:
	.size	avg_qpel8_mc23_c, .-avg_qpel8_mc23_c
	.align	2
	.type	avg_qpel16_mc10_c, %function
avg_qpel16_mc10_c:
.LFB219:
	.loc 5 697 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3066:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	mov	r5, #16
	sub	sp, sp, #276
	.cfi_def_cfa_offset 304
	.loc 5 697 0
	add	r4, sp, r5
	mov	r7, r0
	mov	r6, r2
	mov	r3, r2
	mov	r8, r1
	mov	r0, r4
.LVL3067:
	mov	r2, r5
.LVL3068:
	str	r5, [sp]
	bl	put_mpeg4_qpel16_h_lowpass(PLT)
.LVL3069:
.LBB4572:
.LBB4573:
	.loc 1 103 0
	mov	r0, r7
	mov	r2, r4
	mov	r1, r8
	str	r6, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	mov	r3, r6
	bl	avg_pixels8_l2_8(PLT)
.LVL3070:
	add	r0, r7, #12
	add	r1, r8, #12
	add	r2, sp, #24
.LVL3071:
	add	r7, sp, #280
.LVL3072:
.L357:
.LBB4574:
.LBB4575:
.LBB4576:
	.loc 1 103 0 is_stmt 0 discriminator 6
	ldrb	r4, [r1, #-4]	@ zero_extendqisi2
	ldrb	lr, [r1, #-3]	@ zero_extendqisi2
	ldrb	ip, [r1, #-2]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #8
	ldrb	r4, [r1, #-1]	@ zero_extendqisi2
	ldr	r3, [r2]
	orr	lr, lr, ip, asl #16
	orr	ip, lr, r4, asl #24
.LVL3073:
.LBB4577:
.LBB4578:
	.loc 2 33 0 is_stmt 1
	ldr	lr, .L360
	eor	r4, r3, ip
	and	lr, lr, r4
	orr	ip, r3, ip
.LVL3074:
.LBE4578:
.LBE4577:
	.loc 1 103 0 discriminator 6
	ldr	r4, [r0, #-4]
.LVL3075:
.LBB4580:
.LBB4579:
	.loc 2 33 0
	sub	r3, ip, lr, lsr #1
.LVL3076:
.LBE4579:
.LBE4580:
.LBB4581:
.LBB4582:
	ldr	ip, .L360
	eor	lr, r4, r3
	and	ip, ip, lr
	orr	r3, r4, r3
.LVL3077:
	sub	r3, r3, ip, lsr #1
.LBE4582:
.LBE4581:
	.loc 1 103 0 discriminator 6
	str	r3, [r0, #-4]
.LVL3078:
	ldrb	r8, [r2, #4]	@ zero_extendqisi2
	ldrb	r5, [r1]	@ zero_extendqisi2
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
.LVL3079:
	ldrb	r3, [r2, #5]	@ zero_extendqisi2
	ldrb	lr, [r1, #2]	@ zero_extendqisi2
	ldrb	ip, [r2, #6]	@ zero_extendqisi2
	ldrb	r9, [r1, #3]	@ zero_extendqisi2
	orr	r4, r5, r4, asl #8
	orr	r3, r8, r3, asl #8
	ldrb	r5, [r2, #7]	@ zero_extendqisi2
	orr	r4, r4, lr, asl #16
	orr	r3, r3, ip, asl #16
	orr	ip, r3, r5, asl #24
	orr	lr, r4, r9, asl #24
.LVL3080:
.LBB4583:
.LBB4584:
	.loc 2 33 0
	ldr	r3, .L360
	eor	r4, ip, lr
	and	r3, r3, r4
	orr	lr, ip, lr
.LVL3081:
.LBE4584:
.LBE4583:
	.loc 1 103 0 discriminator 6
	ldr	r4, [r0]
.LVL3082:
.LBB4586:
.LBB4585:
	.loc 2 33 0
	sub	ip, lr, r3, lsr #1
.LVL3083:
.LBE4585:
.LBE4586:
.LBB4587:
.LBB4588:
	ldr	r3, .L360
	eor	lr, r4, ip
	add	r2, r2, #16
.LVL3084:
	orr	ip, r4, ip
.LVL3085:
	and	r3, r3, lr
.LVL3086:
	sub	ip, ip, r3, lsr #1
.LBE4588:
.LBE4587:
.LBE4576:
	.loc 1 103 0 discriminator 1
	cmp	r2, r7
	add	r1, r1, r6
.LVL3087:
.LBB4589:
	.loc 1 103 0 is_stmt 0 discriminator 6
	str	ip, [r0], r6
.LBE4589:
	.loc 1 103 0 discriminator 1
	bne	.L357
.LBE4575:
.LBE4574:
.LBE4573:
.LBE4572:
	.loc 5 697 0 is_stmt 1
	add	sp, sp, #276
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LVL3088:
.L361:
	.align	2
.L360:
	.word	-16843010
	.cfi_endproc
.LFE219:
	.size	avg_qpel16_mc10_c, .-avg_qpel16_mc10_c
	.align	2
	.type	avg_qpel16_mc30_c, %function
avg_qpel16_mc30_c:
.LFB221:
	.loc 5 697 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3089:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	mov	r5, #16
	sub	sp, sp, #276
	.cfi_def_cfa_offset 304
	.loc 5 697 0
	add	r4, sp, r5
	mov	r7, r0
	mov	r6, r2
	mov	r3, r2
	mov	r8, r1
	mov	r0, r4
.LVL3090:
	mov	r2, r5
.LVL3091:
	str	r5, [sp]
	bl	put_mpeg4_qpel16_h_lowpass(PLT)
.LVL3092:
.LBB4603:
.LBB4604:
	.loc 1 103 0
	mov	r0, r7
	mov	r2, r4
	add	r1, r8, #1
.LVL3093:
	str	r6, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	mov	r3, r6
	bl	avg_pixels8_l2_8(PLT)
.LVL3094:
	add	r0, r7, #12
	add	r1, r8, #13
	add	r2, sp, #24
.LVL3095:
	add	r7, sp, #280
.LVL3096:
.L363:
.LBB4605:
.LBB4606:
.LBB4607:
	.loc 1 103 0 is_stmt 0 discriminator 6
	ldrb	r4, [r1, #-4]	@ zero_extendqisi2
	ldrb	lr, [r1, #-3]	@ zero_extendqisi2
	ldrb	ip, [r1, #-2]	@ zero_extendqisi2
	orr	lr, r4, lr, asl #8
	ldrb	r4, [r1, #-1]	@ zero_extendqisi2
	ldr	r3, [r2]
	orr	lr, lr, ip, asl #16
	orr	ip, lr, r4, asl #24
.LVL3097:
.LBB4608:
.LBB4609:
	.loc 2 33 0 is_stmt 1
	ldr	lr, .L366
	eor	r4, r3, ip
	and	lr, lr, r4
	orr	ip, r3, ip
.LVL3098:
.LBE4609:
.LBE4608:
	.loc 1 103 0 discriminator 6
	ldr	r4, [r0, #-4]
.LVL3099:
.LBB4611:
.LBB4610:
	.loc 2 33 0
	sub	r3, ip, lr, lsr #1
.LVL3100:
.LBE4610:
.LBE4611:
.LBB4612:
.LBB4613:
	ldr	ip, .L366
	eor	lr, r4, r3
	and	ip, ip, lr
	orr	r3, r4, r3
.LVL3101:
	sub	r3, r3, ip, lsr #1
.LBE4613:
.LBE4612:
	.loc 1 103 0 discriminator 6
	str	r3, [r0, #-4]
.LVL3102:
	ldrb	r8, [r2, #4]	@ zero_extendqisi2
	ldrb	r5, [r1]	@ zero_extendqisi2
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
.LVL3103:
	ldrb	r3, [r2, #5]	@ zero_extendqisi2
	ldrb	lr, [r1, #2]	@ zero_extendqisi2
	ldrb	ip, [r2, #6]	@ zero_extendqisi2
	ldrb	r9, [r1, #3]	@ zero_extendqisi2
	orr	r4, r5, r4, asl #8
	orr	r3, r8, r3, asl #8
	ldrb	r5, [r2, #7]	@ zero_extendqisi2
	orr	r4, r4, lr, asl #16
	orr	r3, r3, ip, asl #16
	orr	ip, r3, r5, asl #24
	orr	lr, r4, r9, asl #24
.LVL3104:
.LBB4614:
.LBB4615:
	.loc 2 33 0
	ldr	r3, .L366
	eor	r4, ip, lr
	and	r3, r3, r4
	orr	lr, ip, lr
.LVL3105:
.LBE4615:
.LBE4614:
	.loc 1 103 0 discriminator 6
	ldr	r4, [r0]
.LVL3106:
.LBB4617:
.LBB4616:
	.loc 2 33 0
	sub	ip, lr, r3, lsr #1
.LVL3107:
.LBE4616:
.LBE4617:
.LBB4618:
.LBB4619:
	ldr	r3, .L366
	eor	lr, r4, ip
	add	r2, r2, #16
.LVL3108:
	orr	ip, r4, ip
.LVL3109:
	and	r3, r3, lr
.LVL3110:
	sub	ip, ip, r3, lsr #1
.LBE4619:
.LBE4618:
.LBE4607:
	.loc 1 103 0 discriminator 1
	cmp	r2, r7
	add	r1, r1, r6
.LVL3111:
.LBB4620:
	.loc 1 103 0 is_stmt 0 discriminator 6
	str	ip, [r0], r6
.LBE4620:
	.loc 1 103 0 discriminator 1
	bne	.L363
.LBE4606:
.LBE4605:
.LBE4604:
.LBE4603:
	.loc 5 697 0 is_stmt 1
	add	sp, sp, #276
	.cfi_def_cfa_offset 28
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.LVL3112:
.L367:
	.align	2
.L366:
	.word	-16843010
	.cfi_endproc
.LFE221:
	.size	avg_qpel16_mc30_c, .-avg_qpel16_mc30_c
	.align	2
	.type	avg_qpel16_mc23_c, %function
avg_qpel16_mc23_c:
.LFB234:
	.loc 5 697 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 528
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3113:
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
	sub	sp, sp, #544
	.cfi_def_cfa_offset 576
	.loc 5 697 0
	mov	r4, r2
	add	r5, sp, #272
	mov	r2, #17
.LVL3114:
	mov	r6, r0
	mov	r3, r4
	mov	r0, r5
.LVL3115:
	str	r2, [sp]
	mov	r2, #16
	bl	put_mpeg4_qpel16_h_lowpass(PLT)
.LVL3116:
	.loc 5 697 0 is_stmt 0 discriminator 1
	mov	r2, #16
	mov	r1, r5
	add	r5, sp, r2
	mov	r0, r5
	mov	r3, r2
	bl	put_mpeg4_qpel16_v_lowpass(PLT)
.LVL3117:
.LBB4634:
.LBB4635:
	.loc 1 103 0 is_stmt 1
	mov	r1, #16
	mov	r2, r5
	mov	r0, r6
	mov	r3, r4
	str	r1, [sp]
	str	r1, [sp, #4]
	str	r1, [sp, #8]
	add	r1, sp, #288
.LVL3118:
	bl	avg_pixels8_l2_8(PLT)
.LVL3119:
	add	r5, sp, #552
	add	r0, r6, #8
.LVL3120:
	add	r3, sp, #296
.LVL3121:
	add	r2, sp, #28
.LVL3122:
.L369:
.LBB4636:
.LBB4637:
.LBB4638:
	.loc 1 103 0 is_stmt 0 discriminator 6
	ldrb	r8, [r2, #-4]	@ zero_extendqisi2
	ldrb	r1, [r2, #-3]	@ zero_extendqisi2
	ldrb	r7, [r3, #4]	@ zero_extendqisi2
	ldrb	r6, [r3, #5]	@ zero_extendqisi2
	ldrb	lr, [r2, #-2]	@ zero_extendqisi2
	ldrb	ip, [r3, #6]	@ zero_extendqisi2
	orr	r8, r8, r1, asl #8
	ldrb	r10, [r2, #-1]	@ zero_extendqisi2
	ldrb	r9, [r3, #7]	@ zero_extendqisi2
	orr	r6, r7, r6, asl #8
	orr	lr, r8, lr, asl #16
	ldr	r8, [r3]
.LVL3123:
	ldr	r1, [r2], #16
	orr	r6, r6, ip, asl #16
	orr	lr, lr, r10, asl #24
.LVL3124:
.LBB4639:
.LBB4640:
	.loc 2 33 0 is_stmt 1
	ldr	r7, .L372
	eor	r10, lr, r8
.LBE4640:
.LBE4639:
	.loc 1 103 0 discriminator 6
	orr	ip, r6, r9, asl #24
.LBB4643:
.LBB4644:
	.loc 2 33 0
	eor	r9, r1, ip
	mov	r6, r7
.LBE4644:
.LBE4643:
.LBB4648:
.LBB4641:
	orr	lr, lr, r8
.LVL3125:
	and	r7, r7, r10
.LBE4641:
.LBE4648:
	.loc 1 103 0 discriminator 6
	ldr	r8, [r0]
.LVL3126:
.LBB4649:
.LBB4645:
	.loc 2 33 0
	and	r6, r6, r9
.LBE4645:
.LBE4649:
.LBB4650:
.LBB4642:
	sub	lr, lr, r7, lsr #1
.LVL3127:
.LBE4642:
.LBE4650:
	.loc 1 103 0 discriminator 6
	ldr	r9, [r0, #4]
.LBB4651:
.LBB4646:
	.loc 2 33 0
	orr	ip, r1, ip
.LVL3128:
.LBE4646:
.LBE4651:
.LBB4652:
.LBB4653:
	ldr	r7, .L372
.LBE4653:
.LBE4652:
.LBB4657:
.LBB4647:
	sub	r1, ip, r6, lsr #1
.LVL3129:
.LBE4647:
.LBE4657:
.LBB4658:
.LBB4654:
	eor	r10, r8, lr
.LBE4654:
.LBE4658:
.LBB4659:
.LBB4660:
	mov	ip, r7
	eor	r6, r9, r1
.LBE4660:
.LBE4659:
.LBB4663:
.LBB4655:
	orr	lr, r8, lr
.LVL3130:
	and	r7, r7, r10
.LVL3131:
	add	r3, r3, #16
.LVL3132:
.LBE4655:
.LBE4663:
.LBB4664:
.LBB4661:
	orr	r1, r9, r1
.LVL3133:
	and	ip, ip, r6
.LVL3134:
.LBE4661:
.LBE4664:
.LBB4665:
.LBB4656:
	sub	lr, lr, r7, lsr #1
.LBE4656:
.LBE4665:
.LBB4666:
.LBB4662:
	sub	r1, r1, ip, lsr #1
.LBE4662:
.LBE4666:
.LBE4638:
	.loc 1 103 0 discriminator 1
	cmp	r3, r5
.LBB4667:
	.loc 1 103 0 is_stmt 0 discriminator 6
	str	lr, [r0]
	str	r1, [r0, #4]
	add	r0, r0, r4
.LBE4667:
	.loc 1 103 0 discriminator 1
	bne	.L369
.LBE4637:
.LBE4636:
.LBE4635:
.LBE4634:
	.loc 5 697 0 is_stmt 1
	add	sp, sp, #544
	.cfi_def_cfa_offset 32
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL3135:
.L373:
	.align	2
.L372:
	.word	-16843010
	.cfi_endproc
.LFE234:
	.size	avg_qpel16_mc23_c, .-avg_qpel16_mc23_c
	.align	2
	.type	avg_qpel16_mc21_c, %function
avg_qpel16_mc21_c:
.LFB233:
	.loc 5 697 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 528
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3136:
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
	sub	sp, sp, #544
	.cfi_def_cfa_offset 576
	.loc 5 697 0
	add	r5, sp, #272
	mov	r4, r2
	mov	r2, #17
.LVL3137:
	mov	r7, r0
	mov	r3, r4
	mov	r0, r5
.LVL3138:
	str	r2, [sp]
	mov	r2, #16
	bl	put_mpeg4_qpel16_h_lowpass(PLT)
.LVL3139:
	.loc 5 697 0 is_stmt 0 discriminator 1
	mov	r2, #16
	add	r6, sp, r2
	mov	r1, r5
	mov	r3, r2
	mov	r0, r6
	bl	put_mpeg4_qpel16_v_lowpass(PLT)
.LVL3140:
.LBB4681:
.LBB4682:
	.loc 1 103 0 is_stmt 1
	mov	ip, #16
	mov	r1, r5
	mov	r2, r6
	mov	r0, r7
	mov	r3, r4
	str	ip, [sp]
	str	ip, [sp, #4]
	str	ip, [sp, #8]
	bl	avg_pixels8_l2_8(PLT)
.LVL3141:
	add	r5, sp, #536
.LVL3142:
	add	r0, r7, #8
.LVL3143:
	add	r3, sp, #280
.LVL3144:
	add	r2, sp, #28
.LVL3145:
.L375:
.LBB4683:
.LBB4684:
.LBB4685:
	.loc 1 103 0 is_stmt 0 discriminator 6
	ldrb	r8, [r2, #-4]	@ zero_extendqisi2
	ldrb	r1, [r2, #-3]	@ zero_extendqisi2
	ldrb	r7, [r3, #4]	@ zero_extendqisi2
	ldrb	r6, [r3, #5]	@ zero_extendqisi2
	ldrb	lr, [r2, #-2]	@ zero_extendqisi2
	ldrb	ip, [r3, #6]	@ zero_extendqisi2
	orr	r8, r8, r1, asl #8
	ldrb	r10, [r2, #-1]	@ zero_extendqisi2
	ldrb	r9, [r3, #7]	@ zero_extendqisi2
	orr	r6, r7, r6, asl #8
	orr	lr, r8, lr, asl #16
	ldr	r8, [r3]
.LVL3146:
	ldr	r1, [r2], #16
	orr	r6, r6, ip, asl #16
	orr	lr, lr, r10, asl #24
.LVL3147:
.LBB4686:
.LBB4687:
	.loc 2 33 0 is_stmt 1
	ldr	r7, .L378
	eor	r10, lr, r8
.LBE4687:
.LBE4686:
	.loc 1 103 0 discriminator 6
	orr	ip, r6, r9, asl #24
.LBB4690:
.LBB4691:
	.loc 2 33 0
	eor	r9, r1, ip
	mov	r6, r7
.LBE4691:
.LBE4690:
.LBB4695:
.LBB4688:
	orr	lr, lr, r8
.LVL3148:
	and	r7, r7, r10
.LBE4688:
.LBE4695:
	.loc 1 103 0 discriminator 6
	ldr	r8, [r0]
.LVL3149:
.LBB4696:
.LBB4692:
	.loc 2 33 0
	and	r6, r6, r9
.LBE4692:
.LBE4696:
.LBB4697:
.LBB4689:
	sub	lr, lr, r7, lsr #1
.LVL3150:
.LBE4689:
.LBE4697:
	.loc 1 103 0 discriminator 6
	ldr	r9, [r0, #4]
.LBB4698:
.LBB4693:
	.loc 2 33 0
	orr	ip, r1, ip
.LVL3151:
.LBE4693:
.LBE4698:
.LBB4699:
.LBB4700:
	ldr	r7, .L378
.LBE4700:
.LBE4699:
.LBB4704:
.LBB4694:
	sub	r1, ip, r6, lsr #1
.LVL3152:
.LBE4694:
.LBE4704:
.LBB4705:
.LBB4701:
	eor	r10, r8, lr
.LBE4701:
.LBE4705:
.LBB4706:
.LBB4707:
	mov	ip, r7
	eor	r6, r9, r1
.LBE4707:
.LBE4706:
.LBB4710:
.LBB4702:
	orr	lr, r8, lr
.LVL3153:
	and	r7, r7, r10
.LVL3154:
	add	r3, r3, #16
.LVL3155:
.LBE4702:
.LBE4710:
.LBB4711:
.LBB4708:
	orr	r1, r9, r1
.LVL3156:
	and	ip, ip, r6
.LVL3157:
.LBE4708:
.LBE4711:
.LBB4712:
.LBB4703:
	sub	lr, lr, r7, lsr #1
.LBE4703:
.LBE4712:
.LBB4713:
.LBB4709:
	sub	r1, r1, ip, lsr #1
.LBE4709:
.LBE4713:
.LBE4685:
	.loc 1 103 0 discriminator 1
	cmp	r3, r5
.LBB4714:
	.loc 1 103 0 is_stmt 0 discriminator 6
	str	lr, [r0]
	str	r1, [r0, #4]
	add	r0, r0, r4
.LBE4714:
	.loc 1 103 0 discriminator 1
	bne	.L375
.LBE4684:
.LBE4683:
.LBE4682:
.LBE4681:
	.loc 5 697 0 is_stmt 1
	add	sp, sp, #544
	.cfi_def_cfa_offset 32
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL3158:
.L379:
	.align	2
.L378:
	.word	-16843010
	.cfi_endproc
.LFE233:
	.size	avg_qpel16_mc21_c, .-avg_qpel16_mc21_c
	.align	2
	.type	put_qpel16_mc01_c, %function
put_qpel16_mc01_c:
.LFB130:
	.loc 5 695 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 672
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3159:
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
.LBB4726:
.LBB4727:
	.loc 6 82 0
	ldrb	r10, [r1, #9]	@ zero_extendqisi2
	ldrb	lr, [r1, #8]	@ zero_extendqisi2
.LBE4727:
.LBE4726:
	.loc 5 695 0
	mov	r5, r2
.LVL3160:
.LBB4733:
.LBB4728:
	.loc 6 85 0
	add	r3, r1, r2
	.loc 6 82 0
	ldrb	r4, [r1, r2]	@ zero_extendqisi2
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	ldrb	r2, [r1]	@ zero_extendqisi2
.LVL3161:
	ldrb	r8, [r3, #1]	@ zero_extendqisi2
	ldrb	fp, [r1, #5]	@ zero_extendqisi2
	ldrb	r9, [r1, #13]	@ zero_extendqisi2
	ldrb	r6, [r1, #4]	@ zero_extendqisi2
	ldrb	ip, [r1, #12]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #8
	ldrb	r10, [r1, #2]	@ zero_extendqisi2
	orr	r7, r2, r7, asl #8
	orr	r4, r4, r8, asl #8
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	ldrb	r8, [r3, #2]	@ zero_extendqisi2
	orr	r6, r6, fp, asl #8
	orr	ip, ip, r9, asl #8
	ldrb	fp, [r3, #5]	@ zero_extendqisi2
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	orr	r7, r7, r10, asl #16
	ldrb	r10, [r1, #14]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #8
	orr	r4, r4, r8, asl #16
	ldrb	fp, [r1, #10]	@ zero_extendqisi2
	ldrb	r8, [r3, #3]	@ zero_extendqisi2
	orr	r6, r6, r9, asl #16
	orr	ip, ip, r10, asl #16
	ldrb	r9, [r3, #6]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
.LBE4728:
.LBE4733:
	.loc 5 695 0
	sub	sp, sp, #692
	.cfi_def_cfa_offset 728
.LVL3162:
.LBB4734:
.LBB4729:
	.loc 6 82 0
	orr	r4, r4, r8, asl #24
	orr	r6, r6, r10, asl #24
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	ldrb	r10, [r3, #7]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #16
	orr	r2, r2, r9, asl #16
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	str	r4, [sp, #20]
	orr	r7, r7, fp, asl #24
	add	r4, sp, #288
	.loc 6 85 0
	add	fp, r3, r5
	.loc 6 82 0
	orr	lr, lr, r9, asl #24
	orr	ip, ip, r8, asl #24
	orr	r2, r2, r10, asl #24
	ldr	r9, [sp, #20]
	.loc 6 83 0
	ldrb	r8, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	stmda	r4, {r6, lr}
	str	r9, [r4, #16]
	str	r7, [r4, #-8]
	str	ip, [r4, #4]
	str	r2, [r4, #20]
	ldrb	r10, [fp, #1]	@ zero_extendqisi2
	ldrb	lr, [r1, r5, asl #1]	@ zero_extendqisi2
	ldrb	r7, [fp, #5]	@ zero_extendqisi2
	ldrb	ip, [r3, #12]	@ zero_extendqisi2
	ldrb	r1, [fp, #4]	@ zero_extendqisi2
.LVL3163:
	ldrb	r6, [fp, #8]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #8
	.loc 6 83 0
	strb	r8, [sp, #296]
.LVL3164:
	.loc 6 82 0
	ldrb	r10, [fp, #9]	@ zero_extendqisi2
	ldrb	r8, [r3, #13]	@ zero_extendqisi2
	orr	r6, r6, r10, asl #8
	orr	ip, ip, r8, asl #8
	ldrb	r10, [fp, #2]	@ zero_extendqisi2
	ldrb	r8, [fp, #12]	@ zero_extendqisi2
	orr	r1, r1, r7, asl #8
	ldrb	r7, [fp, #13]	@ zero_extendqisi2
	ldrb	r9, [r3, #8]	@ zero_extendqisi2
	ldrb	r2, [r3, #9]	@ zero_extendqisi2
	orr	r7, r8, r7, asl #8
	orr	r10, lr, r10, asl #16
	ldrb	r8, [r3, #14]	@ zero_extendqisi2
	ldrb	lr, [fp, #6]	@ zero_extendqisi2
	orr	r2, r9, r2, asl #8
	ldrb	r9, [r3, #10]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r1, r1, lr, asl #16
	ldrb	r8, [fp, #10]	@ zero_extendqisi2
	ldrb	lr, [fp, #14]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #16
	ldrb	r9, [r3, #11]	@ zero_extendqisi2
	orr	r8, r6, r8, asl #16
	orr	lr, r7, lr, asl #16
	ldrb	r6, [fp, #3]	@ zero_extendqisi2
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	orr	r9, r2, r9, asl #24
	ldrb	r2, [fp, #7]	@ zero_extendqisi2
	orr	r10, r10, r6, asl #24
	orr	ip, ip, r7, asl #24
	ldrb	r6, [fp, #11]	@ zero_extendqisi2
	ldrb	r7, [fp, #15]	@ zero_extendqisi2
	orr	r1, r1, r2, asl #24
	.loc 6 85 0
	add	r2, fp, r5
	.loc 6 82 0
	orr	r6, r8, r6, asl #24
	orr	r7, lr, r7, asl #24
	.loc 6 83 0
	ldrb	r8, [fp, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r9, [r4, #24]
	.loc 6 85 0
	add	r9, r2, r5
	.loc 6 83 0
	ldrb	lr, [r3, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r10, [r4, #40]
	str	ip, [r4, #28]
	str	r1, [r4, #44]
	str	r6, [r4, #48]
	str	r7, [r4, #52]
	.loc 6 83 0
	strb	r8, [sp, #344]
	.loc 6 82 0
	ldrb	r8, [r9, #1]	@ zero_extendqisi2
	ldrb	r7, [fp, r5, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r2, #9]	@ zero_extendqisi2
	ldrb	r1, [r3, r5, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	r3, [r2, #4]	@ zero_extendqisi2
.LVL3165:
	ldrb	ip, [r2, #12]	@ zero_extendqisi2
	.loc 6 83 0
	strb	lr, [sp, #320]
.LVL3166:
	.loc 6 82 0
	orr	r7, r7, r8, asl #8
	ldrb	lr, [r2, #8]	@ zero_extendqisi2
	ldrb	r8, [r2, #13]	@ zero_extendqisi2
	orr	r6, r3, r6, asl #8
	orr	lr, lr, r10, asl #8
	ldrb	r3, [r9, #4]	@ zero_extendqisi2
	ldrb	r10, [r9, #5]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	ldrb	r8, [r9, #2]	@ zero_extendqisi2
	ldrb	fp, [r2, #1]	@ zero_extendqisi2
	orr	r3, r3, r10, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r10, [r2, #6]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #8
	orr	r6, r6, r10, asl #16
	ldrb	fp, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #14]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #16
	ldrb	r8, [r9, #6]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	fp, [r2, #3]	@ zero_extendqisi2
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #16
	ldrb	r10, [r9, #3]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #24
	orr	r7, r7, r10, asl #24
	ldrb	fp, [r2, #11]	@ zero_extendqisi2
	ldrb	r10, [r2, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [r9, #7]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	orr	ip, ip, r10, asl #24
	orr	r8, r3, r8, asl #24
	.loc 6 83 0
	ldrb	fp, [r2, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	r3, r9, r5
	.loc 6 82 0
	ldrb	r10, [r9, #8]	@ zero_extendqisi2
	str	r1, [r4, #64]
	str	r7, [r4, #88]
	str	r6, [r4, #68]
	str	lr, [r4, #72]
	str	ip, [r4, #76]
	str	r8, [r4, #92]
	.loc 6 83 0
	strb	fp, [sp, #368]
.LVL3167:
	.loc 6 82 0
	ldrb	fp, [r3, #1]	@ zero_extendqisi2
	ldrb	lr, [r2, r5, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r9, #13]	@ zero_extendqisi2
	ldrb	r7, [r3, #5]	@ zero_extendqisi2
	ldrb	ip, [r9, #12]	@ zero_extendqisi2
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	ldrb	r6, [r3, #8]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #8
	ldrb	fp, [r3, #9]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	orr	r6, r6, fp, asl #8
	ldrb	r8, [r3, #12]	@ zero_extendqisi2
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #8
	ldrb	r7, [r3, #13]	@ zero_extendqisi2
	ldrb	r1, [r9, #9]	@ zero_extendqisi2
	orr	r7, r8, r7, asl #8
	orr	fp, lr, fp, asl #16
	ldrb	r8, [r9, #14]	@ zero_extendqisi2
	ldrb	lr, [r3, #6]	@ zero_extendqisi2
	orr	r1, r10, r1, asl #8
	ldrb	r10, [r9, #10]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r2, r2, lr, asl #16
	ldrb	r8, [r3, #10]	@ zero_extendqisi2
	ldrb	lr, [r3, #14]	@ zero_extendqisi2
	orr	r1, r1, r10, asl #16
	ldrb	r10, [r9, #11]	@ zero_extendqisi2
	orr	r8, r6, r8, asl #16
	orr	lr, r7, lr, asl #16
	ldrb	r6, [r3, #3]	@ zero_extendqisi2
	ldrb	r7, [r9, #15]	@ zero_extendqisi2
	orr	r10, r1, r10, asl #24
	ldrb	r1, [r3, #7]	@ zero_extendqisi2
	orr	fp, fp, r6, asl #24
	orr	ip, ip, r7, asl #24
	ldrb	r6, [r3, #11]	@ zero_extendqisi2
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	orr	r2, r2, r1, asl #24
	.loc 6 85 0
	add	r1, r3, r5
	.loc 6 82 0
	orr	r6, r8, r6, asl #24
	orr	r7, lr, r7, asl #24
	.loc 6 83 0
	ldrb	r8, [r3, #16]	@ zero_extendqisi2
	ldrb	lr, [r9, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r10, [r4, #96]
	.loc 6 85 0
	add	r10, r1, r5
	.loc 6 82 0
	str	ip, [r4, #100]
	str	r7, [r4, #124]
	str	fp, [r4, #112]
	str	r6, [r4, #120]
	.loc 6 83 0
	strb	r8, [sp, #416]
	strb	lr, [sp, #392]
.LVL3168:
	.loc 6 82 0
	str	r2, [r4, #116]
	ldrb	r2, [r9, r5, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r10, #1]	@ zero_extendqisi2
	ldrb	r7, [r3, r5, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #9]	@ zero_extendqisi2
	ldrb	r3, [r1, #4]	@ zero_extendqisi2
	ldrb	r6, [r1, #5]	@ zero_extendqisi2
	ldrb	lr, [r1, #8]	@ zero_extendqisi2
	ldrb	ip, [r1, #12]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	ldrb	r8, [r1, #13]	@ zero_extendqisi2
	orr	r6, r3, r6, asl #8
	orr	lr, lr, r9, asl #8
	ldrb	r3, [r10, #4]	@ zero_extendqisi2
	ldrb	r9, [r10, #5]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	ldrb	r8, [r10, #2]	@ zero_extendqisi2
	ldrb	fp, [r1, #1]	@ zero_extendqisi2
	orr	r3, r3, r9, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	ldrb	r8, [r1, #10]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	fp, [r1, #2]	@ zero_extendqisi2
	ldrb	r9, [r1, #14]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #16
	ldrb	r8, [r10, #6]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	r8, [r1, #7]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #16
	ldrb	r9, [r10, #3]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #24
	orr	r7, r7, r9, asl #24
	ldrb	fp, [r1, #11]	@ zero_extendqisi2
	ldrb	r9, [r1, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [r10, #7]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	orr	ip, ip, r9, asl #24
	.loc 6 83 0
	ldrb	fp, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	orr	r8, r3, r8, asl #24
	.loc 6 85 0
	add	r3, r10, r5
	.loc 6 82 0
	ldrb	r9, [r10, #8]	@ zero_extendqisi2
	str	ip, [r4, #148]
	str	r7, [r4, #160]
	str	r6, [r4, #140]
	str	lr, [r4, #144]
	str	r8, [r4, #164]
	.loc 6 83 0
	strb	fp, [sp, #440]
.LVL3169:
	.loc 6 82 0
	str	r2, [r4, #136]
	ldrb	r2, [r10, #9]	@ zero_extendqisi2
	ldrb	fp, [r3, #1]	@ zero_extendqisi2
	ldrb	lr, [r1, r5, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r10, #13]	@ zero_extendqisi2
	ldrb	r7, [r3, #5]	@ zero_extendqisi2
	ldrb	ip, [r10, #12]	@ zero_extendqisi2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	ldrb	r6, [r3, #8]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #8
	ldrb	fp, [r3, #9]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	orr	r6, r6, fp, asl #8
	ldrb	r8, [r3, #12]	@ zero_extendqisi2
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	orr	r1, r1, r7, asl #8
	ldrb	r7, [r3, #13]	@ zero_extendqisi2
	orr	fp, lr, fp, asl #16
	orr	r7, r8, r7, asl #8
	ldrb	lr, [r3, #6]	@ zero_extendqisi2
	ldrb	r8, [r10, #14]	@ zero_extendqisi2
	orr	r2, r9, r2, asl #8
	ldrb	r9, [r10, #10]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r1, r1, lr, asl #16
	ldrb	r8, [r3, #10]	@ zero_extendqisi2
	ldrb	lr, [r3, #14]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #16
	ldrb	r9, [r10, #11]	@ zero_extendqisi2
	orr	r8, r6, r8, asl #16
	orr	lr, r7, lr, asl #16
	ldrb	r6, [r3, #3]	@ zero_extendqisi2
	ldrb	r7, [r10, #15]	@ zero_extendqisi2
	orr	r9, r2, r9, asl #24
	ldrb	r2, [r3, #7]	@ zero_extendqisi2
	orr	fp, fp, r6, asl #24
	orr	ip, ip, r7, asl #24
	ldrb	r6, [r3, #11]	@ zero_extendqisi2
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	orr	r1, r1, r2, asl #24
	.loc 6 85 0
	add	r2, r3, r5
	.loc 6 82 0
	orr	r6, r8, r6, asl #24
	orr	r7, lr, r7, asl #24
	.loc 6 83 0
	ldrb	r8, [r3, #16]	@ zero_extendqisi2
	ldrb	lr, [r10, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r9, [r4, #168]
	.loc 6 85 0
	add	r9, r2, r5
	.loc 6 82 0
	str	ip, [r4, #172]
	str	r7, [r4, #196]
	str	fp, [r4, #184]
	str	r6, [r4, #192]
	.loc 6 83 0
	strb	r8, [sp, #488]
	strb	lr, [sp, #464]
.LVL3170:
	.loc 6 82 0
	str	r1, [r4, #188]
	ldrb	r1, [r10, r5, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r9, #1]	@ zero_extendqisi2
	ldrb	r7, [r3, r5, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r2, #9]	@ zero_extendqisi2
	ldrb	r3, [r2, #4]	@ zero_extendqisi2
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	lr, [r2, #8]	@ zero_extendqisi2
	ldrb	ip, [r2, #12]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	ldrb	r8, [r2, #13]	@ zero_extendqisi2
	orr	r6, r3, r6, asl #8
	orr	lr, lr, r10, asl #8
	ldrb	r3, [r9, #4]	@ zero_extendqisi2
	ldrb	r10, [r9, #5]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	ldrb	r8, [r9, #2]	@ zero_extendqisi2
	ldrb	fp, [r2, #1]	@ zero_extendqisi2
	orr	r3, r3, r10, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r10, [r2, #6]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #8
	orr	r6, r6, r10, asl #16
	ldrb	fp, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #14]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #16
	ldrb	r8, [r9, #6]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	fp, [r2, #3]	@ zero_extendqisi2
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #16
	ldrb	r10, [r9, #3]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #24
	orr	r7, r7, r10, asl #24
	ldrb	fp, [r2, #11]	@ zero_extendqisi2
	ldrb	r10, [r2, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [r9, #7]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	orr	ip, ip, r10, asl #24
	.loc 6 83 0
	ldrb	fp, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	orr	r8, r3, r8, asl #24
	.loc 6 85 0
	add	r3, r9, r5
	.loc 6 82 0
	ldrb	r10, [r9, #8]	@ zero_extendqisi2
	str	ip, [r4, #220]
	str	r7, [r4, #232]
	str	r6, [r4, #212]
	str	lr, [r4, #216]
	str	r8, [r4, #236]
	.loc 6 83 0
	strb	fp, [sp, #512]
.LVL3171:
	.loc 6 82 0
	str	r1, [r4, #208]
	ldrb	r1, [r9, #9]	@ zero_extendqisi2
	ldrb	fp, [r3, #1]	@ zero_extendqisi2
	ldrb	lr, [r2, r5, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r9, #13]	@ zero_extendqisi2
	ldrb	r7, [r3, #5]	@ zero_extendqisi2
	ldrb	ip, [r9, #12]	@ zero_extendqisi2
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	ldrb	r6, [r3, #8]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #8
	ldrb	fp, [r3, #9]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	orr	r6, r6, fp, asl #8
	ldrb	r8, [r3, #12]	@ zero_extendqisi2
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #8
	ldrb	r7, [r3, #13]	@ zero_extendqisi2
	orr	fp, lr, fp, asl #16
	orr	r7, r8, r7, asl #8
	ldrb	lr, [r3, #6]	@ zero_extendqisi2
	ldrb	r8, [r9, #14]	@ zero_extendqisi2
	orr	r1, r10, r1, asl #8
	orr	ip, ip, r8, asl #16
	ldrb	r10, [r9, #10]	@ zero_extendqisi2
	ldrb	r8, [r3, #10]	@ zero_extendqisi2
	orr	r2, r2, lr, asl #16
	ldrb	lr, [r3, #14]	@ zero_extendqisi2
	orr	r1, r1, r10, asl #16
	orr	r8, r6, r8, asl #16
	ldrb	r10, [r9, #11]	@ zero_extendqisi2
	ldrb	r6, [r3, #3]	@ zero_extendqisi2
	orr	lr, r7, lr, asl #16
	ldrb	r7, [r9, #15]	@ zero_extendqisi2
	orr	r10, r1, r10, asl #24
	orr	fp, fp, r6, asl #24
	ldrb	r1, [r3, #7]	@ zero_extendqisi2
	ldrb	r6, [r3, #11]	@ zero_extendqisi2
	orr	ip, ip, r7, asl #24
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	orr	r2, r2, r1, asl #24
	orr	r6, r8, r6, asl #24
	.loc 6 85 0
	add	r1, r3, r5
	.loc 6 83 0
	ldrb	r8, [r3, #16]	@ zero_extendqisi2
	.loc 6 82 0
	orr	r7, lr, r7, asl #24
	.loc 6 83 0
	ldrb	lr, [r9, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	ip, [r4, #244]
	str	r10, [r4, #240]
	str	fp, [sp, #544]
	str	r2, [sp, #548]
	str	r7, [sp, #556]
	.loc 6 83 0
	strb	r8, [sp, #560]
	strb	lr, [sp, #536]
.LVL3172:
	.loc 6 82 0
	str	r6, [sp, #552]
	ldrb	r6, [r9, r5, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #1]	@ zero_extendqisi2
	.loc 6 85 0
	add	r10, r1, r5
	.loc 6 82 0
	ldrb	r8, [r1, #13]	@ zero_extendqisi2
	ldrb	r7, [r3, r5, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r1, #5]	@ zero_extendqisi2
	ldrb	r3, [r1, #4]	@ zero_extendqisi2
	ldrb	r2, [r1, #12]	@ zero_extendqisi2
	ldrb	ip, [r10, #4]	@ zero_extendqisi2
	orr	r6, r6, r9, asl #8
	ldrb	r9, [r10, #5]	@ zero_extendqisi2
	orr	lr, r3, lr, asl #8
	orr	r2, r2, r8, asl #8
	ldrb	r3, [r1, #8]	@ zero_extendqisi2
	ldrb	r8, [r1, #9]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #8
	ldrb	r9, [r1, #2]	@ zero_extendqisi2
	ldrb	fp, [r10, #1]	@ zero_extendqisi2
	orr	r3, r3, r8, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	r9, [r1, #14]	@ zero_extendqisi2
	orr	r7, r7, fp, asl #8
	orr	lr, lr, r8, asl #16
	ldrb	fp, [r10, #2]	@ zero_extendqisi2
	ldrb	r8, [r10, #6]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #16
	ldrb	r9, [r1, #10]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r3, r3, r9, asl #16
	ldrb	r8, [r1, #3]	@ zero_extendqisi2
	ldrb	r9, [r1, #7]	@ zero_extendqisi2
	orr	r7, r7, fp, asl #16
	ldrb	fp, [r10, #3]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	orr	r7, r7, fp, asl #24
	ldrb	r8, [r10, #7]	@ zero_extendqisi2
	ldrb	fp, [r1, #15]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #24
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #24
	orr	r8, ip, r8, asl #24
	.loc 6 83 0
	ldrb	fp, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	orr	r9, r3, r9, asl #24
	.loc 6 85 0
	add	r3, r10, r5
	.loc 6 82 0
	str	r7, [sp, #592]
	str	r6, [sp, #568]
	str	lr, [sp, #572]
	str	r8, [sp, #596]
	str	r9, [sp, #576]
	.loc 6 83 0
	strb	fp, [sp, #584]
.LVL3173:
	.loc 6 82 0
	ldrb	r9, [r10, #8]	@ zero_extendqisi2
	str	r2, [sp, #580]
	ldrb	r2, [r10, #9]	@ zero_extendqisi2
	ldrb	fp, [r3, #1]	@ zero_extendqisi2
	ldrb	lr, [r1, r5, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r3, #12]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #8
	ldrb	fp, [r3, #13]	@ zero_extendqisi2
	ldrb	r8, [r10, #13]	@ zero_extendqisi2
	ldrb	r7, [r3, #5]	@ zero_extendqisi2
	ldrb	ip, [r10, #12]	@ zero_extendqisi2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	orr	r6, r6, fp, asl #8
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	orr	r1, r1, r7, asl #8
	ldrb	r8, [r3, #8]	@ zero_extendqisi2
	ldrb	r7, [r3, #9]	@ zero_extendqisi2
	orr	fp, lr, fp, asl #16
	ldrb	lr, [r3, #6]	@ zero_extendqisi2
	orr	r7, r8, r7, asl #8
	orr	r2, r9, r2, asl #8
	ldrb	r8, [r10, #14]	@ zero_extendqisi2
	ldrb	r9, [r10, #10]	@ zero_extendqisi2
	orr	r1, r1, lr, asl #16
	ldrb	lr, [r3, #10]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #16
	orr	ip, ip, r8, asl #16
	ldrb	r9, [r10, #11]	@ zero_extendqisi2
	ldrb	r8, [r3, #14]	@ zero_extendqisi2
	orr	lr, r7, lr, asl #16
	ldrb	r7, [r10, #15]	@ zero_extendqisi2
	orr	r8, r6, r8, asl #16
	orr	r2, r2, r9, asl #24
	ldrb	r6, [r3, #3]	@ zero_extendqisi2
	str	r2, [sp, #20]
	orr	ip, ip, r7, asl #24
	ldrb	r2, [r3, #7]	@ zero_extendqisi2
	ldrb	r7, [r3, #11]	@ zero_extendqisi2
	orr	fp, fp, r6, asl #24
	ldrb	r6, [r3, #15]	@ zero_extendqisi2
	orr	r1, r1, r2, asl #24
	orr	r7, lr, r7, asl #24
	.loc 6 85 0
	add	r2, r3, r5
	.loc 6 82 0
	ldr	lr, [sp, #20]
	orr	r6, r8, r6, asl #24
	str	lr, [sp, #600]
	str	fp, [sp, #616]
	.loc 6 83 0
	ldrb	lr, [r3, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	fp, r2, r5
	.loc 6 82 0
	str	ip, [sp, #604]
	.loc 6 83 0
	ldrb	ip, [r10, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r1, [sp, #620]
	str	r6, [sp, #628]
	str	r7, [sp, #624]
	.loc 6 83 0
	strb	lr, [sp, #632]
	.loc 6 82 0
	ldrb	r9, [r2, #1]	@ zero_extendqisi2
	ldrb	r7, [r10, r5, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r3, r5, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r2, #5]	@ zero_extendqisi2
.LVL3174:
	ldrb	r3, [fp, #4]	@ zero_extendqisi2
	.loc 6 83 0
	strb	ip, [sp, #608]
.LVL3175:
	.loc 6 82 0
	ldrb	lr, [fp, #5]	@ zero_extendqisi2
	ldrb	ip, [r2, #4]	@ zero_extendqisi2
	ldrb	r8, [fp, #1]	@ zero_extendqisi2
	ldrb	r1, [r2, #8]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #8
	orr	lr, r3, lr, asl #8
	ldrb	r9, [r2, #9]	@ zero_extendqisi2
	ldrb	r3, [r2, #12]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #8
	ldrb	r10, [r2, #13]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #8
	orr	r1, r1, r9, asl #8
	ldrb	r8, [fp, #2]	@ zero_extendqisi2
	ldrb	r9, [r2, #2]	@ zero_extendqisi2
	orr	r3, r3, r10, asl #8
	ldrb	r10, [fp, #6]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #16
	orr	r7, r7, r9, asl #16
	ldrb	r8, [fp, #3]	@ zero_extendqisi2
	ldrb	r9, [r2, #6]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	ldrb	r10, [r2, #10]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	orr	ip, ip, r9, asl #16
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	ldrb	r9, [r2, #14]	@ zero_extendqisi2
	orr	r1, r1, r10, asl #16
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #24
	orr	r7, r7, r10, asl #24
	ldrb	r8, [r2, #15]	@ zero_extendqisi2
	ldrb	r10, [r2, #11]	@ zero_extendqisi2
	orr	r3, r3, r9, asl #16
	ldrb	r9, [fp, #7]	@ zero_extendqisi2
	str	r6, [sp, #20]
	orr	lr, lr, r9, asl #24
	add	r6, sp, #672
	orr	r1, r1, r10, asl #24
	orr	r3, r3, r8, asl #24
	.loc 6 83 0
	ldrb	r8, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	ldr	r2, [sp, #20]
.LVL3176:
	str	r2, [r6, #-8]
	str	r7, [sp, #640]
	str	lr, [r6, #-4]
	str	ip, [sp, #644]
	str	r1, [sp, #648]
	str	r3, [sp, #652]
	ldrb	r2, [fp, #8]	@ zero_extendqisi2
	ldrb	r1, [fp, #12]	@ zero_extendqisi2
	ldrb	r7, [fp, #13]	@ zero_extendqisi2
	ldrb	r3, [fp, #9]	@ zero_extendqisi2
	ldrb	lr, [fp, #14]	@ zero_extendqisi2
	ldrb	ip, [fp, #10]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r8, [sp, #656]
.LVL3177:
	.loc 6 82 0
	orr	r3, r2, r3, asl #8
	ldrb	r8, [fp, #15]	@ zero_extendqisi2
	orr	r2, r1, r7, asl #8
	orr	r2, r2, lr, asl #16
	ldrb	r1, [fp, #11]	@ zero_extendqisi2
	orr	lr, r2, r8, asl #24
	orr	r3, r3, ip, asl #16
.LBE4729:
.LBE4734:
	.loc 5 695 0 discriminator 1
	add	r8, sp, #24
	add	r9, sp, #280
.LBB4735:
.LBB4730:
	.loc 6 82 0
	orr	ip, r3, r1, asl #24
	str	lr, [r6, #4]
.LBE4730:
.LBE4735:
	.loc 5 695 0
	mov	r7, r0
.LBB4736:
.LBB4731:
	.loc 6 83 0
	ldrb	r10, [fp, #16]	@ zero_extendqisi2
.LBE4731:
.LBE4736:
	.loc 5 695 0 discriminator 1
	mov	r0, r8
.LVL3178:
	mov	r1, r9
	mov	r2, #16
	mov	r3, #24
.LBB4737:
.LBB4732:
	.loc 6 82 0
	str	ip, [sp, #672]
	.loc 6 83 0
	strb	r10, [sp, #680]
.LVL3179:
.LBE4732:
.LBE4737:
	.loc 5 695 0 discriminator 1
	bl	put_mpeg4_qpel16_v_lowpass(PLT)
.LVL3180:
.LBB4738:
.LBB4739:
	.loc 1 104 0
	mov	lr, #24
	mov	ip, #16
	mov	r0, r7
	str	lr, [sp]
	mov	r1, r9
	mov	r2, r8
	mov	r3, r5
	str	ip, [sp, #4]
	str	ip, [sp, #8]
	bl	put_pixels8_l2_8(PLT)
.LVL3181:
	add	r0, r7, #8
.LVL3182:
	add	lr, sp, #32
.LVL3183:
.L381:
.LBB4740:
.LBB4741:
.LBB4742:
	.loc 1 104 0 is_stmt 0 discriminator 4
	ldrb	r8, [lr, #5]	@ zero_extendqisi2
	ldrb	r1, [lr, #4]	@ zero_extendqisi2
	ldrb	r7, [r4, #4]	@ zero_extendqisi2
	ldrb	ip, [r4, #5]	@ zero_extendqisi2
	ldrb	r2, [lr, #6]	@ zero_extendqisi2
	ldrb	r3, [r4, #6]	@ zero_extendqisi2
	orr	r1, r1, r8, asl #8
	ldrb	r8, [lr, #7]	@ zero_extendqisi2
	ldrb	r9, [r4, #7]	@ zero_extendqisi2
	orr	ip, r7, ip, asl #8
	orr	r2, r1, r2, asl #16
	ldr	r7, [r4]
.LVL3184:
	ldr	r1, [lr]
.LVL3185:
	orr	r2, r2, r8, asl #24
	orr	ip, ip, r3, asl #16
.LBB4743:
.LBB4744:
	.loc 2 33 0 is_stmt 1
	ldr	r8, .L384
.LBE4744:
.LBE4743:
	.loc 1 104 0 discriminator 4
	orr	r3, ip, r9, asl #24
.LVL3186:
.LBB4748:
.LBB4745:
	.loc 2 33 0
	eor	r10, r2, r3
.LBE4745:
.LBE4748:
.LBB4749:
.LBB4750:
	mov	ip, r8
	eor	r9, r1, r7
.LBE4750:
.LBE4749:
.LBB4753:
.LBB4746:
	orr	r3, r2, r3
.LVL3187:
	and	r8, r8, r10
	add	r4, r4, #24
.LVL3188:
.LBE4746:
.LBE4753:
.LBB4754:
.LBB4751:
	orr	r1, r1, r7
.LVL3189:
	and	ip, ip, r9
.LBE4751:
.LBE4754:
.LBB4755:
.LBB4747:
	sub	r3, r3, r8, lsr #1
.LBE4747:
.LBE4755:
.LBB4756:
.LBB4752:
	sub	r1, r1, ip, lsr #1
.LBE4752:
.LBE4756:
.LBE4742:
	.loc 1 104 0 discriminator 1
	cmp	r4, r6
.LBB4757:
	.loc 1 104 0 is_stmt 0 discriminator 4
	str	r3, [r0, #4]
	str	r1, [r0]
	add	lr, lr, #16
.LVL3190:
	add	r0, r0, r5
.LBE4757:
	.loc 1 104 0 discriminator 1
	bne	.L381
.LBE4741:
.LBE4740:
.LBE4739:
.LBE4738:
	.loc 5 695 0 is_stmt 1
	add	sp, sp, #692
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3191:
.L385:
	.align	2
.L384:
	.word	-16843010
	.cfi_endproc
.LFE130:
	.size	put_qpel16_mc01_c, .-put_qpel16_mc01_c
	.align	2
	.type	put_qpel16_mc03_c, %function
put_qpel16_mc03_c:
.LFB132:
	.loc 5 695 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 672
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3192:
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
.LBB4769:
.LBB4770:
	.loc 6 82 0
	ldrb	r10, [r1, #9]	@ zero_extendqisi2
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
.LBE4770:
.LBE4769:
	.loc 5 695 0
	mov	r4, r2
.LVL3193:
.LBB4776:
.LBB4771:
	.loc 6 85 0
	add	r3, r1, r2
	.loc 6 82 0
	ldrb	ip, [r1, r2]	@ zero_extendqisi2
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	ldrb	r2, [r1]	@ zero_extendqisi2
.LVL3194:
	ldrb	r8, [r3, #1]	@ zero_extendqisi2
	ldrb	fp, [r1, #5]	@ zero_extendqisi2
	ldrb	r9, [r1, #13]	@ zero_extendqisi2
	ldrb	r6, [r1, #4]	@ zero_extendqisi2
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #8
	ldrb	r10, [r1, #2]	@ zero_extendqisi2
	orr	r7, r2, r7, asl #8
	orr	ip, ip, r8, asl #8
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	ldrb	r8, [r3, #2]	@ zero_extendqisi2
	orr	r6, r6, fp, asl #8
	orr	lr, lr, r9, asl #8
	ldrb	fp, [r3, #5]	@ zero_extendqisi2
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	orr	r7, r7, r10, asl #16
	ldrb	r10, [r1, #14]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #8
	orr	ip, ip, r8, asl #16
	ldrb	fp, [r1, #10]	@ zero_extendqisi2
	ldrb	r8, [r3, #3]	@ zero_extendqisi2
	orr	r6, r6, r9, asl #16
	orr	lr, lr, r10, asl #16
	ldrb	r9, [r3, #6]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
.LBE4771:
.LBE4776:
	.loc 5 695 0
	sub	sp, sp, #692
	.cfi_def_cfa_offset 728
.LVL3195:
.LBB4777:
.LBB4772:
	.loc 6 82 0
	orr	ip, ip, r8, asl #24
	orr	r6, r6, r10, asl #24
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	ldrb	r10, [r3, #7]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #16
	orr	r2, r2, r9, asl #16
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	str	ip, [sp, #20]
	orr	r7, r7, fp, asl #24
	add	ip, sp, #288
	.loc 6 85 0
	add	fp, r3, r4
	.loc 6 82 0
	orr	r5, r5, r9, asl #24
	orr	lr, lr, r8, asl #24
	orr	r2, r2, r10, asl #24
	ldr	r9, [sp, #20]
	.loc 6 83 0
	ldrb	r8, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	stmia	ip, {r5, lr}
	str	r9, [ip, #16]
	str	r7, [ip, #-8]
	str	r6, [ip, #-4]
	str	r2, [ip, #20]
	ldrb	r10, [fp, #1]	@ zero_extendqisi2
	ldrb	r5, [r1, r4, asl #1]	@ zero_extendqisi2
	ldrb	r7, [fp, #5]	@ zero_extendqisi2
	ldrb	lr, [r3, #12]	@ zero_extendqisi2
	ldrb	r1, [fp, #4]	@ zero_extendqisi2
.LVL3196:
	ldrb	r6, [fp, #8]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #8
	.loc 6 83 0
	strb	r8, [sp, #296]
.LVL3197:
	.loc 6 82 0
	ldrb	r10, [fp, #9]	@ zero_extendqisi2
	ldrb	r8, [r3, #13]	@ zero_extendqisi2
	orr	r6, r6, r10, asl #8
	orr	lr, lr, r8, asl #8
	ldrb	r10, [fp, #2]	@ zero_extendqisi2
	ldrb	r8, [fp, #12]	@ zero_extendqisi2
	orr	r1, r1, r7, asl #8
	ldrb	r7, [fp, #13]	@ zero_extendqisi2
	ldrb	r9, [r3, #8]	@ zero_extendqisi2
	ldrb	r2, [r3, #9]	@ zero_extendqisi2
	orr	r7, r8, r7, asl #8
	orr	r10, r5, r10, asl #16
	ldrb	r8, [r3, #14]	@ zero_extendqisi2
	ldrb	r5, [fp, #6]	@ zero_extendqisi2
	orr	r2, r9, r2, asl #8
	ldrb	r9, [r3, #10]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #16
	orr	r1, r1, r5, asl #16
	ldrb	r8, [fp, #10]	@ zero_extendqisi2
	ldrb	r5, [fp, #14]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #16
	ldrb	r9, [r3, #11]	@ zero_extendqisi2
	orr	r8, r6, r8, asl #16
	orr	r5, r7, r5, asl #16
	ldrb	r6, [fp, #3]	@ zero_extendqisi2
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	orr	r9, r2, r9, asl #24
	ldrb	r2, [fp, #7]	@ zero_extendqisi2
	orr	r10, r10, r6, asl #24
	orr	lr, lr, r7, asl #24
	ldrb	r6, [fp, #11]	@ zero_extendqisi2
	ldrb	r7, [fp, #15]	@ zero_extendqisi2
	orr	r1, r1, r2, asl #24
	.loc 6 85 0
	add	r2, fp, r4
	.loc 6 82 0
	orr	r6, r8, r6, asl #24
	orr	r7, r5, r7, asl #24
	.loc 6 83 0
	ldrb	r8, [fp, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r9, [ip, #24]
	.loc 6 85 0
	add	r9, r2, r4
	.loc 6 83 0
	ldrb	r5, [r3, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r10, [ip, #40]
	str	lr, [ip, #28]
	str	r1, [ip, #44]
	str	r6, [ip, #48]
	str	r7, [ip, #52]
	.loc 6 83 0
	strb	r8, [sp, #344]
	.loc 6 82 0
	ldrb	r8, [r9, #1]	@ zero_extendqisi2
	ldrb	r7, [fp, r4, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r2, #9]	@ zero_extendqisi2
	ldrb	r1, [r3, r4, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	r3, [r2, #4]	@ zero_extendqisi2
.LVL3198:
	ldrb	lr, [r2, #12]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r5, [sp, #320]
.LVL3199:
	.loc 6 82 0
	orr	r7, r7, r8, asl #8
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	ldrb	r8, [r2, #13]	@ zero_extendqisi2
	orr	r6, r3, r6, asl #8
	orr	r5, r5, r10, asl #8
	ldrb	r3, [r9, #4]	@ zero_extendqisi2
	ldrb	r10, [r9, #5]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	ldrb	r8, [r9, #2]	@ zero_extendqisi2
	ldrb	fp, [r2, #1]	@ zero_extendqisi2
	orr	r3, r3, r10, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r10, [r2, #6]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #8
	orr	r6, r6, r10, asl #16
	ldrb	fp, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #14]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	ldrb	r8, [r9, #6]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	fp, [r2, #3]	@ zero_extendqisi2
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	ldrb	r10, [r9, #3]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #24
	orr	r7, r7, r10, asl #24
	ldrb	fp, [r2, #11]	@ zero_extendqisi2
	ldrb	r10, [r2, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [r9, #7]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #24
	orr	lr, lr, r10, asl #24
	orr	r8, r3, r8, asl #24
	.loc 6 83 0
	ldrb	fp, [r2, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	r3, r9, r4
	.loc 6 82 0
	ldrb	r10, [r9, #8]	@ zero_extendqisi2
	str	r1, [ip, #64]
	str	r7, [ip, #88]
	str	r6, [ip, #68]
	str	r5, [ip, #72]
	str	lr, [ip, #76]
	str	r8, [ip, #92]
	.loc 6 83 0
	strb	fp, [sp, #368]
.LVL3200:
	.loc 6 82 0
	ldrb	fp, [r3, #1]	@ zero_extendqisi2
	ldrb	r5, [r2, r4, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r9, #13]	@ zero_extendqisi2
	ldrb	r7, [r3, #5]	@ zero_extendqisi2
	ldrb	lr, [r9, #12]	@ zero_extendqisi2
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	ldrb	r6, [r3, #8]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #8
	ldrb	fp, [r3, #9]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	orr	r6, r6, fp, asl #8
	ldrb	r8, [r3, #12]	@ zero_extendqisi2
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #8
	ldrb	r7, [r3, #13]	@ zero_extendqisi2
	ldrb	r1, [r9, #9]	@ zero_extendqisi2
	orr	r7, r8, r7, asl #8
	orr	fp, r5, fp, asl #16
	ldrb	r8, [r9, #14]	@ zero_extendqisi2
	ldrb	r5, [r3, #6]	@ zero_extendqisi2
	orr	r1, r10, r1, asl #8
	ldrb	r10, [r9, #10]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #16
	orr	r2, r2, r5, asl #16
	ldrb	r8, [r3, #10]	@ zero_extendqisi2
	ldrb	r5, [r3, #14]	@ zero_extendqisi2
	orr	r1, r1, r10, asl #16
	ldrb	r10, [r9, #11]	@ zero_extendqisi2
	orr	r8, r6, r8, asl #16
	orr	r5, r7, r5, asl #16
	ldrb	r6, [r3, #3]	@ zero_extendqisi2
	ldrb	r7, [r9, #15]	@ zero_extendqisi2
	orr	r10, r1, r10, asl #24
	ldrb	r1, [r3, #7]	@ zero_extendqisi2
	orr	fp, fp, r6, asl #24
	orr	lr, lr, r7, asl #24
	ldrb	r6, [r3, #11]	@ zero_extendqisi2
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	orr	r2, r2, r1, asl #24
	.loc 6 85 0
	add	r1, r3, r4
	.loc 6 82 0
	orr	r6, r8, r6, asl #24
	orr	r7, r5, r7, asl #24
	.loc 6 83 0
	ldrb	r8, [r3, #16]	@ zero_extendqisi2
	ldrb	r5, [r9, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r10, [ip, #96]
	.loc 6 85 0
	add	r10, r1, r4
	.loc 6 82 0
	str	lr, [ip, #100]
	str	r7, [ip, #124]
	str	fp, [ip, #112]
	str	r6, [ip, #120]
	str	r2, [ip, #116]
	.loc 6 83 0
	strb	r8, [sp, #416]
	strb	r5, [sp, #392]
.LVL3201:
	.loc 6 82 0
	ldrb	r2, [r9, r4, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r10, #1]	@ zero_extendqisi2
	ldrb	r7, [r3, r4, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #9]	@ zero_extendqisi2
	ldrb	r3, [r1, #4]	@ zero_extendqisi2
	ldrb	r6, [r1, #5]	@ zero_extendqisi2
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	ldrb	r8, [r1, #13]	@ zero_extendqisi2
	orr	r6, r3, r6, asl #8
	orr	r5, r5, r9, asl #8
	ldrb	r3, [r10, #4]	@ zero_extendqisi2
	ldrb	r9, [r10, #5]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	ldrb	r8, [r10, #2]	@ zero_extendqisi2
	ldrb	fp, [r1, #1]	@ zero_extendqisi2
	orr	r3, r3, r9, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	ldrb	r8, [r1, #10]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	fp, [r1, #2]	@ zero_extendqisi2
	ldrb	r9, [r1, #14]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	ldrb	r8, [r10, #6]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	r8, [r1, #7]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #16
	ldrb	r9, [r10, #3]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #24
	orr	r7, r7, r9, asl #24
	ldrb	fp, [r1, #11]	@ zero_extendqisi2
	ldrb	r9, [r1, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [r10, #7]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #24
	orr	lr, lr, r9, asl #24
	.loc 6 83 0
	ldrb	fp, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	orr	r8, r3, r8, asl #24
	.loc 6 85 0
	add	r3, r10, r4
	.loc 6 82 0
	str	lr, [ip, #148]
	ldrb	r9, [r10, #8]	@ zero_extendqisi2
	str	r7, [ip, #160]
	str	r6, [ip, #140]
	str	r5, [ip, #144]
	str	r8, [ip, #164]
	str	r2, [ip, #136]
	.loc 6 83 0
	strb	fp, [sp, #440]
.LVL3202:
	.loc 6 82 0
	ldrb	r2, [r10, #9]	@ zero_extendqisi2
	ldrb	fp, [r3, #1]	@ zero_extendqisi2
	ldrb	r5, [r1, r4, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r10, #13]	@ zero_extendqisi2
	ldrb	r7, [r3, #5]	@ zero_extendqisi2
	ldrb	lr, [r10, #12]	@ zero_extendqisi2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	ldrb	r6, [r3, #8]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #8
	ldrb	fp, [r3, #9]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	orr	r6, r6, fp, asl #8
	ldrb	r8, [r3, #12]	@ zero_extendqisi2
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	orr	r1, r1, r7, asl #8
	ldrb	r7, [r3, #13]	@ zero_extendqisi2
	orr	fp, r5, fp, asl #16
	orr	r7, r8, r7, asl #8
	ldrb	r5, [r3, #6]	@ zero_extendqisi2
	ldrb	r8, [r10, #14]	@ zero_extendqisi2
	orr	r2, r9, r2, asl #8
	ldrb	r9, [r10, #10]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #16
	orr	r1, r1, r5, asl #16
	ldrb	r8, [r3, #10]	@ zero_extendqisi2
	ldrb	r5, [r3, #14]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #16
	ldrb	r9, [r10, #11]	@ zero_extendqisi2
	orr	r8, r6, r8, asl #16
	orr	r5, r7, r5, asl #16
	ldrb	r6, [r3, #3]	@ zero_extendqisi2
	ldrb	r7, [r10, #15]	@ zero_extendqisi2
	orr	r9, r2, r9, asl #24
	ldrb	r2, [r3, #7]	@ zero_extendqisi2
	orr	fp, fp, r6, asl #24
	orr	lr, lr, r7, asl #24
	ldrb	r6, [r3, #11]	@ zero_extendqisi2
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	orr	r1, r1, r2, asl #24
	.loc 6 85 0
	add	r2, r3, r4
	.loc 6 82 0
	orr	r6, r8, r6, asl #24
	orr	r7, r5, r7, asl #24
	.loc 6 83 0
	ldrb	r8, [r3, #16]	@ zero_extendqisi2
	ldrb	r5, [r10, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r9, [ip, #168]
	.loc 6 85 0
	add	r9, r2, r4
	.loc 6 82 0
	str	lr, [ip, #172]
	str	r7, [ip, #196]
	str	fp, [ip, #184]
	str	r6, [ip, #192]
	str	r1, [ip, #188]
	.loc 6 83 0
	strb	r8, [sp, #488]
	strb	r5, [sp, #464]
.LVL3203:
	.loc 6 82 0
	ldrb	r1, [r10, r4, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r9, #1]	@ zero_extendqisi2
	ldrb	r7, [r3, r4, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r2, #9]	@ zero_extendqisi2
	ldrb	r3, [r2, #4]	@ zero_extendqisi2
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	ldrb	lr, [r2, #12]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	ldrb	r8, [r2, #13]	@ zero_extendqisi2
	orr	r6, r3, r6, asl #8
	orr	r5, r5, r10, asl #8
	ldrb	r3, [r9, #4]	@ zero_extendqisi2
	ldrb	r10, [r9, #5]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	ldrb	r8, [r9, #2]	@ zero_extendqisi2
	ldrb	fp, [r2, #1]	@ zero_extendqisi2
	orr	r3, r3, r10, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r10, [r2, #6]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #8
	orr	r6, r6, r10, asl #16
	ldrb	fp, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #14]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	ldrb	r8, [r9, #6]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	fp, [r2, #3]	@ zero_extendqisi2
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	ldrb	r10, [r9, #3]	@ zero_extendqisi2
	orr	r1, r1, fp, asl #24
	orr	r7, r7, r10, asl #24
	ldrb	fp, [r2, #11]	@ zero_extendqisi2
	ldrb	r10, [r2, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [r9, #7]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #24
	orr	lr, lr, r10, asl #24
	.loc 6 83 0
	ldrb	fp, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	orr	r8, r3, r8, asl #24
	.loc 6 85 0
	add	r3, r9, r4
	.loc 6 82 0
	str	lr, [ip, #220]
	ldrb	r10, [r9, #8]	@ zero_extendqisi2
	str	r7, [ip, #232]
	str	r6, [ip, #212]
	str	r5, [ip, #216]
	str	r8, [ip, #236]
	str	r1, [ip, #208]
	.loc 6 83 0
	strb	fp, [sp, #512]
.LVL3204:
	.loc 6 82 0
	ldrb	r1, [r9, #9]	@ zero_extendqisi2
	ldrb	fp, [r3, #1]	@ zero_extendqisi2
	ldrb	r5, [r2, r4, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r9, #13]	@ zero_extendqisi2
	ldrb	r7, [r3, #5]	@ zero_extendqisi2
	ldrb	lr, [r9, #12]	@ zero_extendqisi2
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	ldrb	r6, [r3, #8]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #8
	ldrb	fp, [r3, #9]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	orr	r6, r6, fp, asl #8
	ldrb	r8, [r3, #12]	@ zero_extendqisi2
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #8
	ldrb	r7, [r3, #13]	@ zero_extendqisi2
	orr	fp, r5, fp, asl #16
	orr	r7, r8, r7, asl #8
	ldrb	r5, [r3, #6]	@ zero_extendqisi2
	ldrb	r8, [r9, #14]	@ zero_extendqisi2
	orr	r1, r10, r1, asl #8
	orr	lr, lr, r8, asl #16
	ldrb	r10, [r9, #10]	@ zero_extendqisi2
	ldrb	r8, [r3, #10]	@ zero_extendqisi2
	orr	r2, r2, r5, asl #16
	ldrb	r5, [r3, #14]	@ zero_extendqisi2
	orr	r1, r1, r10, asl #16
	orr	r8, r6, r8, asl #16
	ldrb	r10, [r9, #11]	@ zero_extendqisi2
	ldrb	r6, [r3, #3]	@ zero_extendqisi2
	orr	r5, r7, r5, asl #16
	ldrb	r7, [r9, #15]	@ zero_extendqisi2
	orr	r10, r1, r10, asl #24
	orr	fp, fp, r6, asl #24
	ldrb	r1, [r3, #7]	@ zero_extendqisi2
	ldrb	r6, [r3, #11]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #24
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	orr	r2, r2, r1, asl #24
	orr	r6, r8, r6, asl #24
	.loc 6 85 0
	add	r1, r3, r4
	.loc 6 83 0
	ldrb	r8, [r3, #16]	@ zero_extendqisi2
	.loc 6 82 0
	orr	r7, r5, r7, asl #24
	.loc 6 83 0
	ldrb	r5, [r9, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	lr, [ip, #244]
	str	r10, [ip, #240]
	str	fp, [sp, #544]
	str	r2, [sp, #548]
	str	r6, [sp, #552]
	str	r7, [sp, #556]
	.loc 6 83 0
	strb	r8, [sp, #560]
	strb	r5, [sp, #536]
.LVL3205:
	.loc 6 82 0
	ldrb	r5, [r9, r4, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #5]	@ zero_extendqisi2
	ldrb	r6, [r3, r4, asl #1]	@ zero_extendqisi2
	ldrb	r2, [r1, #4]	@ zero_extendqisi2
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	.loc 6 85 0
	add	r10, r1, r4
	.loc 6 82 0
	ldrb	r7, [r10, #1]	@ zero_extendqisi2
	ldrb	fp, [r1, #13]	@ zero_extendqisi2
	ldrb	r8, [r10, #5]	@ zero_extendqisi2
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	ldrb	ip, [r10, #4]	@ zero_extendqisi2
	orr	r5, r5, r3, asl #8
	orr	r2, r2, r9, asl #8
	ldrb	r3, [r1, #8]	@ zero_extendqisi2
	ldrb	r9, [r1, #9]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #8
	orr	lr, lr, fp, asl #8
	ldrb	r7, [r10, #2]	@ zero_extendqisi2
	ldrb	fp, [r1, #2]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #8
	orr	r3, r3, r9, asl #8
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	r9, [r1, #14]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #16
	orr	r5, r5, fp, asl #16
	ldrb	r7, [r10, #3]	@ zero_extendqisi2
	ldrb	fp, [r10, #6]	@ zero_extendqisi2
	orr	r2, r2, r8, asl #16
	orr	lr, lr, r9, asl #16
	ldrb	r8, [r1, #10]	@ zero_extendqisi2
	ldrb	r9, [r1, #3]	@ zero_extendqisi2
	orr	ip, ip, fp, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #24
	orr	r5, r5, r9, asl #24
	ldrb	r7, [r10, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r2, r2, fp, asl #24
	orr	lr, lr, r8, asl #24
	orr	r7, ip, r7, asl #24
	.loc 6 83 0
	ldrb	r8, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	orr	r9, r3, r9, asl #24
	.loc 6 85 0
	add	r3, r10, r4
	.loc 6 82 0
	str	r6, [sp, #592]
	str	r5, [sp, #568]
	str	lr, [sp, #580]
	str	r7, [sp, #596]
	str	r9, [sp, #576]
	.loc 6 83 0
	strb	r8, [sp, #584]
.LVL3206:
	.loc 6 82 0
	ldrb	r9, [r10, #8]	@ zero_extendqisi2
	str	r2, [sp, #572]
	ldrb	r2, [r10, #9]	@ zero_extendqisi2
	ldrb	fp, [r3, #1]	@ zero_extendqisi2
	ldrb	r8, [r10, #13]	@ zero_extendqisi2
	ldrb	r5, [r1, r4, asl #1]	@ zero_extendqisi2
	ldrb	lr, [r10, #12]	@ zero_extendqisi2
	ldrb	r7, [r3, #5]	@ zero_extendqisi2
	ldrb	r6, [r3, #13]	@ zero_extendqisi2
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
	ldrb	r1, [r3, #12]	@ zero_extendqisi2
	orr	r5, r5, fp, asl #8
	orr	lr, lr, r8, asl #8
	ldrb	fp, [r3, #8]	@ zero_extendqisi2
	ldrb	r8, [r3, #9]	@ zero_extendqisi2
	orr	r2, r9, r2, asl #8
	ldrb	r9, [r10, #10]	@ zero_extendqisi2
	orr	ip, ip, r7, asl #8
	orr	r1, r1, r6, asl #8
	ldrb	r7, [r3, #2]	@ zero_extendqisi2
	ldrb	r6, [r10, #14]	@ zero_extendqisi2
	orr	fp, fp, r8, asl #8
	ldrb	r8, [r3, #6]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #16
	ldrb	r9, [r10, #11]	@ zero_extendqisi2
	orr	r5, r5, r7, asl #16
	orr	lr, lr, r6, asl #16
	ldrb	r7, [r3, #14]	@ zero_extendqisi2
	ldrb	r6, [r3, #10]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	ldrb	r8, [r3, #3]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #24
	str	r2, [sp, #20]
	orr	r5, r5, r8, asl #24
	ldrb	r2, [r3, #15]	@ zero_extendqisi2
	ldrb	r8, [r3, #11]	@ zero_extendqisi2
	orr	r1, r1, r7, asl #16
	orr	fp, fp, r6, asl #16
	ldrb	r7, [r10, #15]	@ zero_extendqisi2
	ldrb	r6, [r3, #7]	@ zero_extendqisi2
	orr	lr, lr, r7, asl #24
	orr	ip, ip, r6, asl #24
	.loc 6 85 0
	add	r7, r3, r4
	.loc 6 82 0
	orr	r1, r1, r2, asl #24
	orr	fp, fp, r8, asl #24
	.loc 6 83 0
	ldrb	r6, [r3, #16]	@ zero_extendqisi2
	.loc 6 82 0
	ldr	r2, [sp, #20]
	str	r5, [sp, #616]
	.loc 6 83 0
	ldrb	r5, [r10, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r2, [sp, #600]
	str	lr, [sp, #604]
	str	ip, [sp, #620]
	str	r1, [sp, #628]
	str	fp, [sp, #624]
	.loc 6 83 0
	strb	r6, [sp, #632]
	.loc 6 82 0
	ldrb	ip, [r7, #4]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r5, [sp, #608]
.LVL3207:
	.loc 6 82 0
	ldrb	r5, [r10, r4, asl #1]	@ zero_extendqisi2
	ldrb	r10, [r7, #5]	@ zero_extendqisi2
	.loc 6 85 0
	add	r2, r7, r4
	.loc 6 82 0
	ldrb	r6, [r3, r4, asl #1]	@ zero_extendqisi2
	ldrb	r3, [r7, #1]	@ zero_extendqisi2
	ldrb	r8, [r2, #1]	@ zero_extendqisi2
	ldrb	fp, [r2, #5]	@ zero_extendqisi2
	ldrb	r9, [r7, #9]	@ zero_extendqisi2
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
	ldrb	r1, [r7, #8]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #8
	ldrb	r10, [r7, #2]	@ zero_extendqisi2
	orr	r5, r5, r3, asl #8
	orr	r6, r6, r8, asl #8
	ldrb	r3, [r7, #12]	@ zero_extendqisi2
	ldrb	r8, [r2, #2]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #8
	orr	r1, r1, r9, asl #8
	ldrb	fp, [r7, #13]	@ zero_extendqisi2
	ldrb	r9, [r2, #6]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #16
	ldrb	r10, [r7, #10]	@ zero_extendqisi2
	orr	r3, r3, fp, asl #8
	orr	r6, r6, r8, asl #16
	ldrb	fp, [r7, #6]	@ zero_extendqisi2
	ldrb	r8, [r2, #3]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #16
	orr	r1, r1, r10, asl #16
	ldrb	r9, [r7, #14]	@ zero_extendqisi2
	ldrb	r10, [r2, #7]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	orr	lr, lr, r10, asl #24
	ldrb	r8, [r7, #11]	@ zero_extendqisi2
	ldrb	r10, [r7, #15]	@ zero_extendqisi2
	orr	ip, ip, fp, asl #16
	orr	r3, r3, r9, asl #16
	ldrb	fp, [r7, #3]	@ zero_extendqisi2
	ldrb	r9, [r7, #7]	@ zero_extendqisi2
	str	r6, [sp, #20]
	orr	r1, r1, r8, asl #24
	.loc 6 83 0
	ldrb	r7, [r7, #16]	@ zero_extendqisi2
.LVL3208:
	.loc 6 82 0
	ldr	r8, [sp, #20]
	orr	r5, r5, fp, asl #24
	orr	ip, ip, r9, asl #24
	orr	r3, r3, r10, asl #24
	str	r8, [sp, #664]
	str	r5, [sp, #640]
	str	lr, [sp, #668]
	str	ip, [sp, #644]
	str	r1, [sp, #648]
	str	r3, [sp, #652]
	ldrb	r1, [r2, #8]	@ zero_extendqisi2
	ldrb	r5, [r2, #12]	@ zero_extendqisi2
	ldrb	r3, [r2, #9]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r7, [sp, #656]
.LVL3209:
	.loc 6 82 0
	ldrb	r7, [r2, #13]	@ zero_extendqisi2
	ldrb	ip, [r2, #10]	@ zero_extendqisi2
	ldrb	lr, [r2, #14]	@ zero_extendqisi2
	orr	r3, r1, r3, asl #8
	orr	r1, r5, r7, asl #8
	ldrb	r7, [r2, #11]	@ zero_extendqisi2
	ldrb	r8, [r2, #15]	@ zero_extendqisi2
	orr	r3, r3, ip, asl #16
	orr	ip, r3, r7, asl #24
	orr	r1, r1, lr, asl #16
.LBE4772:
.LBE4777:
	.loc 5 695 0 discriminator 1
	add	r7, sp, #24
.LBB4778:
.LBB4773:
	.loc 6 82 0
	orr	lr, r1, r8, asl #24
.LBE4773:
.LBE4778:
	.loc 5 695 0
	mov	r5, r0
.LBB4779:
.LBB4774:
	.loc 6 83 0
	ldrb	r8, [r2, #16]	@ zero_extendqisi2
.LBE4774:
.LBE4779:
	.loc 5 695 0 discriminator 1
	mov	r0, r7
.LVL3210:
	add	r1, sp, #280
	mov	r2, #16
.LVL3211:
	mov	r3, #24
.LBB4780:
.LBB4775:
	.loc 6 82 0
	str	lr, [sp, #676]
	str	ip, [sp, #672]
	.loc 6 83 0
	strb	r8, [sp, #680]
.LVL3212:
.LBE4775:
.LBE4780:
	.loc 5 695 0 discriminator 1
	bl	put_mpeg4_qpel16_v_lowpass(PLT)
.LVL3213:
.LBB4781:
.LBB4782:
	.loc 1 104 0
	mov	r1, #16
	mov	ip, #24
	mov	r0, r5
	str	r1, [sp, #4]
	str	r1, [sp, #8]
	mov	r2, r7
	mov	r3, r4
	str	ip, [sp]
	add	r1, sp, #304
.LVL3214:
	bl	put_pixels8_l2_8(PLT)
.LVL3215:
	add	r6, sp, #696
	add	r0, r5, #8
.LVL3216:
	add	lr, sp, #312
.LVL3217:
	add	r5, sp, #32
.LVL3218:
.L387:
.LBB4783:
.LBB4784:
.LBB4785:
	.loc 1 104 0 is_stmt 0 discriminator 4
	ldrb	r8, [r5, #5]	@ zero_extendqisi2
	ldrb	r1, [r5, #4]	@ zero_extendqisi2
	ldrb	r7, [lr, #4]	@ zero_extendqisi2
	ldrb	ip, [lr, #5]	@ zero_extendqisi2
	ldrb	r2, [r5, #6]	@ zero_extendqisi2
	ldrb	r3, [lr, #6]	@ zero_extendqisi2
	orr	r1, r1, r8, asl #8
	ldrb	r8, [r5, #7]	@ zero_extendqisi2
	ldrb	r9, [lr, #7]	@ zero_extendqisi2
	orr	ip, r7, ip, asl #8
	orr	r2, r1, r2, asl #16
	ldr	r7, [lr]
.LVL3219:
	ldr	r1, [r5]
.LVL3220:
	orr	r2, r2, r8, asl #24
	orr	ip, ip, r3, asl #16
.LBB4786:
.LBB4787:
	.loc 2 33 0 is_stmt 1
	ldr	r8, .L390
.LBE4787:
.LBE4786:
	.loc 1 104 0 discriminator 4
	orr	r3, ip, r9, asl #24
.LVL3221:
.LBB4791:
.LBB4788:
	.loc 2 33 0
	eor	r10, r2, r3
.LBE4788:
.LBE4791:
.LBB4792:
.LBB4793:
	mov	ip, r8
	eor	r9, r1, r7
.LBE4793:
.LBE4792:
.LBB4796:
.LBB4789:
	orr	r3, r2, r3
.LVL3222:
	and	r8, r8, r10
	add	lr, lr, #24
.LVL3223:
.LBE4789:
.LBE4796:
.LBB4797:
.LBB4794:
	orr	r1, r1, r7
.LVL3224:
	and	ip, ip, r9
.LBE4794:
.LBE4797:
.LBB4798:
.LBB4790:
	sub	r3, r3, r8, lsr #1
.LBE4790:
.LBE4798:
.LBB4799:
.LBB4795:
	sub	r1, r1, ip, lsr #1
.LBE4795:
.LBE4799:
.LBE4785:
	.loc 1 104 0 discriminator 1
	cmp	lr, r6
.LBB4800:
	.loc 1 104 0 is_stmt 0 discriminator 4
	str	r3, [r0, #4]
	str	r1, [r0]
	add	r5, r5, #16
.LVL3225:
	add	r0, r0, r4
.LBE4800:
	.loc 1 104 0 discriminator 1
	bne	.L387
.LBE4784:
.LBE4783:
.LBE4782:
.LBE4781:
	.loc 5 695 0 is_stmt 1
	add	sp, sp, #692
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3226:
.L391:
	.align	2
.L390:
	.word	-16843010
	.cfi_endproc
.LFE132:
	.size	put_qpel16_mc03_c, .-put_qpel16_mc03_c
	.align	2
	.type	avg_qpel16_mc32_c, %function
avg_qpel16_mc32_c:
.LFB238:
	.loc 5 697 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 688
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3227:
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
	sub	sp, sp, #708
	.cfi_def_cfa_offset 744
.LVL3228:
.LBB4812:
.LBB4813:
	.loc 6 85 0
	add	r4, r1, r2
	.loc 6 82 0
	str	r2, [sp, #16]
	ldrb	r3, [r1, r2]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r2, [r1]	@ zero_extendqisi2
.LVL3229:
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	ldrb	r6, [r1, #4]	@ zero_extendqisi2
	orr	r7, r2, r7, asl #8
	orr	r6, r6, r10, asl #8
	ldrb	r2, [r4, #4]	@ zero_extendqisi2
	ldrb	r10, [r4, #5]	@ zero_extendqisi2
	ldrb	r9, [r1, #9]	@ zero_extendqisi2
	ldrb	r8, [r1, #13]	@ zero_extendqisi2
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
	ldrb	ip, [r1, #12]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #8
	ldrb	r10, [r1, #10]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #8
	orr	ip, ip, r8, asl #8
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	lr, [r4, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #2]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #16
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #16
	ldrb	r8, [r4, #6]	@ zero_extendqisi2
	orr	r6, r6, r10, asl #24
	orr	r3, r3, lr, asl #8
	ldrb	r10, [r4, #7]	@ zero_extendqisi2
	ldrb	lr, [r4, #2]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #16
	ldrb	r9, [r1, #14]	@ zero_extendqisi2
	orr	r2, r2, r8, asl #16
	orr	r3, r3, lr, asl #16
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	lr, [r4, #3]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #16
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #24
	.loc 6 85 0
	ldr	r10, [sp, #16]
	.loc 6 82 0
	orr	lr, r3, lr, asl #24
	orr	r7, r7, fp, asl #24
	add	r3, sp, #304
	orr	r5, r5, r9, asl #24
	orr	r8, ip, r8, asl #24
	.loc 6 85 0
	add	ip, r4, r10
	.loc 6 83 0
	ldrb	r9, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	stmia	r3, {r5, r8}
	str	lr, [r3, #16]
	str	r7, [r3, #-8]
	str	r6, [r3, #-4]
	str	r2, [r3, #20]
	ldrb	r2, [r1, r10, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r4, #13]	@ zero_extendqisi2
	ldrb	r1, [r4, #12]	@ zero_extendqisi2
.LVL3230:
	ldrb	r10, [ip, #5]	@ zero_extendqisi2
	ldrb	r7, [ip, #4]	@ zero_extendqisi2
	ldrb	r5, [ip, #1]	@ zero_extendqisi2
	orr	r8, r1, r8, asl #8
	orr	r7, r7, r10, asl #8
	ldrb	r1, [ip, #12]	@ zero_extendqisi2
	ldrb	r10, [ip, #13]	@ zero_extendqisi2
	ldrb	r6, [ip, #8]	@ zero_extendqisi2
	orr	r2, r2, r5, asl #8
	ldrb	r5, [ip, #9]	@ zero_extendqisi2
	ldrb	lr, [r4, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #312]
.LVL3231:
	.loc 6 82 0
	orr	r1, r1, r10, asl #8
	ldrb	r9, [r4, #9]	@ zero_extendqisi2
	ldrb	r10, [ip, #6]	@ zero_extendqisi2
	ldrb	fp, [r4, #14]	@ zero_extendqisi2
	orr	r6, r6, r5, asl #8
	ldrb	r5, [ip, #2]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #8
	orr	r7, r7, r10, asl #16
	ldrb	r9, [r4, #10]	@ zero_extendqisi2
	ldrb	r10, [ip, #14]	@ zero_extendqisi2
	orr	r2, r2, r5, asl #16
	orr	r8, r8, fp, asl #16
	ldrb	r5, [ip, #10]	@ zero_extendqisi2
	ldrb	fp, [ip, #7]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #16
	orr	r1, r1, r10, asl #16
	ldrb	r9, [r4, #11]	@ zero_extendqisi2
	ldrb	r10, [r4, #15]	@ zero_extendqisi2
	orr	r7, r7, fp, asl #24
	orr	r6, r6, r5, asl #16
	.loc 6 85 0
	ldr	fp, [sp, #16]
	.loc 6 82 0
	ldrb	r5, [ip, #3]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #24
	orr	r8, r8, r10, asl #24
	ldrb	r9, [ip, #11]	@ zero_extendqisi2
	ldrb	r10, [ip, #15]	@ zero_extendqisi2
	orr	r5, r2, r5, asl #24
	.loc 6 85 0
	add	r2, ip, fp
	.loc 6 82 0
	orr	r6, r6, r9, asl #24
	orr	r1, r1, r10, asl #24
	str	lr, [r3, #24]
	.loc 6 85 0
	add	lr, r2, fp
	.loc 6 83 0
	ldrb	r10, [ip, #16]	@ zero_extendqisi2
	ldrb	r9, [r4, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r5, [r3, #40]
	str	r8, [r3, #28]
	str	r7, [r3, #44]
	str	r6, [r3, #48]
	str	r1, [r3, #52]
	ldrb	r7, [ip, fp, asl #1]	@ zero_extendqisi2
	ldrb	r8, [lr, #1]	@ zero_extendqisi2
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r10, [sp, #360]
	strb	r9, [sp, #336]
.LVL3232:
	.loc 6 82 0
	ldrb	r10, [r4, fp, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r2, #9]	@ zero_extendqisi2
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	ldrb	r4, [r2, #12]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	ldrb	r8, [r2, #13]	@ zero_extendqisi2
	orr	r6, r1, r6, asl #8
	orr	r5, r5, r9, asl #8
	ldrb	r1, [lr, #4]	@ zero_extendqisi2
	ldrb	r9, [lr, #5]	@ zero_extendqisi2
	orr	r4, r4, r8, asl #8
	ldrb	r8, [lr, #2]	@ zero_extendqisi2
	ldrb	ip, [r2, #1]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r9, [r2, #6]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	orr	ip, r10, ip, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	r10, [r2, #2]	@ zero_extendqisi2
	ldrb	r9, [r2, #14]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	ldrb	r8, [lr, #6]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #16
	orr	r1, r1, r8, asl #16
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #16
	ldrb	r9, [lr, #3]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #24
	orr	r7, r7, r9, asl #24
	ldrb	r10, [r2, #11]	@ zero_extendqisi2
	ldrb	r9, [r2, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [lr, #7]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	orr	r4, r4, r9, asl #24
	orr	r8, r1, r8, asl #24
	.loc 6 85 0
	add	r1, lr, fp
	.loc 6 83 0
	ldrb	r9, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	ip, [r3, #64]
	str	r7, [r3, #88]
	str	r6, [r3, #68]
	str	r4, [r3, #76]
	str	r8, [r3, #92]
	str	r5, [r3, #72]
	ldrb	r5, [lr, #8]	@ zero_extendqisi2
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	ldrb	r2, [r2, fp, asl #1]	@ zero_extendqisi2
.LVL3233:
	ldrb	ip, [lr, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r8, [lr, #13]	@ zero_extendqisi2
	ldrb	r7, [r1, #4]	@ zero_extendqisi2
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #8
	ldrb	r4, [r1, #9]	@ zero_extendqisi2
	orr	r8, ip, r8, asl #8
	orr	r7, r7, r10, asl #8
	ldrb	ip, [r1, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #384]
.LVL3234:
	.loc 6 82 0
	orr	r6, r6, r4, asl #8
	ldrb	r9, [lr, #9]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #8
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #16
	orr	r5, r5, r9, asl #8
	ldrb	r4, [r1, #10]	@ zero_extendqisi2
	ldrb	r9, [lr, #10]	@ zero_extendqisi2
	orr	r7, r7, r10, asl #16
	ldrb	r10, [r1, #14]	@ zero_extendqisi2
	ldrb	fp, [lr, #14]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	orr	r6, r6, r4, asl #16
	ldrb	r9, [lr, #11]	@ zero_extendqisi2
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #16
	ldrb	r10, [lr, #15]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	orr	r4, r2, r4, asl #24
	orr	r8, r8, fp, asl #16
	.loc 6 85 0
	ldr	r2, [sp, #16]
	.loc 6 82 0
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #24
	str	r5, [r3, #96]
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	.loc 6 85 0
	ldr	r5, [sp, #16]
	add	r2, r1, r2
	.loc 6 82 0
	orr	r7, r7, fp, asl #24
	orr	r6, r6, r9, asl #24
	orr	r10, ip, r10, asl #24
	.loc 6 85 0
	add	ip, r2, r5
	.loc 6 83 0
	ldrb	fp, [r1, #16]	@ zero_extendqisi2
	ldrb	r9, [lr, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [r3, #112]
	str	r8, [r3, #100]
	str	r7, [r3, #116]
	str	r6, [r3, #120]
	ldrb	r7, [r1, r5, asl #1]	@ zero_extendqisi2
	ldrb	r8, [ip, #1]	@ zero_extendqisi2
	str	r10, [r3, #124]
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	.loc 6 83 0
	strb	fp, [sp, #432]
	strb	r9, [sp, #408]
.LVL3235:
	.loc 6 82 0
	mov	fp, r5
	ldrb	r9, [r2, #9]	@ zero_extendqisi2
	ldrb	lr, [lr, r5, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	ldrb	r4, [r2, #12]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	ldrb	r8, [r2, #13]	@ zero_extendqisi2
	orr	r6, r1, r6, asl #8
	orr	r5, r5, r9, asl #8
	ldrb	r1, [ip, #4]	@ zero_extendqisi2
	ldrb	r9, [ip, #5]	@ zero_extendqisi2
	orr	r4, r4, r8, asl #8
	ldrb	r8, [ip, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #1]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r9, [r2, #6]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	r10, [r2, #2]	@ zero_extendqisi2
	ldrb	r9, [r2, #14]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	ldrb	r8, [ip, #6]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	orr	r1, r1, r8, asl #16
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #16
	ldrb	r9, [ip, #3]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #24
	orr	r7, r7, r9, asl #24
	ldrb	r10, [r2, #11]	@ zero_extendqisi2
	ldrb	r9, [r2, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [ip, #7]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	orr	r4, r4, r9, asl #24
	orr	r8, r1, r8, asl #24
	.loc 6 85 0
	add	r1, ip, fp
	.loc 6 83 0
	ldrb	r9, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	lr, [r3, #136]
	str	r7, [r3, #160]
	str	r6, [r3, #140]
	str	r5, [r3, #144]
	str	r4, [r3, #148]
	str	r8, [r3, #164]
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	ldrb	r2, [r2, fp, asl #1]	@ zero_extendqisi2
.LVL3236:
	ldrb	lr, [ip, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r8, [ip, #13]	@ zero_extendqisi2
	ldrb	r7, [r1, #4]	@ zero_extendqisi2
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #8
	ldrb	r4, [r1, #9]	@ zero_extendqisi2
	orr	r8, lr, r8, asl #8
	orr	r7, r7, r10, asl #8
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	ldrb	r5, [ip, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #456]
.LVL3237:
	.loc 6 82 0
	orr	r6, r6, r4, asl #8
	ldrb	r9, [ip, #9]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #8
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #16
	orr	r5, r5, r9, asl #8
	ldrb	r4, [r1, #10]	@ zero_extendqisi2
	ldrb	r9, [ip, #10]	@ zero_extendqisi2
	orr	r7, r7, r10, asl #16
	ldrb	r10, [r1, #14]	@ zero_extendqisi2
	ldrb	fp, [ip, #14]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	orr	r6, r6, r4, asl #16
	ldrb	r9, [ip, #11]	@ zero_extendqisi2
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	ldrb	r10, [ip, #15]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	orr	r4, r2, r4, asl #24
	orr	r8, r8, fp, asl #16
	.loc 6 85 0
	ldr	r2, [sp, #16]
	.loc 6 82 0
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #24
	str	r5, [r3, #168]
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	.loc 6 85 0
	ldr	r5, [sp, #16]
	add	r2, r1, r2
	.loc 6 82 0
	orr	r7, r7, fp, asl #24
	orr	r6, r6, r9, asl #24
	orr	r10, lr, r10, asl #24
	.loc 6 83 0
	ldrb	r9, [ip, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	lr, r2, r5
	.loc 6 83 0
	ldrb	fp, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [r3, #184]
	str	r8, [r3, #172]
	str	r7, [r3, #188]
	str	r6, [r3, #192]
	ldrb	r8, [r1, r5, asl #1]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #480]
.LVL3238:
	.loc 6 82 0
	ldrb	r9, [lr, #1]	@ zero_extendqisi2
	str	r10, [r3, #196]
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	ldrb	r10, [r2, #9]	@ zero_extendqisi2
	.loc 6 83 0
	strb	fp, [sp, #504]
	.loc 6 82 0
	ldrb	ip, [ip, r5, asl #1]	@ zero_extendqisi2
	mov	fp, r5
	ldrb	r7, [r2, #5]	@ zero_extendqisi2
	ldrb	r6, [r2, #8]	@ zero_extendqisi2
	ldrb	r5, [r2, #12]	@ zero_extendqisi2
	orr	r8, r8, r9, asl #8
	ldrb	r9, [r2, #13]	@ zero_extendqisi2
	orr	r7, r1, r7, asl #8
	orr	r6, r6, r10, asl #8
	ldrb	r1, [lr, #4]	@ zero_extendqisi2
	ldrb	r10, [lr, #5]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #8
	ldrb	r9, [lr, #2]	@ zero_extendqisi2
	ldrb	r4, [r2, #1]	@ zero_extendqisi2
	orr	r1, r1, r10, asl #8
	orr	r8, r8, r9, asl #16
	ldrb	r10, [r2, #6]	@ zero_extendqisi2
	ldrb	r9, [r2, #10]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #8
	orr	r7, r7, r10, asl #16
	ldrb	r4, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #14]	@ zero_extendqisi2
	orr	r6, r6, r9, asl #16
	ldrb	r9, [lr, #6]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #16
	orr	r5, r5, r10, asl #16
	ldrb	r4, [r2, #3]	@ zero_extendqisi2
	ldrb	r10, [lr, #3]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #16
	ldrb	r9, [r2, #7]	@ zero_extendqisi2
	orr	r4, ip, r4, asl #24
	orr	r8, r8, r10, asl #24
	ldrb	ip, [r2, #11]	@ zero_extendqisi2
	ldrb	r10, [r2, #15]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #24
	ldrb	r9, [lr, #7]	@ zero_extendqisi2
	orr	r6, r6, ip, asl #24
	orr	r5, r5, r10, asl #24
	.loc 6 85 0
	add	ip, lr, fp
	.loc 6 82 0
	orr	r1, r1, r9, asl #24
	str	r4, [r3, #208]
	.loc 6 83 0
	ldrb	r9, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r8, [r3, #232]
	str	r7, [r3, #212]
	str	r6, [r3, #216]
	str	r5, [r3, #220]
	str	r1, [r3, #236]
	ldrb	r1, [r2, fp, asl #1]	@ zero_extendqisi2
	ldrb	r6, [lr, #12]	@ zero_extendqisi2
	ldrb	r10, [ip, #5]	@ zero_extendqisi2
	ldrb	r8, [lr, #13]	@ zero_extendqisi2
	ldrb	r2, [ip, #4]	@ zero_extendqisi2
.LVL3239:
	ldrb	r4, [ip, #1]	@ zero_extendqisi2
	orr	r8, r6, r8, asl #8
	orr	r2, r2, r10, asl #8
	ldrb	r6, [ip, #12]	@ zero_extendqisi2
	ldrb	r10, [ip, #13]	@ zero_extendqisi2
	ldrb	r5, [lr, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #528]
.LVL3240:
	.loc 6 82 0
	ldrb	r7, [ip, #8]	@ zero_extendqisi2
	ldrb	r9, [lr, #9]	@ zero_extendqisi2
	orr	r1, r1, r4, asl #8
	orr	r6, r6, r10, asl #8
	ldrb	r4, [ip, #9]	@ zero_extendqisi2
	ldrb	r10, [ip, #6]	@ zero_extendqisi2
	ldrb	fp, [lr, #14]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #16
	orr	r5, r5, r9, asl #8
	ldrb	r10, [ip, #14]	@ zero_extendqisi2
	ldrb	r9, [lr, #10]	@ zero_extendqisi2
	orr	r7, r7, r4, asl #8
	ldrb	r4, [ip, #2]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	orr	r1, r1, r4, asl #16
	ldrb	r9, [lr, #11]	@ zero_extendqisi2
	ldrb	r4, [ip, #10]	@ zero_extendqisi2
	orr	r8, r8, fp, asl #16
	orr	r6, r6, r10, asl #16
	ldrb	fp, [ip, #7]	@ zero_extendqisi2
	ldrb	r10, [lr, #15]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	orr	r8, r8, r10, asl #24
	ldrb	r9, [ip, #11]	@ zero_extendqisi2
	ldrb	r10, [ip, #15]	@ zero_extendqisi2
	orr	fp, r2, fp, asl #24
	orr	r7, r7, r4, asl #16
	.loc 6 85 0
	ldr	r2, [sp, #16]
	.loc 6 82 0
	ldrb	r4, [ip, #3]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #24
	orr	r4, r1, r4, asl #24
	.loc 6 83 0
	ldrb	r9, [ip, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	r1, ip, r2
	.loc 6 82 0
	orr	r6, r6, r10, asl #24
	str	r5, [r3, #240]
	.loc 6 85 0
	mov	r5, r2
	.loc 6 82 0
	str	r4, [sp, #560]
	str	r8, [r3, #244]
	.loc 6 83 0
	ldrb	r4, [lr, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	fp, [sp, #564]
	str	r7, [sp, #568]
	mov	fp, r5
	str	r6, [sp, #572]
	ldrb	r3, [lr, r5, asl #1]	@ zero_extendqisi2
	ldrb	r6, [ip, r5, asl #1]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #576]
	.loc 6 82 0
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	.loc 6 85 0
	add	r2, r1, r2
	.loc 6 82 0
	ldrb	r7, [r2, #1]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	ldrb	r8, [r2, #5]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r4, [sp, #552]
.LVL3241:
	.loc 6 82 0
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
	ldrb	r4, [r1, #12]	@ zero_extendqisi2
	orr	r5, r3, r5, asl #8
	orr	ip, ip, r9, asl #8
	ldrb	r3, [r1, #8]	@ zero_extendqisi2
	ldrb	r9, [r1, #9]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #8
	orr	r4, r4, r10, asl #8
	ldrb	r7, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r1, #2]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	orr	r3, r3, r9, asl #8
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	r9, [r1, #14]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #16
	orr	r5, r5, r10, asl #16
	ldrb	r7, [r2, #3]	@ zero_extendqisi2
	ldrb	r10, [r2, #6]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r4, r4, r9, asl #16
	ldrb	r8, [r1, #10]	@ zero_extendqisi2
	ldrb	r9, [r1, #3]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #24
	orr	r5, r5, r9, asl #24
	ldrb	r7, [r2, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #24
	orr	r4, r4, r8, asl #24
	orr	r7, lr, r7, asl #24
	orr	r9, r3, r9, asl #24
	.loc 6 85 0
	add	r3, r2, fp
	.loc 6 83 0
	ldrb	r8, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r6, [sp, #608]
	str	r5, [sp, #584]
	str	ip, [sp, #588]
	str	r7, [sp, #612]
	str	r9, [sp, #592]
	str	r4, [sp, #596]
	ldrb	r4, [r2, #8]	@ zero_extendqisi2
	ldrb	lr, [r1, fp, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r3, #5]	@ zero_extendqisi2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
.LVL3242:
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	r10, [r2, #13]	@ zero_extendqisi2
	ldrb	ip, [r2, #12]	@ zero_extendqisi2
	ldrb	r7, [r2, #9]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #8
	ldrb	r9, [r3, #2]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r8, [sp, #600]
.LVL3243:
	.loc 6 82 0
	ldrb	r6, [r3, #12]	@ zero_extendqisi2
	ldrb	r8, [r3, #13]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #8
	orr	ip, ip, r10, asl #8
	ldrb	r5, [r3, #8]	@ zero_extendqisi2
	ldrb	r10, [r3, #9]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #8
	orr	lr, lr, r9, asl #16
	ldrb	r7, [r2, #10]	@ zero_extendqisi2
	ldrb	r9, [r3, #14]	@ zero_extendqisi2
	ldrb	fp, [r3, #3]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #8
	orr	r5, r5, r10, asl #8
	ldrb	r8, [r2, #14]	@ zero_extendqisi2
	ldrb	r10, [r3, #6]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #16
	orr	r6, r6, r9, asl #16
	ldrb	r7, [r2, #11]	@ zero_extendqisi2
	ldrb	r9, [r2, #15]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r1, r1, r10, asl #16
	ldrb	r8, [r3, #10]	@ zero_extendqisi2
	ldrb	r10, [r3, #7]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	.loc 6 85 0
	ldr	fp, [sp, #16]
	.loc 6 82 0
	orr	r4, r4, r7, asl #24
	orr	r9, ip, r9, asl #24
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	ldrb	ip, [r3, #11]	@ zero_extendqisi2
	orr	r10, r1, r10, asl #24
	orr	r5, r5, r8, asl #16
	.loc 6 85 0
	add	r1, r3, fp
	.loc 6 82 0
	orr	r6, r6, r7, asl #24
	orr	r5, r5, ip, asl #24
	.loc 6 85 0
	add	ip, r1, fp
	.loc 6 83 0
	ldrb	r7, [r3, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [sp, #616]
	str	lr, [sp, #632]
	str	r9, [sp, #620]
	.loc 6 83 0
	ldrb	lr, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r10, [sp, #636]
	str	r6, [sp, #644]
	str	r5, [sp, #640]
	ldrb	r6, [r2, fp, asl #1]	@ zero_extendqisi2
	ldrb	r10, [ip, #5]	@ zero_extendqisi2
	ldrb	r2, [r3, fp, asl #1]	@ zero_extendqisi2
.LVL3244:
	ldrb	r5, [ip, #4]	@ zero_extendqisi2
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #5]	@ zero_extendqisi2
	ldrb	r8, [r1, #9]	@ zero_extendqisi2
	.loc 6 83 0
	strb	lr, [sp, #624]
.LVL3245:
	.loc 6 82 0
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	lr, [r1, #8]	@ zero_extendqisi2
	orr	r6, r6, r3, asl #8
	orr	r5, r5, r10, asl #8
	ldrb	r3, [r1, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r7, [sp, #648]
	.loc 6 82 0
	orr	r4, r4, r9, asl #8
	ldrb	r7, [ip, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #2]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	orr	r3, r3, r10, asl #8
	ldrb	r8, [ip, #6]	@ zero_extendqisi2
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	r7, [ip, #2]	@ zero_extendqisi2
	ldrb	r9, [r1, #10]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	orr	r4, r4, r10, asl #16
	ldrb	r8, [r1, #14]	@ zero_extendqisi2
	ldrb	r10, [ip, #7]	@ zero_extendqisi2
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	orr	r2, r2, r7, asl #16
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	ldrb	r7, [ip, #3]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	r9, [r1, #7]	@ zero_extendqisi2
	ldrb	r8, [r1, #11]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #24
	orr	r6, r6, fp, asl #24
	orr	r4, r4, r9, asl #24
	orr	lr, lr, r8, asl #24
	orr	r3, r3, r10, asl #24
	.loc 6 83 0
	ldrb	r1, [r1, #16]	@ zero_extendqisi2
.LVL3246:
	.loc 6 82 0
	str	r2, [sp, #680]
	str	r6, [sp, #656]
	str	r5, [sp, #684]
	str	r4, [sp, #660]
	str	lr, [sp, #664]
	str	r3, [sp, #668]
	.loc 6 83 0
	strb	r1, [sp, #672]
.LVL3247:
	.loc 6 82 0
	ldrb	r2, [ip, #8]	@ zero_extendqisi2
	ldrb	r1, [ip, #12]	@ zero_extendqisi2
	ldrb	r5, [ip, #13]	@ zero_extendqisi2
	ldrb	r3, [ip, #9]	@ zero_extendqisi2
	ldrb	r4, [ip, #14]	@ zero_extendqisi2
	ldrb	lr, [ip, #10]	@ zero_extendqisi2
	ldrb	r6, [ip, #15]	@ zero_extendqisi2
	orr	r3, r2, r3, asl #8
	orr	r2, r1, r5, asl #8
	orr	r2, r2, r4, asl #16
	ldrb	r1, [ip, #11]	@ zero_extendqisi2
	orr	r4, r2, r6, asl #24
.LBE4813:
.LBE4812:
	.loc 5 697 0 discriminator 1
	add	r8, sp, #296
	add	r6, sp, #24
	mov	r5, #17
.LBB4816:
.LBB4814:
	.loc 6 82 0
	orr	r3, r3, lr, asl #16
	orr	lr, r3, r1, asl #24
	.loc 6 83 0
	ldrb	ip, [ip, #16]	@ zero_extendqisi2
.LVL3248:
.LBE4814:
.LBE4816:
	.loc 5 697 0
	str	r0, [sp, #20]
	.loc 5 697 0 is_stmt 0 discriminator 1
	mov	r1, r8
	mov	r0, r6
.LVL3249:
	str	r5, [sp]
	mov	r2, #16
	mov	r3, #24
.LBB4817:
.LBB4815:
	.loc 6 82 0 is_stmt 1
	str	lr, [sp, #688]
	str	r4, [sp, #692]
	.loc 6 83 0
	strb	ip, [sp, #696]
.LVL3250:
.LBE4815:
.LBE4817:
	.loc 5 697 0 discriminator 1
	bl	put_mpeg4_qpel16_h_lowpass(PLT)
.LVL3251:
.LBB4818:
.LBB4819:
	.loc 1 104 0
	mov	r3, #16
	mov	ip, #24
	stmia	sp, {r3, ip}
	str	r5, [sp, #8]
	add	r2, r8, #1
	mov	r0, r6
	mov	r1, r6
	bl	put_pixels8_l2_8(PLT)
.LVL3252:
.LBB4820:
.LBB4821:
.LBB4822:
	.loc 1 104 0 is_stmt 0 discriminator 4
	ldrb	r3, [sp, #308]	@ zero_extendqisi2
	ldrb	r5, [sp, #360]	@ zero_extendqisi2
	ldr	r1, [sp, #304]
	ldrb	r9, [sp, #312]	@ zero_extendqisi2
	ldrb	r6, [sp, #336]	@ zero_extendqisi2
.LVL3253:
	mov	r3, r3, asl #24
	orr	r3, r3, r1, lsr #8
	mov	r0, r5, asl #24
	ldr	r1, [sp, #332]
	ldr	r5, [sp, #308]
	ldrb	r7, [sp, #332]	@ zero_extendqisi2
	ldrb	r4, [sp, #380]	@ zero_extendqisi2
	mov	r8, r9, asl #24
	mov	r6, r6, asl #24
	ldr	r10, [sp, #32]
.LVL3254:
	orr	r9, r8, r5, lsr #8
	ldr	fp, [sp, #328]
	ldr	r5, [sp, #356]
	orr	r6, r6, r1, lsr #8
	ldr	r1, [sp, #376]
	ldrb	r2, [sp, #356]	@ zero_extendqisi2
	ldrb	lr, [sp, #384]	@ zero_extendqisi2
	mov	ip, r7, asl #24
	mov	r4, r4, asl #24
	orr	r7, ip, fp, lsr #8
	ldr	r8, [sp, #352]
	ldr	ip, [sp, #380]
	orr	r5, r0, r5, lsr #8
	orr	r4, r4, r1, lsr #8
.LBB4823:
.LBB4824:
	.loc 2 33 0 is_stmt 1
	eor	r0, r3, r10
	orr	r1, r3, r10
	ldr	r3, .L394
.LVL3255:
.LBE4824:
.LBE4823:
	.loc 1 104 0 discriminator 4
	mov	r2, r2, asl #24
	mov	lr, lr, asl #24
	orr	r2, r2, r8, lsr #8
	orr	lr, lr, ip, lsr #8
	ldr	r8, [sp, #36]
.LVL3256:
	ldr	ip, [sp, #48]
.LBB4865:
.LBB4825:
	.loc 2 33 0
	and	r10, r0, r3
.LVL3257:
	sub	r10, r1, r10, lsr #1
.LBE4825:
.LBE4865:
	.loc 1 104 0 discriminator 4
	str	r10, [sp, #32]
.LVL3258:
.LBB4866:
.LBB4867:
	.loc 2 33 0
	eor	r10, r9, r8
	orr	r8, r9, r8
.LVL3259:
.LBE4867:
.LBE4866:
.LBB4904:
.LBB4826:
	eor	r9, r7, ip
.LVL3260:
	and	r9, r9, r3
	orr	ip, r7, ip
	sub	r9, ip, r9, lsr #1
.LBE4826:
.LBE4904:
.LBB4905:
.LBB4868:
	ldr	ip, [sp, #52]
	ldr	r7, [sp, #52]
	and	r10, r10, r3
.LBE4868:
.LBE4905:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #64]
	ldr	r0, [sp, #68]
	ldr	r1, [sp, #80]
.LBB4906:
.LBB4869:
	.loc 2 33 0
	sub	r10, r8, r10, lsr #1
	eor	ip, r6, ip
.LBE4869:
.LBE4906:
	.loc 1 104 0 discriminator 4
	ldr	r8, [sp, #84]
.LBB4907:
.LBB4870:
	.loc 2 33 0
	orr	r6, r6, r7
	and	ip, ip, r3
.LBE4870:
.LBE4907:
	.loc 1 104 0 discriminator 4
	str	r10, [sp, #36]
.LVL3261:
.LBB4908:
.LBB4871:
	.loc 2 33 0
	sub	ip, r6, ip, lsr #1
	eor	r7, r5, r0
.LVL3262:
.LBE4871:
.LBE4908:
.LBB4909:
.LBB4827:
	eor	r6, r2, fp
	eor	r10, r4, r1
	orr	r1, r4, r1
.LBE4827:
.LBE4909:
.LBB4910:
.LBB4872:
	eor	r4, lr, r8
.LBE4872:
.LBE4910:
.LBB4911:
.LBB4828:
	and	r6, r6, r3
.LBE4828:
.LBE4911:
.LBB4912:
.LBB4873:
	and	r7, r7, r3
.LBE4873:
.LBE4912:
.LBB4913:
.LBB4829:
	and	r10, r10, r3
.LBE4829:
.LBE4913:
.LBB4914:
.LBB4874:
	and	r4, r4, r3
.LBE4874:
.LBE4914:
.LBB4915:
.LBB4830:
	orr	r2, r2, fp
.LBE4830:
.LBE4915:
.LBB4916:
.LBB4875:
	orr	r0, r5, r0
	orr	lr, lr, r8
.LBE4875:
.LBE4916:
.LBB4917:
.LBB4831:
	sub	r2, r2, r6, lsr #1
.LBE4831:
.LBE4917:
.LBB4918:
.LBB4876:
	sub	r0, r0, r7, lsr #1
.LBE4876:
.LBE4918:
.LBB4919:
.LBB4832:
	sub	r1, r1, r10, lsr #1
.LBE4832:
.LBE4919:
.LBB4920:
.LBB4877:
	sub	lr, lr, r4, lsr #1
.LBE4877:
.LBE4920:
	.loc 1 104 0 discriminator 4
	str	r9, [sp, #48]
	str	ip, [sp, #52]
.LVL3263:
	str	r2, [sp, #64]
	str	r0, [sp, #68]
.LVL3264:
	str	r1, [sp, #80]
	str	lr, [sp, #84]
.LVL3265:
	ldr	r10, [sp, #96]
.LVL3266:
	ldrb	r5, [sp, #456]	@ zero_extendqisi2
	ldrb	r1, [sp, #404]	@ zero_extendqisi2
	mov	r0, r5, asl #24
	ldr	r5, [sp, #400]
	ldrb	r6, [sp, #432]	@ zero_extendqisi2
	mov	r1, r1, asl #24
	orr	fp, r1, r5, lsr #8
.LVL3267:
	ldrb	r9, [sp, #408]	@ zero_extendqisi2
	ldr	r5, [sp, #428]
	ldr	r1, [sp, #404]
	mov	r6, r6, asl #24
	ldrb	r2, [sp, #452]	@ zero_extendqisi2
	orr	r6, r6, r5, lsr #8
	mov	r8, r9, asl #24
.LVL3268:
	ldr	r5, [sp, #452]
	orr	r9, r8, r1, lsr #8
	ldrb	r7, [sp, #428]	@ zero_extendqisi2
	ldr	r1, [sp, #448]
	ldrb	lr, [sp, #480]	@ zero_extendqisi2
	orr	r5, r0, r5, lsr #8
	ldrb	r4, [sp, #476]	@ zero_extendqisi2
	ldr	r0, [sp, #476]
	mov	r2, r2, asl #24
	mov	ip, r7, asl #24
	orr	r2, r2, r1, lsr #8
	ldr	r7, [sp, #424]
	ldr	r1, [sp, #472]
	mov	lr, lr, asl #24
	orr	lr, lr, r0, lsr #8
	mov	r4, r4, asl #24
.LBB4921:
.LBB4833:
	.loc 2 33 0
	eor	r0, fp, r10
.LBE4833:
.LBE4921:
	.loc 1 104 0 discriminator 4
	ldr	r8, [sp, #100]
.LVL3269:
	orr	r7, ip, r7, lsr #8
	orr	r4, r4, r1, lsr #8
	ldr	ip, [sp, #112]
.LBB4922:
.LBB4834:
	.loc 2 33 0
	and	r0, r0, r3
	orr	r1, fp, r10
	sub	r10, r1, r0, lsr #1
.LVL3270:
.LBE4834:
.LBE4922:
	.loc 1 104 0 discriminator 4
	str	r10, [sp, #96]
.LVL3271:
.LBB4923:
.LBB4878:
	.loc 2 33 0
	eor	r10, r9, r8
	orr	r8, r9, r8
.LVL3272:
.LBE4878:
.LBE4923:
.LBB4924:
.LBB4835:
	eor	r9, r7, ip
.LVL3273:
	and	r9, r9, r3
	orr	ip, r7, ip
	sub	r9, ip, r9, lsr #1
.LBE4835:
.LBE4924:
.LBB4925:
.LBB4879:
	ldr	ip, [sp, #116]
	ldr	r7, [sp, #116]
	and	r10, r10, r3
.LBE4879:
.LBE4925:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #128]
.LVL3274:
	ldr	r0, [sp, #132]
	ldr	r1, [sp, #144]
.LBB4926:
.LBB4880:
	.loc 2 33 0
	sub	r10, r8, r10, lsr #1
	eor	ip, r6, ip
.LBE4880:
.LBE4926:
	.loc 1 104 0 discriminator 4
	ldr	r8, [sp, #148]
.LBB4927:
.LBB4881:
	.loc 2 33 0
	orr	r6, r6, r7
	and	ip, ip, r3
.LBE4881:
.LBE4927:
	.loc 1 104 0 discriminator 4
	str	r10, [sp, #100]
.LVL3275:
.LBB4928:
.LBB4882:
	.loc 2 33 0
	sub	ip, r6, ip, lsr #1
	eor	r7, r5, r0
.LVL3276:
.LBE4882:
.LBE4928:
.LBB4929:
.LBB4836:
	eor	r6, r2, fp
	eor	r10, r4, r1
	orr	r1, r4, r1
.LBE4836:
.LBE4929:
.LBB4930:
.LBB4883:
	eor	r4, lr, r8
.LBE4883:
.LBE4930:
.LBB4931:
.LBB4837:
	and	r6, r6, r3
.LBE4837:
.LBE4931:
.LBB4932:
.LBB4884:
	and	r7, r7, r3
.LBE4884:
.LBE4932:
.LBB4933:
.LBB4838:
	and	r10, r10, r3
.LBE4838:
.LBE4933:
.LBB4934:
.LBB4885:
	and	r4, r4, r3
.LBE4885:
.LBE4934:
.LBB4935:
.LBB4839:
	orr	r2, r2, fp
.LBE4839:
.LBE4935:
.LBB4936:
.LBB4886:
	orr	r0, r5, r0
	orr	lr, lr, r8
.LBE4886:
.LBE4936:
.LBB4937:
.LBB4840:
	sub	r2, r2, r6, lsr #1
.LBE4840:
.LBE4937:
.LBB4938:
.LBB4887:
	sub	r0, r0, r7, lsr #1
.LBE4887:
.LBE4938:
.LBB4939:
.LBB4841:
	sub	r1, r1, r10, lsr #1
.LBE4841:
.LBE4939:
.LBB4940:
.LBB4888:
	sub	lr, lr, r4, lsr #1
.LBE4888:
.LBE4940:
	.loc 1 104 0 discriminator 4
	str	r9, [sp, #112]
	str	ip, [sp, #116]
.LVL3277:
	str	r2, [sp, #128]
	str	r0, [sp, #132]
.LVL3278:
	str	r1, [sp, #144]
	str	lr, [sp, #148]
.LVL3279:
	ldr	r8, [sp, #160]
.LVL3280:
	ldrb	fp, [sp, #504]	@ zero_extendqisi2
	ldrb	r9, [sp, #524]	@ zero_extendqisi2
	mov	r1, fp, asl #24
	ldr	fp, [sp, #500]
	ldrb	ip, [sp, #500]	@ zero_extendqisi2
	orr	fp, r1, fp, lsr #8
	ldr	r1, [sp, #520]
	ldrb	r7, [sp, #528]	@ zero_extendqisi2
	mov	r9, r9, asl #24
	ldr	r10, [sp, #496]
	orr	r9, r9, r1, lsr #8
	ldr	r1, [sp, #524]
	ldrb	r6, [sp, #548]	@ zero_extendqisi2
	mov	r0, ip, asl #24
	mov	r7, r7, asl #24
	orr	r7, r7, r1, lsr #8
	orr	ip, r0, r10, lsr #8
.LVL3281:
	ldr	r1, [sp, #544]
.LBB4941:
.LBB4842:
	.loc 2 33 0
	eor	r0, ip, r8
.LBE4842:
.LBE4941:
	.loc 1 104 0 discriminator 4
	ldrb	r2, [sp, #552]	@ zero_extendqisi2
	ldrb	r4, [sp, #576]	@ zero_extendqisi2
	mov	r6, r6, asl #24
.LBB4942:
.LBB4843:
	.loc 2 33 0
	and	r10, r0, r3
.LBE4843:
.LBE4942:
	.loc 1 104 0 discriminator 4
	orr	r6, r6, r1, lsr #8
	ldr	r0, [sp, #548]
	ldr	r1, [sp, #572]
	ldrb	r5, [sp, #572]	@ zero_extendqisi2
	mov	r2, r2, asl #24
	mov	r4, r4, asl #24
	orr	r4, r4, r1, lsr #8
	ldrb	lr, [sp, #596]	@ zero_extendqisi2
	ldr	r1, [sp, #164]
.LVL3282:
	orr	r2, r2, r0, lsr #8
	ldr	r0, [sp, #568]
.LBB4943:
.LBB4844:
	.loc 2 33 0
	orr	ip, ip, r8
.LVL3283:
.LBE4844:
.LBE4943:
	.loc 1 104 0 discriminator 4
	mov	r5, r5, asl #24
	ldr	r8, [sp, #592]
.LVL3284:
	orr	r5, r5, r0, lsr #8
	mov	lr, lr, asl #24
.LBB4944:
.LBB4845:
	.loc 2 33 0
	sub	r0, ip, r10, lsr #1
.LBE4845:
.LBE4944:
.LBB4945:
.LBB4889:
	eor	r10, fp, r1
.LBE4889:
.LBE4945:
	.loc 1 104 0 discriminator 4
	orr	lr, lr, r8, lsr #8
	str	r0, [sp, #160]
.LVL3285:
	ldr	r8, [sp, #176]
.LBB4946:
.LBB4890:
	.loc 2 33 0
	and	r0, r10, r3
	orr	r1, fp, r1
.LVL3286:
	sub	r10, r1, r0, lsr #1
.LBE4890:
.LBE4946:
	.loc 1 104 0 discriminator 4
	ldr	ip, [sp, #180]
	str	r10, [sp, #164]
.LVL3287:
.LBB4947:
.LBB4846:
	.loc 2 33 0
	eor	r10, r9, r8
	and	r10, r10, r3
	orr	r8, r9, r8
.LVL3288:
	sub	r10, r8, r10, lsr #1
.LBE4846:
.LBE4947:
.LBB4948:
.LBB4891:
	eor	r8, r7, ip
	and	r8, r8, r3
	orr	ip, r7, ip
.LVL3289:
	sub	r8, ip, r8, lsr #1
.LBE4891:
.LBE4948:
.LBB4949:
.LBB4847:
	ldr	ip, [sp, #192]
	ldr	r7, [sp, #192]
.LVL3290:
	eor	ip, r6, ip
.LBE4847:
.LBE4949:
	.loc 1 104 0 discriminator 4
	ldr	r1, [sp, #212]
.LBB4950:
.LBB4848:
	.loc 2 33 0
	orr	r6, r6, r7
	and	ip, ip, r3
.LBE4848:
.LBE4950:
	.loc 1 104 0 discriminator 4
	ldr	r0, [sp, #208]
.LBB4951:
.LBB4892:
	.loc 2 33 0
	ldr	r7, [sp, #196]
.LBE4892:
.LBE4951:
.LBB4952:
.LBB4849:
	sub	ip, r6, ip, lsr #1
.LBE4849:
.LBE4952:
.LBB4953:
.LBB4893:
	ldr	r6, [sp, #196]
	eor	r9, r4, r1
.LVL3291:
	and	r9, r9, r3
	eor	r6, r2, r6
	orr	r1, r4, r1
	orr	r2, r2, r7
.LBE4893:
.LBE4953:
.LBB4954:
.LBB4850:
	eor	r7, r5, r0
.LBE4850:
.LBE4954:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #224]
	str	r10, [sp, #176]
.LVL3292:
.LBB4955:
.LBB4851:
	.loc 2 33 0
	and	r7, r7, r3
.LBE4851:
.LBE4955:
.LBB4956:
.LBB4894:
	sub	r1, r1, r9, lsr #1
.LBE4894:
.LBE4956:
	.loc 1 104 0 discriminator 4
	str	r8, [sp, #180]
.LVL3293:
.LBB4957:
.LBB4852:
	.loc 2 33 0
	orr	r0, r5, r0
.LBE4852:
.LBE4957:
	.loc 1 104 0 discriminator 4
	str	ip, [sp, #192]
	ldrb	r5, [sp, #668]	@ zero_extendqisi2
.LBB4958:
.LBB4853:
	.loc 2 33 0
	sub	r0, r0, r7, lsr #1
.LBE4853:
.LBE4958:
	.loc 1 104 0 discriminator 4
	str	r1, [sp, #212]
	ldrb	r1, [sp, #600]	@ zero_extendqisi2
.LBB4959:
.LBB4895:
	.loc 2 33 0
	and	r6, r6, r3
.LBE4895:
.LBE4959:
	.loc 1 104 0 discriminator 4
	str	r0, [sp, #208]
	mov	r0, r5, asl #24
	ldr	r5, [sp, #596]
.LBB4960:
.LBB4896:
	.loc 2 33 0
	sub	r2, r2, r6, lsr #1
.LBE4896:
.LBE4960:
	.loc 1 104 0 discriminator 4
	mov	r1, r1, asl #24
	ldrb	r6, [sp, #644]	@ zero_extendqisi2
	ldrb	r9, [sp, #620]	@ zero_extendqisi2
.LBB4961:
.LBB4854:
	.loc 2 33 0
	eor	r10, lr, fp
	orr	lr, lr, fp
.LBE4854:
.LBE4961:
	.loc 1 104 0 discriminator 4
	orr	fp, r1, r5, lsr #8
	ldr	r5, [sp, #640]
	ldr	r1, [sp, #616]
.LBB4962:
.LBB4855:
	.loc 2 33 0
	and	r10, r10, r3
.LVL3294:
.LBE4855:
.LBE4962:
	.loc 1 104 0 discriminator 4
	mov	r6, r6, asl #24
.LBB4963:
.LBB4856:
	.loc 2 33 0
	sub	lr, lr, r10, lsr #1
.LBE4856:
.LBE4963:
	.loc 1 104 0 discriminator 4
	str	r2, [sp, #196]
.LVL3295:
	orr	r6, r6, r5, lsr #8
	ldrb	r2, [sp, #648]	@ zero_extendqisi2
	ldr	r5, [sp, #664]
	mov	r8, r9, asl #24
	orr	r9, r8, r1, lsr #8
	ldrb	r7, [sp, #624]	@ zero_extendqisi2
	ldr	r1, [sp, #644]
	str	lr, [sp, #224]
	ldrb	lr, [sp, #692]	@ zero_extendqisi2
	ldr	r10, [sp, #228]
.LVL3296:
	orr	r5, r0, r5, lsr #8
	ldrb	r4, [sp, #672]	@ zero_extendqisi2
	ldr	r0, [sp, #688]
	mov	r2, r2, asl #24
	mov	ip, r7, asl #24
	orr	r2, r2, r1, lsr #8
	ldr	r7, [sp, #620]
	ldr	r1, [sp, #668]
	mov	lr, lr, asl #24
	orr	lr, lr, r0, lsr #8
	mov	r4, r4, asl #24
.LBB4964:
.LBB4897:
	.loc 2 33 0
	eor	r0, fp, r10
.LBE4897:
.LBE4964:
	.loc 1 104 0 discriminator 4
	ldr	r8, [sp, #240]
	orr	r7, ip, r7, lsr #8
	orr	r4, r4, r1, lsr #8
	ldr	ip, [sp, #244]
.LBB4965:
.LBB4898:
	.loc 2 33 0
	and	r0, r0, r3
	orr	r1, fp, r10
	sub	r10, r1, r0, lsr #1
.LVL3297:
.LBE4898:
.LBE4965:
	.loc 1 104 0 discriminator 4
	str	r10, [sp, #228]
.LVL3298:
.LBB4966:
.LBB4857:
	.loc 2 33 0
	eor	r10, r9, r8
	orr	r8, r9, r8
.LVL3299:
.LBE4857:
.LBE4966:
.LBB4967:
.LBB4899:
	eor	r9, r7, ip
.LVL3300:
	and	r9, r9, r3
	orr	ip, r7, ip
.LVL3301:
	sub	r9, ip, r9, lsr #1
.LBE4899:
.LBE4967:
.LBB4968:
.LBB4858:
	ldr	ip, [sp, #256]
	ldr	r7, [sp, #256]
.LVL3302:
.LBE4858:
.LBE4968:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #260]
	ldr	r1, [sp, #276]
.LBB4969:
.LBB4859:
	.loc 2 33 0
	and	r10, r10, r3
	eor	ip, r6, ip
	sub	r10, r8, r10, lsr #1
	orr	r6, r6, r7
	and	ip, ip, r3
.LBE4859:
.LBE4969:
	.loc 1 104 0 discriminator 4
	str	r10, [sp, #240]
.LVL3303:
.LBB4970:
.LBB4860:
	.loc 2 33 0
	sub	ip, r6, ip, lsr #1
.LBE4860:
.LBE4970:
.LBB4971:
.LBB4900:
	eor	r10, r4, r1
	eor	r6, r2, fp
	and	r6, r6, r3
	and	r10, r10, r3
	orr	r2, r2, fp
	orr	r1, r4, r1
	sub	r2, r2, r6, lsr #1
	sub	r1, r1, r10, lsr #1
.LBE4900:
.LBE4971:
	.loc 1 104 0 discriminator 4
	ldr	r0, [sp, #272]
	ldr	r8, [sp, #288]
	str	ip, [sp, #256]
	str	r9, [sp, #244]
.LVL3304:
	str	r2, [sp, #260]
	str	r1, [sp, #276]
	ldrb	r1, [sp, #696]	@ zero_extendqisi2
	ldr	ip, [sp, #692]
	ldr	r2, [sp, #292]
	mov	r1, r1, asl #24
.LBB4972:
.LBB4861:
	.loc 2 33 0
	eor	r7, r5, r0
.LBE4861:
.LBE4972:
	.loc 1 104 0 discriminator 4
	orr	r1, r1, ip, lsr #8
.LBB4973:
.LBB4901:
	.loc 2 33 0
	eor	ip, r1, r2
.LBE4901:
.LBE4973:
.LBB4974:
.LBB4862:
	and	r7, r7, r3
	eor	r4, lr, r8
	orr	r0, r5, r0
	and	r4, r4, r3
.LVL3305:
	sub	r0, r0, r7, lsr #1
.LBE4862:
.LBE4974:
.LBB4975:
.LBB4902:
	and	r3, r3, ip
	orr	r1, r1, r2
.LVL3306:
.LBE4902:
.LBE4975:
.LBB4976:
.LBB4863:
	orr	lr, lr, r8
.LVL3307:
.LBE4863:
.LBE4976:
.LBB4977:
.LBB4903:
	sub	r3, r1, r3, lsr #1
.LBE4903:
.LBE4977:
.LBB4978:
.LBB4864:
	sub	lr, lr, r4, lsr #1
.LBE4864:
.LBE4978:
	.loc 1 104 0 discriminator 4
	str	r0, [sp, #272]
.LBE4822:
.LBE4821:
.LBE4820:
.LBE4819:
.LBE4818:
	.loc 5 697 0 discriminator 3
	ldr	r2, [sp, #16]
.LVL3308:
	ldr	r0, [sp, #20]
	add	r1, sp, #24
.LVL3309:
.LBB4983:
.LBB4982:
.LBB4981:
.LBB4980:
.LBB4979:
	.loc 1 104 0 discriminator 4
	str	lr, [sp, #288]
	str	r3, [sp, #292]
.LVL3310:
.LBE4979:
.LBE4980:
.LBE4981:
.LBE4982:
.LBE4983:
	.loc 5 697 0 discriminator 3
	bl	avg_mpeg4_qpel16_v_lowpass.constprop.1(PLT)
.LVL3311:
	.loc 5 697 0 is_stmt 0
	add	sp, sp, #708
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3312:
.L395:
	.align	2
.L394:
	.word	-16843010
	.cfi_endproc
.LFE238:
	.size	avg_qpel16_mc32_c, .-avg_qpel16_mc32_c
	.align	2
	.type	put_qpel16_mc32_c, %function
put_qpel16_mc32_c:
.LFB146:
	.loc 5 695 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 688
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3313:
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
	sub	sp, sp, #708
	.cfi_def_cfa_offset 744
.LVL3314:
.LBB4995:
.LBB4996:
	.loc 6 85 0
	add	r4, r1, r2
	.loc 6 82 0
	str	r2, [sp, #16]
	ldrb	r3, [r1, r2]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r2, [r1]	@ zero_extendqisi2
.LVL3315:
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	ldrb	r6, [r1, #4]	@ zero_extendqisi2
	orr	r7, r2, r7, asl #8
	orr	r6, r6, r10, asl #8
	ldrb	r2, [r4, #4]	@ zero_extendqisi2
	ldrb	r10, [r4, #5]	@ zero_extendqisi2
	ldrb	r9, [r1, #9]	@ zero_extendqisi2
	ldrb	r8, [r1, #13]	@ zero_extendqisi2
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
	ldrb	ip, [r1, #12]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #8
	ldrb	r10, [r1, #10]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #8
	orr	ip, ip, r8, asl #8
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	lr, [r4, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #2]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #16
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #16
	ldrb	r8, [r4, #6]	@ zero_extendqisi2
	orr	r6, r6, r10, asl #24
	orr	r3, r3, lr, asl #8
	ldrb	r10, [r4, #7]	@ zero_extendqisi2
	ldrb	lr, [r4, #2]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #16
	ldrb	r9, [r1, #14]	@ zero_extendqisi2
	orr	r2, r2, r8, asl #16
	orr	r3, r3, lr, asl #16
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	lr, [r4, #3]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #16
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #24
	.loc 6 85 0
	ldr	r10, [sp, #16]
	.loc 6 82 0
	orr	lr, r3, lr, asl #24
	orr	r7, r7, fp, asl #24
	add	r3, sp, #304
	orr	r5, r5, r9, asl #24
	orr	r8, ip, r8, asl #24
	.loc 6 85 0
	add	ip, r4, r10
	.loc 6 83 0
	ldrb	r9, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	stmia	r3, {r5, r8}
	str	lr, [r3, #16]
	str	r7, [r3, #-8]
	str	r6, [r3, #-4]
	str	r2, [r3, #20]
	ldrb	r2, [r1, r10, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r4, #13]	@ zero_extendqisi2
	ldrb	r1, [r4, #12]	@ zero_extendqisi2
.LVL3316:
	ldrb	r10, [ip, #5]	@ zero_extendqisi2
	ldrb	r7, [ip, #4]	@ zero_extendqisi2
	ldrb	r5, [ip, #1]	@ zero_extendqisi2
	orr	r8, r1, r8, asl #8
	orr	r7, r7, r10, asl #8
	ldrb	r1, [ip, #12]	@ zero_extendqisi2
	ldrb	r10, [ip, #13]	@ zero_extendqisi2
	ldrb	r6, [ip, #8]	@ zero_extendqisi2
	orr	r2, r2, r5, asl #8
	ldrb	r5, [ip, #9]	@ zero_extendqisi2
	ldrb	lr, [r4, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #312]
.LVL3317:
	.loc 6 82 0
	orr	r1, r1, r10, asl #8
	ldrb	r9, [r4, #9]	@ zero_extendqisi2
	ldrb	r10, [ip, #6]	@ zero_extendqisi2
	ldrb	fp, [r4, #14]	@ zero_extendqisi2
	orr	r6, r6, r5, asl #8
	ldrb	r5, [ip, #2]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #8
	orr	r7, r7, r10, asl #16
	ldrb	r9, [r4, #10]	@ zero_extendqisi2
	ldrb	r10, [ip, #14]	@ zero_extendqisi2
	orr	r2, r2, r5, asl #16
	orr	r8, r8, fp, asl #16
	ldrb	r5, [ip, #10]	@ zero_extendqisi2
	ldrb	fp, [ip, #7]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #16
	orr	r1, r1, r10, asl #16
	ldrb	r9, [r4, #11]	@ zero_extendqisi2
	ldrb	r10, [r4, #15]	@ zero_extendqisi2
	orr	r7, r7, fp, asl #24
	orr	r6, r6, r5, asl #16
	.loc 6 85 0
	ldr	fp, [sp, #16]
	.loc 6 82 0
	ldrb	r5, [ip, #3]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #24
	orr	r8, r8, r10, asl #24
	ldrb	r9, [ip, #11]	@ zero_extendqisi2
	ldrb	r10, [ip, #15]	@ zero_extendqisi2
	orr	r5, r2, r5, asl #24
	.loc 6 85 0
	add	r2, ip, fp
	.loc 6 82 0
	orr	r6, r6, r9, asl #24
	orr	r1, r1, r10, asl #24
	str	lr, [r3, #24]
	.loc 6 85 0
	add	lr, r2, fp
	.loc 6 83 0
	ldrb	r10, [ip, #16]	@ zero_extendqisi2
	ldrb	r9, [r4, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r5, [r3, #40]
	str	r8, [r3, #28]
	str	r7, [r3, #44]
	str	r6, [r3, #48]
	str	r1, [r3, #52]
	ldrb	r7, [ip, fp, asl #1]	@ zero_extendqisi2
	ldrb	r8, [lr, #1]	@ zero_extendqisi2
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r10, [sp, #360]
	strb	r9, [sp, #336]
.LVL3318:
	.loc 6 82 0
	ldrb	r10, [r4, fp, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r2, #9]	@ zero_extendqisi2
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	ldrb	r4, [r2, #12]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	ldrb	r8, [r2, #13]	@ zero_extendqisi2
	orr	r6, r1, r6, asl #8
	orr	r5, r5, r9, asl #8
	ldrb	r1, [lr, #4]	@ zero_extendqisi2
	ldrb	r9, [lr, #5]	@ zero_extendqisi2
	orr	r4, r4, r8, asl #8
	ldrb	r8, [lr, #2]	@ zero_extendqisi2
	ldrb	ip, [r2, #1]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r9, [r2, #6]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	orr	ip, r10, ip, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	r10, [r2, #2]	@ zero_extendqisi2
	ldrb	r9, [r2, #14]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	ldrb	r8, [lr, #6]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #16
	orr	r1, r1, r8, asl #16
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #16
	ldrb	r9, [lr, #3]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #24
	orr	r7, r7, r9, asl #24
	ldrb	r10, [r2, #11]	@ zero_extendqisi2
	ldrb	r9, [r2, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [lr, #7]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	orr	r4, r4, r9, asl #24
	orr	r8, r1, r8, asl #24
	.loc 6 85 0
	add	r1, lr, fp
	.loc 6 83 0
	ldrb	r9, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	ip, [r3, #64]
	str	r7, [r3, #88]
	str	r6, [r3, #68]
	str	r4, [r3, #76]
	str	r8, [r3, #92]
	str	r5, [r3, #72]
	ldrb	r5, [lr, #8]	@ zero_extendqisi2
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	ldrb	r2, [r2, fp, asl #1]	@ zero_extendqisi2
.LVL3319:
	ldrb	ip, [lr, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r8, [lr, #13]	@ zero_extendqisi2
	ldrb	r7, [r1, #4]	@ zero_extendqisi2
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #8
	ldrb	r4, [r1, #9]	@ zero_extendqisi2
	orr	r8, ip, r8, asl #8
	orr	r7, r7, r10, asl #8
	ldrb	ip, [r1, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #384]
.LVL3320:
	.loc 6 82 0
	orr	r6, r6, r4, asl #8
	ldrb	r9, [lr, #9]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #8
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #16
	orr	r5, r5, r9, asl #8
	ldrb	r4, [r1, #10]	@ zero_extendqisi2
	ldrb	r9, [lr, #10]	@ zero_extendqisi2
	orr	r7, r7, r10, asl #16
	ldrb	r10, [r1, #14]	@ zero_extendqisi2
	ldrb	fp, [lr, #14]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	orr	r6, r6, r4, asl #16
	ldrb	r9, [lr, #11]	@ zero_extendqisi2
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #16
	ldrb	r10, [lr, #15]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	orr	r4, r2, r4, asl #24
	orr	r8, r8, fp, asl #16
	.loc 6 85 0
	ldr	r2, [sp, #16]
	.loc 6 82 0
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #24
	str	r5, [r3, #96]
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	.loc 6 85 0
	ldr	r5, [sp, #16]
	add	r2, r1, r2
	.loc 6 82 0
	orr	r7, r7, fp, asl #24
	orr	r6, r6, r9, asl #24
	orr	r10, ip, r10, asl #24
	.loc 6 85 0
	add	ip, r2, r5
	.loc 6 83 0
	ldrb	fp, [r1, #16]	@ zero_extendqisi2
	ldrb	r9, [lr, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [r3, #112]
	str	r8, [r3, #100]
	str	r7, [r3, #116]
	str	r6, [r3, #120]
	ldrb	r7, [r1, r5, asl #1]	@ zero_extendqisi2
	ldrb	r8, [ip, #1]	@ zero_extendqisi2
	str	r10, [r3, #124]
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	.loc 6 83 0
	strb	fp, [sp, #432]
	strb	r9, [sp, #408]
.LVL3321:
	.loc 6 82 0
	mov	fp, r5
	ldrb	r9, [r2, #9]	@ zero_extendqisi2
	ldrb	lr, [lr, r5, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	ldrb	r4, [r2, #12]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	ldrb	r8, [r2, #13]	@ zero_extendqisi2
	orr	r6, r1, r6, asl #8
	orr	r5, r5, r9, asl #8
	ldrb	r1, [ip, #4]	@ zero_extendqisi2
	ldrb	r9, [ip, #5]	@ zero_extendqisi2
	orr	r4, r4, r8, asl #8
	ldrb	r8, [ip, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #1]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r9, [r2, #6]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	r10, [r2, #2]	@ zero_extendqisi2
	ldrb	r9, [r2, #14]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	ldrb	r8, [ip, #6]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	orr	r1, r1, r8, asl #16
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #16
	ldrb	r9, [ip, #3]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #24
	orr	r7, r7, r9, asl #24
	ldrb	r10, [r2, #11]	@ zero_extendqisi2
	ldrb	r9, [r2, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [ip, #7]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	orr	r4, r4, r9, asl #24
	orr	r8, r1, r8, asl #24
	.loc 6 85 0
	add	r1, ip, fp
	.loc 6 83 0
	ldrb	r9, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	lr, [r3, #136]
	str	r7, [r3, #160]
	str	r6, [r3, #140]
	str	r5, [r3, #144]
	str	r4, [r3, #148]
	str	r8, [r3, #164]
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	ldrb	r2, [r2, fp, asl #1]	@ zero_extendqisi2
.LVL3322:
	ldrb	lr, [ip, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r8, [ip, #13]	@ zero_extendqisi2
	ldrb	r7, [r1, #4]	@ zero_extendqisi2
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #8
	ldrb	r4, [r1, #9]	@ zero_extendqisi2
	orr	r8, lr, r8, asl #8
	orr	r7, r7, r10, asl #8
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	ldrb	r5, [ip, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #456]
.LVL3323:
	.loc 6 82 0
	orr	r6, r6, r4, asl #8
	ldrb	r9, [ip, #9]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #8
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #16
	orr	r5, r5, r9, asl #8
	ldrb	r4, [r1, #10]	@ zero_extendqisi2
	ldrb	r9, [ip, #10]	@ zero_extendqisi2
	orr	r7, r7, r10, asl #16
	ldrb	r10, [r1, #14]	@ zero_extendqisi2
	ldrb	fp, [ip, #14]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	orr	r6, r6, r4, asl #16
	ldrb	r9, [ip, #11]	@ zero_extendqisi2
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	ldrb	r10, [ip, #15]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	orr	r4, r2, r4, asl #24
	orr	r8, r8, fp, asl #16
	.loc 6 85 0
	ldr	r2, [sp, #16]
	.loc 6 82 0
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #24
	str	r5, [r3, #168]
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	.loc 6 85 0
	ldr	r5, [sp, #16]
	add	r2, r1, r2
	.loc 6 82 0
	orr	r7, r7, fp, asl #24
	orr	r6, r6, r9, asl #24
	orr	r10, lr, r10, asl #24
	.loc 6 83 0
	ldrb	r9, [ip, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	lr, r2, r5
	.loc 6 83 0
	ldrb	fp, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [r3, #184]
	str	r8, [r3, #172]
	str	r7, [r3, #188]
	str	r6, [r3, #192]
	ldrb	r8, [r1, r5, asl #1]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #480]
.LVL3324:
	.loc 6 82 0
	ldrb	r9, [lr, #1]	@ zero_extendqisi2
	str	r10, [r3, #196]
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	ldrb	r10, [r2, #9]	@ zero_extendqisi2
	.loc 6 83 0
	strb	fp, [sp, #504]
	.loc 6 82 0
	ldrb	ip, [ip, r5, asl #1]	@ zero_extendqisi2
	mov	fp, r5
	ldrb	r7, [r2, #5]	@ zero_extendqisi2
	ldrb	r6, [r2, #8]	@ zero_extendqisi2
	ldrb	r5, [r2, #12]	@ zero_extendqisi2
	orr	r8, r8, r9, asl #8
	ldrb	r9, [r2, #13]	@ zero_extendqisi2
	orr	r7, r1, r7, asl #8
	orr	r6, r6, r10, asl #8
	ldrb	r1, [lr, #4]	@ zero_extendqisi2
	ldrb	r10, [lr, #5]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #8
	ldrb	r9, [lr, #2]	@ zero_extendqisi2
	ldrb	r4, [r2, #1]	@ zero_extendqisi2
	orr	r1, r1, r10, asl #8
	orr	r8, r8, r9, asl #16
	ldrb	r10, [r2, #6]	@ zero_extendqisi2
	ldrb	r9, [r2, #10]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #8
	orr	r7, r7, r10, asl #16
	ldrb	r4, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #14]	@ zero_extendqisi2
	orr	r6, r6, r9, asl #16
	ldrb	r9, [lr, #6]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #16
	orr	r5, r5, r10, asl #16
	ldrb	r4, [r2, #3]	@ zero_extendqisi2
	ldrb	r10, [lr, #3]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #16
	ldrb	r9, [r2, #7]	@ zero_extendqisi2
	orr	r4, ip, r4, asl #24
	orr	r8, r8, r10, asl #24
	ldrb	ip, [r2, #11]	@ zero_extendqisi2
	ldrb	r10, [r2, #15]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #24
	ldrb	r9, [lr, #7]	@ zero_extendqisi2
	orr	r6, r6, ip, asl #24
	orr	r5, r5, r10, asl #24
	.loc 6 85 0
	add	ip, lr, fp
	.loc 6 82 0
	orr	r1, r1, r9, asl #24
	str	r4, [r3, #208]
	.loc 6 83 0
	ldrb	r9, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r8, [r3, #232]
	str	r7, [r3, #212]
	str	r6, [r3, #216]
	str	r5, [r3, #220]
	str	r1, [r3, #236]
	ldrb	r1, [r2, fp, asl #1]	@ zero_extendqisi2
	ldrb	r6, [lr, #12]	@ zero_extendqisi2
	ldrb	r10, [ip, #5]	@ zero_extendqisi2
	ldrb	r8, [lr, #13]	@ zero_extendqisi2
	ldrb	r2, [ip, #4]	@ zero_extendqisi2
.LVL3325:
	ldrb	r4, [ip, #1]	@ zero_extendqisi2
	orr	r8, r6, r8, asl #8
	orr	r2, r2, r10, asl #8
	ldrb	r6, [ip, #12]	@ zero_extendqisi2
	ldrb	r10, [ip, #13]	@ zero_extendqisi2
	ldrb	r5, [lr, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #528]
.LVL3326:
	.loc 6 82 0
	ldrb	r7, [ip, #8]	@ zero_extendqisi2
	ldrb	r9, [lr, #9]	@ zero_extendqisi2
	orr	r1, r1, r4, asl #8
	orr	r6, r6, r10, asl #8
	ldrb	r4, [ip, #9]	@ zero_extendqisi2
	ldrb	r10, [ip, #6]	@ zero_extendqisi2
	ldrb	fp, [lr, #14]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #16
	orr	r5, r5, r9, asl #8
	ldrb	r10, [ip, #14]	@ zero_extendqisi2
	ldrb	r9, [lr, #10]	@ zero_extendqisi2
	orr	r7, r7, r4, asl #8
	ldrb	r4, [ip, #2]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	orr	r1, r1, r4, asl #16
	ldrb	r9, [lr, #11]	@ zero_extendqisi2
	ldrb	r4, [ip, #10]	@ zero_extendqisi2
	orr	r8, r8, fp, asl #16
	orr	r6, r6, r10, asl #16
	ldrb	fp, [ip, #7]	@ zero_extendqisi2
	ldrb	r10, [lr, #15]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	orr	r8, r8, r10, asl #24
	ldrb	r9, [ip, #11]	@ zero_extendqisi2
	ldrb	r10, [ip, #15]	@ zero_extendqisi2
	orr	fp, r2, fp, asl #24
	orr	r7, r7, r4, asl #16
	.loc 6 85 0
	ldr	r2, [sp, #16]
	.loc 6 82 0
	ldrb	r4, [ip, #3]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #24
	orr	r4, r1, r4, asl #24
	.loc 6 83 0
	ldrb	r9, [ip, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	r1, ip, r2
	.loc 6 82 0
	orr	r6, r6, r10, asl #24
	str	r5, [r3, #240]
	.loc 6 85 0
	mov	r5, r2
	.loc 6 82 0
	str	r4, [sp, #560]
	str	r8, [r3, #244]
	.loc 6 83 0
	ldrb	r4, [lr, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	fp, [sp, #564]
	str	r7, [sp, #568]
	mov	fp, r5
	str	r6, [sp, #572]
	ldrb	r3, [lr, r5, asl #1]	@ zero_extendqisi2
	ldrb	r6, [ip, r5, asl #1]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #576]
	.loc 6 82 0
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	.loc 6 85 0
	add	r2, r1, r2
	.loc 6 82 0
	ldrb	r7, [r2, #1]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	ldrb	r8, [r2, #5]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r4, [sp, #552]
.LVL3327:
	.loc 6 82 0
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
	ldrb	r4, [r1, #12]	@ zero_extendqisi2
	orr	r5, r3, r5, asl #8
	orr	ip, ip, r9, asl #8
	ldrb	r3, [r1, #8]	@ zero_extendqisi2
	ldrb	r9, [r1, #9]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #8
	orr	r4, r4, r10, asl #8
	ldrb	r7, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r1, #2]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	orr	r3, r3, r9, asl #8
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	r9, [r1, #14]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #16
	orr	r5, r5, r10, asl #16
	ldrb	r7, [r2, #3]	@ zero_extendqisi2
	ldrb	r10, [r2, #6]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r4, r4, r9, asl #16
	ldrb	r8, [r1, #10]	@ zero_extendqisi2
	ldrb	r9, [r1, #3]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #24
	orr	r5, r5, r9, asl #24
	ldrb	r7, [r2, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #24
	orr	r4, r4, r8, asl #24
	orr	r7, lr, r7, asl #24
	orr	r9, r3, r9, asl #24
	.loc 6 85 0
	add	r3, r2, fp
	.loc 6 83 0
	ldrb	r8, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r6, [sp, #608]
	str	r5, [sp, #584]
	str	ip, [sp, #588]
	str	r7, [sp, #612]
	str	r9, [sp, #592]
	str	r4, [sp, #596]
	ldrb	r4, [r2, #8]	@ zero_extendqisi2
	ldrb	lr, [r1, fp, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r3, #5]	@ zero_extendqisi2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
.LVL3328:
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	r10, [r2, #13]	@ zero_extendqisi2
	ldrb	ip, [r2, #12]	@ zero_extendqisi2
	ldrb	r7, [r2, #9]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #8
	ldrb	r9, [r3, #2]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r8, [sp, #600]
.LVL3329:
	.loc 6 82 0
	ldrb	r6, [r3, #12]	@ zero_extendqisi2
	ldrb	r8, [r3, #13]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #8
	orr	ip, ip, r10, asl #8
	ldrb	r5, [r3, #8]	@ zero_extendqisi2
	ldrb	r10, [r3, #9]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #8
	orr	lr, lr, r9, asl #16
	ldrb	r7, [r2, #10]	@ zero_extendqisi2
	ldrb	r9, [r3, #14]	@ zero_extendqisi2
	ldrb	fp, [r3, #3]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #8
	orr	r5, r5, r10, asl #8
	ldrb	r8, [r2, #14]	@ zero_extendqisi2
	ldrb	r10, [r3, #6]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #16
	orr	r6, r6, r9, asl #16
	ldrb	r7, [r2, #11]	@ zero_extendqisi2
	ldrb	r9, [r2, #15]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r1, r1, r10, asl #16
	ldrb	r8, [r3, #10]	@ zero_extendqisi2
	ldrb	r10, [r3, #7]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	.loc 6 85 0
	ldr	fp, [sp, #16]
	.loc 6 82 0
	orr	r4, r4, r7, asl #24
	orr	r9, ip, r9, asl #24
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	ldrb	ip, [r3, #11]	@ zero_extendqisi2
	orr	r10, r1, r10, asl #24
	orr	r5, r5, r8, asl #16
	.loc 6 85 0
	add	r1, r3, fp
	.loc 6 82 0
	orr	r6, r6, r7, asl #24
	orr	r5, r5, ip, asl #24
	.loc 6 85 0
	add	ip, r1, fp
	.loc 6 83 0
	ldrb	r7, [r3, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [sp, #616]
	str	lr, [sp, #632]
	str	r9, [sp, #620]
	.loc 6 83 0
	ldrb	lr, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r10, [sp, #636]
	str	r6, [sp, #644]
	str	r5, [sp, #640]
	ldrb	r6, [r2, fp, asl #1]	@ zero_extendqisi2
	ldrb	r10, [ip, #5]	@ zero_extendqisi2
	ldrb	r2, [r3, fp, asl #1]	@ zero_extendqisi2
.LVL3330:
	ldrb	r5, [ip, #4]	@ zero_extendqisi2
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #5]	@ zero_extendqisi2
	ldrb	r8, [r1, #9]	@ zero_extendqisi2
	.loc 6 83 0
	strb	lr, [sp, #624]
.LVL3331:
	.loc 6 82 0
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	lr, [r1, #8]	@ zero_extendqisi2
	orr	r6, r6, r3, asl #8
	orr	r5, r5, r10, asl #8
	ldrb	r3, [r1, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r7, [sp, #648]
	.loc 6 82 0
	orr	r4, r4, r9, asl #8
	ldrb	r7, [ip, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #2]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	orr	r3, r3, r10, asl #8
	ldrb	r8, [ip, #6]	@ zero_extendqisi2
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	r7, [ip, #2]	@ zero_extendqisi2
	ldrb	r9, [r1, #10]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	orr	r4, r4, r10, asl #16
	ldrb	r8, [r1, #14]	@ zero_extendqisi2
	ldrb	r10, [ip, #7]	@ zero_extendqisi2
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	orr	r2, r2, r7, asl #16
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	ldrb	r7, [ip, #3]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	r9, [r1, #7]	@ zero_extendqisi2
	ldrb	r8, [r1, #11]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #24
	orr	r6, r6, fp, asl #24
	orr	r4, r4, r9, asl #24
	orr	lr, lr, r8, asl #24
	orr	r3, r3, r10, asl #24
	.loc 6 83 0
	ldrb	r1, [r1, #16]	@ zero_extendqisi2
.LVL3332:
	.loc 6 82 0
	str	r2, [sp, #680]
	str	r6, [sp, #656]
	str	r5, [sp, #684]
	str	r4, [sp, #660]
	str	lr, [sp, #664]
	str	r3, [sp, #668]
	.loc 6 83 0
	strb	r1, [sp, #672]
.LVL3333:
	.loc 6 82 0
	ldrb	r2, [ip, #8]	@ zero_extendqisi2
	ldrb	r1, [ip, #12]	@ zero_extendqisi2
	ldrb	r5, [ip, #13]	@ zero_extendqisi2
	ldrb	r3, [ip, #9]	@ zero_extendqisi2
	ldrb	r4, [ip, #14]	@ zero_extendqisi2
	ldrb	lr, [ip, #10]	@ zero_extendqisi2
	ldrb	r6, [ip, #15]	@ zero_extendqisi2
	orr	r3, r2, r3, asl #8
	orr	r2, r1, r5, asl #8
	orr	r2, r2, r4, asl #16
	ldrb	r1, [ip, #11]	@ zero_extendqisi2
	orr	r4, r2, r6, asl #24
.LBE4996:
.LBE4995:
	.loc 5 695 0 discriminator 1
	add	r8, sp, #296
	add	r6, sp, #24
	mov	r5, #17
.LBB4999:
.LBB4997:
	.loc 6 82 0
	orr	r3, r3, lr, asl #16
	orr	lr, r3, r1, asl #24
	.loc 6 83 0
	ldrb	ip, [ip, #16]	@ zero_extendqisi2
.LVL3334:
.LBE4997:
.LBE4999:
	.loc 5 695 0
	str	r0, [sp, #20]
	.loc 5 695 0 is_stmt 0 discriminator 1
	mov	r1, r8
	mov	r0, r6
.LVL3335:
	str	r5, [sp]
	mov	r2, #16
	mov	r3, #24
.LBB5000:
.LBB4998:
	.loc 6 82 0 is_stmt 1
	str	lr, [sp, #688]
	str	r4, [sp, #692]
	.loc 6 83 0
	strb	ip, [sp, #696]
.LVL3336:
.LBE4998:
.LBE5000:
	.loc 5 695 0 discriminator 1
	bl	put_mpeg4_qpel16_h_lowpass(PLT)
.LVL3337:
.LBB5001:
.LBB5002:
	.loc 1 104 0
	mov	r3, #16
	mov	ip, #24
	stmia	sp, {r3, ip}
	str	r5, [sp, #8]
	add	r2, r8, #1
	mov	r0, r6
	mov	r1, r6
	bl	put_pixels8_l2_8(PLT)
.LVL3338:
.LBB5003:
.LBB5004:
.LBB5005:
	.loc 1 104 0 is_stmt 0 discriminator 4
	ldrb	r3, [sp, #308]	@ zero_extendqisi2
	ldrb	r5, [sp, #360]	@ zero_extendqisi2
	ldr	r1, [sp, #304]
	ldrb	r9, [sp, #312]	@ zero_extendqisi2
	ldrb	r6, [sp, #336]	@ zero_extendqisi2
.LVL3339:
	mov	r3, r3, asl #24
	orr	r3, r3, r1, lsr #8
	mov	r0, r5, asl #24
	ldr	r1, [sp, #332]
	ldr	r5, [sp, #308]
	ldrb	r7, [sp, #332]	@ zero_extendqisi2
	ldrb	r4, [sp, #380]	@ zero_extendqisi2
	mov	r8, r9, asl #24
	mov	r6, r6, asl #24
	ldr	r10, [sp, #32]
.LVL3340:
	orr	r9, r8, r5, lsr #8
	ldr	fp, [sp, #328]
	ldr	r5, [sp, #356]
	orr	r6, r6, r1, lsr #8
	ldr	r1, [sp, #376]
	ldrb	r2, [sp, #356]	@ zero_extendqisi2
	ldrb	lr, [sp, #384]	@ zero_extendqisi2
	mov	ip, r7, asl #24
	mov	r4, r4, asl #24
	orr	r7, ip, fp, lsr #8
	ldr	r8, [sp, #352]
	ldr	ip, [sp, #380]
	orr	r5, r0, r5, lsr #8
	orr	r4, r4, r1, lsr #8
.LBB5006:
.LBB5007:
	.loc 2 33 0 is_stmt 1
	eor	r0, r3, r10
	orr	r1, r3, r10
	ldr	r3, .L398
.LVL3341:
.LBE5007:
.LBE5006:
	.loc 1 104 0 discriminator 4
	mov	r2, r2, asl #24
	mov	lr, lr, asl #24
	orr	r2, r2, r8, lsr #8
	orr	lr, lr, ip, lsr #8
	ldr	r8, [sp, #36]
.LVL3342:
	ldr	ip, [sp, #48]
.LBB5048:
.LBB5008:
	.loc 2 33 0
	and	r10, r0, r3
.LVL3343:
	sub	r10, r1, r10, lsr #1
.LBE5008:
.LBE5048:
	.loc 1 104 0 discriminator 4
	str	r10, [sp, #32]
.LVL3344:
.LBB5049:
.LBB5050:
	.loc 2 33 0
	eor	r10, r9, r8
	orr	r8, r9, r8
.LVL3345:
.LBE5050:
.LBE5049:
.LBB5087:
.LBB5009:
	eor	r9, r7, ip
.LVL3346:
	and	r9, r9, r3
	orr	ip, r7, ip
	sub	r9, ip, r9, lsr #1
.LBE5009:
.LBE5087:
.LBB5088:
.LBB5051:
	ldr	ip, [sp, #52]
	ldr	r7, [sp, #52]
	and	r10, r10, r3
.LBE5051:
.LBE5088:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #64]
	ldr	r0, [sp, #68]
	ldr	r1, [sp, #80]
.LBB5089:
.LBB5052:
	.loc 2 33 0
	sub	r10, r8, r10, lsr #1
	eor	ip, r6, ip
.LBE5052:
.LBE5089:
	.loc 1 104 0 discriminator 4
	ldr	r8, [sp, #84]
.LBB5090:
.LBB5053:
	.loc 2 33 0
	orr	r6, r6, r7
	and	ip, ip, r3
.LBE5053:
.LBE5090:
	.loc 1 104 0 discriminator 4
	str	r10, [sp, #36]
.LVL3347:
.LBB5091:
.LBB5054:
	.loc 2 33 0
	sub	ip, r6, ip, lsr #1
	eor	r7, r5, r0
.LVL3348:
.LBE5054:
.LBE5091:
.LBB5092:
.LBB5010:
	eor	r6, r2, fp
	eor	r10, r4, r1
	orr	r1, r4, r1
.LBE5010:
.LBE5092:
.LBB5093:
.LBB5055:
	eor	r4, lr, r8
.LBE5055:
.LBE5093:
.LBB5094:
.LBB5011:
	and	r6, r6, r3
.LBE5011:
.LBE5094:
.LBB5095:
.LBB5056:
	and	r7, r7, r3
.LBE5056:
.LBE5095:
.LBB5096:
.LBB5012:
	and	r10, r10, r3
.LBE5012:
.LBE5096:
.LBB5097:
.LBB5057:
	and	r4, r4, r3
.LBE5057:
.LBE5097:
.LBB5098:
.LBB5013:
	orr	r2, r2, fp
.LBE5013:
.LBE5098:
.LBB5099:
.LBB5058:
	orr	r0, r5, r0
	orr	lr, lr, r8
.LBE5058:
.LBE5099:
.LBB5100:
.LBB5014:
	sub	r2, r2, r6, lsr #1
.LBE5014:
.LBE5100:
.LBB5101:
.LBB5059:
	sub	r0, r0, r7, lsr #1
.LBE5059:
.LBE5101:
.LBB5102:
.LBB5015:
	sub	r1, r1, r10, lsr #1
.LBE5015:
.LBE5102:
.LBB5103:
.LBB5060:
	sub	lr, lr, r4, lsr #1
.LBE5060:
.LBE5103:
	.loc 1 104 0 discriminator 4
	str	r9, [sp, #48]
	str	ip, [sp, #52]
.LVL3349:
	str	r2, [sp, #64]
	str	r0, [sp, #68]
.LVL3350:
	str	r1, [sp, #80]
	str	lr, [sp, #84]
.LVL3351:
	ldr	r10, [sp, #96]
.LVL3352:
	ldrb	r5, [sp, #456]	@ zero_extendqisi2
	ldrb	r1, [sp, #404]	@ zero_extendqisi2
	mov	r0, r5, asl #24
	ldr	r5, [sp, #400]
	ldrb	r6, [sp, #432]	@ zero_extendqisi2
	mov	r1, r1, asl #24
	orr	fp, r1, r5, lsr #8
.LVL3353:
	ldrb	r9, [sp, #408]	@ zero_extendqisi2
	ldr	r5, [sp, #428]
	ldr	r1, [sp, #404]
	mov	r6, r6, asl #24
	ldrb	r2, [sp, #452]	@ zero_extendqisi2
	orr	r6, r6, r5, lsr #8
	mov	r8, r9, asl #24
.LVL3354:
	ldr	r5, [sp, #452]
	orr	r9, r8, r1, lsr #8
	ldrb	r7, [sp, #428]	@ zero_extendqisi2
	ldr	r1, [sp, #448]
	ldrb	lr, [sp, #480]	@ zero_extendqisi2
	orr	r5, r0, r5, lsr #8
	ldrb	r4, [sp, #476]	@ zero_extendqisi2
	ldr	r0, [sp, #476]
	mov	r2, r2, asl #24
	mov	ip, r7, asl #24
	orr	r2, r2, r1, lsr #8
	ldr	r7, [sp, #424]
	ldr	r1, [sp, #472]
	mov	lr, lr, asl #24
	orr	lr, lr, r0, lsr #8
	mov	r4, r4, asl #24
.LBB5104:
.LBB5016:
	.loc 2 33 0
	eor	r0, fp, r10
.LBE5016:
.LBE5104:
	.loc 1 104 0 discriminator 4
	ldr	r8, [sp, #100]
.LVL3355:
	orr	r7, ip, r7, lsr #8
	orr	r4, r4, r1, lsr #8
	ldr	ip, [sp, #112]
.LBB5105:
.LBB5017:
	.loc 2 33 0
	and	r0, r0, r3
	orr	r1, fp, r10
	sub	r10, r1, r0, lsr #1
.LVL3356:
.LBE5017:
.LBE5105:
	.loc 1 104 0 discriminator 4
	str	r10, [sp, #96]
.LVL3357:
.LBB5106:
.LBB5061:
	.loc 2 33 0
	eor	r10, r9, r8
	orr	r8, r9, r8
.LVL3358:
.LBE5061:
.LBE5106:
.LBB5107:
.LBB5018:
	eor	r9, r7, ip
.LVL3359:
	and	r9, r9, r3
	orr	ip, r7, ip
	sub	r9, ip, r9, lsr #1
.LBE5018:
.LBE5107:
.LBB5108:
.LBB5062:
	ldr	ip, [sp, #116]
	ldr	r7, [sp, #116]
	and	r10, r10, r3
.LBE5062:
.LBE5108:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #128]
.LVL3360:
	ldr	r0, [sp, #132]
	ldr	r1, [sp, #144]
.LBB5109:
.LBB5063:
	.loc 2 33 0
	sub	r10, r8, r10, lsr #1
	eor	ip, r6, ip
.LBE5063:
.LBE5109:
	.loc 1 104 0 discriminator 4
	ldr	r8, [sp, #148]
.LBB5110:
.LBB5064:
	.loc 2 33 0
	orr	r6, r6, r7
	and	ip, ip, r3
.LBE5064:
.LBE5110:
	.loc 1 104 0 discriminator 4
	str	r10, [sp, #100]
.LVL3361:
.LBB5111:
.LBB5065:
	.loc 2 33 0
	sub	ip, r6, ip, lsr #1
	eor	r7, r5, r0
.LVL3362:
.LBE5065:
.LBE5111:
.LBB5112:
.LBB5019:
	eor	r6, r2, fp
	eor	r10, r4, r1
	orr	r1, r4, r1
.LBE5019:
.LBE5112:
.LBB5113:
.LBB5066:
	eor	r4, lr, r8
.LBE5066:
.LBE5113:
.LBB5114:
.LBB5020:
	and	r6, r6, r3
.LBE5020:
.LBE5114:
.LBB5115:
.LBB5067:
	and	r7, r7, r3
.LBE5067:
.LBE5115:
.LBB5116:
.LBB5021:
	and	r10, r10, r3
.LBE5021:
.LBE5116:
.LBB5117:
.LBB5068:
	and	r4, r4, r3
.LBE5068:
.LBE5117:
.LBB5118:
.LBB5022:
	orr	r2, r2, fp
.LBE5022:
.LBE5118:
.LBB5119:
.LBB5069:
	orr	r0, r5, r0
	orr	lr, lr, r8
.LBE5069:
.LBE5119:
.LBB5120:
.LBB5023:
	sub	r2, r2, r6, lsr #1
.LBE5023:
.LBE5120:
.LBB5121:
.LBB5070:
	sub	r0, r0, r7, lsr #1
.LBE5070:
.LBE5121:
.LBB5122:
.LBB5024:
	sub	r1, r1, r10, lsr #1
.LBE5024:
.LBE5122:
.LBB5123:
.LBB5071:
	sub	lr, lr, r4, lsr #1
.LBE5071:
.LBE5123:
	.loc 1 104 0 discriminator 4
	str	r9, [sp, #112]
	str	ip, [sp, #116]
.LVL3363:
	str	r2, [sp, #128]
	str	r0, [sp, #132]
.LVL3364:
	str	r1, [sp, #144]
	str	lr, [sp, #148]
.LVL3365:
	ldr	r8, [sp, #160]
.LVL3366:
	ldrb	fp, [sp, #504]	@ zero_extendqisi2
	ldrb	r9, [sp, #524]	@ zero_extendqisi2
	mov	r1, fp, asl #24
	ldr	fp, [sp, #500]
	ldrb	ip, [sp, #500]	@ zero_extendqisi2
	orr	fp, r1, fp, lsr #8
	ldr	r1, [sp, #520]
	ldrb	r7, [sp, #528]	@ zero_extendqisi2
	mov	r9, r9, asl #24
	ldr	r10, [sp, #496]
	orr	r9, r9, r1, lsr #8
	ldr	r1, [sp, #524]
	ldrb	r6, [sp, #548]	@ zero_extendqisi2
	mov	r0, ip, asl #24
	mov	r7, r7, asl #24
	orr	r7, r7, r1, lsr #8
	orr	ip, r0, r10, lsr #8
.LVL3367:
	ldr	r1, [sp, #544]
.LBB5124:
.LBB5025:
	.loc 2 33 0
	eor	r0, ip, r8
.LBE5025:
.LBE5124:
	.loc 1 104 0 discriminator 4
	ldrb	r2, [sp, #552]	@ zero_extendqisi2
	ldrb	r4, [sp, #576]	@ zero_extendqisi2
	mov	r6, r6, asl #24
.LBB5125:
.LBB5026:
	.loc 2 33 0
	and	r10, r0, r3
.LBE5026:
.LBE5125:
	.loc 1 104 0 discriminator 4
	orr	r6, r6, r1, lsr #8
	ldr	r0, [sp, #548]
	ldr	r1, [sp, #572]
	ldrb	r5, [sp, #572]	@ zero_extendqisi2
	mov	r2, r2, asl #24
	mov	r4, r4, asl #24
	orr	r4, r4, r1, lsr #8
	ldrb	lr, [sp, #596]	@ zero_extendqisi2
	ldr	r1, [sp, #164]
.LVL3368:
	orr	r2, r2, r0, lsr #8
	ldr	r0, [sp, #568]
.LBB5126:
.LBB5027:
	.loc 2 33 0
	orr	ip, ip, r8
.LVL3369:
.LBE5027:
.LBE5126:
	.loc 1 104 0 discriminator 4
	mov	r5, r5, asl #24
	ldr	r8, [sp, #592]
.LVL3370:
	orr	r5, r5, r0, lsr #8
	mov	lr, lr, asl #24
.LBB5127:
.LBB5028:
	.loc 2 33 0
	sub	r0, ip, r10, lsr #1
.LBE5028:
.LBE5127:
.LBB5128:
.LBB5072:
	eor	r10, fp, r1
.LBE5072:
.LBE5128:
	.loc 1 104 0 discriminator 4
	orr	lr, lr, r8, lsr #8
	str	r0, [sp, #160]
.LVL3371:
	ldr	r8, [sp, #176]
.LBB5129:
.LBB5073:
	.loc 2 33 0
	and	r0, r10, r3
	orr	r1, fp, r1
.LVL3372:
	sub	r10, r1, r0, lsr #1
.LBE5073:
.LBE5129:
	.loc 1 104 0 discriminator 4
	ldr	ip, [sp, #180]
	str	r10, [sp, #164]
.LVL3373:
.LBB5130:
.LBB5029:
	.loc 2 33 0
	eor	r10, r9, r8
	and	r10, r10, r3
	orr	r8, r9, r8
.LVL3374:
	sub	r10, r8, r10, lsr #1
.LBE5029:
.LBE5130:
.LBB5131:
.LBB5074:
	eor	r8, r7, ip
	and	r8, r8, r3
	orr	ip, r7, ip
.LVL3375:
	sub	r8, ip, r8, lsr #1
.LBE5074:
.LBE5131:
.LBB5132:
.LBB5030:
	ldr	ip, [sp, #192]
	ldr	r7, [sp, #192]
.LVL3376:
	eor	ip, r6, ip
.LBE5030:
.LBE5132:
	.loc 1 104 0 discriminator 4
	ldr	r1, [sp, #212]
.LBB5133:
.LBB5031:
	.loc 2 33 0
	orr	r6, r6, r7
	and	ip, ip, r3
.LBE5031:
.LBE5133:
	.loc 1 104 0 discriminator 4
	ldr	r0, [sp, #208]
.LBB5134:
.LBB5075:
	.loc 2 33 0
	ldr	r7, [sp, #196]
.LBE5075:
.LBE5134:
.LBB5135:
.LBB5032:
	sub	ip, r6, ip, lsr #1
.LBE5032:
.LBE5135:
.LBB5136:
.LBB5076:
	ldr	r6, [sp, #196]
	eor	r9, r4, r1
.LVL3377:
	and	r9, r9, r3
	eor	r6, r2, r6
	orr	r1, r4, r1
	orr	r2, r2, r7
.LBE5076:
.LBE5136:
.LBB5137:
.LBB5033:
	eor	r7, r5, r0
.LBE5033:
.LBE5137:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #224]
	str	r10, [sp, #176]
.LVL3378:
.LBB5138:
.LBB5034:
	.loc 2 33 0
	and	r7, r7, r3
.LBE5034:
.LBE5138:
.LBB5139:
.LBB5077:
	sub	r1, r1, r9, lsr #1
.LBE5077:
.LBE5139:
	.loc 1 104 0 discriminator 4
	str	r8, [sp, #180]
.LVL3379:
.LBB5140:
.LBB5035:
	.loc 2 33 0
	orr	r0, r5, r0
.LBE5035:
.LBE5140:
	.loc 1 104 0 discriminator 4
	str	ip, [sp, #192]
	ldrb	r5, [sp, #668]	@ zero_extendqisi2
.LBB5141:
.LBB5036:
	.loc 2 33 0
	sub	r0, r0, r7, lsr #1
.LBE5036:
.LBE5141:
	.loc 1 104 0 discriminator 4
	str	r1, [sp, #212]
	ldrb	r1, [sp, #600]	@ zero_extendqisi2
.LBB5142:
.LBB5078:
	.loc 2 33 0
	and	r6, r6, r3
.LBE5078:
.LBE5142:
	.loc 1 104 0 discriminator 4
	str	r0, [sp, #208]
	mov	r0, r5, asl #24
	ldr	r5, [sp, #596]
.LBB5143:
.LBB5079:
	.loc 2 33 0
	sub	r2, r2, r6, lsr #1
.LBE5079:
.LBE5143:
	.loc 1 104 0 discriminator 4
	mov	r1, r1, asl #24
	ldrb	r6, [sp, #644]	@ zero_extendqisi2
	ldrb	r9, [sp, #620]	@ zero_extendqisi2
.LBB5144:
.LBB5037:
	.loc 2 33 0
	eor	r10, lr, fp
	orr	lr, lr, fp
.LBE5037:
.LBE5144:
	.loc 1 104 0 discriminator 4
	orr	fp, r1, r5, lsr #8
	ldr	r5, [sp, #640]
	ldr	r1, [sp, #616]
.LBB5145:
.LBB5038:
	.loc 2 33 0
	and	r10, r10, r3
.LVL3380:
.LBE5038:
.LBE5145:
	.loc 1 104 0 discriminator 4
	mov	r6, r6, asl #24
.LBB5146:
.LBB5039:
	.loc 2 33 0
	sub	lr, lr, r10, lsr #1
.LBE5039:
.LBE5146:
	.loc 1 104 0 discriminator 4
	str	r2, [sp, #196]
.LVL3381:
	orr	r6, r6, r5, lsr #8
	ldrb	r2, [sp, #648]	@ zero_extendqisi2
	ldr	r5, [sp, #664]
	mov	r8, r9, asl #24
	orr	r9, r8, r1, lsr #8
	ldrb	r7, [sp, #624]	@ zero_extendqisi2
	ldr	r1, [sp, #644]
	str	lr, [sp, #224]
	ldrb	lr, [sp, #692]	@ zero_extendqisi2
	ldr	r10, [sp, #228]
.LVL3382:
	orr	r5, r0, r5, lsr #8
	ldrb	r4, [sp, #672]	@ zero_extendqisi2
	ldr	r0, [sp, #688]
	mov	r2, r2, asl #24
	mov	ip, r7, asl #24
	orr	r2, r2, r1, lsr #8
	ldr	r7, [sp, #620]
	ldr	r1, [sp, #668]
	mov	lr, lr, asl #24
	orr	lr, lr, r0, lsr #8
	mov	r4, r4, asl #24
.LBB5147:
.LBB5080:
	.loc 2 33 0
	eor	r0, fp, r10
.LBE5080:
.LBE5147:
	.loc 1 104 0 discriminator 4
	ldr	r8, [sp, #240]
	orr	r7, ip, r7, lsr #8
	orr	r4, r4, r1, lsr #8
	ldr	ip, [sp, #244]
.LBB5148:
.LBB5081:
	.loc 2 33 0
	and	r0, r0, r3
	orr	r1, fp, r10
	sub	r10, r1, r0, lsr #1
.LVL3383:
.LBE5081:
.LBE5148:
	.loc 1 104 0 discriminator 4
	str	r10, [sp, #228]
.LVL3384:
.LBB5149:
.LBB5040:
	.loc 2 33 0
	eor	r10, r9, r8
	orr	r8, r9, r8
.LVL3385:
.LBE5040:
.LBE5149:
.LBB5150:
.LBB5082:
	eor	r9, r7, ip
.LVL3386:
	and	r9, r9, r3
	orr	ip, r7, ip
.LVL3387:
	sub	r9, ip, r9, lsr #1
.LBE5082:
.LBE5150:
.LBB5151:
.LBB5041:
	ldr	ip, [sp, #256]
	ldr	r7, [sp, #256]
.LVL3388:
.LBE5041:
.LBE5151:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #260]
	ldr	r1, [sp, #276]
.LBB5152:
.LBB5042:
	.loc 2 33 0
	and	r10, r10, r3
	eor	ip, r6, ip
	sub	r10, r8, r10, lsr #1
	orr	r6, r6, r7
	and	ip, ip, r3
.LBE5042:
.LBE5152:
	.loc 1 104 0 discriminator 4
	str	r10, [sp, #240]
.LVL3389:
.LBB5153:
.LBB5043:
	.loc 2 33 0
	sub	ip, r6, ip, lsr #1
.LBE5043:
.LBE5153:
.LBB5154:
.LBB5083:
	eor	r10, r4, r1
	eor	r6, r2, fp
	and	r6, r6, r3
	and	r10, r10, r3
	orr	r2, r2, fp
	orr	r1, r4, r1
	sub	r2, r2, r6, lsr #1
	sub	r1, r1, r10, lsr #1
.LBE5083:
.LBE5154:
	.loc 1 104 0 discriminator 4
	ldr	r0, [sp, #272]
	ldr	r8, [sp, #288]
	str	ip, [sp, #256]
	str	r9, [sp, #244]
.LVL3390:
	str	r2, [sp, #260]
	str	r1, [sp, #276]
	ldrb	r1, [sp, #696]	@ zero_extendqisi2
	ldr	ip, [sp, #692]
	ldr	r2, [sp, #292]
	mov	r1, r1, asl #24
.LBB5155:
.LBB5044:
	.loc 2 33 0
	eor	r7, r5, r0
.LBE5044:
.LBE5155:
	.loc 1 104 0 discriminator 4
	orr	ip, r1, ip, lsr #8
.LBB5156:
.LBB5084:
	.loc 2 33 0
	eor	r1, ip, r2
.LBE5084:
.LBE5156:
.LBB5157:
.LBB5045:
	and	r7, r7, r3
	eor	r4, lr, r8
	orr	r0, r5, r0
	and	r4, r4, r3
.LVL3391:
	sub	r0, r0, r7, lsr #1
.LBE5045:
.LBE5157:
.LBB5158:
.LBB5085:
	and	r3, r3, r1
.LBE5085:
.LBE5158:
.LBB5159:
.LBB5046:
	orr	lr, lr, r8
.LVL3392:
.LBE5046:
.LBE5159:
.LBB5160:
.LBB5086:
	orr	ip, ip, r2
.LVL3393:
	sub	ip, ip, r3, lsr #1
.LBE5086:
.LBE5160:
.LBB5161:
.LBB5047:
	sub	lr, lr, r4, lsr #1
.LBE5047:
.LBE5161:
	.loc 1 104 0 discriminator 4
	str	r0, [sp, #272]
.LBE5005:
.LBE5004:
.LBE5003:
.LBE5002:
.LBE5001:
	.loc 5 695 0 discriminator 3
	ldr	r2, [sp, #16]
.LVL3394:
	ldr	r0, [sp, #20]
	add	r1, sp, #24
.LVL3395:
	mov	r3, #16
.LBB5166:
.LBB5165:
.LBB5164:
.LBB5163:
.LBB5162:
	.loc 1 104 0 discriminator 4
	str	lr, [sp, #288]
	str	ip, [sp, #292]
.LVL3396:
.LBE5162:
.LBE5163:
.LBE5164:
.LBE5165:
.LBE5166:
	.loc 5 695 0 discriminator 3
	bl	put_mpeg4_qpel16_v_lowpass(PLT)
.LVL3397:
	.loc 5 695 0 is_stmt 0
	add	sp, sp, #708
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3398:
.L399:
	.align	2
.L398:
	.word	-16843010
	.cfi_endproc
.LFE146:
	.size	put_qpel16_mc32_c, .-put_qpel16_mc32_c
	.align	2
	.type	avg_qpel16_mc12_c, %function
avg_qpel16_mc12_c:
.LFB236:
	.loc 5 697 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 688
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3399:
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
	sub	sp, sp, #708
	.cfi_def_cfa_offset 744
.LVL3400:
.LBB5178:
.LBB5179:
	.loc 6 85 0
	add	r4, r1, r2
	.loc 6 82 0
	str	r2, [sp, #16]
	ldrb	r3, [r1, r2]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r2, [r1]	@ zero_extendqisi2
.LVL3401:
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	ldrb	r6, [r1, #4]	@ zero_extendqisi2
	orr	r7, r2, r7, asl #8
	orr	r6, r6, r10, asl #8
	ldrb	r2, [r4, #4]	@ zero_extendqisi2
	ldrb	r10, [r4, #5]	@ zero_extendqisi2
	ldrb	r9, [r1, #9]	@ zero_extendqisi2
	ldrb	r8, [r1, #13]	@ zero_extendqisi2
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
	ldrb	ip, [r1, #12]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #8
	ldrb	r10, [r1, #10]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #8
	orr	ip, ip, r8, asl #8
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	lr, [r4, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #2]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #16
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #16
	ldrb	r8, [r4, #6]	@ zero_extendqisi2
	orr	r6, r6, r10, asl #24
	orr	r3, r3, lr, asl #8
	ldrb	r10, [r4, #7]	@ zero_extendqisi2
	ldrb	lr, [r4, #2]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #16
	ldrb	r9, [r1, #14]	@ zero_extendqisi2
	orr	r2, r2, r8, asl #16
	orr	r3, r3, lr, asl #16
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	lr, [r4, #3]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #16
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #24
	.loc 6 85 0
	ldr	r10, [sp, #16]
	.loc 6 82 0
	orr	lr, r3, lr, asl #24
	orr	r7, r7, fp, asl #24
	add	r3, sp, #304
	orr	r5, r5, r9, asl #24
	orr	r8, ip, r8, asl #24
	.loc 6 85 0
	add	ip, r4, r10
	.loc 6 83 0
	ldrb	r9, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	stmia	r3, {r5, r8}
	str	lr, [r3, #16]
	str	r7, [r3, #-8]
	str	r6, [r3, #-4]
	str	r2, [r3, #20]
	ldrb	r2, [r1, r10, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r4, #13]	@ zero_extendqisi2
	ldrb	r1, [r4, #12]	@ zero_extendqisi2
.LVL3402:
	ldrb	r10, [ip, #5]	@ zero_extendqisi2
	ldrb	r7, [ip, #4]	@ zero_extendqisi2
	ldrb	r5, [ip, #1]	@ zero_extendqisi2
	orr	r8, r1, r8, asl #8
	orr	r7, r7, r10, asl #8
	ldrb	r1, [ip, #12]	@ zero_extendqisi2
	ldrb	r10, [ip, #13]	@ zero_extendqisi2
	ldrb	r6, [ip, #8]	@ zero_extendqisi2
	orr	r2, r2, r5, asl #8
	ldrb	r5, [ip, #9]	@ zero_extendqisi2
	ldrb	lr, [r4, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #312]
.LVL3403:
	.loc 6 82 0
	orr	r1, r1, r10, asl #8
	ldrb	r9, [r4, #9]	@ zero_extendqisi2
	ldrb	r10, [ip, #6]	@ zero_extendqisi2
	ldrb	fp, [r4, #14]	@ zero_extendqisi2
	orr	r6, r6, r5, asl #8
	ldrb	r5, [ip, #2]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #8
	orr	r7, r7, r10, asl #16
	ldrb	r9, [r4, #10]	@ zero_extendqisi2
	ldrb	r10, [ip, #14]	@ zero_extendqisi2
	orr	r2, r2, r5, asl #16
	orr	r8, r8, fp, asl #16
	ldrb	r5, [ip, #10]	@ zero_extendqisi2
	ldrb	fp, [ip, #7]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #16
	orr	r1, r1, r10, asl #16
	ldrb	r9, [r4, #11]	@ zero_extendqisi2
	ldrb	r10, [r4, #15]	@ zero_extendqisi2
	orr	r7, r7, fp, asl #24
	orr	r6, r6, r5, asl #16
	.loc 6 85 0
	ldr	fp, [sp, #16]
	.loc 6 82 0
	ldrb	r5, [ip, #3]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #24
	orr	r8, r8, r10, asl #24
	ldrb	r9, [ip, #11]	@ zero_extendqisi2
	ldrb	r10, [ip, #15]	@ zero_extendqisi2
	orr	r5, r2, r5, asl #24
	.loc 6 85 0
	add	r2, ip, fp
	.loc 6 82 0
	orr	r6, r6, r9, asl #24
	orr	r1, r1, r10, asl #24
	str	lr, [r3, #24]
	.loc 6 85 0
	add	lr, r2, fp
	.loc 6 83 0
	ldrb	r10, [ip, #16]	@ zero_extendqisi2
	ldrb	r9, [r4, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r5, [r3, #40]
	str	r8, [r3, #28]
	str	r7, [r3, #44]
	str	r6, [r3, #48]
	str	r1, [r3, #52]
	ldrb	r7, [ip, fp, asl #1]	@ zero_extendqisi2
	ldrb	r8, [lr, #1]	@ zero_extendqisi2
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r10, [sp, #360]
	strb	r9, [sp, #336]
.LVL3404:
	.loc 6 82 0
	ldrb	r10, [r4, fp, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r2, #9]	@ zero_extendqisi2
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	ldrb	r4, [r2, #12]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	ldrb	r8, [r2, #13]	@ zero_extendqisi2
	orr	r6, r1, r6, asl #8
	orr	r5, r5, r9, asl #8
	ldrb	r1, [lr, #4]	@ zero_extendqisi2
	ldrb	r9, [lr, #5]	@ zero_extendqisi2
	orr	r4, r4, r8, asl #8
	ldrb	r8, [lr, #2]	@ zero_extendqisi2
	ldrb	ip, [r2, #1]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r9, [r2, #6]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	orr	ip, r10, ip, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	r10, [r2, #2]	@ zero_extendqisi2
	ldrb	r9, [r2, #14]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	ldrb	r8, [lr, #6]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #16
	orr	r1, r1, r8, asl #16
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #16
	ldrb	r9, [lr, #3]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #24
	orr	r7, r7, r9, asl #24
	ldrb	r10, [r2, #11]	@ zero_extendqisi2
	ldrb	r9, [r2, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [lr, #7]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	orr	r4, r4, r9, asl #24
	orr	r8, r1, r8, asl #24
	.loc 6 85 0
	add	r1, lr, fp
	.loc 6 83 0
	ldrb	r9, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	ip, [r3, #64]
	str	r7, [r3, #88]
	str	r6, [r3, #68]
	str	r4, [r3, #76]
	str	r8, [r3, #92]
	str	r5, [r3, #72]
	ldrb	r5, [lr, #8]	@ zero_extendqisi2
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	ldrb	r2, [r2, fp, asl #1]	@ zero_extendqisi2
.LVL3405:
	ldrb	ip, [lr, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r8, [lr, #13]	@ zero_extendqisi2
	ldrb	r7, [r1, #4]	@ zero_extendqisi2
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #8
	ldrb	r4, [r1, #9]	@ zero_extendqisi2
	orr	r8, ip, r8, asl #8
	orr	r7, r7, r10, asl #8
	ldrb	ip, [r1, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #384]
.LVL3406:
	.loc 6 82 0
	orr	r6, r6, r4, asl #8
	ldrb	r9, [lr, #9]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #8
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #16
	orr	r5, r5, r9, asl #8
	ldrb	r4, [r1, #10]	@ zero_extendqisi2
	ldrb	r9, [lr, #10]	@ zero_extendqisi2
	orr	r7, r7, r10, asl #16
	ldrb	r10, [r1, #14]	@ zero_extendqisi2
	ldrb	fp, [lr, #14]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	orr	r6, r6, r4, asl #16
	ldrb	r9, [lr, #11]	@ zero_extendqisi2
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #16
	ldrb	r10, [lr, #15]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	orr	r4, r2, r4, asl #24
	orr	r8, r8, fp, asl #16
	.loc 6 85 0
	ldr	r2, [sp, #16]
	.loc 6 82 0
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #24
	str	r5, [r3, #96]
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	.loc 6 85 0
	ldr	r5, [sp, #16]
	add	r2, r1, r2
	.loc 6 82 0
	orr	r7, r7, fp, asl #24
	orr	r6, r6, r9, asl #24
	orr	r10, ip, r10, asl #24
	.loc 6 85 0
	add	ip, r2, r5
	.loc 6 83 0
	ldrb	fp, [r1, #16]	@ zero_extendqisi2
	ldrb	r9, [lr, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [r3, #112]
	str	r8, [r3, #100]
	str	r7, [r3, #116]
	str	r6, [r3, #120]
	ldrb	r7, [r1, r5, asl #1]	@ zero_extendqisi2
	ldrb	r8, [ip, #1]	@ zero_extendqisi2
	str	r10, [r3, #124]
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	.loc 6 83 0
	strb	fp, [sp, #432]
	strb	r9, [sp, #408]
.LVL3407:
	.loc 6 82 0
	mov	fp, r5
	ldrb	r9, [r2, #9]	@ zero_extendqisi2
	ldrb	lr, [lr, r5, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	ldrb	r4, [r2, #12]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	ldrb	r8, [r2, #13]	@ zero_extendqisi2
	orr	r6, r1, r6, asl #8
	orr	r5, r5, r9, asl #8
	ldrb	r1, [ip, #4]	@ zero_extendqisi2
	ldrb	r9, [ip, #5]	@ zero_extendqisi2
	orr	r4, r4, r8, asl #8
	ldrb	r8, [ip, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #1]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r9, [r2, #6]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	r10, [r2, #2]	@ zero_extendqisi2
	ldrb	r9, [r2, #14]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	ldrb	r8, [ip, #6]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	orr	r1, r1, r8, asl #16
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #16
	ldrb	r9, [ip, #3]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #24
	orr	r7, r7, r9, asl #24
	ldrb	r10, [r2, #11]	@ zero_extendqisi2
	ldrb	r9, [r2, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [ip, #7]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	orr	r4, r4, r9, asl #24
	orr	r8, r1, r8, asl #24
	.loc 6 85 0
	add	r1, ip, fp
	.loc 6 83 0
	ldrb	r9, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	lr, [r3, #136]
	str	r7, [r3, #160]
	str	r6, [r3, #140]
	str	r5, [r3, #144]
	str	r4, [r3, #148]
	str	r8, [r3, #164]
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	ldrb	r2, [r2, fp, asl #1]	@ zero_extendqisi2
.LVL3408:
	ldrb	lr, [ip, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r8, [ip, #13]	@ zero_extendqisi2
	ldrb	r7, [r1, #4]	@ zero_extendqisi2
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #8
	ldrb	r4, [r1, #9]	@ zero_extendqisi2
	orr	r8, lr, r8, asl #8
	orr	r7, r7, r10, asl #8
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	ldrb	r5, [ip, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #456]
.LVL3409:
	.loc 6 82 0
	orr	r6, r6, r4, asl #8
	ldrb	r9, [ip, #9]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #8
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #16
	orr	r5, r5, r9, asl #8
	ldrb	r4, [r1, #10]	@ zero_extendqisi2
	ldrb	r9, [ip, #10]	@ zero_extendqisi2
	orr	r7, r7, r10, asl #16
	ldrb	r10, [r1, #14]	@ zero_extendqisi2
	ldrb	fp, [ip, #14]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	orr	r6, r6, r4, asl #16
	ldrb	r9, [ip, #11]	@ zero_extendqisi2
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	ldrb	r10, [ip, #15]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	orr	r4, r2, r4, asl #24
	orr	r8, r8, fp, asl #16
	.loc 6 85 0
	ldr	r2, [sp, #16]
	.loc 6 82 0
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #24
	str	r5, [r3, #168]
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	.loc 6 85 0
	ldr	r5, [sp, #16]
	add	r2, r1, r2
	.loc 6 82 0
	orr	r7, r7, fp, asl #24
	orr	r6, r6, r9, asl #24
	orr	r10, lr, r10, asl #24
	.loc 6 83 0
	ldrb	r9, [ip, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	lr, r2, r5
	.loc 6 83 0
	ldrb	fp, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [r3, #184]
	str	r8, [r3, #172]
	str	r7, [r3, #188]
	str	r6, [r3, #192]
	ldrb	r8, [r1, r5, asl #1]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #480]
.LVL3410:
	.loc 6 82 0
	ldrb	r9, [lr, #1]	@ zero_extendqisi2
	str	r10, [r3, #196]
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	ldrb	r10, [r2, #9]	@ zero_extendqisi2
	.loc 6 83 0
	strb	fp, [sp, #504]
	.loc 6 82 0
	ldrb	ip, [ip, r5, asl #1]	@ zero_extendqisi2
	mov	fp, r5
	ldrb	r7, [r2, #5]	@ zero_extendqisi2
	ldrb	r6, [r2, #8]	@ zero_extendqisi2
	ldrb	r5, [r2, #12]	@ zero_extendqisi2
	orr	r8, r8, r9, asl #8
	ldrb	r9, [r2, #13]	@ zero_extendqisi2
	orr	r7, r1, r7, asl #8
	orr	r6, r6, r10, asl #8
	ldrb	r1, [lr, #4]	@ zero_extendqisi2
	ldrb	r10, [lr, #5]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #8
	ldrb	r9, [lr, #2]	@ zero_extendqisi2
	ldrb	r4, [r2, #1]	@ zero_extendqisi2
	orr	r1, r1, r10, asl #8
	orr	r8, r8, r9, asl #16
	ldrb	r10, [r2, #6]	@ zero_extendqisi2
	ldrb	r9, [r2, #10]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #8
	orr	r7, r7, r10, asl #16
	ldrb	r4, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #14]	@ zero_extendqisi2
	orr	r6, r6, r9, asl #16
	ldrb	r9, [lr, #6]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #16
	orr	r5, r5, r10, asl #16
	ldrb	r4, [r2, #3]	@ zero_extendqisi2
	ldrb	r10, [lr, #3]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #16
	ldrb	r9, [r2, #7]	@ zero_extendqisi2
	orr	r4, ip, r4, asl #24
	orr	r8, r8, r10, asl #24
	ldrb	ip, [r2, #11]	@ zero_extendqisi2
	ldrb	r10, [r2, #15]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #24
	ldrb	r9, [lr, #7]	@ zero_extendqisi2
	orr	r6, r6, ip, asl #24
	orr	r5, r5, r10, asl #24
	.loc 6 85 0
	add	ip, lr, fp
	.loc 6 82 0
	orr	r1, r1, r9, asl #24
	str	r4, [r3, #208]
	.loc 6 83 0
	ldrb	r9, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r8, [r3, #232]
	str	r7, [r3, #212]
	str	r6, [r3, #216]
	str	r5, [r3, #220]
	str	r1, [r3, #236]
	ldrb	r1, [r2, fp, asl #1]	@ zero_extendqisi2
	ldrb	r6, [lr, #12]	@ zero_extendqisi2
	ldrb	r10, [ip, #5]	@ zero_extendqisi2
	ldrb	r8, [lr, #13]	@ zero_extendqisi2
	ldrb	r2, [ip, #4]	@ zero_extendqisi2
.LVL3411:
	ldrb	r4, [ip, #1]	@ zero_extendqisi2
	orr	r8, r6, r8, asl #8
	orr	r2, r2, r10, asl #8
	ldrb	r6, [ip, #12]	@ zero_extendqisi2
	ldrb	r10, [ip, #13]	@ zero_extendqisi2
	ldrb	r5, [lr, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #528]
.LVL3412:
	.loc 6 82 0
	ldrb	r7, [ip, #8]	@ zero_extendqisi2
	ldrb	r9, [lr, #9]	@ zero_extendqisi2
	orr	r1, r1, r4, asl #8
	orr	r6, r6, r10, asl #8
	ldrb	r4, [ip, #9]	@ zero_extendqisi2
	ldrb	r10, [ip, #6]	@ zero_extendqisi2
	ldrb	fp, [lr, #14]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #16
	orr	r5, r5, r9, asl #8
	ldrb	r10, [ip, #14]	@ zero_extendqisi2
	ldrb	r9, [lr, #10]	@ zero_extendqisi2
	orr	r7, r7, r4, asl #8
	ldrb	r4, [ip, #2]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	orr	r1, r1, r4, asl #16
	ldrb	r9, [lr, #11]	@ zero_extendqisi2
	ldrb	r4, [ip, #10]	@ zero_extendqisi2
	orr	r8, r8, fp, asl #16
	orr	r6, r6, r10, asl #16
	ldrb	fp, [ip, #7]	@ zero_extendqisi2
	ldrb	r10, [lr, #15]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	orr	r8, r8, r10, asl #24
	ldrb	r9, [ip, #11]	@ zero_extendqisi2
	ldrb	r10, [ip, #15]	@ zero_extendqisi2
	orr	fp, r2, fp, asl #24
	orr	r7, r7, r4, asl #16
	.loc 6 85 0
	ldr	r2, [sp, #16]
	.loc 6 82 0
	ldrb	r4, [ip, #3]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #24
	orr	r4, r1, r4, asl #24
	.loc 6 83 0
	ldrb	r9, [ip, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	r1, ip, r2
	.loc 6 82 0
	orr	r6, r6, r10, asl #24
	str	r5, [r3, #240]
	.loc 6 85 0
	mov	r5, r2
	.loc 6 82 0
	str	r4, [sp, #560]
	str	r8, [r3, #244]
	.loc 6 83 0
	ldrb	r4, [lr, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	fp, [sp, #564]
	str	r7, [sp, #568]
	mov	fp, r5
	str	r6, [sp, #572]
	ldrb	r3, [lr, r5, asl #1]	@ zero_extendqisi2
	ldrb	r6, [ip, r5, asl #1]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #576]
	.loc 6 82 0
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	.loc 6 85 0
	add	r2, r1, r2
	.loc 6 82 0
	ldrb	r7, [r2, #1]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	ldrb	r8, [r2, #5]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r4, [sp, #552]
.LVL3413:
	.loc 6 82 0
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
	ldrb	r4, [r1, #12]	@ zero_extendqisi2
	orr	r5, r3, r5, asl #8
	orr	ip, ip, r9, asl #8
	ldrb	r3, [r1, #8]	@ zero_extendqisi2
	ldrb	r9, [r1, #9]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #8
	orr	r4, r4, r10, asl #8
	ldrb	r7, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r1, #2]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	orr	r3, r3, r9, asl #8
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	r9, [r1, #14]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #16
	orr	r5, r5, r10, asl #16
	ldrb	r7, [r2, #3]	@ zero_extendqisi2
	ldrb	r10, [r2, #6]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r4, r4, r9, asl #16
	ldrb	r8, [r1, #10]	@ zero_extendqisi2
	ldrb	r9, [r1, #3]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #24
	orr	r5, r5, r9, asl #24
	ldrb	r7, [r2, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #24
	orr	r4, r4, r8, asl #24
	orr	r7, lr, r7, asl #24
	orr	r9, r3, r9, asl #24
	.loc 6 85 0
	add	r3, r2, fp
	.loc 6 83 0
	ldrb	r8, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r6, [sp, #608]
	str	r5, [sp, #584]
	str	ip, [sp, #588]
	str	r7, [sp, #612]
	str	r9, [sp, #592]
	str	r4, [sp, #596]
	ldrb	r4, [r2, #8]	@ zero_extendqisi2
	ldrb	lr, [r1, fp, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r3, #5]	@ zero_extendqisi2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
.LVL3414:
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	r10, [r2, #13]	@ zero_extendqisi2
	ldrb	ip, [r2, #12]	@ zero_extendqisi2
	ldrb	r7, [r2, #9]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #8
	ldrb	r9, [r3, #2]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r8, [sp, #600]
.LVL3415:
	.loc 6 82 0
	ldrb	r6, [r3, #12]	@ zero_extendqisi2
	ldrb	r8, [r3, #13]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #8
	orr	ip, ip, r10, asl #8
	ldrb	r5, [r3, #8]	@ zero_extendqisi2
	ldrb	r10, [r3, #9]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #8
	orr	lr, lr, r9, asl #16
	ldrb	r7, [r2, #10]	@ zero_extendqisi2
	ldrb	r9, [r3, #14]	@ zero_extendqisi2
	ldrb	fp, [r3, #3]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #8
	orr	r5, r5, r10, asl #8
	ldrb	r8, [r2, #14]	@ zero_extendqisi2
	ldrb	r10, [r3, #6]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #16
	orr	r6, r6, r9, asl #16
	ldrb	r7, [r2, #11]	@ zero_extendqisi2
	ldrb	r9, [r2, #15]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r1, r1, r10, asl #16
	ldrb	r8, [r3, #10]	@ zero_extendqisi2
	ldrb	r10, [r3, #7]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	.loc 6 85 0
	ldr	fp, [sp, #16]
	.loc 6 82 0
	orr	r4, r4, r7, asl #24
	orr	r9, ip, r9, asl #24
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	ldrb	ip, [r3, #11]	@ zero_extendqisi2
	orr	r10, r1, r10, asl #24
	orr	r5, r5, r8, asl #16
	.loc 6 85 0
	add	r1, r3, fp
	.loc 6 82 0
	orr	r6, r6, r7, asl #24
	orr	r5, r5, ip, asl #24
	.loc 6 85 0
	add	ip, r1, fp
	.loc 6 83 0
	ldrb	r7, [r3, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [sp, #616]
	str	lr, [sp, #632]
	str	r9, [sp, #620]
	.loc 6 83 0
	ldrb	lr, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r10, [sp, #636]
	str	r6, [sp, #644]
	str	r5, [sp, #640]
	ldrb	r6, [r2, fp, asl #1]	@ zero_extendqisi2
	ldrb	r10, [ip, #5]	@ zero_extendqisi2
	ldrb	r2, [r3, fp, asl #1]	@ zero_extendqisi2
.LVL3416:
	ldrb	r5, [ip, #4]	@ zero_extendqisi2
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #5]	@ zero_extendqisi2
	ldrb	r8, [r1, #9]	@ zero_extendqisi2
	.loc 6 83 0
	strb	lr, [sp, #624]
.LVL3417:
	.loc 6 82 0
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	lr, [r1, #8]	@ zero_extendqisi2
	orr	r6, r6, r3, asl #8
	orr	r5, r5, r10, asl #8
	ldrb	r3, [r1, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r7, [sp, #648]
	.loc 6 82 0
	orr	r4, r4, r9, asl #8
	ldrb	r7, [ip, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #2]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	orr	r3, r3, r10, asl #8
	ldrb	r8, [ip, #6]	@ zero_extendqisi2
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	r7, [ip, #2]	@ zero_extendqisi2
	ldrb	r9, [r1, #10]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	orr	r4, r4, r10, asl #16
	ldrb	r8, [r1, #14]	@ zero_extendqisi2
	ldrb	r10, [ip, #7]	@ zero_extendqisi2
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	orr	r2, r2, r7, asl #16
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	ldrb	r7, [ip, #3]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	r9, [r1, #7]	@ zero_extendqisi2
	ldrb	r8, [r1, #11]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #24
	orr	r6, r6, fp, asl #24
	orr	r4, r4, r9, asl #24
	orr	lr, lr, r8, asl #24
	orr	r3, r3, r10, asl #24
	.loc 6 83 0
	ldrb	r1, [r1, #16]	@ zero_extendqisi2
.LVL3418:
	.loc 6 82 0
	str	r2, [sp, #680]
	str	r6, [sp, #656]
	str	r5, [sp, #684]
	str	r4, [sp, #660]
	str	lr, [sp, #664]
	str	r3, [sp, #668]
	.loc 6 83 0
	strb	r1, [sp, #672]
.LVL3419:
	.loc 6 82 0
	ldrb	r2, [ip, #8]	@ zero_extendqisi2
	ldrb	r1, [ip, #12]	@ zero_extendqisi2
	ldrb	r5, [ip, #13]	@ zero_extendqisi2
	ldrb	r3, [ip, #9]	@ zero_extendqisi2
	ldrb	r4, [ip, #14]	@ zero_extendqisi2
	ldrb	lr, [ip, #10]	@ zero_extendqisi2
	ldrb	r6, [ip, #15]	@ zero_extendqisi2
	orr	r3, r2, r3, asl #8
	orr	r2, r1, r5, asl #8
	orr	r2, r2, r4, asl #16
	ldrb	r1, [ip, #11]	@ zero_extendqisi2
	orr	r4, r2, r6, asl #24
.LBE5179:
.LBE5178:
	.loc 5 697 0 discriminator 1
	add	r8, sp, #296
	add	r6, sp, #24
	mov	r5, #17
.LBB5182:
.LBB5180:
	.loc 6 82 0
	orr	r3, r3, lr, asl #16
	orr	lr, r3, r1, asl #24
	.loc 6 83 0
	ldrb	ip, [ip, #16]	@ zero_extendqisi2
.LVL3420:
.LBE5180:
.LBE5182:
	.loc 5 697 0
	str	r0, [sp, #20]
	.loc 5 697 0 is_stmt 0 discriminator 1
	mov	r1, r8
	mov	r0, r6
.LVL3421:
	str	r5, [sp]
	mov	r2, #16
	mov	r3, #24
.LBB5183:
.LBB5181:
	.loc 6 82 0 is_stmt 1
	str	lr, [sp, #688]
	str	r4, [sp, #692]
	.loc 6 83 0
	strb	ip, [sp, #696]
.LVL3422:
.LBE5181:
.LBE5183:
	.loc 5 697 0 discriminator 1
	bl	put_mpeg4_qpel16_h_lowpass(PLT)
.LVL3423:
.LBB5184:
.LBB5185:
	.loc 1 104 0
	mov	r3, #16
	mov	ip, #24
	stmia	sp, {r3, ip}
	str	r5, [sp, #8]
	mov	r2, r8
	mov	r0, r6
	mov	r1, r6
	bl	put_pixels8_l2_8(PLT)
.LVL3424:
.LBB5186:
.LBB5187:
.LBB5188:
	.loc 1 104 0 is_stmt 0 discriminator 4
	ldr	r3, [sp, #32]
.LVL3425:
	ldr	r0, [sp, #304]
.LVL3426:
	ldr	r1, [sp, #36]
.LVL3427:
.LBB5189:
.LBB5190:
	.loc 2 33 0 is_stmt 1
	orr	r6, r0, r3
.LVL3428:
	eor	fp, r0, r3
	ldr	r3, .L402
.LVL3429:
.LBE5190:
.LBE5189:
	.loc 1 104 0 discriminator 4
	ldr	r5, [sp, #308]
.LVL3430:
.LBB5231:
.LBB5191:
	.loc 2 33 0
	and	r0, fp, r3
.LVL3431:
	sub	r0, r6, r0, lsr #1
.LBE5191:
.LBE5231:
	.loc 1 104 0 discriminator 4
	str	r0, [sp, #32]
.LVL3432:
.LBB5232:
.LBB5233:
	.loc 2 33 0
	eor	r0, r5, r1
.LBE5233:
.LBE5232:
	.loc 1 104 0 discriminator 4
	ldr	r2, [sp, #48]
	ldr	r9, [sp, #328]
.LBB5277:
.LBB5234:
	.loc 2 33 0
	and	r0, r0, r3
	orr	r1, r5, r1
.LVL3433:
	sub	r1, r1, r0, lsr #1
.LBE5234:
.LBE5277:
	.loc 1 104 0 discriminator 4
	str	r1, [sp, #36]
.LVL3434:
.LBB5278:
.LBB5192:
	.loc 2 33 0
	eor	r1, r9, r2
.LBE5192:
.LBE5278:
	.loc 1 104 0 discriminator 4
	ldr	r4, [sp, #52]
.LVL3435:
	ldr	r10, [sp, #332]
.LVL3436:
.LBB5279:
.LBB5193:
	.loc 2 33 0
	and	r1, r1, r3
	orr	r2, r9, r2
.LVL3437:
	sub	r2, r2, r1, lsr #1
.LBE5193:
.LBE5279:
	.loc 1 104 0 discriminator 4
	str	r2, [sp, #48]
.LVL3438:
.LBB5280:
.LBB5235:
	.loc 2 33 0
	eor	r2, r10, r4
.LBE5235:
.LBE5280:
	.loc 1 104 0 discriminator 4
	ldr	lr, [sp, #64]
	ldr	r8, [sp, #352]
.LVL3439:
.LBB5281:
.LBB5236:
	.loc 2 33 0
	and	r2, r2, r3
	orr	r4, r10, r4
.LVL3440:
	sub	r4, r4, r2, lsr #1
.LBE5236:
.LBE5281:
	.loc 1 104 0 discriminator 4
	ldr	ip, [sp, #68]
	ldr	r7, [sp, #356]
	str	r4, [sp, #52]
.LVL3441:
.LBB5282:
.LBB5194:
	.loc 2 33 0
	eor	r4, r8, lr
	and	r4, r4, r3
	orr	lr, r8, lr
.LVL3442:
	sub	r4, lr, r4, lsr #1
.LBE5194:
.LBE5282:
.LBB5283:
.LBB5237:
	eor	lr, r7, ip
	and	lr, lr, r3
	orr	ip, r7, ip
.LVL3443:
.LBE5237:
.LBE5283:
	.loc 1 104 0 discriminator 4
	ldr	r6, [sp, #376]
.LBB5284:
.LBB5238:
	.loc 2 33 0
	sub	lr, ip, lr, lsr #1
.LBE5238:
.LBE5284:
.LBB5285:
.LBB5195:
	ldr	ip, [sp, #80]
.LBE5195:
.LBE5285:
	.loc 1 104 0 discriminator 4
	str	r4, [sp, #64]
.LVL3444:
.LBB5286:
.LBB5196:
	.loc 2 33 0
	ldr	r4, [sp, #80]
	eor	ip, r6, ip
	and	ip, ip, r3
	orr	r6, r6, r4
.LBE5196:
.LBE5286:
	.loc 1 104 0 discriminator 4
	ldr	r5, [sp, #96]
	ldr	r9, [sp, #100]
	ldr	r0, [sp, #380]
	ldr	r1, [sp, #400]
	ldr	r2, [sp, #404]
.LBB5287:
.LBB5239:
	.loc 2 33 0
	ldr	r4, [sp, #84]
.LBE5239:
.LBE5287:
.LBB5288:
.LBB5197:
	sub	ip, r6, ip, lsr #1
.LBE5197:
.LBE5288:
.LBB5289:
.LBB5240:
	ldr	r6, [sp, #84]
	eor	r7, r2, r9
.LVL3445:
	eor	r4, r0, r4
	orr	r0, r0, r6
.LBE5240:
.LBE5289:
.LBB5290:
.LBB5198:
	eor	r6, r1, r5
.LBE5198:
.LBE5290:
.LBB5291:
.LBB5241:
	and	r4, r4, r3
.LBE5241:
.LBE5291:
.LBB5292:
.LBB5199:
	and	r6, r6, r3
.LBE5199:
.LBE5292:
.LBB5293:
.LBB5242:
	and	r7, r7, r3
.LBE5242:
.LBE5293:
.LBB5294:
.LBB5200:
	orr	r1, r1, r5
.LBE5200:
.LBE5294:
.LBB5295:
.LBB5243:
	orr	r2, r2, r9
	sub	r0, r0, r4, lsr #1
.LBE5243:
.LBE5295:
.LBB5296:
.LBB5201:
	sub	r1, r1, r6, lsr #1
.LBE5201:
.LBE5296:
.LBB5297:
.LBB5244:
	sub	r2, r2, r7, lsr #1
.LBE5244:
.LBE5297:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #424]
	ldr	r10, [sp, #112]
	str	lr, [sp, #68]
.LVL3446:
	str	ip, [sp, #80]
	str	r0, [sp, #84]
	str	r1, [sp, #96]
	str	r2, [sp, #100]
	ldr	r7, [sp, #116]
	ldr	r0, [sp, #428]
	ldr	r1, [sp, #128]
.LBB5298:
.LBB5245:
	.loc 2 33 0
	eor	r6, r0, r7
.LBE5245:
.LBE5298:
	.loc 1 104 0 discriminator 4
	ldr	r5, [sp, #448]
.LBB5299:
.LBB5246:
	.loc 2 33 0
	and	r6, r6, r3
	orr	r0, r0, r7
	sub	r0, r0, r6, lsr #1
.LBE5246:
.LBE5299:
	.loc 1 104 0 discriminator 4
	str	r0, [sp, #116]
.LBB5300:
.LBB5202:
	.loc 2 33 0
	eor	r0, r5, r1
.LBE5202:
.LBE5300:
	.loc 1 104 0 discriminator 4
	ldr	r2, [sp, #132]
	ldr	r9, [sp, #452]
.LBB5301:
.LBB5203:
	.loc 2 33 0
	eor	r8, fp, r10
.LVL3447:
	and	r0, r0, r3
	orr	r1, r5, r1
	and	r8, r8, r3
.LVL3448:
	sub	r1, r1, r0, lsr #1
	orr	r10, fp, r10
	sub	r10, r10, r8, lsr #1
.LBE5203:
.LBE5301:
	.loc 1 104 0 discriminator 4
	str	r1, [sp, #128]
.LBB5302:
.LBB5247:
	.loc 2 33 0
	eor	r1, r9, r2
.LBE5247:
.LBE5302:
	.loc 1 104 0 discriminator 4
	ldr	r4, [sp, #144]
	str	r10, [sp, #112]
.LBB5303:
.LBB5248:
	.loc 2 33 0
	and	r1, r1, r3
.LBE5248:
.LBE5303:
	.loc 1 104 0 discriminator 4
	ldr	r10, [sp, #472]
.LBB5304:
.LBB5249:
	.loc 2 33 0
	orr	r2, r9, r2
.LVL3449:
	sub	r2, r2, r1, lsr #1
.LBE5249:
.LBE5304:
	.loc 1 104 0 discriminator 4
	str	r2, [sp, #132]
.LVL3450:
.LBB5305:
.LBB5204:
	.loc 2 33 0
	eor	r2, r10, r4
.LBE5204:
.LBE5305:
	.loc 1 104 0 discriminator 4
	ldr	lr, [sp, #148]
.LVL3451:
	ldr	r8, [sp, #476]
.LVL3452:
.LBB5306:
.LBB5205:
	.loc 2 33 0
	and	r2, r2, r3
	orr	r4, r10, r4
.LVL3453:
	sub	r4, r4, r2, lsr #1
.LBE5205:
.LBE5306:
	.loc 1 104 0 discriminator 4
	str	r4, [sp, #144]
.LVL3454:
.LBB5307:
.LBB5250:
	.loc 2 33 0
	eor	r4, r8, lr
.LBE5250:
.LBE5307:
	.loc 1 104 0 discriminator 4
	ldr	ip, [sp, #160]
	ldr	r7, [sp, #496]
.LBB5308:
.LBB5251:
	.loc 2 33 0
	orr	lr, r8, lr
.LVL3455:
	and	r4, r4, r3
	sub	r4, lr, r4, lsr #1
.LBE5251:
.LBE5308:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #164]
	ldr	r6, [sp, #500]
	str	r4, [sp, #148]
.LVL3456:
.LBB5309:
.LBB5206:
	.loc 2 33 0
	eor	r4, r7, ip
	and	r4, r4, r3
	orr	ip, r7, ip
.LVL3457:
	sub	r4, ip, r4, lsr #1
.LBE5206:
.LBE5309:
.LBB5310:
.LBB5252:
	eor	ip, r6, fp
	and	ip, ip, r3
	orr	r6, r6, fp
.LVL3458:
.LBE5252:
.LBE5310:
	.loc 1 104 0 discriminator 4
	ldr	r5, [sp, #180]
	ldr	r9, [sp, #192]
.LBB5311:
.LBB5207:
	.loc 2 33 0
	ldr	r7, [sp, #176]
.LVL3459:
.LBE5207:
.LBE5311:
	.loc 1 104 0 discriminator 4
	ldr	r0, [sp, #520]
	ldr	r1, [sp, #524]
	ldr	r2, [sp, #544]
.LBB5312:
.LBB5253:
	.loc 2 33 0
	sub	ip, r6, ip, lsr #1
.LBE5253:
.LBE5312:
.LBB5313:
.LBB5208:
	ldr	r6, [sp, #176]
	eor	r8, r2, r9
	eor	r6, r0, r6
	orr	r0, r0, r7
.LBE5208:
.LBE5313:
.LBB5314:
.LBB5254:
	eor	r7, r1, r5
.LBE5254:
.LBE5314:
.LBB5315:
.LBB5209:
	and	r6, r6, r3
.LBE5209:
.LBE5315:
.LBB5316:
.LBB5255:
	and	r7, r7, r3
.LBE5255:
.LBE5316:
.LBB5317:
.LBB5210:
	and	r8, r8, r3
.LBE5210:
.LBE5317:
.LBB5318:
.LBB5256:
	orr	r1, r1, r5
.LBE5256:
.LBE5318:
.LBB5319:
.LBB5211:
	orr	r2, r2, r9
	sub	r0, r0, r6, lsr #1
.LBE5211:
.LBE5319:
.LBB5320:
.LBB5257:
	sub	r1, r1, r7, lsr #1
.LBE5257:
.LBE5320:
.LBB5321:
.LBB5212:
	sub	r2, r2, r8, lsr #1
.LBE5212:
.LBE5321:
	.loc 1 104 0 discriminator 4
	ldr	r10, [sp, #196]
	ldr	lr, [sp, #548]
	str	r4, [sp, #160]
.LVL3460:
	str	ip, [sp, #164]
	str	r0, [sp, #176]
	str	r1, [sp, #180]
	str	r2, [sp, #192]
	ldr	r7, [sp, #208]
	ldr	r0, [sp, #568]
	ldr	r1, [sp, #212]
.LBB5322:
.LBB5213:
	.loc 2 33 0
	eor	r6, r0, r7
.LBE5213:
.LBE5322:
	.loc 1 104 0 discriminator 4
	ldr	r5, [sp, #572]
.LBB5323:
.LBB5214:
	.loc 2 33 0
	and	r6, r6, r3
	orr	r0, r0, r7
	sub	r0, r0, r6, lsr #1
.LBE5214:
.LBE5323:
	.loc 1 104 0 discriminator 4
	str	r0, [sp, #208]
.LBB5324:
.LBB5258:
	.loc 2 33 0
	eor	r0, r5, r1
.LBE5258:
.LBE5324:
	.loc 1 104 0 discriminator 4
	ldr	r2, [sp, #224]
	ldr	r9, [sp, #592]
.LBB5325:
.LBB5259:
	.loc 2 33 0
	and	r0, r0, r3
	orr	r1, r5, r1
	sub	r1, r1, r0, lsr #1
.LBE5259:
.LBE5325:
	.loc 1 104 0 discriminator 4
	str	r1, [sp, #212]
.LBB5326:
.LBB5215:
	.loc 2 33 0
	eor	r1, r9, r2
.LBE5215:
.LBE5326:
	.loc 1 104 0 discriminator 4
	ldr	r4, [sp, #228]
.LBB5327:
.LBB5260:
	.loc 2 33 0
	eor	fp, lr, r10
.LVL3461:
.LBE5260:
.LBE5327:
.LBB5328:
.LBB5216:
	and	r1, r1, r3
.LBE5216:
.LBE5328:
.LBB5329:
.LBB5261:
	orr	lr, lr, r10
.LBE5261:
.LBE5329:
.LBB5330:
.LBB5217:
	orr	r2, r9, r2
.LBE5217:
.LBE5330:
	.loc 1 104 0 discriminator 4
	ldr	r10, [sp, #596]
.LBB5331:
.LBB5262:
	.loc 2 33 0
	and	fp, fp, r3
.LVL3462:
.LBE5262:
.LBE5331:
.LBB5332:
.LBB5218:
	sub	r2, r2, r1, lsr #1
.LBE5218:
.LBE5332:
.LBB5333:
.LBB5263:
	sub	lr, lr, fp, lsr #1
.LBE5263:
.LBE5333:
	.loc 1 104 0 discriminator 4
	str	r2, [sp, #224]
.LBB5334:
.LBB5264:
	.loc 2 33 0
	eor	r2, r10, r4
.LBE5264:
.LBE5334:
	.loc 1 104 0 discriminator 4
	ldr	r8, [sp, #616]
	str	lr, [sp, #196]
.LVL3463:
.LBB5335:
.LBB5265:
	.loc 2 33 0
	and	r2, r2, r3
.LBE5265:
.LBE5335:
	.loc 1 104 0 discriminator 4
	ldr	lr, [sp, #240]
.LBB5336:
.LBB5266:
	.loc 2 33 0
	orr	r4, r10, r4
.LVL3464:
	sub	r4, r4, r2, lsr #1
.LBE5266:
.LBE5336:
	.loc 1 104 0 discriminator 4
	str	r4, [sp, #228]
.LVL3465:
.LBB5337:
.LBB5219:
	.loc 2 33 0
	eor	r4, r8, lr
.LBE5219:
.LBE5337:
	.loc 1 104 0 discriminator 4
	ldr	ip, [sp, #244]
.LVL3466:
	ldr	r7, [sp, #620]
.LVL3467:
.LBB5338:
.LBB5220:
	.loc 2 33 0
	orr	lr, r8, lr
.LVL3468:
	and	r4, r4, r3
	sub	r4, lr, r4, lsr #1
.LBE5220:
.LBE5338:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #256]
	ldr	r6, [sp, #640]
	str	r4, [sp, #240]
.LVL3469:
.LBB5339:
.LBB5267:
	.loc 2 33 0
	eor	r4, r7, ip
	and	r4, r4, r3
	orr	ip, r7, ip
.LVL3470:
	sub	r4, ip, r4, lsr #1
.LBE5267:
.LBE5339:
.LBB5340:
.LBB5221:
	eor	ip, r6, fp
	and	ip, ip, r3
	orr	r6, r6, fp
.LBE5221:
.LBE5340:
	.loc 1 104 0 discriminator 4
	ldr	r5, [sp, #272]
.LBB5341:
.LBB5268:
	.loc 2 33 0
	ldr	r7, [sp, #260]
.LVL3471:
.LBE5268:
.LBE5341:
	.loc 1 104 0 discriminator 4
	ldr	r0, [sp, #644]
	ldr	r1, [sp, #664]
	ldr	r9, [sp, #276]
	ldr	r2, [sp, #668]
.LBB5342:
.LBB5222:
	.loc 2 33 0
	sub	ip, r6, ip, lsr #1
.LBE5222:
.LBE5342:
.LBB5343:
.LBB5269:
	ldr	r6, [sp, #260]
	eor	r8, r2, r9
.LVL3472:
	eor	r6, r0, r6
	orr	r0, r0, r7
.LBE5269:
.LBE5343:
.LBB5344:
.LBB5223:
	eor	r7, r1, r5
.LBE5223:
.LBE5344:
.LBB5345:
.LBB5270:
	and	r6, r6, r3
.LBE5270:
.LBE5345:
.LBB5346:
.LBB5224:
	and	r7, r7, r3
.LBE5224:
.LBE5346:
.LBB5347:
.LBB5271:
	and	r8, r8, r3
.LBE5271:
.LBE5347:
.LBB5348:
.LBB5225:
	orr	r1, r1, r5
.LBE5225:
.LBE5348:
.LBB5349:
.LBB5272:
	orr	r2, r2, r9
	sub	r0, r0, r6, lsr #1
.LBE5272:
.LBE5349:
.LBB5350:
.LBB5226:
	sub	r1, r1, r7, lsr #1
.LBE5226:
.LBE5350:
.LBB5351:
.LBB5273:
	sub	r2, r2, r8, lsr #1
.LBE5273:
.LBE5351:
	.loc 1 104 0 discriminator 4
	ldr	r10, [sp, #288]
	ldr	lr, [sp, #688]
	str	ip, [sp, #256]
	str	r0, [sp, #260]
	str	r1, [sp, #272]
	str	r4, [sp, #244]
.LVL3473:
	str	r2, [sp, #276]
	ldr	r2, [sp, #292]
	ldr	r1, [sp, #692]
.LBB5352:
.LBB5227:
	.loc 2 33 0
	eor	fp, lr, r10
.LBE5227:
.LBE5352:
.LBB5353:
.LBB5274:
	eor	ip, r1, r2
.LBE5274:
.LBE5353:
.LBB5354:
.LBB5228:
	and	fp, fp, r3
.LVL3474:
.LBE5228:
.LBE5354:
.LBB5355:
.LBB5275:
	orr	r1, r1, r2
.LVL3475:
	and	r3, r3, ip
.LBE5275:
.LBE5355:
.LBB5356:
.LBB5229:
	orr	lr, lr, r10
.LVL3476:
.LBE5229:
.LBE5356:
.LBB5357:
.LBB5276:
	sub	r3, r1, r3, lsr #1
.LBE5276:
.LBE5357:
.LBB5358:
.LBB5230:
	sub	lr, lr, fp, lsr #1
.LBE5230:
.LBE5358:
.LBE5188:
.LBE5187:
.LBE5186:
.LBE5185:
.LBE5184:
	.loc 5 697 0 discriminator 3
	ldr	r0, [sp, #20]
	ldr	r2, [sp, #16]
.LVL3477:
	add	r1, sp, #24
.LVL3478:
.LBB5363:
.LBB5362:
.LBB5361:
.LBB5360:
.LBB5359:
	.loc 1 104 0 discriminator 4
	str	lr, [sp, #288]
	str	r3, [sp, #292]
.LVL3479:
.LBE5359:
.LBE5360:
.LBE5361:
.LBE5362:
.LBE5363:
	.loc 5 697 0 discriminator 3
	bl	avg_mpeg4_qpel16_v_lowpass.constprop.1(PLT)
.LVL3480:
	.loc 5 697 0 is_stmt 0
	add	sp, sp, #708
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3481:
.L403:
	.align	2
.L402:
	.word	-16843010
	.cfi_endproc
.LFE236:
	.size	avg_qpel16_mc12_c, .-avg_qpel16_mc12_c
	.align	2
	.type	put_qpel16_mc12_c, %function
put_qpel16_mc12_c:
.LFB144:
	.loc 5 695 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 688
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3482:
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
	sub	sp, sp, #708
	.cfi_def_cfa_offset 744
.LVL3483:
.LBB5375:
.LBB5376:
	.loc 6 85 0
	add	r4, r1, r2
	.loc 6 82 0
	str	r2, [sp, #16]
	ldrb	r3, [r1, r2]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r2, [r1]	@ zero_extendqisi2
.LVL3484:
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	ldrb	r6, [r1, #4]	@ zero_extendqisi2
	orr	r7, r2, r7, asl #8
	orr	r6, r6, r10, asl #8
	ldrb	r2, [r4, #4]	@ zero_extendqisi2
	ldrb	r10, [r4, #5]	@ zero_extendqisi2
	ldrb	r9, [r1, #9]	@ zero_extendqisi2
	ldrb	r8, [r1, #13]	@ zero_extendqisi2
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
	ldrb	ip, [r1, #12]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #8
	ldrb	r10, [r1, #10]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #8
	orr	ip, ip, r8, asl #8
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	lr, [r4, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #2]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #16
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #16
	ldrb	r8, [r4, #6]	@ zero_extendqisi2
	orr	r6, r6, r10, asl #24
	orr	r3, r3, lr, asl #8
	ldrb	r10, [r4, #7]	@ zero_extendqisi2
	ldrb	lr, [r4, #2]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #16
	ldrb	r9, [r1, #14]	@ zero_extendqisi2
	orr	r2, r2, r8, asl #16
	orr	r3, r3, lr, asl #16
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	ldrb	lr, [r4, #3]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #16
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #24
	.loc 6 85 0
	ldr	r10, [sp, #16]
	.loc 6 82 0
	orr	lr, r3, lr, asl #24
	orr	r7, r7, fp, asl #24
	add	r3, sp, #304
	orr	r5, r5, r9, asl #24
	orr	r8, ip, r8, asl #24
	.loc 6 85 0
	add	ip, r4, r10
	.loc 6 83 0
	ldrb	r9, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	stmia	r3, {r5, r8}
	str	lr, [r3, #16]
	str	r7, [r3, #-8]
	str	r6, [r3, #-4]
	str	r2, [r3, #20]
	ldrb	r2, [r1, r10, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r4, #13]	@ zero_extendqisi2
	ldrb	r1, [r4, #12]	@ zero_extendqisi2
.LVL3485:
	ldrb	r10, [ip, #5]	@ zero_extendqisi2
	ldrb	r7, [ip, #4]	@ zero_extendqisi2
	ldrb	r5, [ip, #1]	@ zero_extendqisi2
	orr	r8, r1, r8, asl #8
	orr	r7, r7, r10, asl #8
	ldrb	r1, [ip, #12]	@ zero_extendqisi2
	ldrb	r10, [ip, #13]	@ zero_extendqisi2
	ldrb	r6, [ip, #8]	@ zero_extendqisi2
	orr	r2, r2, r5, asl #8
	ldrb	r5, [ip, #9]	@ zero_extendqisi2
	ldrb	lr, [r4, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #312]
.LVL3486:
	.loc 6 82 0
	orr	r1, r1, r10, asl #8
	ldrb	r9, [r4, #9]	@ zero_extendqisi2
	ldrb	r10, [ip, #6]	@ zero_extendqisi2
	ldrb	fp, [r4, #14]	@ zero_extendqisi2
	orr	r6, r6, r5, asl #8
	ldrb	r5, [ip, #2]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #8
	orr	r7, r7, r10, asl #16
	ldrb	r9, [r4, #10]	@ zero_extendqisi2
	ldrb	r10, [ip, #14]	@ zero_extendqisi2
	orr	r2, r2, r5, asl #16
	orr	r8, r8, fp, asl #16
	ldrb	r5, [ip, #10]	@ zero_extendqisi2
	ldrb	fp, [ip, #7]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #16
	orr	r1, r1, r10, asl #16
	ldrb	r9, [r4, #11]	@ zero_extendqisi2
	ldrb	r10, [r4, #15]	@ zero_extendqisi2
	orr	r7, r7, fp, asl #24
	orr	r6, r6, r5, asl #16
	.loc 6 85 0
	ldr	fp, [sp, #16]
	.loc 6 82 0
	ldrb	r5, [ip, #3]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #24
	orr	r8, r8, r10, asl #24
	ldrb	r9, [ip, #11]	@ zero_extendqisi2
	ldrb	r10, [ip, #15]	@ zero_extendqisi2
	orr	r5, r2, r5, asl #24
	.loc 6 85 0
	add	r2, ip, fp
	.loc 6 82 0
	orr	r6, r6, r9, asl #24
	orr	r1, r1, r10, asl #24
	str	lr, [r3, #24]
	.loc 6 85 0
	add	lr, r2, fp
	.loc 6 83 0
	ldrb	r10, [ip, #16]	@ zero_extendqisi2
	ldrb	r9, [r4, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r5, [r3, #40]
	str	r8, [r3, #28]
	str	r7, [r3, #44]
	str	r6, [r3, #48]
	str	r1, [r3, #52]
	ldrb	r7, [ip, fp, asl #1]	@ zero_extendqisi2
	ldrb	r8, [lr, #1]	@ zero_extendqisi2
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r10, [sp, #360]
	strb	r9, [sp, #336]
.LVL3487:
	.loc 6 82 0
	ldrb	r10, [r4, fp, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r2, #9]	@ zero_extendqisi2
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	ldrb	r4, [r2, #12]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	ldrb	r8, [r2, #13]	@ zero_extendqisi2
	orr	r6, r1, r6, asl #8
	orr	r5, r5, r9, asl #8
	ldrb	r1, [lr, #4]	@ zero_extendqisi2
	ldrb	r9, [lr, #5]	@ zero_extendqisi2
	orr	r4, r4, r8, asl #8
	ldrb	r8, [lr, #2]	@ zero_extendqisi2
	ldrb	ip, [r2, #1]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r9, [r2, #6]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	orr	ip, r10, ip, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	r10, [r2, #2]	@ zero_extendqisi2
	ldrb	r9, [r2, #14]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	ldrb	r8, [lr, #6]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #16
	orr	r1, r1, r8, asl #16
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #16
	ldrb	r9, [lr, #3]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #24
	orr	r7, r7, r9, asl #24
	ldrb	r10, [r2, #11]	@ zero_extendqisi2
	ldrb	r9, [r2, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [lr, #7]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	orr	r4, r4, r9, asl #24
	orr	r8, r1, r8, asl #24
	.loc 6 85 0
	add	r1, lr, fp
	.loc 6 83 0
	ldrb	r9, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	ip, [r3, #64]
	str	r7, [r3, #88]
	str	r6, [r3, #68]
	str	r4, [r3, #76]
	str	r8, [r3, #92]
	str	r5, [r3, #72]
	ldrb	r5, [lr, #8]	@ zero_extendqisi2
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	ldrb	r2, [r2, fp, asl #1]	@ zero_extendqisi2
.LVL3488:
	ldrb	ip, [lr, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r8, [lr, #13]	@ zero_extendqisi2
	ldrb	r7, [r1, #4]	@ zero_extendqisi2
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #8
	ldrb	r4, [r1, #9]	@ zero_extendqisi2
	orr	r8, ip, r8, asl #8
	orr	r7, r7, r10, asl #8
	ldrb	ip, [r1, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #384]
.LVL3489:
	.loc 6 82 0
	orr	r6, r6, r4, asl #8
	ldrb	r9, [lr, #9]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #8
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #16
	orr	r5, r5, r9, asl #8
	ldrb	r4, [r1, #10]	@ zero_extendqisi2
	ldrb	r9, [lr, #10]	@ zero_extendqisi2
	orr	r7, r7, r10, asl #16
	ldrb	r10, [r1, #14]	@ zero_extendqisi2
	ldrb	fp, [lr, #14]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	orr	r6, r6, r4, asl #16
	ldrb	r9, [lr, #11]	@ zero_extendqisi2
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #16
	ldrb	r10, [lr, #15]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	orr	r4, r2, r4, asl #24
	orr	r8, r8, fp, asl #16
	.loc 6 85 0
	ldr	r2, [sp, #16]
	.loc 6 82 0
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #24
	str	r5, [r3, #96]
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	.loc 6 85 0
	ldr	r5, [sp, #16]
	add	r2, r1, r2
	.loc 6 82 0
	orr	r7, r7, fp, asl #24
	orr	r6, r6, r9, asl #24
	orr	r10, ip, r10, asl #24
	.loc 6 85 0
	add	ip, r2, r5
	.loc 6 83 0
	ldrb	fp, [r1, #16]	@ zero_extendqisi2
	ldrb	r9, [lr, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [r3, #112]
	str	r8, [r3, #100]
	str	r7, [r3, #116]
	str	r6, [r3, #120]
	ldrb	r7, [r1, r5, asl #1]	@ zero_extendqisi2
	ldrb	r8, [ip, #1]	@ zero_extendqisi2
	str	r10, [r3, #124]
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	.loc 6 83 0
	strb	fp, [sp, #432]
	strb	r9, [sp, #408]
.LVL3490:
	.loc 6 82 0
	mov	fp, r5
	ldrb	r9, [r2, #9]	@ zero_extendqisi2
	ldrb	lr, [lr, r5, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	ldrb	r4, [r2, #12]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #8
	ldrb	r8, [r2, #13]	@ zero_extendqisi2
	orr	r6, r1, r6, asl #8
	orr	r5, r5, r9, asl #8
	ldrb	r1, [ip, #4]	@ zero_extendqisi2
	ldrb	r9, [ip, #5]	@ zero_extendqisi2
	orr	r4, r4, r8, asl #8
	ldrb	r8, [ip, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #1]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #8
	orr	r7, r7, r8, asl #16
	ldrb	r9, [r2, #6]	@ zero_extendqisi2
	ldrb	r8, [r2, #10]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	r10, [r2, #2]	@ zero_extendqisi2
	ldrb	r9, [r2, #14]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	ldrb	r8, [ip, #6]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	orr	r1, r1, r8, asl #16
	ldrb	r10, [r2, #3]	@ zero_extendqisi2
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	orr	r4, r4, r9, asl #16
	ldrb	r9, [ip, #3]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #24
	orr	r7, r7, r9, asl #24
	ldrb	r10, [r2, #11]	@ zero_extendqisi2
	ldrb	r9, [r2, #15]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #24
	ldrb	r8, [ip, #7]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	orr	r4, r4, r9, asl #24
	orr	r8, r1, r8, asl #24
	.loc 6 85 0
	add	r1, ip, fp
	.loc 6 83 0
	ldrb	r9, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	lr, [r3, #136]
	str	r7, [r3, #160]
	str	r6, [r3, #140]
	str	r5, [r3, #144]
	str	r4, [r3, #148]
	str	r8, [r3, #164]
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	ldrb	r2, [r2, fp, asl #1]	@ zero_extendqisi2
.LVL3491:
	ldrb	lr, [ip, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	ldrb	r8, [ip, #13]	@ zero_extendqisi2
	ldrb	r7, [r1, #4]	@ zero_extendqisi2
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #8
	ldrb	r4, [r1, #9]	@ zero_extendqisi2
	orr	r8, lr, r8, asl #8
	orr	r7, r7, r10, asl #8
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	ldrb	r5, [ip, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #456]
.LVL3492:
	.loc 6 82 0
	orr	r6, r6, r4, asl #8
	ldrb	r9, [ip, #9]	@ zero_extendqisi2
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #8
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	r2, r2, r4, asl #16
	orr	r5, r5, r9, asl #8
	ldrb	r4, [r1, #10]	@ zero_extendqisi2
	ldrb	r9, [ip, #10]	@ zero_extendqisi2
	orr	r7, r7, r10, asl #16
	ldrb	r10, [r1, #14]	@ zero_extendqisi2
	ldrb	fp, [ip, #14]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	orr	r6, r6, r4, asl #16
	ldrb	r9, [ip, #11]	@ zero_extendqisi2
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	ldrb	r10, [ip, #15]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	orr	r4, r2, r4, asl #24
	orr	r8, r8, fp, asl #16
	.loc 6 85 0
	ldr	r2, [sp, #16]
	.loc 6 82 0
	ldrb	fp, [r1, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #24
	str	r5, [r3, #168]
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	.loc 6 85 0
	ldr	r5, [sp, #16]
	add	r2, r1, r2
	.loc 6 82 0
	orr	r7, r7, fp, asl #24
	orr	r6, r6, r9, asl #24
	orr	r10, lr, r10, asl #24
	.loc 6 83 0
	ldrb	r9, [ip, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	lr, r2, r5
	.loc 6 83 0
	ldrb	fp, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [r3, #184]
	str	r8, [r3, #172]
	str	r7, [r3, #188]
	str	r6, [r3, #192]
	ldrb	r8, [r1, r5, asl #1]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #480]
.LVL3493:
	.loc 6 82 0
	ldrb	r9, [lr, #1]	@ zero_extendqisi2
	str	r10, [r3, #196]
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	ldrb	r10, [r2, #9]	@ zero_extendqisi2
	.loc 6 83 0
	strb	fp, [sp, #504]
	.loc 6 82 0
	ldrb	ip, [ip, r5, asl #1]	@ zero_extendqisi2
	mov	fp, r5
	ldrb	r7, [r2, #5]	@ zero_extendqisi2
	ldrb	r6, [r2, #8]	@ zero_extendqisi2
	ldrb	r5, [r2, #12]	@ zero_extendqisi2
	orr	r8, r8, r9, asl #8
	ldrb	r9, [r2, #13]	@ zero_extendqisi2
	orr	r7, r1, r7, asl #8
	orr	r6, r6, r10, asl #8
	ldrb	r1, [lr, #4]	@ zero_extendqisi2
	ldrb	r10, [lr, #5]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #8
	ldrb	r9, [lr, #2]	@ zero_extendqisi2
	ldrb	r4, [r2, #1]	@ zero_extendqisi2
	orr	r1, r1, r10, asl #8
	orr	r8, r8, r9, asl #16
	ldrb	r10, [r2, #6]	@ zero_extendqisi2
	ldrb	r9, [r2, #10]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #8
	orr	r7, r7, r10, asl #16
	ldrb	r4, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #14]	@ zero_extendqisi2
	orr	r6, r6, r9, asl #16
	ldrb	r9, [lr, #6]	@ zero_extendqisi2
	orr	ip, ip, r4, asl #16
	orr	r5, r5, r10, asl #16
	ldrb	r4, [r2, #3]	@ zero_extendqisi2
	ldrb	r10, [lr, #3]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #16
	ldrb	r9, [r2, #7]	@ zero_extendqisi2
	orr	r4, ip, r4, asl #24
	orr	r8, r8, r10, asl #24
	ldrb	ip, [r2, #11]	@ zero_extendqisi2
	ldrb	r10, [r2, #15]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #24
	ldrb	r9, [lr, #7]	@ zero_extendqisi2
	orr	r6, r6, ip, asl #24
	orr	r5, r5, r10, asl #24
	.loc 6 85 0
	add	ip, lr, fp
	.loc 6 82 0
	orr	r1, r1, r9, asl #24
	str	r4, [r3, #208]
	.loc 6 83 0
	ldrb	r9, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r8, [r3, #232]
	str	r7, [r3, #212]
	str	r6, [r3, #216]
	str	r5, [r3, #220]
	str	r1, [r3, #236]
	ldrb	r1, [r2, fp, asl #1]	@ zero_extendqisi2
	ldrb	r6, [lr, #12]	@ zero_extendqisi2
	ldrb	r10, [ip, #5]	@ zero_extendqisi2
	ldrb	r8, [lr, #13]	@ zero_extendqisi2
	ldrb	r2, [ip, #4]	@ zero_extendqisi2
.LVL3494:
	ldrb	r4, [ip, #1]	@ zero_extendqisi2
	orr	r8, r6, r8, asl #8
	orr	r2, r2, r10, asl #8
	ldrb	r6, [ip, #12]	@ zero_extendqisi2
	ldrb	r10, [ip, #13]	@ zero_extendqisi2
	ldrb	r5, [lr, #8]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #528]
.LVL3495:
	.loc 6 82 0
	ldrb	r7, [ip, #8]	@ zero_extendqisi2
	ldrb	r9, [lr, #9]	@ zero_extendqisi2
	orr	r1, r1, r4, asl #8
	orr	r6, r6, r10, asl #8
	ldrb	r4, [ip, #9]	@ zero_extendqisi2
	ldrb	r10, [ip, #6]	@ zero_extendqisi2
	ldrb	fp, [lr, #14]	@ zero_extendqisi2
	orr	r2, r2, r10, asl #16
	orr	r5, r5, r9, asl #8
	ldrb	r10, [ip, #14]	@ zero_extendqisi2
	ldrb	r9, [lr, #10]	@ zero_extendqisi2
	orr	r7, r7, r4, asl #8
	ldrb	r4, [ip, #2]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #16
	orr	r1, r1, r4, asl #16
	ldrb	r9, [lr, #11]	@ zero_extendqisi2
	ldrb	r4, [ip, #10]	@ zero_extendqisi2
	orr	r8, r8, fp, asl #16
	orr	r6, r6, r10, asl #16
	ldrb	fp, [ip, #7]	@ zero_extendqisi2
	ldrb	r10, [lr, #15]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	orr	r8, r8, r10, asl #24
	ldrb	r9, [ip, #11]	@ zero_extendqisi2
	ldrb	r10, [ip, #15]	@ zero_extendqisi2
	orr	fp, r2, fp, asl #24
	orr	r7, r7, r4, asl #16
	.loc 6 85 0
	ldr	r2, [sp, #16]
	.loc 6 82 0
	ldrb	r4, [ip, #3]	@ zero_extendqisi2
	orr	r7, r7, r9, asl #24
	orr	r4, r1, r4, asl #24
	.loc 6 83 0
	ldrb	r9, [ip, #16]	@ zero_extendqisi2
	.loc 6 85 0
	add	r1, ip, r2
	.loc 6 82 0
	orr	r6, r6, r10, asl #24
	str	r5, [r3, #240]
	.loc 6 85 0
	mov	r5, r2
	.loc 6 82 0
	str	r4, [sp, #560]
	str	r8, [r3, #244]
	.loc 6 83 0
	ldrb	r4, [lr, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	fp, [sp, #564]
	str	r7, [sp, #568]
	mov	fp, r5
	str	r6, [sp, #572]
	ldrb	r3, [lr, r5, asl #1]	@ zero_extendqisi2
	ldrb	r6, [ip, r5, asl #1]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r9, [sp, #576]
	.loc 6 82 0
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #5]	@ zero_extendqisi2
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	.loc 6 85 0
	add	r2, r1, r2
	.loc 6 82 0
	ldrb	r7, [r2, #1]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	ldrb	r8, [r2, #5]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r4, [sp, #552]
.LVL3496:
	.loc 6 82 0
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
	ldrb	r4, [r1, #12]	@ zero_extendqisi2
	orr	r5, r3, r5, asl #8
	orr	ip, ip, r9, asl #8
	ldrb	r3, [r1, #8]	@ zero_extendqisi2
	ldrb	r9, [r1, #9]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #8
	orr	r4, r4, r10, asl #8
	ldrb	r7, [r2, #2]	@ zero_extendqisi2
	ldrb	r10, [r1, #2]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	orr	r3, r3, r9, asl #8
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	r9, [r1, #14]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #16
	orr	r5, r5, r10, asl #16
	ldrb	r7, [r2, #3]	@ zero_extendqisi2
	ldrb	r10, [r2, #6]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r4, r4, r9, asl #16
	ldrb	r8, [r1, #10]	@ zero_extendqisi2
	ldrb	r9, [r1, #3]	@ zero_extendqisi2
	orr	lr, lr, r10, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	ldrb	r8, [r1, #15]	@ zero_extendqisi2
	orr	r6, r6, r7, asl #24
	orr	r5, r5, r9, asl #24
	ldrb	r7, [r2, #7]	@ zero_extendqisi2
	ldrb	r9, [r1, #11]	@ zero_extendqisi2
	orr	ip, ip, r10, asl #24
	orr	r4, r4, r8, asl #24
	orr	r7, lr, r7, asl #24
	orr	r9, r3, r9, asl #24
	.loc 6 85 0
	add	r3, r2, fp
	.loc 6 83 0
	ldrb	r8, [r1, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r6, [sp, #608]
	str	r5, [sp, #584]
	str	ip, [sp, #588]
	str	r7, [sp, #612]
	str	r9, [sp, #592]
	str	r4, [sp, #596]
	ldrb	r4, [r2, #8]	@ zero_extendqisi2
	ldrb	lr, [r1, fp, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r3, #5]	@ zero_extendqisi2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
.LVL3497:
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	r10, [r2, #13]	@ zero_extendqisi2
	ldrb	ip, [r2, #12]	@ zero_extendqisi2
	ldrb	r7, [r2, #9]	@ zero_extendqisi2
	orr	r1, r1, r9, asl #8
	ldrb	r9, [r3, #2]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r8, [sp, #600]
.LVL3498:
	.loc 6 82 0
	ldrb	r6, [r3, #12]	@ zero_extendqisi2
	ldrb	r8, [r3, #13]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #8
	orr	ip, ip, r10, asl #8
	ldrb	r5, [r3, #8]	@ zero_extendqisi2
	ldrb	r10, [r3, #9]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #8
	orr	lr, lr, r9, asl #16
	ldrb	r7, [r2, #10]	@ zero_extendqisi2
	ldrb	r9, [r3, #14]	@ zero_extendqisi2
	ldrb	fp, [r3, #3]	@ zero_extendqisi2
	orr	r6, r6, r8, asl #8
	orr	r5, r5, r10, asl #8
	ldrb	r8, [r2, #14]	@ zero_extendqisi2
	ldrb	r10, [r3, #6]	@ zero_extendqisi2
	orr	r4, r4, r7, asl #16
	orr	r6, r6, r9, asl #16
	ldrb	r7, [r2, #11]	@ zero_extendqisi2
	ldrb	r9, [r2, #15]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r1, r1, r10, asl #16
	ldrb	r8, [r3, #10]	@ zero_extendqisi2
	ldrb	r10, [r3, #7]	@ zero_extendqisi2
	orr	lr, lr, fp, asl #24
	.loc 6 85 0
	ldr	fp, [sp, #16]
	.loc 6 82 0
	orr	r4, r4, r7, asl #24
	orr	r9, ip, r9, asl #24
	ldrb	r7, [r3, #15]	@ zero_extendqisi2
	ldrb	ip, [r3, #11]	@ zero_extendqisi2
	orr	r10, r1, r10, asl #24
	orr	r5, r5, r8, asl #16
	.loc 6 85 0
	add	r1, r3, fp
	.loc 6 82 0
	orr	r6, r6, r7, asl #24
	orr	r5, r5, ip, asl #24
	.loc 6 85 0
	add	ip, r1, fp
	.loc 6 83 0
	ldrb	r7, [r3, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r4, [sp, #616]
	str	lr, [sp, #632]
	str	r9, [sp, #620]
	.loc 6 83 0
	ldrb	lr, [r2, #16]	@ zero_extendqisi2
	.loc 6 82 0
	str	r10, [sp, #636]
	str	r6, [sp, #644]
	str	r5, [sp, #640]
	ldrb	r6, [r2, fp, asl #1]	@ zero_extendqisi2
	ldrb	r10, [ip, #5]	@ zero_extendqisi2
	ldrb	r2, [r3, fp, asl #1]	@ zero_extendqisi2
.LVL3499:
	ldrb	r5, [ip, #4]	@ zero_extendqisi2
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #5]	@ zero_extendqisi2
	ldrb	r8, [r1, #9]	@ zero_extendqisi2
	.loc 6 83 0
	strb	lr, [sp, #624]
.LVL3500:
	.loc 6 82 0
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	lr, [r1, #8]	@ zero_extendqisi2
	orr	r6, r6, r3, asl #8
	orr	r5, r5, r10, asl #8
	ldrb	r3, [r1, #12]	@ zero_extendqisi2
	ldrb	r10, [r1, #13]	@ zero_extendqisi2
	.loc 6 83 0
	strb	r7, [sp, #648]
	.loc 6 82 0
	orr	r4, r4, r9, asl #8
	ldrb	r7, [ip, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #2]	@ zero_extendqisi2
	orr	lr, lr, r8, asl #8
	orr	r3, r3, r10, asl #8
	ldrb	r8, [ip, #6]	@ zero_extendqisi2
	ldrb	r10, [r1, #6]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #8
	orr	r6, r6, r9, asl #16
	ldrb	r7, [ip, #2]	@ zero_extendqisi2
	ldrb	r9, [r1, #10]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #16
	orr	r4, r4, r10, asl #16
	ldrb	r8, [r1, #14]	@ zero_extendqisi2
	ldrb	r10, [ip, #7]	@ zero_extendqisi2
	ldrb	fp, [r1, #3]	@ zero_extendqisi2
	orr	r5, r5, r10, asl #24
	orr	r2, r2, r7, asl #16
	ldrb	r10, [r1, #15]	@ zero_extendqisi2
	ldrb	r7, [ip, #3]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #16
	orr	r3, r3, r8, asl #16
	ldrb	r9, [r1, #7]	@ zero_extendqisi2
	ldrb	r8, [r1, #11]	@ zero_extendqisi2
	orr	r2, r2, r7, asl #24
	orr	r6, r6, fp, asl #24
	orr	r4, r4, r9, asl #24
	orr	lr, lr, r8, asl #24
	orr	r3, r3, r10, asl #24
	.loc 6 83 0
	ldrb	r1, [r1, #16]	@ zero_extendqisi2
.LVL3501:
	.loc 6 82 0
	str	r2, [sp, #680]
	str	r6, [sp, #656]
	str	r5, [sp, #684]
	str	r4, [sp, #660]
	str	lr, [sp, #664]
	str	r3, [sp, #668]
	.loc 6 83 0
	strb	r1, [sp, #672]
.LVL3502:
	.loc 6 82 0
	ldrb	r2, [ip, #8]	@ zero_extendqisi2
	ldrb	r1, [ip, #12]	@ zero_extendqisi2
	ldrb	r5, [ip, #13]	@ zero_extendqisi2
	ldrb	r3, [ip, #9]	@ zero_extendqisi2
	ldrb	r4, [ip, #14]	@ zero_extendqisi2
	ldrb	lr, [ip, #10]	@ zero_extendqisi2
	ldrb	r6, [ip, #15]	@ zero_extendqisi2
	orr	r3, r2, r3, asl #8
	orr	r2, r1, r5, asl #8
	orr	r2, r2, r4, asl #16
	ldrb	r1, [ip, #11]	@ zero_extendqisi2
	orr	r4, r2, r6, asl #24
.LBE5376:
.LBE5375:
	.loc 5 695 0 discriminator 1
	add	r8, sp, #296
	add	r6, sp, #24
	mov	r5, #17
.LBB5379:
.LBB5377:
	.loc 6 82 0
	orr	r3, r3, lr, asl #16
	orr	lr, r3, r1, asl #24
	.loc 6 83 0
	ldrb	ip, [ip, #16]	@ zero_extendqisi2
.LVL3503:
.LBE5377:
.LBE5379:
	.loc 5 695 0
	str	r0, [sp, #20]
	.loc 5 695 0 is_stmt 0 discriminator 1
	mov	r1, r8
	mov	r0, r6
.LVL3504:
	str	r5, [sp]
	mov	r2, #16
	mov	r3, #24
.LBB5380:
.LBB5378:
	.loc 6 82 0 is_stmt 1
	str	lr, [sp, #688]
	str	r4, [sp, #692]
	.loc 6 83 0
	strb	ip, [sp, #696]
.LVL3505:
.LBE5378:
.LBE5380:
	.loc 5 695 0 discriminator 1
	bl	put_mpeg4_qpel16_h_lowpass(PLT)
.LVL3506:
.LBB5381:
.LBB5382:
	.loc 1 104 0
	mov	r3, #16
	mov	ip, #24
	stmia	sp, {r3, ip}
	str	r5, [sp, #8]
	mov	r2, r8
	mov	r0, r6
	mov	r1, r6
	bl	put_pixels8_l2_8(PLT)
.LVL3507:
.LBB5383:
.LBB5384:
.LBB5385:
	.loc 1 104 0 is_stmt 0 discriminator 4
	ldr	r3, [sp, #32]
.LVL3508:
	ldr	r0, [sp, #304]
.LVL3509:
	ldr	r1, [sp, #36]
.LVL3510:
.LBB5386:
.LBB5387:
	.loc 2 33 0 is_stmt 1
	orr	r6, r0, r3
.LVL3511:
	eor	fp, r0, r3
	ldr	r3, .L406
.LVL3512:
.LBE5387:
.LBE5386:
	.loc 1 104 0 discriminator 4
	ldr	r5, [sp, #308]
.LVL3513:
.LBB5427:
.LBB5388:
	.loc 2 33 0
	and	r0, fp, r3
.LVL3514:
	sub	r0, r6, r0, lsr #1
.LBE5388:
.LBE5427:
	.loc 1 104 0 discriminator 4
	str	r0, [sp, #32]
.LVL3515:
.LBB5428:
.LBB5429:
	.loc 2 33 0
	eor	r0, r5, r1
.LBE5429:
.LBE5428:
	.loc 1 104 0 discriminator 4
	ldr	r2, [sp, #48]
	ldr	r9, [sp, #328]
.LBB5472:
.LBB5430:
	.loc 2 33 0
	and	r0, r0, r3
	orr	r1, r5, r1
.LVL3516:
	sub	r1, r1, r0, lsr #1
.LBE5430:
.LBE5472:
	.loc 1 104 0 discriminator 4
	str	r1, [sp, #36]
.LVL3517:
.LBB5473:
.LBB5389:
	.loc 2 33 0
	eor	r1, r9, r2
.LBE5389:
.LBE5473:
	.loc 1 104 0 discriminator 4
	ldr	r4, [sp, #52]
.LVL3518:
	ldr	r10, [sp, #332]
.LVL3519:
.LBB5474:
.LBB5390:
	.loc 2 33 0
	and	r1, r1, r3
	orr	r2, r9, r2
.LVL3520:
	sub	r2, r2, r1, lsr #1
.LBE5390:
.LBE5474:
	.loc 1 104 0 discriminator 4
	str	r2, [sp, #48]
.LVL3521:
.LBB5475:
.LBB5431:
	.loc 2 33 0
	eor	r2, r10, r4
.LBE5431:
.LBE5475:
	.loc 1 104 0 discriminator 4
	ldr	lr, [sp, #64]
	ldr	r8, [sp, #352]
.LVL3522:
.LBB5476:
.LBB5432:
	.loc 2 33 0
	and	r2, r2, r3
	orr	r4, r10, r4
.LVL3523:
	sub	r4, r4, r2, lsr #1
.LBE5432:
.LBE5476:
	.loc 1 104 0 discriminator 4
	ldr	ip, [sp, #68]
	ldr	r7, [sp, #356]
	str	r4, [sp, #52]
.LVL3524:
.LBB5477:
.LBB5391:
	.loc 2 33 0
	eor	r4, r8, lr
	and	r4, r4, r3
	orr	lr, r8, lr
.LVL3525:
	sub	r4, lr, r4, lsr #1
.LBE5391:
.LBE5477:
.LBB5478:
.LBB5433:
	eor	lr, r7, ip
	and	lr, lr, r3
	orr	ip, r7, ip
.LVL3526:
.LBE5433:
.LBE5478:
	.loc 1 104 0 discriminator 4
	ldr	r6, [sp, #376]
.LBB5479:
.LBB5434:
	.loc 2 33 0
	sub	lr, ip, lr, lsr #1
.LBE5434:
.LBE5479:
.LBB5480:
.LBB5392:
	ldr	ip, [sp, #80]
.LBE5392:
.LBE5480:
	.loc 1 104 0 discriminator 4
	str	r4, [sp, #64]
.LVL3527:
.LBB5481:
.LBB5393:
	.loc 2 33 0
	ldr	r4, [sp, #80]
	eor	ip, r6, ip
	and	ip, ip, r3
	orr	r6, r6, r4
.LBE5393:
.LBE5481:
	.loc 1 104 0 discriminator 4
	ldr	r5, [sp, #96]
	ldr	r9, [sp, #100]
	ldr	r0, [sp, #380]
	ldr	r1, [sp, #400]
	ldr	r2, [sp, #404]
.LBB5482:
.LBB5435:
	.loc 2 33 0
	ldr	r4, [sp, #84]
.LBE5435:
.LBE5482:
.LBB5483:
.LBB5394:
	sub	ip, r6, ip, lsr #1
.LBE5394:
.LBE5483:
.LBB5484:
.LBB5436:
	ldr	r6, [sp, #84]
	eor	r7, r2, r9
.LVL3528:
	eor	r4, r0, r4
	orr	r0, r0, r6
.LBE5436:
.LBE5484:
.LBB5485:
.LBB5395:
	eor	r6, r1, r5
.LBE5395:
.LBE5485:
.LBB5486:
.LBB5437:
	and	r4, r4, r3
.LBE5437:
.LBE5486:
.LBB5487:
.LBB5396:
	and	r6, r6, r3
.LBE5396:
.LBE5487:
.LBB5488:
.LBB5438:
	and	r7, r7, r3
.LBE5438:
.LBE5488:
.LBB5489:
.LBB5397:
	orr	r1, r1, r5
.LBE5397:
.LBE5489:
.LBB5490:
.LBB5439:
	orr	r2, r2, r9
	sub	r0, r0, r4, lsr #1
.LBE5439:
.LBE5490:
.LBB5491:
.LBB5398:
	sub	r1, r1, r6, lsr #1
.LBE5398:
.LBE5491:
.LBB5492:
.LBB5440:
	sub	r2, r2, r7, lsr #1
.LBE5440:
.LBE5492:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #424]
	ldr	r10, [sp, #112]
	str	lr, [sp, #68]
.LVL3529:
	str	ip, [sp, #80]
	str	r0, [sp, #84]
	str	r1, [sp, #96]
	str	r2, [sp, #100]
	ldr	r7, [sp, #116]
	ldr	r0, [sp, #428]
	ldr	r1, [sp, #128]
.LBB5493:
.LBB5441:
	.loc 2 33 0
	eor	r6, r0, r7
.LBE5441:
.LBE5493:
	.loc 1 104 0 discriminator 4
	ldr	r5, [sp, #448]
.LBB5494:
.LBB5442:
	.loc 2 33 0
	and	r6, r6, r3
	orr	r0, r0, r7
	sub	r0, r0, r6, lsr #1
.LBE5442:
.LBE5494:
	.loc 1 104 0 discriminator 4
	str	r0, [sp, #116]
.LBB5495:
.LBB5399:
	.loc 2 33 0
	eor	r0, r5, r1
.LBE5399:
.LBE5495:
	.loc 1 104 0 discriminator 4
	ldr	r2, [sp, #132]
	ldr	r9, [sp, #452]
.LBB5496:
.LBB5400:
	.loc 2 33 0
	eor	r8, fp, r10
.LVL3530:
	and	r0, r0, r3
	orr	r1, r5, r1
	and	r8, r8, r3
.LVL3531:
	sub	r1, r1, r0, lsr #1
	orr	r10, fp, r10
	sub	r10, r10, r8, lsr #1
.LBE5400:
.LBE5496:
	.loc 1 104 0 discriminator 4
	str	r1, [sp, #128]
.LBB5497:
.LBB5443:
	.loc 2 33 0
	eor	r1, r9, r2
.LBE5443:
.LBE5497:
	.loc 1 104 0 discriminator 4
	ldr	r4, [sp, #144]
	str	r10, [sp, #112]
.LBB5498:
.LBB5444:
	.loc 2 33 0
	and	r1, r1, r3
.LBE5444:
.LBE5498:
	.loc 1 104 0 discriminator 4
	ldr	r10, [sp, #472]
.LBB5499:
.LBB5445:
	.loc 2 33 0
	orr	r2, r9, r2
.LVL3532:
	sub	r2, r2, r1, lsr #1
.LBE5445:
.LBE5499:
	.loc 1 104 0 discriminator 4
	str	r2, [sp, #132]
.LVL3533:
.LBB5500:
.LBB5401:
	.loc 2 33 0
	eor	r2, r10, r4
.LBE5401:
.LBE5500:
	.loc 1 104 0 discriminator 4
	ldr	lr, [sp, #148]
.LVL3534:
	ldr	r8, [sp, #476]
.LVL3535:
.LBB5501:
.LBB5402:
	.loc 2 33 0
	and	r2, r2, r3
	orr	r4, r10, r4
.LVL3536:
	sub	r4, r4, r2, lsr #1
.LBE5402:
.LBE5501:
	.loc 1 104 0 discriminator 4
	str	r4, [sp, #144]
.LVL3537:
.LBB5502:
.LBB5446:
	.loc 2 33 0
	eor	r4, r8, lr
.LBE5446:
.LBE5502:
	.loc 1 104 0 discriminator 4
	ldr	ip, [sp, #160]
	ldr	r7, [sp, #496]
.LBB5503:
.LBB5447:
	.loc 2 33 0
	orr	lr, r8, lr
.LVL3538:
	and	r4, r4, r3
	sub	r4, lr, r4, lsr #1
.LBE5447:
.LBE5503:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #164]
	ldr	r6, [sp, #500]
	str	r4, [sp, #148]
.LVL3539:
.LBB5504:
.LBB5403:
	.loc 2 33 0
	eor	r4, r7, ip
	and	r4, r4, r3
	orr	ip, r7, ip
.LVL3540:
	sub	r4, ip, r4, lsr #1
.LBE5403:
.LBE5504:
.LBB5505:
.LBB5448:
	eor	ip, r6, fp
	and	ip, ip, r3
	orr	r6, r6, fp
.LVL3541:
.LBE5448:
.LBE5505:
	.loc 1 104 0 discriminator 4
	ldr	r5, [sp, #180]
	ldr	r9, [sp, #192]
.LBB5506:
.LBB5404:
	.loc 2 33 0
	ldr	r7, [sp, #176]
.LVL3542:
.LBE5404:
.LBE5506:
	.loc 1 104 0 discriminator 4
	ldr	r0, [sp, #520]
	ldr	r1, [sp, #524]
	ldr	r2, [sp, #544]
.LBB5507:
.LBB5449:
	.loc 2 33 0
	sub	ip, r6, ip, lsr #1
.LBE5449:
.LBE5507:
.LBB5508:
.LBB5405:
	ldr	r6, [sp, #176]
	eor	r8, r2, r9
	eor	r6, r0, r6
	orr	r0, r0, r7
.LBE5405:
.LBE5508:
.LBB5509:
.LBB5450:
	eor	r7, r1, r5
.LBE5450:
.LBE5509:
.LBB5510:
.LBB5406:
	and	r6, r6, r3
.LBE5406:
.LBE5510:
.LBB5511:
.LBB5451:
	and	r7, r7, r3
.LBE5451:
.LBE5511:
.LBB5512:
.LBB5407:
	and	r8, r8, r3
.LBE5407:
.LBE5512:
.LBB5513:
.LBB5452:
	orr	r1, r1, r5
.LBE5452:
.LBE5513:
.LBB5514:
.LBB5408:
	orr	r2, r2, r9
	sub	r0, r0, r6, lsr #1
.LBE5408:
.LBE5514:
.LBB5515:
.LBB5453:
	sub	r1, r1, r7, lsr #1
.LBE5453:
.LBE5515:
.LBB5516:
.LBB5409:
	sub	r2, r2, r8, lsr #1
.LBE5409:
.LBE5516:
	.loc 1 104 0 discriminator 4
	ldr	r10, [sp, #196]
	ldr	lr, [sp, #548]
	str	r4, [sp, #160]
.LVL3543:
	str	ip, [sp, #164]
	str	r0, [sp, #176]
	str	r1, [sp, #180]
	str	r2, [sp, #192]
	ldr	r7, [sp, #208]
	ldr	r0, [sp, #568]
	ldr	r1, [sp, #212]
.LBB5517:
.LBB5410:
	.loc 2 33 0
	eor	r6, r0, r7
.LBE5410:
.LBE5517:
	.loc 1 104 0 discriminator 4
	ldr	r5, [sp, #572]
.LBB5518:
.LBB5411:
	.loc 2 33 0
	and	r6, r6, r3
	orr	r0, r0, r7
	sub	r0, r0, r6, lsr #1
.LBE5411:
.LBE5518:
	.loc 1 104 0 discriminator 4
	str	r0, [sp, #208]
.LBB5519:
.LBB5454:
	.loc 2 33 0
	eor	r0, r5, r1
.LBE5454:
.LBE5519:
	.loc 1 104 0 discriminator 4
	ldr	r2, [sp, #224]
	ldr	r9, [sp, #592]
.LBB5520:
.LBB5455:
	.loc 2 33 0
	and	r0, r0, r3
	orr	r1, r5, r1
	sub	r1, r1, r0, lsr #1
.LBE5455:
.LBE5520:
	.loc 1 104 0 discriminator 4
	str	r1, [sp, #212]
.LBB5521:
.LBB5412:
	.loc 2 33 0
	eor	r1, r9, r2
.LBE5412:
.LBE5521:
	.loc 1 104 0 discriminator 4
	ldr	r4, [sp, #228]
.LBB5522:
.LBB5456:
	.loc 2 33 0
	eor	fp, lr, r10
.LVL3544:
.LBE5456:
.LBE5522:
.LBB5523:
.LBB5413:
	and	r1, r1, r3
.LBE5413:
.LBE5523:
.LBB5524:
.LBB5457:
	orr	lr, lr, r10
.LBE5457:
.LBE5524:
.LBB5525:
.LBB5414:
	orr	r2, r9, r2
.LBE5414:
.LBE5525:
	.loc 1 104 0 discriminator 4
	ldr	r10, [sp, #596]
.LBB5526:
.LBB5458:
	.loc 2 33 0
	and	fp, fp, r3
.LVL3545:
.LBE5458:
.LBE5526:
.LBB5527:
.LBB5415:
	sub	r2, r2, r1, lsr #1
.LBE5415:
.LBE5527:
.LBB5528:
.LBB5459:
	sub	lr, lr, fp, lsr #1
.LBE5459:
.LBE5528:
	.loc 1 104 0 discriminator 4
	str	r2, [sp, #224]
.LBB5529:
.LBB5460:
	.loc 2 33 0
	eor	r2, r10, r4
.LBE5460:
.LBE5529:
	.loc 1 104 0 discriminator 4
	ldr	r8, [sp, #616]
	str	lr, [sp, #196]
.LVL3546:
.LBB5530:
.LBB5461:
	.loc 2 33 0
	and	r2, r2, r3
.LBE5461:
.LBE5530:
	.loc 1 104 0 discriminator 4
	ldr	lr, [sp, #240]
.LBB5531:
.LBB5462:
	.loc 2 33 0
	orr	r4, r10, r4
.LVL3547:
	sub	r4, r4, r2, lsr #1
.LBE5462:
.LBE5531:
	.loc 1 104 0 discriminator 4
	str	r4, [sp, #228]
.LVL3548:
.LBB5532:
.LBB5416:
	.loc 2 33 0
	eor	r4, r8, lr
.LBE5416:
.LBE5532:
	.loc 1 104 0 discriminator 4
	ldr	ip, [sp, #244]
.LVL3549:
	ldr	r7, [sp, #620]
.LVL3550:
.LBB5533:
.LBB5417:
	.loc 2 33 0
	orr	lr, r8, lr
.LVL3551:
	and	r4, r4, r3
	sub	r4, lr, r4, lsr #1
.LBE5417:
.LBE5533:
	.loc 1 104 0 discriminator 4
	ldr	fp, [sp, #256]
	ldr	r6, [sp, #640]
	str	r4, [sp, #240]
.LVL3552:
.LBB5534:
.LBB5463:
	.loc 2 33 0
	eor	r4, r7, ip
	and	r4, r4, r3
	orr	ip, r7, ip
.LVL3553:
	sub	r4, ip, r4, lsr #1
.LBE5463:
.LBE5534:
.LBB5535:
.LBB5418:
	eor	ip, r6, fp
	and	ip, ip, r3
	orr	r6, r6, fp
.LBE5418:
.LBE5535:
	.loc 1 104 0 discriminator 4
	ldr	r5, [sp, #272]
.LBB5536:
.LBB5464:
	.loc 2 33 0
	ldr	r7, [sp, #260]
.LVL3554:
.LBE5464:
.LBE5536:
	.loc 1 104 0 discriminator 4
	ldr	r0, [sp, #644]
	ldr	r1, [sp, #664]
	ldr	r9, [sp, #276]
	ldr	r2, [sp, #668]
.LBB5537:
.LBB5419:
	.loc 2 33 0
	sub	ip, r6, ip, lsr #1
.LBE5419:
.LBE5537:
.LBB5538:
.LBB5465:
	ldr	r6, [sp, #260]
	eor	r8, r2, r9
.LVL3555:
	eor	r6, r0, r6
	orr	r0, r0, r7
.LBE5465:
.LBE5538:
.LBB5539:
.LBB5420:
	eor	r7, r1, r5
.LBE5420:
.LBE5539:
.LBB5540:
.LBB5466:
	and	r6, r6, r3
.LBE5466:
.LBE5540:
.LBB5541:
.LBB5421:
	and	r7, r7, r3
.LBE5421:
.LBE5541:
.LBB5542:
.LBB5467:
	and	r8, r8, r3
.LBE5467:
.LBE5542:
.LBB5543:
.LBB5422:
	orr	r1, r1, r5
.LBE5422:
.LBE5543:
.LBB5544:
.LBB5468:
	orr	r2, r2, r9
	sub	r0, r0, r6, lsr #1
.LBE5468:
.LBE5544:
.LBB5545:
.LBB5423:
	sub	r1, r1, r7, lsr #1
.LBE5423:
.LBE5545:
.LBB5546:
.LBB5469:
	sub	r2, r2, r8, lsr #1
.LBE5469:
.LBE5546:
	.loc 1 104 0 discriminator 4
	ldr	r10, [sp, #288]
	ldr	lr, [sp, #688]
	str	ip, [sp, #256]
	str	r0, [sp, #260]
	str	r1, [sp, #272]
	str	r4, [sp, #244]
.LVL3556:
	str	r2, [sp, #276]
	ldr	r2, [sp, #292]
	ldr	ip, [sp, #692]
.LBB5547:
.LBB5424:
	.loc 2 33 0
	eor	fp, lr, r10
.LBE5424:
.LBE5547:
.LBB5548:
.LBB5470:
	eor	r1, ip, r2
.LBE5470:
.LBE5548:
.LBB5549:
.LBB5425:
	and	fp, fp, r3
.LVL3557:
	orr	lr, lr, r10
.LVL3558:
.LBE5425:
.LBE5549:
.LBB5550:
.LBB5471:
	and	r3, r3, r1
	orr	ip, ip, r2
.LVL3559:
	sub	ip, ip, r3, lsr #1
.LBE5471:
.LBE5550:
.LBB5551:
.LBB5426:
	sub	lr, lr, fp, lsr #1
.LBE5426:
.LBE5551:
.LBE5385:
.LBE5384:
.LBE5383:
.LBE5382:
.LBE5381:
	.loc 5 695 0 discriminator 3
	ldr	r0, [sp, #20]
	ldr	r2, [sp, #16]
.LVL3560:
	add	r1, sp, #24
.LVL3561:
	mov	r3, #16
.LBB5556:
.LBB5555:
.LBB5554:
.LBB5553:
.LBB5552:
	.loc 1 104 0 discriminator 4
	str	lr, [sp, #288]
	str	ip, [sp, #292]
.LVL3562:
.LBE5552:
.LBE5553:
.LBE5554:
.LBE5555:
.LBE5556:
	.loc 5 695 0 discriminator 3
	bl	put_mpeg4_qpel16_v_lowpass(PLT)
.LVL3563:
	.loc 5 695 0 is_stmt 0
	add	sp, sp, #708
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL3564:
.L407:
	.align	2
.L406:
	.word	-16843010
	.cfi_endproc
.LFE144:
	.size	put_qpel16_mc12_c, .-put_qpel16_mc12_c
	.align	2
	.type	put_no_rnd_qpel8_mc31_c, %function
put_no_rnd_qpel8_mc31_c:
.LFB161:
	.loc 5 696 0 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 296
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3565:
.LBB5573:
.LBB5574:
	.loc 6 64 0
	add	r3, r1, r2
.LBE5574:
.LBE5573:
	.loc 5 696 0
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
.LBB5581:
.LBB5575:
	.loc 6 64 0
	add	r7, r3, r2
.LBE5575:
.LBE5581:
	.loc 5 696 0
	mov	fp, r2
.LVL3566:
.LBB5582:
.LBB5576:
	.loc 6 61 0
	ldrb	lr, [r1, r2, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #4]	@ zero_extendqisi2
.LVL3567:
	ldrb	r4, [r1, fp]	@ zero_extendqisi2
	ldrb	r10, [r3, #5]	@ zero_extendqisi2
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
	ldrb	r8, [r1]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #8
	ldrb	r9, [r1, #1]	@ zero_extendqisi2
	orr	r5, r4, r5, asl #8
	orr	ip, ip, r10, asl #8
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	ldrb	r10, [r1, #5]	@ zero_extendqisi2
	orr	r8, r8, r9, asl #8
	ldrb	r9, [r7, #6]	@ zero_extendqisi2
	ldrb	r6, [r7, #1]	@ zero_extendqisi2
	orr	r4, r4, r10, asl #8
	orr	r2, r2, r9, asl #16
	ldrb	r10, [r3, #2]	@ zero_extendqisi2
	ldrb	r9, [r3, #6]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #8
	orr	r5, r5, r10, asl #16
	ldrb	r6, [r7, #2]	@ zero_extendqisi2
	ldrb	r10, [r1, #2]	@ zero_extendqisi2
	orr	ip, ip, r9, asl #16
	ldrb	r9, [r1, #6]	@ zero_extendqisi2
	orr	lr, lr, r6, asl #16
	orr	r4, r4, r9, asl #16
	ldrb	r6, [r7, #3]	@ zero_extendqisi2
	ldrb	r9, [r3, #3]	@ zero_extendqisi2
	orr	r8, r8, r10, asl #16
	ldrb	r10, [r7, #7]	@ zero_extendqisi2
	orr	r6, lr, r6, asl #24
	orr	r2, r2, r10, asl #24
	ldrb	lr, [r3, #7]	@ zero_extendqisi2
	ldrb	r10, [r1, #3]	@ zero_extendqisi2
	orr	r5, r5, r9, asl #24
	ldrb	r9, [r1, #7]	@ zero_extendqisi2
.LBE5576:
.LBE5582:
	.loc 5 696 0
	sub	sp, sp, #308
	.cfi_def_cfa_offset 344
.LVL3568:
.LBB5583:
.LBB5577:
	.loc 6 61 0
	orr	ip, ip, lr, asl #24
	orr	r8, r8, r10, asl #24
	.loc 6 64 0
	add	lr, r7, fp
	.loc 6 62 0
	ldrb	r10, [r1, #8]	@ zero_extendqisi2
	.loc 6 61 0
	orr	r9, r4, r9, asl #24
	.loc 6 62 0
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
.LVL3569:
	.loc 6 64 0
	add	r4, lr, fp
	.loc 6 61 0
	str	r6, [sp, #192]
	str	r5, [sp, #176]
	str	ip, [sp, #180]
	str	r8, [sp, #160]
	str	r9, [sp, #164]
	.loc 6 62 0
	strb	r10, [sp, #168]
.LVL3570:
	strb	r1, [sp, #184]
.LVL3571:
	.loc 6 61 0
	ldrb	r9, [lr, #1]	@ zero_extendqisi2
	str	r2, [sp, #196]
	ldrb	r2, [r3, fp, asl #1]	@ zero_extendqisi2
	ldrb	r8, [r4, #1]	@ zero_extendqisi2
	ldrb	r5, [r7, fp, asl #1]	@ zero_extendqisi2
	ldrb	r10, [lr, #5]	@ zero_extendqisi2
	ldrb	r3, [lr, #4]	@ zero_extendqisi2
	ldrb	r1, [r4, #4]	@ zero_extendqisi2
	ldrb	ip, [r4, #5]	@ zero_extendqisi2
	orr	r2, r2, r9, asl #8
	ldrb	r9, [r4, #2]	@ zero_extendqisi2
	ldrb	r6, [lr, #2]	@ zero_extendqisi2
	orr	r5, r5, r8, asl #8
	orr	r3, r3, r10, asl #8
	ldrb	r8, [r4, #6]	@ zero_extendqisi2
	ldrb	r10, [lr, #3]	@ zero_extendqisi2
	str	r10, [sp, #8]
	orr	ip, r1, ip, asl #8
	orr	r5, r5, r9, asl #16
	ldrb	r1, [lr, #6]	@ zero_extendqisi2
	ldrb	r9, [r4, #7]	@ zero_extendqisi2
	ldrb	r10, [r4, #3]	@ zero_extendqisi2
	orr	r2, r2, r6, asl #16
	orr	ip, ip, r8, asl #16
	ldr	r6, [sp, #8]
	ldrb	r8, [lr, #7]	@ zero_extendqisi2
	orr	r3, r3, r1, asl #16
	orr	ip, ip, r9, asl #24
	.loc 6 64 0
	add	r1, r4, fp
	.loc 6 61 0
	orr	r6, r2, r6, asl #24
	.loc 6 62 0
	ldrb	r7, [r7, #8]	@ zero_extendqisi2
.LVL3572:
	.loc 6 61 0
	orr	r5, r5, r10, asl #24
	.loc 6 62 0
	ldrb	r9, [r4, #8]	@ zero_extendqisi2
	.loc 6 61 0
	orr	r10, r3, r8, asl #24
	str	ip, [sp, #228]
	ldrb	ip, [r1, #3]	@ zero_extendqisi2
	.loc 6 64 0
	add	r2, r1, fp
	.loc 6 62 0
	ldrb	r8, [lr, #8]	@ zero_extendqisi2
	.loc 6 61 0
	str	r6, [sp, #208]
	.loc 6 62 0
	strb	r7, [sp, #200]
.LVL3573:
	.loc 6 61 0
	ldrb	r6, [r1, #1]	@ zero_extendqisi2
	ldrb	r7, [r1, #5]	@ zero_extendqisi2
	str	r5, [sp, #224]
	str	r10, [sp, #212]
	ldrb	r5, [r1, #2]	@ zero_extendqisi2
	str	ip, [sp, #8]
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r9, [sp, #232]
	.loc 6 61 0
	ldrb	lr, [lr, fp, asl #1]	@ zero_extendqisi2
.LVL3574:
	.loc 6 64 0
	add	r3, r2, fp
	.loc 6 61 0
	ldrb	r4, [r4, fp, asl #1]	@ zero_extendqisi2
	ldrb	r9, [r3, #1]	@ zero_extendqisi2
	orr	ip, ip, r7, asl #8
	orr	lr, lr, r6, asl #8
	ldrb	r7, [r1, fp, asl #1]	@ zero_extendqisi2
	ldrb	r6, [r2, #1]	@ zero_extendqisi2
	.loc 6 62 0
	strb	r8, [sp, #216]
.LVL3575:
	.loc 6 61 0
	orr	r7, r7, r9, asl #8
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	ldrb	r9, [r3, #5]	@ zero_extendqisi2
	orr	r6, r4, r6, asl #8
	ldrb	r4, [r3, #4]	@ zero_extendqisi2
	orr	ip, ip, r8, asl #16
	orr	r9, r4, r9, asl #8
	ldrb	r8, [r2, #5]	@ zero_extendqisi2
	ldrb	r4, [r2, #4]	@ zero_extendqisi2
	orr	lr, lr, r5, asl #16
	orr	r8, r4, r8, asl #8
	ldrb	r5, [r3, #2]	@ zero_extendqisi2
	ldrb	r4, [r2, #2]	@ zero_extendqisi2
	orr	r7, r7, r5, asl #16
	orr	r6, r6, r4, asl #16
	ldrb	r5, [r3, #6]	@ zero_extendqisi2
	ldrb	r4, [r2, #6]	@ zero_extendqisi2
	ldrb	r10, [r1, #7]	@ zero_extendqisi2
	orr	r5, r9, r5, asl #16
	orr	r4, r8, r4, asl #16
	ldr	r9, [sp, #8]
	ldrb	r8, [r3, #3]	@ zero_extendqisi2
	orr	lr, lr, r9, asl #24
	orr	ip, ip, r10, asl #24
	ldrb	r9, [r2, #3]	@ zero_extendqisi2
	ldrb	r10, [r3, #7]	@ zero_extendqisi2
	orr	r7, r7, r8, asl #24
	ldrb	r8, [r2, #7]	@ zero_extendqisi2
	.loc 6 62 0
	ldrb	r1, [r1, #8]	@ zero_extendqisi2
.LVL3576:
	.loc 6 61 0
	orr	r6, r6, r9, asl #24
	orr	r5, r5, r10, asl #24
	.loc 6 62 0
	ldrb	r9, [r3, #8]	@ zero_extendqisi2
	.loc 6 61 0
	orr	r4, r4, r8, asl #24
	.loc 6 64 0
	add	r3, r3, fp
	.loc 6 62 0
	ldrb	r8, [r2, #8]	@ zero_extendqisi2
	.loc 6 61 0
	str	lr, [sp, #240]
	str	ip, [sp, #244]
	.loc 6 62 0
	strb	r1, [sp, #248]
.LVL3577:
	.loc 6 61 0
	str	r7, [sp, #272]
	str	r6, [sp, #256]
	str	r5, [sp, #276]
	.loc 6 62 0
	strb	r9, [sp, #280]
	.loc 6 61 0
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	str	r4, [sp, #260]
	ldrb	r4, [r2, fp, asl #1]	@ zero_extendqisi2
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
.LVL3578:
.L411: