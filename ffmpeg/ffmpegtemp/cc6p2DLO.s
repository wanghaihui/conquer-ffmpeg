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
	.file	"af_sidechaincompress.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.type	query_formats, %function
query_formats:
.LFB60:
	.file 1 "libavfilter/af_sidechaincompress.c"
	.loc 1 254 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	.loc 1 263 0
	ldr	r3, [r0, #16]
	.loc 1 254 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 256 0
	mov	r2, #0
	.loc 1 254 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 1 256 0
	str	r2, [sp, #4]
	.loc 1 263 0
	ldr	r3, [r3]
	.loc 1 254 0
	mov	r4, r0
	.loc 1 263 0
	ldr	r3, [r3, #80]
	cmp	r3, r2
	beq	.L2
	.loc 1 263 0 is_stmt 0 discriminator 1
	ldr	r2, [r3, #4]
	cmp	r2, #0
	beq	.L2
	.loc 1 270 0 is_stmt 1
	ldr	r3, [r3]
	add	r0, sp, #4
.LVL1:
	ldrd	r2, [r3]
	bl	ff_add_channel_layout(PLT)
.LVL2:
	cmp	r0, #0
	blt	.L4
	.loc 1 271 0
	ldr	r3, [r4, #28]
	.loc 1 270 0 discriminator 2
	ldr	r0, [sp, #4]
.LVL3:
	.loc 1 271 0
	ldr	r1, [r3]
	.loc 1 270 0 discriminator 2
	add	r1, r1, #80
	bl	ff_channel_layouts_ref(PLT)
.LVL4:
	.loc 1 270 0 is_stmt 0 discriminator 1
	cmp	r0, #0
	blt	.L4
.LVL5:
	.loc 1 275 0 is_stmt 1
	bl	ff_all_channel_counts(PLT)
.LVL6:
	.loc 1 276 0
	ldr	r3, [r4, #16]
	.loc 1 275 0
	str	r0, [sp, #4]
	.loc 1 276 0
	ldr	r1, [r3]
	add	r1, r1, #84
	bl	ff_channel_layouts_ref(PLT)
.LVL7:
	cmp	r0, #0
	blt	.L4
.LVL8:
	.loc 1 275 0
	bl	ff_all_channel_counts(PLT)
.LVL9:
	.loc 1 276 0
	ldr	r3, [r4, #16]
	ldr	r1, [r3, #4]
	add	r1, r1, #84
	.loc 1 275 0
	str	r0, [sp, #4]
	.loc 1 276 0
	bl	ff_channel_layouts_ref(PLT)
.LVL10:
	cmp	r0, #0
	blt	.L4
.LVL11:
	.loc 1 280 0
	ldr	r0, .L15
.LVL12:
.LPIC1:
	add	r0, pc, r0
	bl	ff_make_format_list(PLT)
.LVL13:
	mov	r1, r0
.LVL14:
	.loc 1 281 0
	mov	r0, r4
.LVL15:
	bl	ff_set_common_formats(PLT)
.LVL16:
	cmp	r0, #0
	blt	.L4
	.loc 1 284 0
	bl	ff_all_samplerates(PLT)
.LVL17:
	mov	r1, r0
.LVL18:
	.loc 1 285 0
	mov	r0, r4
.LVL19:
	bl	ff_set_common_samplerates(PLT)
.LVL20:
.L4:
	.loc 1 286 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	ldmfd	sp!, {r4, pc}
.LVL21:
.L2:
	.cfi_restore_state
	.loc 1 265 0
	ldr	r2, .L15+4
	mov	r0, r4
.LVL22:
	mov	r1, #24
.LPIC0:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL23:
	.loc 1 267 0
	mvn	r0, #10
	b	.L4
.L16:
	.align	2
.L15:
	.word	.LANCHOR0-(.LPIC1+8)
	.word	.LC0-(.LPIC0+8)
	.cfi_endproc
.LFE60:
	.size	query_formats, .-query_formats
	.section	.text.unlikely,"ax",%progbits
	.align	2
	.type	uninit, %function
uninit:
.LFB62:
	.loc 1 317 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL24:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 318 0
	ldr	r4, [r0, #36]
.LVL25:
	.loc 1 320 0
	ldr	r0, [r4, #160]
.LVL26:
	bl	av_audio_fifo_free(PLT)
.LVL27:
	.loc 1 321 0
	ldr	r0, [r4, #164]
	.loc 1 322 0
	ldmfd	sp!, {r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL28:
	.loc 1 321 0
	b	av_audio_fifo_free(PLT)
.LVL29:
	.cfi_endproc
.LFE62:
	.size	uninit, .-uninit
	.global	__aeabi_ddiv
	.global	__aeabi_dmul
	.global	__aeabi_dsub
	.global	__aeabi_dadd
	.global	__aeabi_i2d
	.global	__aeabi_dcmplt
	.text
	.align	2
	.type	compressor_config_output, %function
compressor_config_output:
.LFB56:
	.loc 1 125 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL30:
	.loc 1 127 0
	ldr	r3, [r0]
	.loc 1 125 0
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
	.loc 1 127 0
	ldr	r10, [r3, #36]
	.loc 1 125 0
	sub	sp, sp, #12
	.cfi_def_cfa_offset 48
	.loc 1 129 0
	ldrd	r6, [r10, #72]
	.loc 1 125 0
	mov	fp, r0
.LVL31:
	.loc 1 129 0
	mov	r1, r7
	mov	r0, r6
.LVL32:
	bl	log(PLT)
.LVL33:
	mov	r4, r0
	mov	r5, r1
	strd	r4, [r10, #96]
	.loc 1 130 0
	ldrd	r0, [r10, #104]
	bl	sqrt(PLT)
.LVL34:
	strd	r0, [sp]
	ldrd	r2, [sp]
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_ddiv(PLT)
.LVL35:
	mov	r8, r0
	mov	r9, r1
	.loc 1 131 0
	mov	r2, r0
	mov	r3, r1
	.loc 1 130 0
	strd	r8, [r10, #128]
	.loc 1 131 0
	bl	__aeabi_dmul(PLT)
.LVL36:
	strd	r0, [r10, #136]
	.loc 1 132 0
	mov	r0, r8
	mov	r1, r9
	bl	log(PLT)
.LVL37:
	.loc 1 133 0
	ldrd	r2, [sp]
	.loc 1 132 0
	strd	r0, [r10, #112]
	.loc 1 133 0
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul(PLT)
.LVL38:
	.loc 1 133 0 is_stmt 0 discriminator 1
	bl	log(PLT)
.LVL39:
	.loc 1 134 0 is_stmt 1
	mov	r2, r4
	mov	r3, r5
	.loc 1 133 0
	strd	r0, [r10, #120]
	.loc 1 134 0
	bl	__aeabi_dsub(PLT)
.LVL40:
	ldrd	r2, [r10, #64]
	bl	__aeabi_ddiv(PLT)
.LVL41:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL42:
	strd	r0, [r10, #144]
	.loc 1 136 0
	ldr	r0, [fp, #48]
	bl	__aeabi_i2d(PLT)
.LVL43:
	ldrd	r2, [r10, #24]
	mov	r6, r0
	mov	r7, r1
	bl	__aeabi_dmul(PLT)
.LVL44:
	mov	r2, #0
	ldr	r3, .L27
	bl	__aeabi_ddiv(PLT)
.LVL45:
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L27+4
	bl	__aeabi_ddiv(PLT)
.LVL46:
	mov	r2, #0
	ldr	r3, .L27+4
	mov	r5, r1
	mov	r4, r0
	bl	__aeabi_dcmplt(PLT)
.LVL47:
	.loc 1 137 0
	ldrd	r2, [r10, #40]
	mov	r1, r7
	.loc 1 136 0
	cmp	r0, #0
	.loc 1 136 0 is_stmt 0 discriminator 2
	ldreq	r5, .L27+4
	moveq	r4, #0
	.loc 1 136 0 discriminator 4
	strd	r4, [r10, #32]
	.loc 1 137 0 is_stmt 1
	mov	r0, r6
	bl	__aeabi_dmul(PLT)
.LVL48:
	mov	r2, #0
	ldr	r3, .L27
	bl	__aeabi_ddiv(PLT)
.LVL49:
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L27+4
	bl	__aeabi_ddiv(PLT)
.LVL50:
	mov	r2, #0
	ldr	r3, .L27+4
	mov	r4, r0
	mov	r5, r1
	bl	__aeabi_dcmplt(PLT)
.LVL51:
	cmp	r0, #0
	.loc 1 137 0 is_stmt 0 discriminator 2
	ldreq	r5, .L27+4
	moveq	r4, #0
	.loc 1 140 0 is_stmt 1
	mov	r0, #0
	.loc 1 137 0 discriminator 4
	strd	r4, [r10, #48]
	.loc 1 140 0
	add	sp, sp, #12
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL52:
.L28:
	.align	2
.L27:
	.word	1085227008
	.word	1072693248
	.cfi_endproc
.LFE56:
	.size	compressor_config_output, .-compressor_config_output
	.align	2
	.type	config_output, %function
config_output:
.LFB61:
	.loc 1 289 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL53:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 290 0
	ldr	r4, [r0]
.LVL54:
	.loc 1 289 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 32
	.loc 1 293 0
	ldr	r3, [r4, #16]
	.loc 1 289 0
	mov	r5, r0
	.loc 1 293 0
	ldr	ip, [r3]
	ldr	r3, [r3, #4]
	ldr	r2, [ip, #48]
	ldr	r3, [r3, #48]
	.loc 1 291 0
	ldr	r8, [r4, #36]
.LVL55:
	.loc 1 293 0
	cmp	r2, r3
	bne	.L34
	.loc 1 302 0
	add	r3, ip, #56
	ldmia	r3, {r0, r1}
.LVL56:
	.loc 1 303 0
	ldrd	r6, [ip, #40]
	.loc 1 304 0
	ldr	lr, [ip, #152]
	.loc 1 302 0
	add	r3, r5, #56
	.loc 1 301 0
	str	r2, [r5, #48]
	.loc 1 302 0
	stmia	r3, {r0, r1}
	.loc 1 306 0
	mov	r2, #1024
	.loc 1 304 0
	str	lr, [r5, #152]
	.loc 1 306 0
	ldr	r0, [ip, #52]
	ldr	r1, [ip, #152]
	.loc 1 303 0
	strd	r6, [r5, #40]
	.loc 1 306 0
	bl	av_audio_fifo_alloc(PLT)
.LVL57:
	.loc 1 307 0
	ldr	r3, [r4, #16]
	mov	r2, #1024
	.loc 1 306 0
	str	r0, [r8, #160]
	.loc 1 307 0
	ldr	r3, [r3, #4]
	ldr	r0, [r3, #52]
	ldr	r1, [r3, #152]
	bl	av_audio_fifo_alloc(PLT)
.LVL58:
	mov	r3, r0
	.loc 1 308 0
	ldr	r0, [r8, #160]
	.loc 1 307 0
	str	r3, [r8, #164]
	.loc 1 308 0 discriminator 1
	cmp	r0, #0
	cmpne	r3, #0
	moveq	r4, #1
.LVL59:
	movne	r4, #0
	beq	.L32
	.loc 1 311 0
	mov	r0, r5
	bl	compressor_config_output(PLT)
.LVL60:
	.loc 1 313 0
	mov	r0, r4
.L31:
	.loc 1 314 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.LVL61:
.L34:
	.cfi_restore_state
	.loc 1 294 0
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, .L35
	mov	r0, r4
.LVL62:
	mov	r1, #16
.LPIC2:
	add	r2, pc, r2
	bl	av_log(PLT)
.LVL63:
	.loc 1 298 0
	mvn	r0, #21
	b	.L31
.LVL64:
.L32:
	.loc 1 309 0
	mvn	r0, #11
	b	.L31
.L36:
	.align	2
.L35:
	.word	.LC1-(.LPIC2+8)
	.cfi_endproc
.LFE61:
	.size	config_output, .-config_output
	.align	2
	.type	request_frame, %function
request_frame:
.LFB59:
	.loc 1 238 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL65:
	stmfd	sp!, {r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 239 0
	ldr	r4, [r0]
.LVL66:
	.loc 1 240 0
	ldr	r5, [r4, #36]
.LVL67:
.LBB5:
	.loc 1 245 0
	ldr	r3, [r4, #16]
	.loc 1 246 0
	ldr	r0, [r5, #160]
.LVL68:
	.loc 1 245 0
	ldr	r6, [r3]
.LVL69:
	.loc 1 246 0
	bl	av_audio_fifo_size(PLT)
.LVL70:
	cmp	r0, #0
	beq	.L38
.LVL71:
	.loc 1 245 0
	ldr	r3, [r4, #16]
	.loc 1 246 0
	ldr	r0, [r5, #164]
	.loc 1 245 0
	ldr	r6, [r3, #4]
.LVL72:
	.loc 1 246 0
	bl	av_audio_fifo_size(PLT)
.LVL73:
	cmp	r0, #0
	beq	.L38
.LBE5:
	.loc 1 251 0
	mov	r0, #0
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL74:
.L38:
.LBB6:
	.loc 1 247 0
	mov	r0, r6
.LBE6:
	.loc 1 251 0
	ldmfd	sp!, {r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL75:
.LBB7:
	.loc 1 247 0
	b	ff_request_frame(PLT)
.LVL76:
.LBE7:
	.cfi_endproc
.LFE59:
	.size	request_frame, .-request_frame
	.global	__aeabi_dcmpgt
	.align	2
	.type	compressor.isra.0, %function
compressor.isra.0:
.LFB65:
	.loc 1 142 0
	.cfi_startproc
	@ args = 32, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL77:
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
	sub	sp, sp, #116
	.cfi_def_cfa_offset 152
	.loc 1 151 0 discriminator 1
	ldr	ip, [sp, #152]
	.loc 1 147 0
	ldrd	r4, [r0, #80]
	.loc 1 142 0
	str	r0, [sp, #8]
	.loc 1 151 0 discriminator 1
	cmp	ip, #0
	.loc 1 142 0
	str	r1, [sp, #24]
.LVL78:
	.loc 1 148 0
	mov	ip, r0
	ldrd	r0, [r0, #88]
.LVL79:
	.loc 1 147 0
	strd	r4, [sp, #56]
.LVL80:
	.loc 1 148 0
	strd	r0, [sp, #64]
.LVL81:
	.loc 1 142 0
	ldr	r1, [sp, #176]
.LVL82:
	ldr	r0, [sp, #180]
.LVL83:
	.loc 1 151 0 discriminator 1
	ble	.L44
	ldr	r0, [r0]
	ldr	r1, [r1]
	str	r1, [sp, #48]
	mov	lr, r1
	mov	r1, r0, asl #3
	str	r0, [sp, #40]
	mov	r0, r1
	add	fp, r3, r0
	add	r3, r3, #8
.LVL84:
	str	r1, [sp, #52]
	str	r3, [sp, #4]
	mov	r1, ip
	mov	r3, lr, asl #3
.LVL85:
	ldr	ip, [ip, #152]
.LVL86:
	ldr	r1, [r1, #156]
.LVL87:
	sub	r2, r2, #8
.LVL88:
	str	r3, [sp, #20]
	mov	r3, #0
	str	ip, [sp, #44]
	str	r1, [sp, #28]
	str	r2, [sp, #12]
	str	r3, [sp, #16]
.LVL89:
.L66:
.LBB13:
	.loc 1 154 0
	ldr	r3, [sp, #4]
	ldrd	r0, [sp, #168]
	ldrd	r2, [r3, #-8]
	bl	__aeabi_dmul(PLT)
.LVL90:
	.loc 1 156 0
	ldr	r3, [sp, #44]
	cmp	r3, #1
	.loc 1 157 0 discriminator 1
	ldr	r3, [sp, #40]
	.loc 1 154 0
	mov	r5, r0
	bic	r4, r1, #-2147483648
.LVL91:
	.loc 1 156 0
	beq	.L46
.LVL92:
	.loc 1 160 0 discriminator 1
	cmp	r3, #1
	ldrgt	r8, [sp, #4]
	ble	.L48
.LVL93:
.L47:
	.loc 1 161 0
	ldrd	r2, [r8], #8
	ldrd	r0, [sp, #168]
	bl	__aeabi_dmul(PLT)
.LVL94:
	bic	r1, r1, #-2147483648
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_dadd(PLT)
.LVL95:
	.loc 1 160 0 discriminator 1
	cmp	r8, fp
	.loc 1 161 0
	mov	r5, r0
.LVL96:
	mov	r4, r1
.LVL97:
	.loc 1 160 0 discriminator 1
	bne	.L47
.LVL98:
.L48:
	.loc 1 163 0
	ldr	r0, [sp, #40]
	bl	__aeabi_i2d(PLT)
.LVL99:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_ddiv(PLT)
.LVL100:
	mov	r5, r0
	mov	r4, r1
.LVL101:
.L49:
	.loc 1 166 0
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L52
	.loc 1 167 0
	mov	r0, r5
	mov	r2, r5
	mov	r1, r4
	mov	r3, r4
	bl	__aeabi_dmul(PLT)
.LVL102:
	mov	r5, r0
.LVL103:
	mov	r4, r1
.LVL104:
.L52:
	.loc 1 169 0
	ldr	r3, [sp, #8]
	mov	r0, r5
	ldrd	r6, [r3, #56]
	mov	r1, r4
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dsub(PLT)
.LVL105:
	mov	r3, r4
	mov	r2, r5
	mov	r8, r0
	mov	r9, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dcmplt(PLT)
.LVL106:
	.loc 1 169 0 is_stmt 0 discriminator 1
	ldr	r3, [sp, #8]
	.loc 1 169 0
	cmp	r0, #0
	beq	.L87
	.loc 1 169 0 discriminator 1
	ldrd	r2, [r3, #32]
.L55:
	.loc 1 169 0 discriminator 4
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul(PLT)
.LVL107:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd(PLT)
.LVL108:
	ldr	r3, [sp, #8]
	.loc 1 171 0 is_stmt 1
	mov	r2, #0
	.loc 1 169 0 discriminator 4
	mov	r4, r0
.LVL109:
	mov	r5, r1
	strd	r4, [r3, #56]
	.loc 1 171 0
	mov	r3, #0
	bl	__aeabi_dcmpgt(PLT)
.LVL110:
	cmp	r0, #0
	beq	.L88
	.loc 1 171 0 is_stmt 0 discriminator 1
	ldr	r3, [sp, #28]
	.loc 1 171 0 discriminator 5
	mov	r0, r4
	.loc 1 171 0 discriminator 1
	cmp	r3, #0
	.loc 1 171 0 discriminator 5
	mov	r1, r5
	ldr	r3, [sp, #8]
	.loc 1 171 0 discriminator 1
	beq	.L58
	.loc 1 171 0 discriminator 5
	ldrd	r2, [r3, #136]
	bl	__aeabi_dcmpgt(PLT)
.LVL111:
	cmp	r0, #0
	beq	.L88
.LBB14:
.LBB15:
	.loc 1 101 0 is_stmt 1
	mov	r0, r4
	mov	r1, r5
	bl	log(PLT)
.LVL112:
	.loc 1 106 0
	mov	r2, #0
	ldr	r3, .L91
	bl	__aeabi_dmul(PLT)
.LVL113:
.LBE15:
.LBE14:
	.loc 1 172 0
	ldr	r3, [sp, #8]
	ldrd	r8, [r3, #64]
	ldrd	r6, [r3, #96]
.LBB23:
.LBB18:
	.loc 1 106 0
	strd	r0, [sp, #32]
.LBE18:
.LBE23:
	.loc 1 172 0
	ldrd	r0, [r3, #104]
	strd	r0, [sp, #96]
	ldrd	r0, [r3, #112]
	strd	r0, [sp, #72]
	ldrd	r0, [r3, #120]
	ldrd	r2, [r3, #144]
	strd	r0, [sp, #80]
	strd	r2, [sp, #88]
.LVL114:
.L70:
.LBB24:
.LBB19:
	.loc 1 108 0
	mov	r2, #0
.LVL115:
	ldr	r3, .L91+4
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub(PLT)
.LVL116:
	mov	r2, #0
	ldr	r3, .L91+8
	bic	r5, r1, #-2147483648
	mov	r1, r5
	bl	__aeabi_dcmplt(PLT)
.LVL117:
	cmp	r0, #0
	bne	.L74
	.loc 1 112 0
	mov	r2, r6
	mov	r3, r7
	ldrd	r0, [sp, #32]
	bl	__aeabi_dsub(PLT)
.LVL118:
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_ddiv(PLT)
.LVL119:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd(PLT)
.LVL120:
	.loc 1 113 0
	mov	r2, r8
	mov	r3, r9
	.loc 1 112 0
	mov	r6, r0
.LVL121:
	mov	r7, r1
.LVL122:
	.loc 1 113 0
	mov	r0, #0
	ldr	r1, .L91+8
	bl	__aeabi_ddiv(PLT)
.LVL123:
	mov	r8, r0
.LVL124:
	mov	r9, r1
.LVL125:
.L61:
	.loc 1 116 0
	ldrd	r0, [sp, #96]
	mov	r2, #0
	ldr	r3, .L91+8
	bl	__aeabi_dcmpgt(PLT)
.LVL126:
	mov	r4, #1
.LVL127:
	.loc 1 116 0 is_stmt 0 discriminator 1
	ldrd	r2, [sp, #32]
	.loc 1 116 0
	cmp	r0, #0
	moveq	r4, r0
	.loc 1 116 0 discriminator 1
	ldrd	r0, [sp, #80]
	bl	__aeabi_dcmpgt(PLT)
.LVL128:
	mov	r3, #1
	cmp	r0, #0
	moveq	r3, #0
	and	r4, r4, r3
	tst	r4, #1
	beq	.L62
.LVL129:
.LBB16:
.LBB17:
	.file 2 "libavfilter/hermite.h"
	.loc 2 26 0 is_stmt 1
	ldrd	r4, [sp, #72]
	ldrd	r0, [sp, #80]
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dsub(PLT)
.LVL130:
	.loc 2 27 0
	mov	r2, r4
	mov	r3, r5
	.loc 2 26 0
	mov	r6, r0
.LVL131:
	mov	r7, r1
.LVL132:
	.loc 2 27 0
	ldrd	r0, [sp, #32]
	bl	__aeabi_dsub(PLT)
.LVL133:
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_ddiv(PLT)
.LVL134:
	.loc 2 32 0
	mov	r2, r8
	mov	r3, r9
	.loc 2 27 0
	strd	r0, [sp, #80]
.LVL135:
	.loc 2 32 0
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul(PLT)
.LVL136:
	.loc 2 34 0
	ldrd	r8, [sp, #80]
.LVL137:
	mov	r2, r8
	mov	r3, r9
	.loc 2 32 0
	strd	r0, [sp, #96]
.LVL138:
	.loc 2 34 0
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul(PLT)
.LVL139:
	.loc 2 35 0
	strd	r8, [sp, #80]
	.loc 2 34 0
	mov	r2, r0
	mov	r3, r1
.LVL140:
	.loc 2 35 0
	mov	r0, r8
	mov	r1, r9
	strd	r2, [sp, #104]
	bl	__aeabi_dmul(PLT)
.LVL141:
	.loc 2 40 0
	mov	r2, r4
	mov	r3, r5
	strd	r4, [sp, #72]
.LVL142:
	.loc 2 35 0
	mov	r8, r0
.LVL143:
	mov	r9, r1
	.loc 2 40 0
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL144:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd(PLT)
.LVL145:
	ldrd	r2, [sp, #88]
	mov	r4, r0
.LVL146:
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_dadd(PLT)
.LVL147:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub(PLT)
.LVL148:
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [sp, #96]
	bl	__aeabi_dadd(PLT)
.LVL149:
	mov	r2, r0
	mov	r3, r1
	.loc 2 42 0
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul(PLT)
.LVL150:
	.loc 2 39 0
	mov	r2, #0
	ldr	r3, .L91+12
	.loc 2 42 0
	mov	r8, r0
	mov	r9, r1
	.loc 2 39 0
	ldrd	r0, [sp, #72]
	bl	__aeabi_dmul(PLT)
.LVL151:
	mov	r2, r6
	mov	r3, r7
	mov	r4, r0
	mov	r5, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd(PLT)
.LVL152:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub(PLT)
.LVL153:
	mov	r2, #0
	ldr	r3, .L91+16
	mov	r4, r0
	mov	r5, r1
	ldrd	r0, [sp, #88]
	bl	__aeabi_dmul(PLT)
.LVL154:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL155:
	ldrd	r2, [sp, #96]
	bl	__aeabi_dsub(PLT)
.LVL156:
	mov	r2, r0
	mov	r3, r1
	.loc 2 42 0
	ldrd	r0, [sp, #104]
	bl	__aeabi_dmul(PLT)
.LVL157:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd(PLT)
.LVL158:
	ldrd	r2, [sp, #80]
	mov	r4, r0
	mov	r5, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul(PLT)
.LVL159:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
.LVL160:
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [sp, #72]
	bl	__aeabi_dadd(PLT)
.LVL161:
	mov	r6, r0
.LVL162:
	mov	r7, r1
.LVL163:
.L62:
.LBE17:
.LBE16:
	.loc 1 121 0
	ldrd	r2, [sp, #32]
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub(PLT)
.LVL164:
	bl	exp(PLT)
.LVL165:
	mov	r3, r1
.LVL166:
.LBE19:
.LBE24:
	.loc 1 176 0 discriminator 1
	ldr	r1, [sp, #48]
.LBB25:
.LBB20:
	.loc 1 121 0
	mov	r2, r0
.LVL167:
.LBE20:
.LBE25:
	.loc 1 176 0 discriminator 1
	cmp	r1, #0
	ble	.L90
.LVL168:
.L65:
	ldrd	r0, [sp, #56]
	bl	__aeabi_dmul(PLT)
.LVL169:
	ldrd	r6, [sp, #64]
	mov	r9, fp
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul(PLT)
.LVL170:
	mov	r2, r6
	mov	r3, r7
	ldr	r6, [sp, #24]
	mov	r4, r0
	mov	r5, r1
	mov	r0, #0
	ldr	r1, .L91+8
	bl	__aeabi_dsub(PLT)
.LVL171:
	mov	r3, r1
	mov	r2, r0
	mov	r1, r5
	mov	r0, r4
	bl	__aeabi_dadd(PLT)
.LVL172:
	ldr	r3, [sp, #20]
	ldr	r7, [sp, #12]
	ldrd	r10, [sp, #160]
	add	r8, r6, r3
	mov	r4, r0
	mov	r5, r1
.LVL173:
.L68:
	.loc 1 177 0
	ldrd	r0, [r6], #8
	mov	r2, r10
	mov	r3, fp
	bl	__aeabi_dmul(PLT)
.LVL174:
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul(PLT)
.LVL175:
	.loc 1 176 0 discriminator 1
	cmp	r6, r8
	.loc 1 177 0
	strd	r0, [r7, #8]!
	.loc 1 176 0 discriminator 1
	bne	.L68
	mov	fp, r9
.L69:
.LBE13:
	.loc 1 151 0 discriminator 2
	ldr	r3, [sp, #16]
	.loc 1 151 0 is_stmt 0 discriminator 1
	ldr	r2, [sp, #152]
	.loc 1 151 0 discriminator 2
	add	r3, r3, #1
	.loc 1 151 0 discriminator 1
	cmp	r3, r2
	.loc 1 151 0 discriminator 2
	str	r3, [sp, #16]
.LVL176:
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #12]
.LBB28:
	.loc 1 179 0 is_stmt 1
	str	r8, [sp, #24]
.LVL177:
	add	r3, r3, r2
	str	r3, [sp, #12]
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #52]
	add	r2, r2, r3
	str	r2, [sp, #4]
.LVL178:
	add	fp, fp, r3
.LBE28:
	.loc 1 151 0 discriminator 1
	bne	.L66
.LVL179:
.L44:
	.loc 1 183 0
	add	sp, sp, #116
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL180:
.L88:
	.cfi_restore_state
.LBB29:
	.loc 1 176 0 discriminator 1
	ldr	r1, [sp, #48]
	.loc 1 152 0
	mov	r2, #0
	.loc 1 176 0 discriminator 1
	cmp	r1, #0
	.loc 1 152 0
	ldr	r3, .L91+8
.LVL181:
	.loc 1 176 0 discriminator 1
	bgt	.L65
.L90:
	ldr	r3, [sp, #24]
	ldr	r2, [sp, #20]
.LVL182:
	add	r8, r3, r2
	b	.L69
.LVL183:
.L87:
	.loc 1 169 0 discriminator 2
	ldrd	r2, [r3, #48]
	b	.L55
.LVL184:
.L58:
	.loc 1 171 0 discriminator 5
	ldrd	r2, [r3, #128]
	bl	__aeabi_dcmpgt(PLT)
.LVL185:
	cmp	r0, #0
	beq	.L88
.LBB26:
.LBB21:
	.loc 1 101 0
	mov	r0, r4
	mov	r1, r5
	bl	log(PLT)
.LVL186:
	strd	r0, [sp, #32]
.LBE21:
.LBE26:
	.loc 1 172 0
	ldr	r1, [sp, #8]
	ldrd	r2, [r1, #104]
	ldrd	r8, [r1, #64]
	strd	r2, [sp, #96]
	ldrd	r2, [r1, #112]
	ldrd	r6, [r1, #96]
	strd	r2, [sp, #72]
	ldrd	r2, [r1, #120]
	strd	r2, [sp, #80]
	ldrd	r2, [r1, #144]
	strd	r2, [sp, #88]
.LVL187:
	b	.L70
.LVL188:
.L46:
	.loc 1 157 0 discriminator 1
	cmp	r3, #1
	ble	.L49
	ldr	r8, [sp, #4]
.LVL189:
.L51:
	.loc 1 158 0
	ldrd	r2, [r8], #8
	ldrd	r0, [sp, #168]
	bl	__aeabi_dmul(PLT)
.LVL190:
	mov	r2, r5
	mov	r3, r4
	bic	r9, r1, #-2147483648
	mov	r1, r9
	mov	r10, r0
	bl	__aeabi_dcmpgt(PLT)
.LVL191:
	.loc 1 158 0 is_stmt 0 discriminator 1
	cmp	r0, #0
	movne	r5, r10
.LVL192:
	movne	r4, r9
.LVL193:
	.loc 1 157 0 is_stmt 1 discriminator 1
	cmp	r8, fp
	bne	.L51
	b	.L49
.LVL194:
.L74:
.LBB27:
.LBB22:
	.loc 1 110 0
	mov	r8, #0
.LVL195:
	mov	r9, #0
	b	.L61
.L92:
	.align	2
.L91:
	.word	1071644672
	.word	1106247680
	.word	1072693248
	.word	-1073217536
	.word	1074266112
.LBE22:
.LBE27:
.LBE29:
	.cfi_endproc
.LFE65:
	.size	compressor.isra.0, .-compressor.isra.0
	.align	2
	.type	filter_frame, %function
filter_frame:
.LFB58:
	.loc 1 187 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL196:
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
	.loc 1 188 0
	ldr	r5, [r0, #8]
.LVL197:
	.loc 1 187 0
	sub	sp, sp, #60
	.cfi_def_cfa_offset 96
	.loc 1 197 0
	ldr	r2, [r5, #16]
	.loc 1 190 0
	ldr	ip, [r5, #28]
	.loc 1 191 0
	mov	r3, #0
	.loc 1 187 0
	str	r1, [sp, #36]
	.loc 1 190 0
	ldr	r6, [ip]
	.loc 1 191 0
	str	r3, [sp, #44]
	str	r3, [sp, #48]
	str	r3, [sp, #52]
	.loc 1 197 0
	ldr	r1, [r2]
.LVL198:
	.loc 1 189 0
	ldr	r4, [r5, #36]
.LVL199:
	.loc 1 197 0
	cmp	r1, r0
	beq	.L94
.LVL200:
	ldr	r2, [r2, #4]
	cmp	r2, r0
	beq	.L113
.LVL201:
	.loc 1 199 0 discriminator 1
	ldr	r2, .L117
	mov	r1, #199
.LPIC21:
	add	r2, pc, r2
	mov	r0, r3
.LVL202:
	str	r2, [sp]
	str	r1, [sp, #4]
	ldr	r2, .L117+4
	mov	r1, r3
	ldr	r3, .L117+8
.LPIC19:
	add	r2, pc, r2
.LPIC20:
	add	r3, pc, r3
	bl	av_log(PLT)
.LVL203:
	.loc 1 199 0 is_stmt 0 discriminator 2
	bl	abort(PLT)
.LVL204:
.L113:
	.loc 1 196 0 is_stmt 1 discriminator 2
	mov	r3, #1
.LVL205:
.L94:
	.loc 1 200 0
	add	r7, sp, #56
	ldr	r2, [r7, #-20]!
	add	r3, r3, #40
	ldr	r1, [r2, #64]
	ldr	r0, [r4, r3, asl #2]
.LVL206:
	ldr	r2, [r2, #76]
	bl	av_audio_fifo_write(PLT)
.LVL207:
	.loc 1 202 0
	mov	r0, r7
	bl	av_frame_free(PLT)
.LVL208:
	.loc 1 204 0
	ldr	r0, [r4, #160]
	bl	av_audio_fifo_size(PLT)
.LVL209:
	mov	r7, r0
	.loc 1 204 0 is_stmt 0 discriminator 1
	ldr	r0, [r4, #164]
	bl	av_audio_fifo_size(PLT)
.LVL210:
	.loc 1 204 0
	cmp	r7, r0
	ble	.L114
	.loc 1 204 0 discriminator 4
	ldr	r0, [r4, #164]
	bl	av_audio_fifo_size(PLT)
.LVL211:
	mov	r9, r0
.LVL212:
	.loc 1 205 0 is_stmt 1
	cmp	r9, #0
	.loc 1 206 0
	moveq	r0, r9
.LVL213:
	.loc 1 205 0
	bne	.L115
.L108:
	.loc 1 235 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL214:
.L114:
	.cfi_restore_state
	.loc 1 204 0 discriminator 6
	ldr	r0, [r4, #160]
	bl	av_audio_fifo_size(PLT)
.LVL215:
	mov	r9, r0
.LVL216:
	.loc 1 205 0
	cmp	r9, #0
	.loc 1 206 0
	moveq	r0, r9
.LVL217:
	.loc 1 205 0
	beq	.L108
.L115:
	.loc 1 208 0
	mov	r0, r6
	mov	r1, r9
	bl	ff_get_audio_buffer(PLT)
.LVL218:
	.loc 1 209 0
	cmp	r0, #0
	.loc 1 208 0
	str	r0, [sp, #44]
	.loc 1 209 0
	beq	.L105
	add	r10, r4, #156
	mov	r8, #0
	add	r7, sp, #48
.L99:
	.loc 1 212 0
	ldr	r3, [r5, #16]
	mov	r1, r9
	ldr	r0, [r3, r8]
	bl	ff_get_audio_buffer(PLT)
.LVL219:
	.loc 1 213 0
	cmp	r0, #0
	.loc 1 212 0
	str	r0, [r7, r8]
	.loc 1 213 0
	beq	.L116
	.loc 1 219 0
	mov	r1, r0
	add	r8, r8, #4
	ldr	r0, [r10, #4]!
	mov	r2, r9
	bl	av_audio_fifo_read(PLT)
.LVL220:
	.loc 1 211 0 discriminator 1
	cmp	r8, #8
	bne	.L99
	.loc 1 223 0
	ldrd	r10, [r4, #168]
	.loc 1 227 0
	add	r8, sp, #56
	ldr	ip, [r8, #-4]!
	.loc 1 224 0
	adds	r2, r10, r9
	.loc 1 222 0
	ldr	lr, [sp, #44]
	.loc 1 226 0
	ldr	r1, [sp, #48]
	.loc 1 224 0
	adc	r3, fp, r9, asr #31
	.loc 1 229 0
	ldr	r0, [r5, #16]
	.loc 1 226 0
	ldr	ip, [ip]
	.loc 1 223 0
	strd	r10, [lr, #104]
	.loc 1 226 0
	ldr	r1, [r1]
	.loc 1 222 0
	ldr	lr, [lr]
.LVL221:
	.loc 1 224 0
	strd	r2, [r4, #168]
	.loc 1 226 0
	str	r9, [sp]
	ldrd	r10, [r4, #8]
	mov	r3, ip
	strd	r10, [sp, #8]
	ldrd	r10, [r4, #16]
	mov	r2, lr
	strd	r10, [sp, #16]
	ldr	ip, [r0]
	add	ip, ip, #152
	str	ip, [sp, #24]
	ldr	ip, [r0, #4]
	mov	r0, r4
	add	ip, ip, #152
	str	ip, [sp, #28]
	bl	compressor.isra.0(PLT)
.LVL222:
	.loc 1 231 0
	mov	r0, r7
	bl	av_frame_free(PLT)
.LVL223:
	.loc 1 232 0
	mov	r0, r8
	bl	av_frame_free(PLT)
.LVL224:
	.loc 1 234 0
	mov	r0, r6
	ldr	r1, [sp, #44]
	bl	ff_filter_frame(PLT)
.LVL225:
	.loc 1 235 0
	add	sp, sp, #60
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL226:
.L116:
	.cfi_restore_state
	.loc 1 214 0
	mov	r0, r7
	bl	av_frame_free(PLT)
.LVL227:
	.loc 1 215 0
	add	r0, sp, #52
	bl	av_frame_free(PLT)
.LVL228:
	.loc 1 216 0
	add	r0, sp, #44
	bl	av_frame_free(PLT)
.LVL229:
	.loc 1 217 0
	mvn	r0, #11
	b	.L108
.L105:
	.loc 1 210 0
	mvn	r0, #11
	b	.L108
.L118:
	.align	2
.L117:
	.word	.LC4-(.LPIC21+8)
	.word	.LC2-(.LPIC19+8)
	.word	.LC3-(.LPIC20+8)
	.cfi_endproc
.LFE58:
	.size	filter_frame, .-filter_frame
	.align	2
	.type	acompressor_filter_frame, %function
acompressor_filter_frame:
.LFB63:
	.loc 1 361 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL230:
	.loc 1 363 0
	ldr	r2, [r0, #8]
	.loc 1 361 0
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
	.loc 1 365 0
	ldr	ip, [r2, #28]
	.loc 1 361 0
	sub	sp, sp, #40
	.cfi_def_cfa_offset 72
	.loc 1 361 0
	mov	r4, r0
	.loc 1 369 0
	mov	r0, r1
.LVL231:
	.loc 1 361 0
	str	r1, [sp, #36]
	.loc 1 364 0
	ldr	r6, [r2, #36]
	.loc 1 365 0
	ldr	r7, [ip]
	.loc 1 362 0
	ldr	r10, [r1]
.LVL232:
	.loc 1 369 0
	bl	av_frame_is_writable(PLT)
.LVL233:
	cmp	r0, #0
	beq	.L120
	.loc 1 370 0
	ldr	r5, [sp, #36]
.LVL234:
	mov	r3, r5
.L121:
.LVL235:
	.loc 1 381 0
	ldrd	r8, [r6, #8]
	ldr	r3, [r3, #76]
	add	r4, r4, #152
.LVL236:
	ldr	r2, [r5]
	mov	r0, r6
	str	r3, [sp]
.LVL237:
	strd	r8, [sp, #8]
	mov	r3, r10
	strd	r8, [sp, #16]
	str	r4, [sp, #24]
	str	r4, [sp, #28]
	mov	r1, r10
	bl	compressor.isra.0(PLT)
.LVL238:
	.loc 1 385 0
	ldr	r3, [sp, #36]
	cmp	r5, r3
	beq	.L124
	.loc 1 386 0
	add	r0, sp, #36
.LVL239:
	bl	av_frame_free(PLT)
.LVL240:
.L124:
	.loc 1 387 0
	mov	r0, r7
	mov	r1, r5
	bl	ff_filter_frame(PLT)
.LVL241:
.L123:
	.loc 1 388 0
	add	sp, sp, #40
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
.LVL242:
.L120:
	.cfi_restore_state
	.loc 1 372 0
	ldr	r3, [sp, #36]
	mov	r0, r4
	ldr	r1, [r3, #76]
	bl	ff_get_audio_buffer(PLT)
.LVL243:
	.loc 1 373 0
	subs	r5, r0, #0
	beq	.L126
	.loc 1 377 0
	ldr	r1, [sp, #36]
	bl	av_frame_copy_props(PLT)
.LVL244:
	ldr	r3, [sp, #36]
	b	.L121
.LVL245:
.L126:
	.loc 1 374 0
	add	r0, sp, #36
.LVL246:
	bl	av_frame_free(PLT)
.LVL247:
	.loc 1 375 0
	mvn	r0, #11
	b	.L123
	.cfi_endproc
.LFE63:
	.size	acompressor_filter_frame, .-acompressor_filter_frame
	.align	2
	.type	acompressor_query_formats, %function
acompressor_query_formats:
.LFB64:
	.loc 1 391 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL248:
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 391 0
	mov	r4, r0
	.loc 1 400 0
	bl	ff_all_channel_counts(PLT)
.LVL249:
	.loc 1 401 0
	subs	r1, r0, #0
	beq	.L130
	.loc 1 403 0
	mov	r0, r4
.LVL250:
	bl	ff_set_common_channel_layouts(PLT)
.LVL251:
	.loc 1 404 0
	cmp	r0, #0
	ldmltfd	sp!, {r4, pc}
	.loc 1 407 0
	ldr	r0, .L140
.LVL252:
.LPIC22:
	add	r0, pc, r0
	add	r0, r0, #8
	bl	ff_make_format_list(PLT)
.LVL253:
	.loc 1 408 0
	subs	r1, r0, #0
	beq	.L130
	.loc 1 410 0
	mov	r0, r4
.LVL254:
	bl	ff_set_common_formats(PLT)
.LVL255:
	.loc 1 411 0
	cmp	r0, #0
	ldmltfd	sp!, {r4, pc}
.LVL256:
.LBB32:
.LBB33:
	.loc 1 414 0
	bl	ff_all_samplerates(PLT)
.LVL257:
	.loc 1 415 0
	subs	r1, r0, #0
	beq	.L130
	.loc 1 417 0
	mov	r0, r4
.LVL258:
.LBE33:
.LBE32:
	.loc 1 418 0
	ldmfd	sp!, {r4, lr}
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL259:
.LBB35:
.LBB34:
	.loc 1 417 0
	b	ff_set_common_samplerates(PLT)
.LVL260:
.L130:
	.cfi_restore_state
.LBE34:
.LBE35:
	.loc 1 402 0
	mvn	r0, #11
	ldmfd	sp!, {r4, pc}
.L141:
	.align	2
.L140:
	.word	.LANCHOR0-(.LPIC22+8)
	.cfi_endproc
.LFE64:
	.size	acompressor_query_formats, .-acompressor_query_formats
	.global	ff_af_acompressor
	.global	ff_af_sidechaincompress
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	sample_fmts.9300, %object
	.size	sample_fmts.9300, 8
sample_fmts.9300:
	.word	4
	.word	-1
	.type	sample_fmts.9333, %object
	.size	sample_fmts.9333, 8
sample_fmts.9333:
	.word	4
	.word	-1
	.section	.data.rel.ro,"aw",%progbits
	.align	2
	.type	acompressor_class, %object
	.size	acompressor_class, 44
acompressor_class:
	.word	.LC5
	.word	av_default_item_name
	.word	options
	.word	3608935
	.space	16
	.word	7
	.space	8
	.type	sidechaincompress_class, %object
	.size	sidechaincompress_class, 44
sidechaincompress_class:
	.word	.LC8
	.word	av_default_item_name
	.word	options
	.word	3608935
	.space	16
	.word	7
	.space	8
	.section	.data.rel.ro.local,"aw",%progbits
	.align	3
	.type	acompressor_outputs, %object
	.size	acompressor_outputs, 80
acompressor_outputs:
	.word	.LC7
	.word	1
	.space	20
	.word	compressor_config_output
	.space	8
	.word	0
	.space	36
	.type	acompressor_inputs, %object
	.size	acompressor_inputs, 80
acompressor_inputs:
	.word	.LC7
	.word	1
	.space	8
	.word	acompressor_filter_frame
	.space	20
	.word	0
	.space	36
	.type	sidechaincompress_outputs, %object
	.size	sidechaincompress_outputs, 80
sidechaincompress_outputs:
	.word	.LC7
	.word	1
	.space	16
	.word	request_frame
	.word	config_output
	.space	8
	.word	0
	.space	36
	.type	sidechaincompress_inputs, %object
	.size	sidechaincompress_inputs, 120
sidechaincompress_inputs:
	.word	.LC10
	.word	1
	.space	8
	.word	filter_frame
	.space	20
	.word	.LC11
	.word	1
	.space	8
	.word	filter_frame
	.space	20
	.word	0
	.space	36
	.type	options, %object
	.size	options, 768
options:
	.word	.LC12
	.word	.LC13
	.word	8
	.word	3
	.word	0
	.word	1072693248
	.word	0
	.word	1066401792
	.word	0
	.word	1078984704
	.word	65544
	.space	4
	.word	.LC14
	.word	.LC15
	.word	72
	.word	3
	.word	0
	.word	1069547520
	.word	2305843009
	.word	1062207488
	.word	0
	.word	1072693248
	.word	65544
	.space	4
	.word	.LC16
	.word	.LC17
	.word	64
	.word	3
	.word	0
	.word	1073741824
	.word	0
	.word	1072693248
	.word	0
	.word	1077149696
	.word	65544
	.space	4
	.word	.LC18
	.word	.LC19
	.word	24
	.word	3
	.word	0
	.word	1077149696
	.word	1202590843
	.word	1065646817
	.word	0
	.word	1084178432
	.word	65544
	.space	4
	.word	.LC20
	.word	.LC21
	.word	40
	.word	3
	.word	0
	.word	1081032704
	.word	1202590843
	.word	1065646817
	.word	0
	.word	1086428160
	.word	65544
	.space	4
	.word	.LC22
	.word	.LC23
	.word	80
	.word	3
	.word	0
	.word	1073741824
	.word	0
	.word	1072693248
	.word	0
	.word	1078984704
	.word	65544
	.space	4
	.word	.LC24
	.word	.LC25
	.word	104
	.word	3
	.word	3899143110
	.word	1074176159
	.word	0
	.word	1072693248
	.word	0
	.word	1075838976
	.word	65544
	.space	4
	.word	.LC26
	.word	.LC27
	.word	152
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1072693248
	.word	65544
	.word	.LC26
	.word	.LC28
	.word	0
	.word	0
	.word	128
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	65544
	.word	.LC26
	.word	.LC29
	.word	0
	.word	0
	.word	128
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	65544
	.word	.LC26
	.word	.LC30
	.word	.LC31
	.word	156
	.word	1
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1072693248
	.word	65544
	.word	.LC30
	.word	.LC32
	.word	0
	.word	0
	.word	128
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	65544
	.word	.LC30
	.word	.LC33
	.word	0
	.word	0
	.word	128
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	65544
	.word	.LC30
	.word	.LC34
	.word	.LC35
	.word	16
	.word	3
	.word	0
	.word	1072693248
	.word	0
	.word	1066401792
	.word	0
	.word	1078984704
	.word	65544
	.space	4
	.word	.LC36
	.word	.LC37
	.word	88
	.word	3
	.word	0
	.word	1072693248
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
	.type	ff_af_acompressor, %object
	.size	ff_af_acompressor, 56
ff_af_acompressor:
	.word	.LC5
	.word	.LC6
	.word	acompressor_inputs
	.word	acompressor_outputs
	.word	acompressor_class
	.space	16
	.word	acompressor_query_formats
	.word	176
	.space	12
	.type	ff_af_sidechaincompress, %object
	.size	ff_af_sidechaincompress, 56
ff_af_sidechaincompress:
	.word	.LC8
	.word	.LC9
	.word	sidechaincompress_inputs
	.word	sidechaincompress_outputs
	.word	sidechaincompress_class
	.space	12
	.word	uninit
	.word	query_formats
	.word	176
	.space	12
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"No channel layout for input 1\012\000"
	.space	1
.LC1:
	.ascii	"Inputs must have the same sample rate %d for in0 vs"
	.ascii	" %d for in1\012\000"
.LC2:
	.ascii	"Assertion %s failed at %s:%d\012\000"
	.space	2
.LC3:
	.ascii	"i < 2\000"
	.space	2
.LC4:
	.ascii	"libavfilter/af_sidechaincompress.c\000"
	.space	1
.LC5:
	.ascii	"acompressor\000"
.LC6:
	.ascii	"Audio compressor.\000"
	.space	2
.LC7:
	.ascii	"default\000"
.LC8:
	.ascii	"sidechaincompress\000"
	.space	2
.LC9:
	.ascii	"Sidechain compressor.\000"
	.space	2
.LC10:
	.ascii	"main\000"
	.space	3
.LC11:
	.ascii	"sidechain\000"
	.space	2
.LC12:
	.ascii	"level_in\000"
	.space	3
.LC13:
	.ascii	"set input gain\000"
	.space	1
.LC14:
	.ascii	"threshold\000"
	.space	2
.LC15:
	.ascii	"set threshold\000"
	.space	2
.LC16:
	.ascii	"ratio\000"
	.space	2
.LC17:
	.ascii	"set ratio\000"
	.space	2
.LC18:
	.ascii	"attack\000"
	.space	1
.LC19:
	.ascii	"set attack\000"
	.space	1
.LC20:
	.ascii	"release\000"
.LC21:
	.ascii	"set release\000"
.LC22:
	.ascii	"makeup\000"
	.space	1
.LC23:
	.ascii	"set make up gain\000"
	.space	3
.LC24:
	.ascii	"knee\000"
	.space	3
.LC25:
	.ascii	"set knee\000"
	.space	3
.LC26:
	.ascii	"link\000"
	.space	3
.LC27:
	.ascii	"set link type\000"
	.space	2
.LC28:
	.ascii	"average\000"
.LC29:
	.ascii	"maximum\000"
.LC30:
	.ascii	"detection\000"
	.space	2
.LC31:
	.ascii	"set detection\000"
	.space	2
.LC32:
	.ascii	"peak\000"
	.space	3
.LC33:
	.ascii	"rms\000"
.LC34:
	.ascii	"level_sc\000"
	.space	3
.LC35:
	.ascii	"set sidechain gain\000"
	.space	1
.LC36:
	.ascii	"mix\000"
.LC37:
	.ascii	"set mix\000"
	.text
.Letext0:
	.file 3 "./libavutil/avutil.h"
	.file 4 "/Users/meijian/android-ndk-r10e/platforms/android-14/arch-arm/usr/include/machine/_types.h"
	.file 5 "/Users/meijian/android-ndk-r10e/platforms/android-14/arch-arm/usr/include/stdint.h"
	.file 6 "./libavutil/log.h"
	.file 7 "./libavutil/opt.h"
	.file 8 "./libavutil/dict.h"
	.file 9 "./libavutil/pixfmt.h"
	.file 10 "./libavutil/rational.h"
	.file 11 "./libavutil/samplefmt.h"
	.file 12 "./libavutil/audio_fifo.h"
	.file 13 "./libavutil/buffer.h"
	.file 14 "./libavutil/frame.h"
	.file 15 "libavfilter/avfilter.h"
	.file 16 "libavfilter/internal.h"
	.file 17 "libavfilter/formats.h"
	.file 18 "libavfilter/audio.h"
	.file 19 "/Users/meijian/android-ndk-r10e/platforms/android-14/arch-arm/usr/include/math.h"
	.file 20 "/Users/meijian/android-ndk-r10e/platforms/android-14/arch-arm/usr/include/stdlib.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x23bf
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF413
	.byte	0x1
	.4byte	.LASF414
	.4byte	.LASF415
	.4byte	.Ldebug_ranges0+0x90
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF17
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x3
	.byte	0xbf
	.4byte	0x63
	.uleb128 0x4
	.4byte	.LASF0
	.sleb128 -1
	.uleb128 0x4
	.4byte	.LASF1
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF2
	.sleb128 1
	.uleb128 0x4
	.4byte	.LASF3
	.sleb128 2
	.uleb128 0x4
	.4byte	.LASF4
	.sleb128 3
	.uleb128 0x4
	.4byte	.LASF5
	.sleb128 4
	.uleb128 0x4
	.4byte	.LASF6
	.sleb128 5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x4
	.byte	0x3
	.2byte	0x108
	.4byte	0xa1
	.uleb128 0x4
	.4byte	.LASF9
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF10
	.sleb128 1
	.uleb128 0x4
	.4byte	.LASF11
	.sleb128 2
	.uleb128 0x4
	.4byte	.LASF12
	.sleb128 3
	.uleb128 0x4
	.4byte	.LASF13
	.sleb128 4
	.uleb128 0x4
	.4byte	.LASF14
	.sleb128 5
	.uleb128 0x4
	.4byte	.LASF15
	.sleb128 6
	.uleb128 0x4
	.4byte	.LASF16
	.sleb128 7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x4
	.byte	0x27
	.4byte	0xba
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF19
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x4
	.byte	0x28
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF23
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF24
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x4
	.byte	0x2e
	.4byte	0xec
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF26
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x4
	.byte	0x30
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF28
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF29
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF30
	.uleb128 0x8
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF31
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF32
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x5
	.byte	0x2a
	.4byte	0xaf
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x5
	.byte	0x2b
	.4byte	0xc1
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x5
	.byte	0x30
	.4byte	0xe1
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x5
	.byte	0x31
	.4byte	0xf3
	.uleb128 0x9
	.byte	0x4
	.4byte	0x11c
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF37
	.uleb128 0x9
	.byte	0x4
	.4byte	0x162
	.uleb128 0xa
	.4byte	0x11c
	.uleb128 0xb
	.byte	0x4
	.byte	0x6
	.byte	0x1d
	.4byte	0x1dc
	.uleb128 0x4
	.4byte	.LASF38
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF39
	.sleb128 1
	.uleb128 0x4
	.4byte	.LASF40
	.sleb128 2
	.uleb128 0x4
	.4byte	.LASF41
	.sleb128 3
	.uleb128 0x4
	.4byte	.LASF42
	.sleb128 4
	.uleb128 0x4
	.4byte	.LASF43
	.sleb128 5
	.uleb128 0x4
	.4byte	.LASF44
	.sleb128 6
	.uleb128 0x4
	.4byte	.LASF45
	.sleb128 7
	.uleb128 0x4
	.4byte	.LASF46
	.sleb128 8
	.uleb128 0x4
	.4byte	.LASF47
	.sleb128 9
	.uleb128 0x4
	.4byte	.LASF48
	.sleb128 10
	.uleb128 0x4
	.4byte	.LASF49
	.sleb128 40
	.uleb128 0x4
	.4byte	.LASF50
	.sleb128 41
	.uleb128 0x4
	.4byte	.LASF51
	.sleb128 42
	.uleb128 0x4
	.4byte	.LASF52
	.sleb128 43
	.uleb128 0x4
	.4byte	.LASF53
	.sleb128 44
	.uleb128 0x4
	.4byte	.LASF54
	.sleb128 45
	.uleb128 0x4
	.4byte	.LASF55
	.sleb128 46
	.byte	0
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x6
	.byte	0x30
	.4byte	0x167
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x2c
	.byte	0x6
	.byte	0x43
	.4byte	0x278
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x6
	.byte	0x48
	.4byte	0x15c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x6
	.byte	0x4e
	.4byte	0x287
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x6
	.byte	0x55
	.4byte	0x30d
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x6
	.byte	0x5d
	.4byte	0xa1
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x6
	.byte	0x63
	.4byte	0xa1
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x6
	.byte	0x6c
	.4byte	0xa1
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x6
	.byte	0x71
	.4byte	0x32c
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x6
	.byte	0x7b
	.4byte	0x34c
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x6
	.byte	0x82
	.4byte	0x1dc
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x6
	.byte	0x88
	.4byte	0x361
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x6
	.byte	0x8e
	.4byte	0x3c6
	.byte	0x28
	.byte	0
	.uleb128 0xe
	.4byte	0x15c
	.4byte	0x287
	.uleb128 0xf
	.4byte	0x113
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x278
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x30
	.byte	0x7
	.byte	0xf5
	.4byte	0x30d
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x7
	.byte	0xf6
	.4byte	0x15c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x7
	.byte	0xfc
	.4byte	0x15c
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x102
	.4byte	0xa1
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x103
	.4byte	0x612
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x10e
	.4byte	0x6ac
	.byte	0x10
	.uleb128 0x11
	.ascii	"min\000"
	.byte	0x7
	.2byte	0x10f
	.4byte	0x25
	.byte	0x18
	.uleb128 0x11
	.ascii	"max\000"
	.byte	0x7
	.2byte	0x110
	.4byte	0x25
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x112
	.4byte	0xa1
	.byte	0x28
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x12c
	.4byte	0x15c
	.byte	0x2c
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x313
	.uleb128 0xa
	.4byte	0x28d
	.uleb128 0xe
	.4byte	0x113
	.4byte	0x32c
	.uleb128 0xf
	.4byte	0x113
	.uleb128 0xf
	.4byte	0x113
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x318
	.uleb128 0xe
	.4byte	0x341
	.4byte	0x341
	.uleb128 0xf
	.4byte	0x341
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x347
	.uleb128 0xa
	.4byte	0x1e7
	.uleb128 0x9
	.byte	0x4
	.4byte	0x332
	.uleb128 0xe
	.4byte	0x1dc
	.4byte	0x361
	.uleb128 0xf
	.4byte	0x113
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x352
	.uleb128 0xe
	.4byte	0xa1
	.4byte	0x385
	.uleb128 0xf
	.4byte	0x385
	.uleb128 0xf
	.4byte	0x113
	.uleb128 0xf
	.4byte	0x15c
	.uleb128 0xf
	.4byte	0xa1
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x38b
	.uleb128 0x9
	.byte	0x4
	.4byte	0x391
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0xc
	.byte	0x7
	.2byte	0x149
	.4byte	0x3c6
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x168
	.4byte	0x758
	.byte	0
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x16c
	.4byte	0xa1
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x170
	.4byte	0xa1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x367
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x6
	.byte	0x8f
	.4byte	0x1e7
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0x8
	.byte	0x57
	.4byte	0x3e2
	.uleb128 0x13
	.4byte	.LASF81
	.uleb128 0x5
	.4byte	.LASF82
	.byte	0x4
	.byte	0x9
	.2byte	0x178
	.4byte	0x43d
	.uleb128 0x4
	.4byte	.LASF83
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF84
	.sleb128 1
	.uleb128 0x4
	.4byte	.LASF85
	.sleb128 2
	.uleb128 0x4
	.4byte	.LASF86
	.sleb128 3
	.uleb128 0x4
	.4byte	.LASF87
	.sleb128 4
	.uleb128 0x4
	.4byte	.LASF88
	.sleb128 5
	.uleb128 0x4
	.4byte	.LASF89
	.sleb128 6
	.uleb128 0x4
	.4byte	.LASF90
	.sleb128 7
	.uleb128 0x4
	.4byte	.LASF91
	.sleb128 8
	.uleb128 0x4
	.4byte	.LASF92
	.sleb128 9
	.uleb128 0x4
	.4byte	.LASF93
	.sleb128 10
	.uleb128 0x4
	.4byte	.LASF94
	.sleb128 11
	.byte	0
	.uleb128 0x5
	.4byte	.LASF95
	.byte	0x4
	.byte	0x9
	.2byte	0x18b
	.4byte	0x4bd
	.uleb128 0x4
	.4byte	.LASF96
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF97
	.sleb128 1
	.uleb128 0x4
	.4byte	.LASF98
	.sleb128 2
	.uleb128 0x4
	.4byte	.LASF99
	.sleb128 3
	.uleb128 0x4
	.4byte	.LASF100
	.sleb128 4
	.uleb128 0x4
	.4byte	.LASF101
	.sleb128 5
	.uleb128 0x4
	.4byte	.LASF102
	.sleb128 6
	.uleb128 0x4
	.4byte	.LASF103
	.sleb128 7
	.uleb128 0x4
	.4byte	.LASF104
	.sleb128 8
	.uleb128 0x4
	.4byte	.LASF105
	.sleb128 9
	.uleb128 0x4
	.4byte	.LASF106
	.sleb128 10
	.uleb128 0x4
	.4byte	.LASF107
	.sleb128 11
	.uleb128 0x4
	.4byte	.LASF108
	.sleb128 12
	.uleb128 0x4
	.4byte	.LASF109
	.sleb128 13
	.uleb128 0x4
	.4byte	.LASF110
	.sleb128 14
	.uleb128 0x4
	.4byte	.LASF111
	.sleb128 15
	.uleb128 0x4
	.4byte	.LASF112
	.sleb128 16
	.uleb128 0x4
	.4byte	.LASF113
	.sleb128 17
	.uleb128 0x4
	.4byte	.LASF114
	.sleb128 18
	.byte	0
	.uleb128 0x5
	.4byte	.LASF115
	.byte	0x4
	.byte	0x9
	.2byte	0x1a4
	.4byte	0x513
	.uleb128 0x4
	.4byte	.LASF116
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF117
	.sleb128 1
	.uleb128 0x4
	.4byte	.LASF118
	.sleb128 2
	.uleb128 0x4
	.4byte	.LASF119
	.sleb128 3
	.uleb128 0x4
	.4byte	.LASF120
	.sleb128 4
	.uleb128 0x4
	.4byte	.LASF121
	.sleb128 5
	.uleb128 0x4
	.4byte	.LASF122
	.sleb128 6
	.uleb128 0x4
	.4byte	.LASF123
	.sleb128 7
	.uleb128 0x4
	.4byte	.LASF124
	.sleb128 8
	.uleb128 0x4
	.4byte	.LASF125
	.sleb128 9
	.uleb128 0x4
	.4byte	.LASF126
	.sleb128 10
	.uleb128 0x4
	.4byte	.LASF127
	.sleb128 11
	.byte	0
	.uleb128 0x5
	.4byte	.LASF128
	.byte	0x4
	.byte	0x9
	.2byte	0x1b8
	.4byte	0x539
	.uleb128 0x4
	.4byte	.LASF129
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF130
	.sleb128 1
	.uleb128 0x4
	.4byte	.LASF131
	.sleb128 2
	.uleb128 0x4
	.4byte	.LASF132
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF133
	.byte	0x4
	.byte	0x9
	.2byte	0x1ce
	.4byte	0x577
	.uleb128 0x4
	.4byte	.LASF134
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF135
	.sleb128 1
	.uleb128 0x4
	.4byte	.LASF136
	.sleb128 2
	.uleb128 0x4
	.4byte	.LASF137
	.sleb128 3
	.uleb128 0x4
	.4byte	.LASF138
	.sleb128 4
	.uleb128 0x4
	.4byte	.LASF139
	.sleb128 5
	.uleb128 0x4
	.4byte	.LASF140
	.sleb128 6
	.uleb128 0x4
	.4byte	.LASF141
	.sleb128 7
	.byte	0
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0x8
	.byte	0xa
	.byte	0x2b
	.4byte	0x59c
	.uleb128 0x14
	.ascii	"num\000"
	.byte	0xa
	.byte	0x2c
	.4byte	0xa1
	.byte	0
	.uleb128 0x14
	.ascii	"den\000"
	.byte	0xa
	.byte	0x2d
	.4byte	0xa1
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF142
	.byte	0xa
	.byte	0x2e
	.4byte	0x577
	.uleb128 0x9
	.byte	0x4
	.4byte	0x12e
	.uleb128 0x3
	.4byte	.LASF143
	.byte	0x4
	.byte	0xb
	.byte	0x3b
	.4byte	0x602
	.uleb128 0x4
	.4byte	.LASF144
	.sleb128 -1
	.uleb128 0x4
	.4byte	.LASF145
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF146
	.sleb128 1
	.uleb128 0x4
	.4byte	.LASF147
	.sleb128 2
	.uleb128 0x4
	.4byte	.LASF148
	.sleb128 3
	.uleb128 0x4
	.4byte	.LASF149
	.sleb128 4
	.uleb128 0x4
	.4byte	.LASF150
	.sleb128 5
	.uleb128 0x4
	.4byte	.LASF151
	.sleb128 6
	.uleb128 0x4
	.4byte	.LASF152
	.sleb128 7
	.uleb128 0x4
	.4byte	.LASF153
	.sleb128 8
	.uleb128 0x4
	.4byte	.LASF154
	.sleb128 9
	.uleb128 0x4
	.4byte	.LASF155
	.sleb128 10
	.byte	0
	.uleb128 0x7
	.4byte	.LASF156
	.byte	0xc
	.byte	0x31
	.4byte	0x60d
	.uleb128 0x13
	.4byte	.LASF156
	.uleb128 0x3
	.4byte	.LASF157
	.byte	0x4
	.byte	0x7
	.byte	0xdd
	.4byte	0x6ac
	.uleb128 0x4
	.4byte	.LASF158
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF159
	.sleb128 1
	.uleb128 0x4
	.4byte	.LASF160
	.sleb128 2
	.uleb128 0x4
	.4byte	.LASF161
	.sleb128 3
	.uleb128 0x4
	.4byte	.LASF162
	.sleb128 4
	.uleb128 0x4
	.4byte	.LASF163
	.sleb128 5
	.uleb128 0x4
	.4byte	.LASF164
	.sleb128 6
	.uleb128 0x4
	.4byte	.LASF165
	.sleb128 7
	.uleb128 0x4
	.4byte	.LASF166
	.sleb128 8
	.uleb128 0x4
	.4byte	.LASF167
	.sleb128 128
	.uleb128 0x4
	.4byte	.LASF168
	.sleb128 1397316165
	.uleb128 0x4
	.4byte	.LASF169
	.sleb128 1346784596
	.uleb128 0x4
	.4byte	.LASF170
	.sleb128 1397116244
	.uleb128 0x4
	.4byte	.LASF171
	.sleb128 1448231252
	.uleb128 0x4
	.4byte	.LASF172
	.sleb128 1146442272
	.uleb128 0x4
	.4byte	.LASF173
	.sleb128 1129270354
	.uleb128 0x4
	.4byte	.LASF174
	.sleb128 1128811585
	.uleb128 0x4
	.4byte	.LASF175
	.sleb128 1112493900
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.byte	0x7
	.2byte	0x108
	.4byte	0x6e4
	.uleb128 0x16
	.ascii	"i64\000"
	.byte	0x7
	.2byte	0x109
	.4byte	0x139
	.uleb128 0x16
	.ascii	"dbl\000"
	.byte	0x7
	.2byte	0x10a
	.4byte	0x25
	.uleb128 0x16
	.ascii	"str\000"
	.byte	0x7
	.2byte	0x10b
	.4byte	0x15c
	.uleb128 0x16
	.ascii	"q\000"
	.byte	0x7
	.2byte	0x10d
	.4byte	0x59c
	.byte	0
	.uleb128 0x17
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x12d
	.4byte	0x28d
	.uleb128 0x12
	.4byte	.LASF176
	.byte	0x30
	.byte	0x7
	.2byte	0x132
	.4byte	0x74c
	.uleb128 0x11
	.ascii	"str\000"
	.byte	0x7
	.2byte	0x133
	.4byte	0x15c
	.byte	0
	.uleb128 0x10
	.4byte	.LASF177
	.byte	0x7
	.2byte	0x139
	.4byte	0x25
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF178
	.byte	0x7
	.2byte	0x139
	.4byte	0x25
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF179
	.byte	0x7
	.2byte	0x13e
	.4byte	0x25
	.byte	0x18
	.uleb128 0x10
	.4byte	.LASF180
	.byte	0x7
	.2byte	0x13e
	.4byte	0x25
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF181
	.byte	0x7
	.2byte	0x143
	.4byte	0xa1
	.byte	0x28
	.byte	0
	.uleb128 0x17
	.4byte	.LASF176
	.byte	0x7
	.2byte	0x144
	.4byte	0x6f0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x75e
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74c
	.uleb128 0x7
	.4byte	.LASF182
	.byte	0xd
	.byte	0x49
	.4byte	0x76f
	.uleb128 0x13
	.4byte	.LASF182
	.uleb128 0xc
	.4byte	.LASF183
	.byte	0xc
	.byte	0xd
	.byte	0x51
	.4byte	0x7a5
	.uleb128 0xd
	.4byte	.LASF184
	.byte	0xd
	.byte	0x52
	.4byte	0x7a5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF185
	.byte	0xd
	.byte	0x59
	.4byte	0x5a7
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF186
	.byte	0xd
	.byte	0x5d
	.4byte	0xa1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x764
	.uleb128 0x7
	.4byte	.LASF183
	.byte	0xd
	.byte	0x5e
	.4byte	0x774
	.uleb128 0x3
	.4byte	.LASF187
	.byte	0x4
	.byte	0xe
	.byte	0x30
	.4byte	0x811
	.uleb128 0x4
	.4byte	.LASF188
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF189
	.sleb128 1
	.uleb128 0x4
	.4byte	.LASF190
	.sleb128 2
	.uleb128 0x4
	.4byte	.LASF191
	.sleb128 3
	.uleb128 0x4
	.4byte	.LASF192
	.sleb128 4
	.uleb128 0x4
	.4byte	.LASF193
	.sleb128 5
	.uleb128 0x4
	.4byte	.LASF194
	.sleb128 6
	.uleb128 0x4
	.4byte	.LASF195
	.sleb128 7
	.uleb128 0x4
	.4byte	.LASF196
	.sleb128 8
	.uleb128 0x4
	.4byte	.LASF197
	.sleb128 9
	.uleb128 0x4
	.4byte	.LASF198
	.sleb128 10
	.uleb128 0x4
	.4byte	.LASF199
	.sleb128 11
	.uleb128 0x4
	.4byte	.LASF200
	.sleb128 12
	.byte	0
	.uleb128 0xc
	.4byte	.LASF201
	.byte	0x14
	.byte	0xe
	.byte	0x90
	.4byte	0x85a
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0xe
	.byte	0x91
	.4byte	0x7b6
	.byte	0
	.uleb128 0xd
	.4byte	.LASF185
	.byte	0xe
	.byte	0x92
	.4byte	0x5a7
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF186
	.byte	0xe
	.byte	0x93
	.4byte	0xa1
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF202
	.byte	0xe
	.byte	0x94
	.4byte	0x85a
	.byte	0xc
	.uleb128 0x14
	.ascii	"buf\000"
	.byte	0xe
	.byte	0x95
	.4byte	0x860
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3d7
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7ab
	.uleb128 0x7
	.4byte	.LASF201
	.byte	0xe
	.byte	0x96
	.4byte	0x811
	.uleb128 0x18
	.4byte	.LASF203
	.2byte	0x178
	.byte	0xe
	.byte	0xb5
	.4byte	0xaee
	.uleb128 0xd
	.4byte	.LASF185
	.byte	0xe
	.byte	0xc0
	.4byte	0xaee
	.byte	0
	.uleb128 0xd
	.4byte	.LASF204
	.byte	0xe
	.byte	0xd1
	.4byte	0xafe
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF205
	.byte	0xe
	.byte	0xe1
	.4byte	0xb0e
	.byte	0x40
	.uleb128 0xd
	.4byte	.LASF206
	.byte	0xe
	.byte	0xe6
	.4byte	0xa1
	.byte	0x44
	.uleb128 0xd
	.4byte	.LASF207
	.byte	0xe
	.byte	0xe6
	.4byte	0xa1
	.byte	0x48
	.uleb128 0xd
	.4byte	.LASF208
	.byte	0xe
	.byte	0xeb
	.4byte	0xa1
	.byte	0x4c
	.uleb128 0xd
	.4byte	.LASF209
	.byte	0xe
	.byte	0xf2
	.4byte	0xa1
	.byte	0x50
	.uleb128 0xd
	.4byte	.LASF210
	.byte	0xe
	.byte	0xf7
	.4byte	0xa1
	.byte	0x54
	.uleb128 0xd
	.4byte	.LASF211
	.byte	0xe
	.byte	0xfc
	.4byte	0x63
	.byte	0x58
	.uleb128 0x10
	.4byte	.LASF212
	.byte	0xe
	.2byte	0x101
	.4byte	0x59c
	.byte	0x5c
	.uleb128 0x11
	.ascii	"pts\000"
	.byte	0xe
	.2byte	0x106
	.4byte	0x139
	.byte	0x68
	.uleb128 0x10
	.4byte	.LASF213
	.byte	0xe
	.2byte	0x10b
	.4byte	0x139
	.byte	0x70
	.uleb128 0x10
	.4byte	.LASF214
	.byte	0xe
	.2byte	0x112
	.4byte	0x139
	.byte	0x78
	.uleb128 0x10
	.4byte	.LASF215
	.byte	0xe
	.2byte	0x117
	.4byte	0xa1
	.byte	0x80
	.uleb128 0x10
	.4byte	.LASF216
	.byte	0xe
	.2byte	0x11b
	.4byte	0xa1
	.byte	0x84
	.uleb128 0x10
	.4byte	.LASF217
	.byte	0xe
	.2byte	0x120
	.4byte	0xa1
	.byte	0x88
	.uleb128 0x10
	.4byte	.LASF218
	.byte	0xe
	.2byte	0x125
	.4byte	0x113
	.byte	0x8c
	.uleb128 0x10
	.4byte	.LASF219
	.byte	0xe
	.2byte	0x12c
	.4byte	0xb14
	.byte	0x90
	.uleb128 0x10
	.4byte	.LASF220
	.byte	0xe
	.2byte	0x133
	.4byte	0xa1
	.byte	0xd0
	.uleb128 0x10
	.4byte	.LASF221
	.byte	0xe
	.2byte	0x138
	.4byte	0xa1
	.byte	0xd4
	.uleb128 0x10
	.4byte	.LASF222
	.byte	0xe
	.2byte	0x13d
	.4byte	0xa1
	.byte	0xd8
	.uleb128 0x10
	.4byte	.LASF223
	.byte	0xe
	.2byte	0x142
	.4byte	0xa1
	.byte	0xdc
	.uleb128 0x10
	.4byte	.LASF224
	.byte	0xe
	.2byte	0x14d
	.4byte	0x139
	.byte	0xe0
	.uleb128 0x10
	.4byte	.LASF225
	.byte	0xe
	.2byte	0x152
	.4byte	0xa1
	.byte	0xe8
	.uleb128 0x10
	.4byte	.LASF226
	.byte	0xe
	.2byte	0x157
	.4byte	0x144
	.byte	0xf0
	.uleb128 0x11
	.ascii	"buf\000"
	.byte	0xe
	.2byte	0x165
	.4byte	0xb24
	.byte	0xf8
	.uleb128 0x19
	.4byte	.LASF227
	.byte	0xe
	.2byte	0x173
	.4byte	0xb34
	.2byte	0x118
	.uleb128 0x19
	.4byte	.LASF228
	.byte	0xe
	.2byte	0x177
	.4byte	0xa1
	.2byte	0x11c
	.uleb128 0x19
	.4byte	.LASF229
	.byte	0xe
	.2byte	0x179
	.4byte	0xb3a
	.2byte	0x120
	.uleb128 0x19
	.4byte	.LASF230
	.byte	0xe
	.2byte	0x17a
	.4byte	0xa1
	.2byte	0x124
	.uleb128 0x19
	.4byte	.LASF75
	.byte	0xe
	.2byte	0x18e
	.4byte	0xa1
	.2byte	0x128
	.uleb128 0x19
	.4byte	.LASF231
	.byte	0xe
	.2byte	0x197
	.4byte	0x513
	.2byte	0x12c
	.uleb128 0x19
	.4byte	.LASF232
	.byte	0xe
	.2byte	0x199
	.4byte	0x3e7
	.2byte	0x130
	.uleb128 0x19
	.4byte	.LASF233
	.byte	0xe
	.2byte	0x19b
	.4byte	0x43d
	.2byte	0x134
	.uleb128 0x19
	.4byte	.LASF234
	.byte	0xe
	.2byte	0x1a4
	.4byte	0x4bd
	.2byte	0x138
	.uleb128 0x19
	.4byte	.LASF235
	.byte	0xe
	.2byte	0x1a6
	.4byte	0x539
	.2byte	0x13c
	.uleb128 0x19
	.4byte	.LASF236
	.byte	0xe
	.2byte	0x1af
	.4byte	0x139
	.2byte	0x140
	.uleb128 0x19
	.4byte	.LASF237
	.byte	0xe
	.2byte	0x1b8
	.4byte	0x139
	.2byte	0x148
	.uleb128 0x19
	.4byte	.LASF238
	.byte	0xe
	.2byte	0x1c2
	.4byte	0x139
	.2byte	0x150
	.uleb128 0x19
	.4byte	.LASF202
	.byte	0xe
	.2byte	0x1cb
	.4byte	0x85a
	.2byte	0x158
	.uleb128 0x19
	.4byte	.LASF239
	.byte	0xe
	.2byte	0x1d6
	.4byte	0xa1
	.2byte	0x15c
	.uleb128 0x19
	.4byte	.LASF240
	.byte	0xe
	.2byte	0x1e1
	.4byte	0xa1
	.2byte	0x160
	.uleb128 0x19
	.4byte	.LASF241
	.byte	0xe
	.2byte	0x1eb
	.4byte	0xa1
	.2byte	0x164
	.uleb128 0x19
	.4byte	.LASF242
	.byte	0xe
	.2byte	0x1f3
	.4byte	0xb46
	.2byte	0x168
	.uleb128 0x19
	.4byte	.LASF243
	.byte	0xe
	.2byte	0x1f9
	.4byte	0xa1
	.2byte	0x16c
	.uleb128 0x19
	.4byte	.LASF244
	.byte	0xe
	.2byte	0x1fc
	.4byte	0xa1
	.2byte	0x170
	.uleb128 0x19
	.4byte	.LASF245
	.byte	0xe
	.2byte	0x201
	.4byte	0x860
	.2byte	0x174
	.byte	0
	.uleb128 0x1a
	.4byte	0x5a7
	.4byte	0xafe
	.uleb128 0x1b
	.4byte	0x115
	.byte	0x7
	.byte	0
	.uleb128 0x1a
	.4byte	0xa1
	.4byte	0xb0e
	.uleb128 0x1b
	.4byte	0x115
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x5a7
	.uleb128 0x1a
	.4byte	0x144
	.4byte	0xb24
	.uleb128 0x1b
	.4byte	0x115
	.byte	0x7
	.byte	0
	.uleb128 0x1a
	.4byte	0x860
	.4byte	0xb34
	.uleb128 0x1b
	.4byte	0x115
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x860
	.uleb128 0x9
	.byte	0x4
	.4byte	0xb40
	.uleb128 0x9
	.byte	0x4
	.4byte	0x866
	.uleb128 0x9
	.byte	0x4
	.4byte	0x123
	.uleb128 0x17
	.4byte	.LASF203
	.byte	0xe
	.2byte	0x203
	.4byte	0x871
	.uleb128 0x7
	.4byte	.LASF246
	.byte	0xf
	.byte	0x40
	.4byte	0xb63
	.uleb128 0x12
	.4byte	.LASF246
	.byte	0x48
	.byte	0xf
	.2byte	0x130
	.4byte	0xc5b
	.uleb128 0x10
	.4byte	.LASF247
	.byte	0xf
	.2byte	0x131
	.4byte	0xfe1
	.byte	0
	.uleb128 0x10
	.4byte	.LASF248
	.byte	0xf
	.2byte	0x133
	.4byte	0x10b7
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0xf
	.2byte	0x135
	.4byte	0x14f
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF249
	.byte	0xf
	.2byte	0x137
	.4byte	0x10c2
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF250
	.byte	0xf
	.2byte	0x138
	.4byte	0x10c8
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF251
	.byte	0xf
	.2byte	0x139
	.4byte	0xa8
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF252
	.byte	0xf
	.2byte	0x13b
	.4byte	0x10c2
	.byte	0x18
	.uleb128 0x10
	.4byte	.LASF253
	.byte	0xf
	.2byte	0x13c
	.4byte	0x10c8
	.byte	0x1c
	.uleb128 0x10
	.4byte	.LASF254
	.byte	0xf
	.2byte	0x13d
	.4byte	0xa8
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF255
	.byte	0xf
	.2byte	0x13f
	.4byte	0x113
	.byte	0x24
	.uleb128 0x10
	.4byte	.LASF256
	.byte	0xf
	.2byte	0x141
	.4byte	0x1198
	.byte	0x28
	.uleb128 0x10
	.4byte	.LASF257
	.byte	0xf
	.2byte	0x153
	.4byte	0xa1
	.byte	0x2c
	.uleb128 0x10
	.4byte	.LASF258
	.byte	0xf
	.2byte	0x158
	.4byte	0x119e
	.byte	0x30
	.uleb128 0x10
	.4byte	.LASF259
	.byte	0xf
	.2byte	0x15a
	.4byte	0x11ed
	.byte	0x34
	.uleb128 0x10
	.4byte	.LASF260
	.byte	0xf
	.2byte	0x15c
	.4byte	0x14f
	.byte	0x38
	.uleb128 0x10
	.4byte	.LASF261
	.byte	0xf
	.2byte	0x15d
	.4byte	0x113
	.byte	0x3c
	.uleb128 0x10
	.4byte	.LASF262
	.byte	0xf
	.2byte	0x15e
	.4byte	0x11f3
	.byte	0x40
	.uleb128 0x10
	.4byte	.LASF263
	.byte	0xf
	.2byte	0x15f
	.4byte	0xa1
	.byte	0x44
	.byte	0
	.uleb128 0x7
	.4byte	.LASF264
	.byte	0xf
	.byte	0x41
	.4byte	0xc66
	.uleb128 0x12
	.4byte	.LASF264
	.byte	0xb8
	.byte	0xf
	.2byte	0x169
	.4byte	0xe44
	.uleb128 0x11
	.ascii	"src\000"
	.byte	0xf
	.2byte	0x16a
	.4byte	0xffb
	.byte	0
	.uleb128 0x10
	.4byte	.LASF265
	.byte	0xf
	.2byte	0x16b
	.4byte	0x10c2
	.byte	0x4
	.uleb128 0x11
	.ascii	"dst\000"
	.byte	0xf
	.2byte	0x16d
	.4byte	0xffb
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF266
	.byte	0xf
	.2byte	0x16e
	.4byte	0x10c2
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0xf
	.2byte	0x170
	.4byte	0x2c
	.byte	0x10
	.uleb128 0x11
	.ascii	"w\000"
	.byte	0xf
	.2byte	0x173
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x11
	.ascii	"h\000"
	.byte	0xf
	.2byte	0x174
	.4byte	0xa1
	.byte	0x18
	.uleb128 0x10
	.4byte	.LASF212
	.byte	0xf
	.2byte	0x175
	.4byte	0x59c
	.byte	0x1c
	.uleb128 0x10
	.4byte	.LASF226
	.byte	0xf
	.2byte	0x177
	.4byte	0x144
	.byte	0x28
	.uleb128 0x10
	.4byte	.LASF225
	.byte	0xf
	.2byte	0x178
	.4byte	0xa1
	.byte	0x30
	.uleb128 0x10
	.4byte	.LASF209
	.byte	0xf
	.2byte	0x17a
	.4byte	0xa1
	.byte	0x34
	.uleb128 0x10
	.4byte	.LASF267
	.byte	0xf
	.2byte	0x183
	.4byte	0x59c
	.byte	0x38
	.uleb128 0x10
	.4byte	.LASF268
	.byte	0xf
	.2byte	0x193
	.4byte	0x1215
	.byte	0x40
	.uleb128 0x10
	.4byte	.LASF269
	.byte	0xf
	.2byte	0x194
	.4byte	0x1215
	.byte	0x44
	.uleb128 0x10
	.4byte	.LASF270
	.byte	0xf
	.2byte	0x19a
	.4byte	0x1215
	.byte	0x48
	.uleb128 0x10
	.4byte	.LASF271
	.byte	0xf
	.2byte	0x19b
	.4byte	0x1215
	.byte	0x4c
	.uleb128 0x10
	.4byte	.LASF272
	.byte	0xf
	.2byte	0x19c
	.4byte	0x1270
	.byte	0x50
	.uleb128 0x10
	.4byte	.LASF273
	.byte	0xf
	.2byte	0x19d
	.4byte	0x1270
	.byte	0x54
	.uleb128 0x10
	.4byte	.LASF274
	.byte	0xf
	.2byte	0x1a6
	.4byte	0xa1
	.byte	0x58
	.uleb128 0x10
	.4byte	.LASF275
	.byte	0xf
	.2byte	0x1ad
	.4byte	0x11f9
	.byte	0x5c
	.uleb128 0x10
	.4byte	.LASF256
	.byte	0xf
	.2byte	0x1b2
	.4byte	0x1198
	.byte	0x60
	.uleb128 0x10
	.4byte	.LASF276
	.byte	0xf
	.2byte	0x1b8
	.4byte	0x139
	.byte	0x68
	.uleb128 0x10
	.4byte	.LASF277
	.byte	0xf
	.2byte	0x1be
	.4byte	0x139
	.byte	0x70
	.uleb128 0x10
	.4byte	.LASF278
	.byte	0xf
	.2byte	0x1c3
	.4byte	0xa1
	.byte	0x78
	.uleb128 0x10
	.4byte	.LASF279
	.byte	0xf
	.2byte	0x1d0
	.4byte	0x59c
	.byte	0x7c
	.uleb128 0x10
	.4byte	.LASF280
	.byte	0xf
	.2byte	0x1d5
	.4byte	0x1276
	.byte	0x84
	.uleb128 0x10
	.4byte	.LASF281
	.byte	0xf
	.2byte	0x1db
	.4byte	0xa1
	.byte	0x88
	.uleb128 0x10
	.4byte	.LASF282
	.byte	0xf
	.2byte	0x1e4
	.4byte	0xa1
	.byte	0x8c
	.uleb128 0x10
	.4byte	.LASF283
	.byte	0xf
	.2byte	0x1ea
	.4byte	0xa1
	.byte	0x90
	.uleb128 0x10
	.4byte	.LASF284
	.byte	0xf
	.2byte	0x1f6
	.4byte	0xa1
	.byte	0x94
	.uleb128 0x10
	.4byte	.LASF240
	.byte	0xf
	.2byte	0x1fb
	.4byte	0xa1
	.byte	0x98
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0xf
	.2byte	0x200
	.4byte	0xa8
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF285
	.byte	0xf
	.2byte	0x205
	.4byte	0x139
	.byte	0xa0
	.uleb128 0x10
	.4byte	.LASF286
	.byte	0xf
	.2byte	0x20a
	.4byte	0x113
	.byte	0xa8
	.uleb128 0x10
	.4byte	.LASF287
	.byte	0xf
	.2byte	0x211
	.4byte	0xa1
	.byte	0xac
	.uleb128 0x10
	.4byte	.LASF288
	.byte	0xf
	.2byte	0x218
	.4byte	0xa1
	.byte	0xb0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF289
	.byte	0xf
	.byte	0x42
	.4byte	0xe4f
	.uleb128 0xc
	.4byte	.LASF289
	.byte	0x28
	.byte	0x10
	.byte	0x35
	.4byte	0xed4
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x10
	.byte	0x3b
	.4byte	0x15c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x10
	.byte	0x40
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF290
	.byte	0x10
	.byte	0x48
	.4byte	0x1382
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF291
	.byte	0x10
	.byte	0x50
	.4byte	0x139c
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF292
	.byte	0x10
	.byte	0x5c
	.4byte	0x13b6
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF293
	.byte	0x10
	.byte	0x67
	.4byte	0x13cb
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF294
	.byte	0x10
	.byte	0x70
	.4byte	0x13cb
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF295
	.byte	0x10
	.byte	0x80
	.4byte	0x13cb
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF296
	.byte	0x10
	.byte	0x88
	.4byte	0xa1
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF297
	.byte	0x10
	.byte	0x90
	.4byte	0xa1
	.byte	0x24
	.byte	0
	.uleb128 0x7
	.4byte	.LASF298
	.byte	0xf
	.byte	0x43
	.4byte	0xedf
	.uleb128 0xc
	.4byte	.LASF298
	.byte	0x10
	.byte	0x11
	.byte	0x40
	.4byte	0xf1c
	.uleb128 0xd
	.4byte	.LASF299
	.byte	0x11
	.byte	0x41
	.4byte	0xa8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF300
	.byte	0x11
	.byte	0x42
	.4byte	0x130c
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF301
	.byte	0x11
	.byte	0x44
	.4byte	0xa8
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF302
	.byte	0x11
	.byte	0x45
	.4byte	0x1324
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF303
	.byte	0x38
	.byte	0xf
	.byte	0x8d
	.4byte	0xfd6
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0xf
	.byte	0x91
	.4byte	0x15c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF304
	.byte	0xf
	.byte	0x98
	.4byte	0x15c
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF250
	.byte	0xf
	.byte	0xa1
	.4byte	0xfd6
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF253
	.byte	0xf
	.byte	0xa9
	.4byte	0xfd6
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF305
	.byte	0xf
	.byte	0xb3
	.4byte	0xfe1
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0xf
	.byte	0xb8
	.4byte	0xa1
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF306
	.byte	0xf
	.byte	0xd7
	.4byte	0x1001
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF307
	.byte	0xf
	.byte	0xe4
	.4byte	0x1021
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF308
	.byte	0xf
	.byte	0xf0
	.4byte	0x1032
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF309
	.byte	0xf
	.2byte	0x108
	.4byte	0x1001
	.byte	0x24
	.uleb128 0x10
	.4byte	.LASF310
	.byte	0xf
	.2byte	0x10a
	.4byte	0xa1
	.byte	0x28
	.uleb128 0x10
	.4byte	.LASF311
	.byte	0xf
	.2byte	0x110
	.4byte	0x1038
	.byte	0x2c
	.uleb128 0x10
	.4byte	.LASF312
	.byte	0xf
	.2byte	0x11e
	.4byte	0x1066
	.byte	0x30
	.uleb128 0x10
	.4byte	.LASF313
	.byte	0xf
	.2byte	0x125
	.4byte	0x1080
	.byte	0x34
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xfdc
	.uleb128 0xa
	.4byte	0xe44
	.uleb128 0x9
	.byte	0x4
	.4byte	0xfe7
	.uleb128 0xa
	.4byte	0x3cc
	.uleb128 0xe
	.4byte	0xa1
	.4byte	0xffb
	.uleb128 0xf
	.4byte	0xffb
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xb58
	.uleb128 0x9
	.byte	0x4
	.4byte	0xfec
	.uleb128 0xe
	.4byte	0xa1
	.4byte	0x101b
	.uleb128 0xf
	.4byte	0xffb
	.uleb128 0xf
	.4byte	0x101b
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x85a
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1007
	.uleb128 0x1c
	.4byte	0x1032
	.uleb128 0xf
	.4byte	0xffb
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1027
	.uleb128 0x9
	.byte	0x4
	.4byte	0xf1c
	.uleb128 0xe
	.4byte	0xa1
	.4byte	0x1066
	.uleb128 0xf
	.4byte	0xffb
	.uleb128 0xf
	.4byte	0x15c
	.uleb128 0xf
	.4byte	0x15c
	.uleb128 0xf
	.4byte	0x14f
	.uleb128 0xf
	.4byte	0xa1
	.uleb128 0xf
	.4byte	0xa1
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x103e
	.uleb128 0xe
	.4byte	0xa1
	.4byte	0x1080
	.uleb128 0xf
	.4byte	0xffb
	.uleb128 0xf
	.4byte	0x113
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x106c
	.uleb128 0x17
	.4byte	.LASF303
	.byte	0xf
	.2byte	0x126
	.4byte	0xf1c
	.uleb128 0x17
	.4byte	.LASF314
	.byte	0xf
	.2byte	0x12d
	.4byte	0x109e
	.uleb128 0xc
	.4byte	.LASF314
	.byte	0x4
	.byte	0x10
	.byte	0x98
	.4byte	0x10b7
	.uleb128 0xd
	.4byte	.LASF315
	.byte	0x10
	.byte	0x99
	.4byte	0x131e
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x10bd
	.uleb128 0xa
	.4byte	0x1086
	.uleb128 0x9
	.byte	0x4
	.4byte	0xe44
	.uleb128 0x9
	.byte	0x4
	.4byte	0x10ce
	.uleb128 0x9
	.byte	0x4
	.4byte	0xc5b
	.uleb128 0x12
	.4byte	.LASF316
	.byte	0x38
	.byte	0xf
	.2byte	0x2f9
	.4byte	0x1198
	.uleb128 0x10
	.4byte	.LASF247
	.byte	0xf
	.2byte	0x2fa
	.4byte	0xfe1
	.byte	0
	.uleb128 0x10
	.4byte	.LASF317
	.byte	0xf
	.2byte	0x2fb
	.4byte	0x1312
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF318
	.byte	0xf
	.2byte	0x2fc
	.4byte	0xa8
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF319
	.byte	0xf
	.2byte	0x2fe
	.4byte	0x14f
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF320
	.byte	0xf
	.2byte	0x2ff
	.4byte	0x14f
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF257
	.byte	0xf
	.2byte	0x30d
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF321
	.byte	0xf
	.2byte	0x314
	.4byte	0xa1
	.byte	0x18
	.uleb128 0x10
	.4byte	.LASF258
	.byte	0xf
	.2byte	0x319
	.4byte	0x1318
	.byte	0x1c
	.uleb128 0x10
	.4byte	.LASF218
	.byte	0xf
	.2byte	0x320
	.4byte	0x113
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF315
	.byte	0xf
	.2byte	0x32e
	.4byte	0x131e
	.byte	0x24
	.uleb128 0x10
	.4byte	.LASF322
	.byte	0xf
	.2byte	0x330
	.4byte	0x14f
	.byte	0x28
	.uleb128 0x10
	.4byte	.LASF323
	.byte	0xf
	.2byte	0x339
	.4byte	0x10c8
	.byte	0x2c
	.uleb128 0x10
	.4byte	.LASF324
	.byte	0xf
	.2byte	0x33a
	.4byte	0xa1
	.byte	0x30
	.uleb128 0x10
	.4byte	.LASF325
	.byte	0xf
	.2byte	0x33c
	.4byte	0xa8
	.byte	0x34
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x10d4
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1092
	.uleb128 0xc
	.4byte	.LASF326
	.byte	0x18
	.byte	0x10
	.byte	0x25
	.4byte	0x11ed
	.uleb128 0xd
	.4byte	.LASF327
	.byte	0x10
	.byte	0x26
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.4byte	.LASF328
	.byte	0x10
	.byte	0x27
	.4byte	0x14f
	.byte	0x8
	.uleb128 0x14
	.ascii	"arg\000"
	.byte	0x10
	.byte	0x28
	.4byte	0x14f
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x10
	.byte	0x29
	.4byte	0xa1
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF311
	.byte	0x10
	.byte	0x2a
	.4byte	0x11ed
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x11a4
	.uleb128 0x9
	.byte	0x4
	.4byte	0x25
	.uleb128 0x1d
	.byte	0x4
	.byte	0xf
	.2byte	0x1a9
	.4byte	0x1215
	.uleb128 0x4
	.4byte	.LASF329
	.sleb128 0
	.uleb128 0x4
	.4byte	.LASF330
	.sleb128 1
	.uleb128 0x4
	.4byte	.LASF331
	.sleb128 2
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xed4
	.uleb128 0xc
	.4byte	.LASF332
	.byte	0x14
	.byte	0x11
	.byte	0x55
	.4byte	0x1270
	.uleb128 0xd
	.4byte	.LASF333
	.byte	0x11
	.byte	0x56
	.4byte	