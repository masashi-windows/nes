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
	.export		_system

; ---------------------------------------------------------------
; int __near__ __fastcall__ system (__near__ const unsigned char*)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_system: near

.segment	"CODE"

	jsr     pushax
	ldy     #$00
	lda     (sp),y
	iny
	ora     (sp),y
	bne     L0002
	tax
	jmp     incsp2
L0002:	ldx     #$FF
	txa
	jmp     incsp2

.endproc

