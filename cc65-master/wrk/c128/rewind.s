;
; File generated by cc65 v 2.14.0
;
	.fopt		compiler,"cc65 v 2.14.0"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.import		_clearerr
	.import		_fseek
	.export		_rewind

; ---------------------------------------------------------------
; void __near__ __fastcall__ rewind (__near__ struct _FILE*)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_rewind: near

.segment	"CODE"

	jsr     pushax
	jsr     decsp6
	ldy     #$07
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$04
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldx     #$00
	ldy     #$00
	txa
	sta     (sp),y
	iny
	sta     (sp),y
	iny
	sta     (sp),y
	iny
	sta     (sp),y
	lda     #$02
	jsr     _fseek
	ldy     #$01
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _clearerr
	jmp     incsp2

.endproc

