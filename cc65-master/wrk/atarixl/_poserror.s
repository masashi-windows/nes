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
	.import		_stderr
	.import		_fprintf
	.export		__poserror
	.import		__stroserror
	.import		__oserror

.segment	"RODATA"

L0008:
	.byte	$25,$73,$3A,$20,$25,$73,$9B,$00
L000F	:=	L0008+4

; ---------------------------------------------------------------
; void __near__ __fastcall__ _poserror (__near__ const unsigned char*)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	__poserror: near

.segment	"CODE"

	jsr     pushax
	lda     __oserror
	jsr     __stroserror
	jsr     pushax
	ldy     #$03
	lda     (sp),y
	dey
	ora     (sp),y
	beq     L0004
	jsr     decsp4
	lda     _stderr
	sta     (sp),y
	iny
	lda     _stderr+1
	sta     (sp),y
	lda     #<(L0008)
	ldy     #$00
	sta     (sp),y
	iny
	lda     #>(L0008)
	sta     (sp),y
	ldy     #$09
	jsr     pushwysp
	ldy     #$09
	jsr     pushwysp
	ldy     #$08
	jmp     L0012
L0004:	jsr     decsp4
	lda     _stderr
	sta     (sp),y
	iny
	lda     _stderr+1
	sta     (sp),y
	lda     #<(L000F)
	ldy     #$00
	sta     (sp),y
	iny
	lda     #>(L000F)
	sta     (sp),y
	ldy     #$07
	jsr     pushwysp
	ldy     #$06
L0012:	jsr     _fprintf
	jmp     incsp4

.endproc

