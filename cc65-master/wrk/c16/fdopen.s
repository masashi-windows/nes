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
	.export		_fdopen
	.import		__seterrno
	.import		__fdesc

; ---------------------------------------------------------------
; __near__ struct _FILE* __near__ __fastcall__ fdopen (int, __near__ const unsigned char*)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_fdopen: near

.segment	"CODE"

	jsr     pushax
	lda     regbank+4
	ldx     regbank+5
	jsr     pushax
	jsr     __fdesc
	sta     regbank+4
	stx     regbank+4+1
	ora     regbank+4+1
	beq     L0003
	ldy     #$04
	lda     (sp),y
	ldy     #$00
	sta     (regbank+4),y
	lda     #$01
	iny
	sta     (regbank+4),y
	jmp     L000B
L0003:	lda     #$05
	jsr     __seterrno
L000B:	lda     regbank+4
	ldx     regbank+4+1
	pha
	ldy     #$00
	lda     (sp),y
	sta     regbank+4
	iny
	lda     (sp),y
	sta     regbank+5
	pla
	jmp     incsp6

.endproc

