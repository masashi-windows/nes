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
	.import		_clrscr
	.import		_cputsxy
	.import		_revers
	.import		_textcolor
	.import		_bgcolor
	.import		_cvlinexy
	.import		_cclearxy
	.import		_screensize
	.import		_mouse_hide
	.import		_mouse_show
	.import		_mouse_move
	.import		_mouse_buttons
	.import		_mouse_info
	.export		_pen_calibrate

.segment	"RODATA"

L0037:
	.byte	$C6,$49,$4E,$49,$53,$48,$20,$42,$59,$20,$43,$4C,$49,$43,$4B,$49
	.byte	$4E,$47,$20,$4F,$46,$46,$20,$42,$41,$52,$2E,$00
L002E:
	.byte	$C1,$44,$4A,$55,$53,$54,$20,$42,$59,$20,$43,$4C,$49,$43,$4B,$49
	.byte	$4E,$47,$20,$4F,$4E,$20,$4C,$49,$4E,$45,$2E,$00

; ---------------------------------------------------------------
; void __near__ __fastcall__ pen_calibrate (__near__ unsigned char*)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_pen_calibrate: near

.segment	"CODE"

	jsr     pushax
	lda     #$06
	jsr     _bgcolor
	jsr     pusha
	lda     #$0F
	jsr     _textcolor
	jsr     pusha
	lda     #$01
	jsr     _revers
	jsr     pusha
	lda     $D027
	jsr     pusha
	ldy     #$0A
	jsr     subysp
	lda     sp
	ldx     sp+1
	clc
	adc     #$09
	bcc     L0012
	inx
L0012:	jsr     pushax
	lda     sp
	ldx     sp+1
	clc
	adc     #$09
	bcc     L0014
	inx
L0014:	jsr     _screensize
	ldy     #$09
	lda     (sp),y
	lsr     a
	dey
	sta     (sp),y
	dey
	lda     (sp),y
	lsr     a
	lsr     a
	dey
	sta     (sp),y
	asl     a
	asl     a
	asl     a
	dey
	sta     (sp),y
	jsr     _clrscr
	jsr     decsp2
	lda     #$00
	ldy     #$01
	sta     (sp),y
	ldy     #$08
	lda     (sp),y
	ldy     #$00
	sta     (sp),y
	ldy     #$08
	lda     (sp),y
	jsr     pusha0
	ldy     #$0D
	lda     (sp),y
	jsr     tosumula0
	jsr     _cclearxy
	jsr     decsp2
	ldy     #$0A
	lda     (sp),y
	ldy     #$01
	sta     (sp),y
	ldy     #$08
	lda     (sp),y
	clc
	adc     #$01
	ldy     #$00
	sta     (sp),y
	ldy     #$08
	lda     (sp),y
	sec
	sbc     #$02
	jsr     _cvlinexy
	lda     #$00
	jsr     _revers
	jsr     decsp2
	ldy     #$0A
	lda     (sp),y
	sec
	sbc     #$0E
	ldy     #$01
	sta     (sp),y
	ldy     #$09
	lda     (sp),y
	lsr     a
	clc
	adc     #$01
	ldy     #$00
	sta     (sp),y
	lda     #<(L002E)
	ldx     #>(L002E)
	jsr     _cputsxy
	jsr     decsp2
	ldy     #$0A
	lda     (sp),y
	sec
	sbc     #$0E
	ldy     #$01
	sta     (sp),y
	ldy     #$09
	lda     (sp),y
	lsr     a
	clc
	adc     #$03
	ldy     #$00
	sta     (sp),y
	lda     #<(L0037)
	ldx     #>(L0037)
	jsr     _cputsxy
	lda     #$0C
	sta     $D027
	jsr     _mouse_show
	ldy     #$08
	ldx     #$00
	lda     (sp),y
	jsr     shlax3
	jsr     pushax
	ldy     #$07
	ldx     #$00
	lda     (sp),y
	lsr     a
	jsr     _mouse_move
L0045:	jsr     _mouse_buttons
	and     #$10
	bne     L0045
L0047:	lda     sp
	ldx     sp+1
	jsr     _mouse_info
	ldy     #$04
	lda     (sp),y
	and     #$10
	beq     L0047
	dey
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$05
	cmp     (sp),y
	txa
	sbc     #$00
	bcc     L0043
	jsr     pushwysp
	ldy     #$07
	ldx     #$00
	lda     (sp),y
	asl     a
	bcc     L006B
	inx
L006B:	jsr     tosicmp
	bcs     L0043
	ldy     #$0F
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     pushax
	sta     ptr1
	stx     ptr1+1
	ldx     #$00
	lda     (ptr1,x)
	jsr     pusha0
	ldy     #$07
	jsr     pushwysp
	ldy     #$0E
	ldx     #$00
	lda     (sp),y
	jsr     shlax3
	clc
	adc     #$04
	bcc     L0059
	inx
L0059:	jsr     tossubax
	jsr     shrax1
	jsr     tosaddax
	ldy     #$00
	jsr     staspidx
	jmp     L0045
L0043:	jsr     _mouse_buttons
	and     #$10
	bne     L0043
	jsr     _mouse_hide
	ldy     #$0A
	lda     (sp),y
	sta     $D027
	iny
	lda     (sp),y
	jsr     _revers
	ldy     #$0C
	lda     (sp),y
	jsr     _textcolor
	ldy     #$0D
	lda     (sp),y
	jsr     _bgcolor
	jsr     _clrscr
	ldy     #$10
	jmp     addysp

.endproc

