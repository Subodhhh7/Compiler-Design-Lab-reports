	.build_version macos, 26, 0	sdk_version 26, 4
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #0                          ; =0x0
	stur	w8, [x29, #-12]                 ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	mov	x9, sp
	sub	x8, x29, #8
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldur	s0, [x29, #-8]
	bl	_circle_area
	fcvt	d0, s0
	mov	x8, sp
	str	d0, [x8]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldur	w0, [x29, #-12]                 ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_circle_area                    ; -- Begin function circle_area
	.p2align	2
_circle_area:                           ; @circle_area
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	s0, [x29, #-4]
	ldur	s0, [x29, #-4]
	fcvt	d0, s0
	fmov	d1, #2.00000000
	bl	_pow
	mov.16b	v1, v0
	mov	x8, #34079                      ; =0x851f
	movk	x8, #20971, lsl #16
	movk	x8, #7864, lsl #32
	movk	x8, #16393, lsl #48
	fmov	d0, x8
	fmul	d0, d0, d1
	fcvt	s0, d0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Enter the radius: "

l_.str.1:                               ; @.str.1
	.asciz	"%f"

l_.str.2:                               ; @.str.2
	.asciz	"\nArea of circle is: %f"

.subsections_via_symbols
