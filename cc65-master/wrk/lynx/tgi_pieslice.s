;
; File generated by cc65 v 2.14.0
;
	.fopt		compiler,"cc65 v 2.14.0"
	.setcpu		"65C02"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.import		_tgi_line
	.import		_tgi_arc
	.export		_tgi_pieslice
	.import		_tgi_imulround
	.import		_cc65_sin
	.import		_cc65_cos

; ---------------------------------------------------------------
; void __near__ __fastcall__ tgi_pieslice (int, int, unsigned char, unsigned char, unsigned int, unsigned int)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_tgi_pieslice: near

.segment	"CODE"

	jsr     pushax
	jsr     decsp8
	ldy     #$11
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$06
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$0F
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$04
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$0D
	lda     (sp),y
	ldy     #$03
	sta     (sp),y
	ldy     #$0C
	lda     (sp),y
	ldy     #$02
	sta     (sp),y
	ldy     #$0B
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	sta     (sp)
	ldy     #$01
	txa
	sta     (sp),y
	ldy     #$09
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _tgi_arc
	jsr     decsp6
	ldy     #$0F
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$04
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$0D
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$02
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$11
	jsr     pushwysp
	ldy     #$0D
	lda     (sp),y
	jsr     pusha0
	ldy     #$0D
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _cc65_cos
	jsr     _tgi_imulround
	jsr     tosaddax
	sta     (sp)
	ldy     #$01
	txa
	sta     (sp),y
	ldy     #$0F
	jsr     pushwysp
	ldy     #$0C
	lda     (sp),y
	jsr     pusha0
	ldy     #$0D
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _cc65_sin
	jsr     _tgi_imulround
	jsr     tossubax
	jsr     _tgi_line
	jsr     decsp6
	ldy     #$0F
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$04
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$0D
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$02
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$11
	jsr     pushwysp
	ldy     #$0D
	lda     (sp),y
	jsr     pusha0
	ldy     #$0B
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _cc65_cos
	jsr     _tgi_imulround
	jsr     tosaddax
	sta     (sp)
	ldy     #$01
	txa
	sta     (sp),y
	ldy     #$0F
	jsr     pushwysp
	ldy     #$0C
	lda     (sp),y
	jsr     pusha0
	ldy     #$0B
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _cc65_sin
	jsr     _tgi_imulround
	jsr     tossubax
	jsr     _tgi_line
	ldy     #$0A
	jmp     addysp

.endproc

