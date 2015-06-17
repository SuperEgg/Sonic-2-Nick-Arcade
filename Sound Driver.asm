Go_SoundTypes:	dc.l SoundTypes		
Go_SoundD0:	dc.l SoundD0Index	
Go_MusicIndex:	dc.l MusicIndex		
Go_SoundIndex:	dc.l SoundIndex		
Go_SpeedUp_Index:	dc.l SpeedUp_Index		
Go_PSGIndex:	dc.l PSG_Index		
; ---------------------------------------------------------------------------
; PSG instruments used in music
; ---------------------------------------------------------------------------
PSG_Index:	
		dc.l  		PSG_Tone00,PSG_Tone01,PSG_Tone02,PSG_Tone03
		dc.l 		PSG_Tone04,PSG_Tone05,PSG_Tone06,PSG_Tone07
		dc.l		PSG_Tone08
					
PSG_Tone00:
		dc.b   	0,	 0,  0,	 1,  1,	 1,  2,	 2,  2,	 3,  3,	 3
		dc.b	4,	 4,  4,	 5,  5,	 5,  6,	 6,  6,	 7,$80
PSG_Tone01:
		dc.b    0,   2,   4,   6,   8, $10, $80
PSG_Tone02:
		dc.b	0,   0,   1,   1,   2,   2,   3,   3,   4,   4
		dc.b 	5,   5,   6,   6,   7,   7, $80
PSG_Tone03:
		dc.b  	0,   0,   2,   3,   4,   4,   5,   5,   5,   6, $80
PSG_Tone05:
		dc.b   	3,	 3,  3,	 2,  2,	 2,  2,	 1,  1,	 1,  0,	 0
		dc.b	0,	 0,$80
PSG_Tone04:
		dc.b   	0,	 0,  0,	 0,  0,	 0,  0,	 0,  0,	 0,  1,	 1
		dc.b	1,	 1,  1,	 1,  1,	 1,  1,	 1,  1,	 1
		dc.b	1,	 1,  2,	 2,  2,	 2,  2,	 2,  2,	 2
		dc.b   	3,	 3,  3,	 3,  3,	 3,  3,	 3,  4,$80
PSG_Tone06:
		dc.b   	0,	 0,  0,	 0,  0,	 0,  1,	 1,  1,	 1,  1,	 2
		dc.b	2,	 2,  2,	 2,  3,	 3,  3,	 4,  4,	 4
		dc.b	5,	 5,  5,	 6,  7,$80
PSG_Tone07:
		dc.b   	0,	 0,  0,	 0,  0,	 1,  1,	 1,  1,	 1,  2,	 2
		dc.b	2,	 2,  2,	 2,  3,	 3,  3,	 3,  3,	 4
		dc.b	4,	 4,  4,	 4,  5,	 5,  5,	 5,  5,	 6
		dc.b   	6,	 6,  6,	 6,  7,	 7,  7,$80
PSG_Tone08:
		dc.b   	0,	 1,  2,	 3,  4,	 5,  6,	 7,  8,	 9,$0A,$0B
		dc.b	$0C,$0D,$0E,$0F,$80				
; ---------------------------------------------------------------------------
; New tempos for songs during speed shoes
; ---------------------------------------------------------------------------
; DANGER! several songs will use the first few bytes of MusicIndex as their main
; tempos while speed shoes are active. If you don't want that, you should add
; their "correct" sped-up main tempos to the list.
SpeedUp_Index:	
		dc.b   7 	; GHZ 	($81)
		dc.b $72	; LZ	($82)
		dc.b $73	; MZ	($83)
		dc.b $26 	; SLZ	($84)
		dc.b $15 	; SYZ	($85)
		dc.b 8		; SBZ	($86)
		dc.b $FF  	; Invisibility 	($87)
		dc.b 5		; Extra Life	($88)
; ---------------------------------------------------------------------------
; Music	Pointers
; ---------------------------------------------------------------------------
MusicIndex:	
Mus_81:				dc.l Music81 
Mus_82:				dc.l Music82 
Mus_83:				dc.l Music83	
Mus_84:				dc.l Music84
Mus_85:				dc.l Music85
Mus_86:				dc.l Music86
Mus_Invinsibility:	dc.l Music87
Mus_ExtraLife:		dc.l Music88
Mus_SpecialStage:	dc.l Music89
Mus_TitleScreen:	dc.l Music8A 
Mus_Ending:			dc.l Music8B 
Mus_Boss:			dc.l Music8C
Mus_Final:			dc.l Music8D 
Mus_LevelClear:		dc.l Music8E
Mus_GameOver:		dc.l Music8F	
Mus_Continue:		dc.l Music90 
Mus_Credits:		dc.l Music91
Mus_Drowning:		dc.l Music92
Mus_Emerald:		dc.l Music93
; ---------------------------------------------------------------------------
; Also including non-existent music file locations for easier expansion later.
; ---------------------------------------------------------------------------
;Mus_94:			dc.l Music94
;Mus_95:			dc.l Music95
;Mus_96:			dc.l Music96
;Mus_97:			dc.l Music97
;Mus_98:			dc.l Music98
;Mus_99:			dc.l Music99
;Mus_9A:			dc.l Music9A
;Mus_9B:			dc.l Music9B
;Mus_9C:			dc.l Music9C
;Mus_9D:			dc.l Music9D
;Mus_9E:			dc.l Music9E
;Mus_9F:			dc.l Music9F
; ---------------------------------------------------------------------------
; Type of sound	being played ($90 = music; $70 = normal	sound effect)
; ---------------------------------------------------------------------------
SoundTypes:	
		dc.b 	 $90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90 ; $81-$8F
		dc.b $90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90,$90 ; $90-$9F
		dc.b $80,$70,$70,$70,$70,$70,$70,$70,$70,$70,$68,$70,$70,$70,$60,$70 ; $A0-$AF
		dc.b $70,$60,$70,$60,$70,$70,$70,$70,$70,$70,$70,$70,$70,$70,$70,$7F ; $B0-$BF
		dc.b $60,$70,$70,$70,$70,$70,$70,$70,$70,$70,$70,$70,$70,$70,$70,$70 ; $C0-$CF
		dc.b $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80 ; $D0-$DF
		dc.b $90,$90,$90,$90,$90											 ; $E0-$E4

; ---------------------------------------------------------------------------
; Subroutine to update music more than once per frame
; (Called by horizontal & vert. interrupts)
; ---------------------------------------------------------------------------
		
; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


SoundDriver:							; XREF: VBlank; HBlank

		move.w	#$100,($A11100).l 		; stop the Z80
		nop
		nop
		nop

SoundDriver_MainLoop:				
		btst	#0,($A11100).l			; Is the z80 busy?
		bne.s	SoundDriver_MainLoop	; If so, wait
		btst	#7,($A01FFD).l			; Is DAC accepting new samples?
		beq.s	SoundDriver_Input		; Branch if yes
		move.w	#0,($A11100).l			; start	the Z80
		nop
		nop
		nop
		nop
		nop
		bra.s	SoundDriver
; ===========================================================================

SoundDriver_Input:				
		lea	($FFF000).l,a6
		clr.b	$E(a6)
		tst.b	3(a6)					; is music paused?
		bne.w	loc_71E50				; if yes, branch
		subq.b	#1,1(a6)				; Has main tempo timer expired?
		bne.s	Driver_SkipDelay		; If not, then Skip delay
		jsr	TempoWait(pc)				; Otherwise, head down to Tempo Wait.

Driver_SkipDelay:				; CODE XREF: SoundDriver+4Cj
		move.b	4(a6),d0
		beq.s	Driver_SkipFadeout
		jsr	DoFadeOut(pc)

Driver_SkipFadeout:				; CODE XREF: SoundDriver+56j
		tst.b	$24(a6)
		beq.s	Driver_SkipFadeIn
		jsr	DoFadeIn(pc)

Driver_SkipFadeIn:				; CODE XREF: SoundDriver+60j
		tst.w	$A(a6)		; is music or sound being played?
		beq.s	Driver_NoInput	; if not, branch
		jsr	Sound_Play(pc)

Driver_NoInput:				; CODE XREF: SoundDriver+6Aj
		cmpi.b	#-$80,9(a6)
		beq.s	Driver_NoNewSound
		jsr	Sound_ChkValue(pc)

Driver_NoNewSound:				; CODE XREF: SoundDriver+76j
		lea	$40(a6),a5
		tst.b	(a5)
		bpl.s	DAC_LoadComplete
		jsr	UpdateDAC(pc)

DAC_LoadComplete:				; CODE XREF: SoundDriver+82j
		clr.b	8(a6)
		moveq	#5,d7

BGM_FM_Loop:				; CODE XREF: SoundDriver:BGM_FM_Nextj
		adda.w	#$30,a5
		tst.b	(a5)
		bpl.s	BGM_FM_Next
		jsr	sub_71CCA(pc)

BGM_FM_Next:				; CODE XREF: SoundDriver+94j
		dbf	d7,BGM_FM_Loop
		moveq	#2,d7

BGM_PSG_Loop:				; CODE XREF: SoundDriver:BGM_PSG_Nextj
		adda.w	#$30,a5
		tst.b	(a5)
		bpl.s	BGM_PSG_Next
		jsr	sub_72850(pc)

BGM_PSG_Next:				; CODE XREF: SoundDriver+A6j
		dbf	d7,BGM_PSG_Loop
		move.b	#-$80,$E(a6)
		moveq	#2,d7

SFX_FM_Loop:				; CODE XREF: SoundDriver:SFX_FM_Nextj
		adda.w	#$30,a5
		tst.b	(a5)
		bpl.s	SFX_FM_Next
		jsr	sub_71CCA(pc)

SFX_FM_Next:				; CODE XREF: SoundDriver+BEj
		dbf	d7,SFX_FM_Loop
		moveq	#2,d7

SFX_PSG_Loop:				; CODE XREF: SoundDriver:SFX_PSG_Nextj
		adda.w	#$30,a5
		tst.b	(a5)
		bpl.s	SFX_PSG_Next
		jsr	sub_72850(pc)

SFX_PSG_Next:				; CODE XREF: SoundDriver+D0j
		dbf	d7,SFX_PSG_Loop
		move.b	#$40,$E(a6)
		adda.w	#$30,a5
		tst.b	(a5)
		bpl.s	Spec_FM_Done
		jsr	sub_71CCA(pc)

Spec_FM_Done:				; CODE XREF: SoundDriver+E6j
		adda.w	#$30,a5
		tst.b	(a5)
		bpl.s	DoStartZ80
		jsr	sub_72850(pc)

DoStartZ80:				; CODE XREF: SoundDriver+F2j
					; SoundDriver+344j ...
		move.w	#0,($A11100).l	; start	the Z80
		rts
; End of function SoundDriver


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||

UpdateDAC:				; DATA XREF: SoundDriver+84t
		subq.b	#1,$E(a5)
		bne.s	DAC_TrackStop	
		move.b	#-$80,8(a6)
		movea.l	4(a5),a4
	
DAC_SampleLoop:				; CODE XREF: UpdateDAC+1Ej
		moveq	#0,d5
		move.b	(a4)+,d5
		cmpi.b	#$E0,d5
		bcs.s	DAC_NotFlag
		jsr	SMPS_Flags(pc)
		bra.s	DAC_SampleLoop
; ===========================================================================

DAC_NotFlag:				; CODE XREF: UpdateDAC+18j
		tst.b	d5
		bpl.s	DAC_GetDuration
		move.b	d5,$10(a5)
		move.b	(a4)+,d5
		bpl.s	DAC_GetDuration
		subq.w	#1,a4
		move.b	$F(a5),$E(a5)
		bra.s	DAC_RecievedDuration
; ===========================================================================

DAC_GetDuration:				; CODE XREF: UpdateDAC+22j
					; UpdateDAC+2Aj
		jsr	sub_71D40(pc)

DAC_RecievedDuration:				; CODE XREF: UpdateDAC+34j
		move.l	a4,4(a5)
		btst	#2,(a5)
		bne.s	DAC_TrackStop
		moveq	#0,d0
		move.b	$10(a5),d0
		cmpi.b	#-$80,d0
		beq.s	DAC_TrackStop
		btst	#3,d0
		bne.s	DAC_SpecialTimpani
		move.b	d0,($A01FFF).l

DAC_TrackStop:				; CODE XREF: sub_71C4E+4j
		rts
; ===========================================================================

DAC_SpecialTimpani:				; CODE XREF: sub_71C4E+54j
		subi.b	#$88,d0		; Convert into an index
		move.b	DAC_Timpani_Rate(pc,d0.w),d0
		move.b	d0,($A000EA).l
		move.b	#$83,($A01FFF).l
		rts
; End of function sub_71C4E

; ===========================================================================
; Note: this only defines rates for samples $88-$8D, meaning $8E-$8F are invalid.
; Also, $8C-$8D are so slow you may want to skip them.
DAC_Timpani_Rate:	
		dc.b $12	; Sample $88
		dc.b $15	; Sample $89
		dc.b $1C 	; Sample $8A
		dc.b $1D	; Sample $8B
		dc.b $FF	; Sample $8E
		dc.b $FF	; Sample $8F

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_71CCA:				; DATA XREF: SoundDriver+96t
		subq.b	#1,$E(a5)
		bne.s	loc_71CE0
		bclr	#4,(a5)
		jsr	sub_71CEC(pc)
		jsr	sub_71E18(pc)
		bra.w	loc_726E2
; ===========================================================================

loc_71CE0:				; CODE XREF: sub_71CCA+4j
		jsr	sub_71D9E(pc)
		jsr	sub_71DC6(pc)
		bra.w	loc_71E24
; End of function sub_71CCA


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_71CEC:				; DATA XREF: sub_71CCA+At
		movea.l	4(a5),a4
		bclr	#1,(a5)

loc_71CF4:				; CODE XREF: sub_71CEC+16j
		moveq	#0,d5
		move.b	(a4)+,d5
		cmpi.b	#$E0,d5
		bcs.s	loc_71D04
		jsr	SMPS_Flags(pc)
		bra.s	loc_71CF4
; ===========================================================================

loc_71D04:				; CODE XREF: sub_71CEC+10j
		jsr	sub_726FE(pc)
		tst.b	d5
		bpl.s	loc_71D1A
		jsr	sub_71D22(pc)
		move.b	(a4)+,d5
		bpl.s	loc_71D1A
		subq.w	#1,a4
		bra.w	sub_71D60
; ===========================================================================

loc_71D1A:				; CODE XREF: sub_71CEC+1Ej
					; sub_71CEC+26j
		jsr	sub_71D40(pc)
		bra.w	sub_71D60
; End of function sub_71CEC


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_71D22:				; DATA XREF: sub_71CEC+20t

; FUNCTION CHUNK AT 00071D58 SIZE 00000008 BYTES

		subi.b	#-$80,d5
		beq.s	loc_71D58
		add.b	8(a5),d5
		andi.w	#$7F,d5
		lsl.w	#1,d5
		lea	word_72790(pc),a0
		move.w	(a0,d5.w),d6
		move.w	d6,$10(a5)
		rts
; End of function sub_71D22


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_71D40:				; DATA XREF: sub_71C4E:loc_71C84t
					; sub_71CEC:loc_71D1At	...
		move.b	d5,d0
		move.b	2(a5),d1

loc_71D46:				; CODE XREF: sub_71D40+Cj
		subq.b	#1,d1
		beq.s	loc_71D4E
		add.b	d5,d0
		bra.s	loc_71D46
; ===========================================================================

loc_71D4E:				; CODE XREF: sub_71D40+8j
		move.b	d0,$F(a5)
		move.b	d0,$E(a5)
		rts
; End of function sub_71D40

; ===========================================================================
; START	OF FUNCTION CHUNK FOR sub_71D22

loc_71D58:				; CODE XREF: sub_71D22+4j
		bset	#1,(a5)
		clr.w	$10(a5)
; END OF FUNCTION CHUNK	FOR sub_71D22

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_71D60:				; CODE XREF: sub_71CEC+2Aj
					; sub_71CEC+32j ...
		move.l	a4,4(a5)
		move.b	$F(a5),$E(a5)
		btst	#4,(a5)
		bne.s	locret_71D9C
		move.b	$13(a5),$12(a5)
		clr.b	$C(a5)
		btst	#3,(a5)
		beq.s	locret_71D9C
		movea.l	$14(a5),a0
		move.b	(a0)+,$18(a5)
		move.b	(a0)+,$19(a5)
		move.b	(a0)+,$1A(a5)
		move.b	(a0)+,d0
		lsr.b	#1,d0
		move.b	d0,$1B(a5)
		clr.w	$1C(a5)

locret_71D9C:				; CODE XREF: sub_71D60+Ej
					; sub_71D60+1Ej
		rts
; End of function sub_71D60


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_71D9E:				; DATA XREF: sub_71CCA:loc_71CE0t
					; sub_72850:loc_72866t
		tst.b	$12(a5)
		beq.s	locret_71DC4
		subq.b	#1,$12(a5)
		bne.s	locret_71DC4
		bset	#1,(a5)
		tst.b	1(a5)
		bmi.w	loc_71DBE
		jsr	sub_726FE(pc)
		addq.w	#4,sp
		rts
; ===========================================================================

loc_71DBE:				; CODE XREF: sub_71D9E+14j
		jsr	sub_729A0(pc)
		addq.w	#4,sp

locret_71DC4:				; CODE XREF: sub_71D9E+4j sub_71D9E+Aj
		rts
; End of function sub_71D9E


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_71DC6:				; DATA XREF: sub_71CCA+1At
					; sub_72850+1Et
		addq.w	#4,sp
		btst	#3,(a5)
		beq.s	locret_71E16
		tst.b	$18(a5)
		beq.s	loc_71DDA
		subq.b	#1,$18(a5)
		rts
; ===========================================================================

loc_71DDA:				; CODE XREF: sub_71DC6+Cj
		subq.b	#1,$19(a5)
		beq.s	loc_71DE2
		rts
; ===========================================================================

loc_71DE2:				; CODE XREF: sub_71DC6+18j
		movea.l	$14(a5),a0
		move.b	1(a0),$19(a5)
		tst.b	$1B(a5)
		bne.s	loc_71DFE
		move.b	3(a0),$1B(a5)
		neg.b	$1A(a5)
		rts
; ===========================================================================

loc_71DFE:				; CODE XREF: sub_71DC6+2Aj
		subq.b	#1,$1B(a5)
		move.b	$1A(a5),d6
		ext.w	d6
		add.w	$1C(a5),d6
		move.w	d6,$1C(a5)
		add.w	$10(a5),d6
		subq.w	#4,sp

locret_71E16:				; CODE XREF: sub_71DC6+6j
		rts
; End of function sub_71DC6


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_71E18:				; DATA XREF: sub_71CCA+Et
		btst	#1,(a5)
		bne.s	locret_71E48
		move.w	$10(a5),d6
		beq.s	loc_71E4A

loc_71E24:				; CODE XREF: sub_71CCA+1Ej
		move.b	$1E(a5),d0
		ext.w	d0
		add.w	d0,d6
		btst	#2,(a5)
		bne.s	locret_71E48
		move.w	d6,d1
		lsr.w	#8,d1
		move.b	#$A4,d0
		jsr	sub_72722(pc)
		move.b	d6,d1
		move.b	#$A0,d0
		jsr	sub_72722(pc)

locret_71E48:				; CODE XREF: sub_71E18+4j
					; sub_71E18+18j
		rts
; ===========================================================================

loc_71E4A:				; CODE XREF: sub_71E18+Aj
		bset	#1,(a5)
		rts
; End of function sub_71E18

; ===========================================================================
; START	OF FUNCTION CHUNK FOR SoundDriver

loc_71E50:				; CODE XREF: SoundDriver+44j
		bmi.s	loc_71E94
		cmpi.b	#2,3(a6)
		beq.w	loc_71EFE
		move.b	#2,3(a6)
		moveq	#2,d3
		move.b	#$B4,d0
		moveq	#0,d1

loc_71E6A:				; CODE XREF: SoundDriver+328j
		jsr	sub_7272E(pc)
		jsr	sub_72764(pc)
		addq.b	#1,d0
		dbf	d3,loc_71E6A
		moveq	#2,d3
		moveq	#$28,d0

loc_71E7C:				; CODE XREF: SoundDriver+33Cj
		move.b	d3,d1
		jsr	sub_7272E(pc)
		addq.b	#4,d1
		jsr	sub_7272E(pc)
		dbf	d3,loc_71E7C
		jsr	sub_729B6(pc)
		bra.w	DoStartZ80
; ===========================================================================

loc_71E94:				; CODE XREF: SoundDriver:loc_71E50j
		clr.b	3(a6)
		moveq	#$30,d3
		lea	$40(a6),a5
		moveq	#6,d4

loc_71EA0:				; CODE XREF: SoundDriver+36Ej
		btst	#7,(a5)
		beq.s	loc_71EB8
		btst	#2,(a5)
		bne.s	loc_71EB8
		move.b	#$B4,d0
		move.b	$A(a5),d1
		jsr	sub_72722(pc)

loc_71EB8:				; CODE XREF: SoundDriver+358j
					; SoundDriver+35Ej
		adda.w	d3,a5
		dbf	d4,loc_71EA0
		lea	$220(a6),a5
		moveq	#2,d4

loc_71EC4:				; CODE XREF: SoundDriver+392j
		btst	#7,(a5)
		beq.s	loc_71EDC
		btst	#2,(a5)
		bne.s	loc_71EDC
		move.b	#$B4,d0
		move.b	$A(a5),d1
		jsr	sub_72722(pc)

loc_71EDC:				; CODE XREF: SoundDriver+37Cj
					; SoundDriver+382j
		adda.w	d3,a5
		dbf	d4,loc_71EC4
		lea	$340(a6),a5
		btst	#7,(a5)
		beq.s	loc_71EFE
		btst	#2,(a5)
		bne.s	loc_71EFE
		move.b	#$B4,d0
		move.b	$A(a5),d1
		jsr	sub_72722(pc)

loc_71EFE:				; CODE XREF: SoundDriver+30Cj
					; SoundDriver+39Ej ...
		bra.w	DoStartZ80
; END OF FUNCTION CHUNK	FOR SoundDriver
; ---------------------------------------------------------------------------
; Subroutine to	play a sound or	music track
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Sound_Play:				; DATA XREF: SoundDriver+6Ct
		movea.l	(Go_SoundTypes).l,a0
		lea	$A(a6),a1	; load music track number
		move.b	0(a6),d3
		moveq	#2,d4

loc_71F12:				; CODE XREF: Sound_Play:loc_71F3Ej
		move.b	(a1),d0		; move track number to d0
		move.b	d0,d1
		clr.b	(a1)+
		subi.b	#-$7F,d0
		bcs.s	loc_71F3E
		cmpi.b	#-$80,9(a6)
		beq.s	loc_71F2C
		move.b	d1,$A(a6)
		bra.s	loc_71F3E
; ===========================================================================

loc_71F2C:				; CODE XREF: Sound_Play+22j
		andi.w	#$7F,d0
		move.b	(a0,d0.w),d2
		cmp.b	d3,d2
		bcs.s	loc_71F3E
		move.b	d2,d3
		move.b	d1,9(a6)	; set music flag

loc_71F3E:				; CODE XREF: Sound_Play+1Aj
					; Sound_Play+28j ...
		dbf	d4,loc_71F12
		tst.b	d3
		bmi.s	locret_71F4A
		move.b	d3,0(a6)

locret_71F4A:				; CODE XREF: Sound_Play+42j
		rts
; End of function Sound_Play


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Sound_ChkValue:				; DATA XREF: SoundDriver+78t
		moveq	#0,d7
		move.b	9(a6),d7
		beq.w	Sound_E4
		bpl.s	locret_71F8C
		move.b	#$80,9(a6)	; reset	music flag
		cmpi.b	#$9F,d7
		bls.w	loc_71FD2	; music	$81-$9F
		cmpi.b	#$A0,d7
		bcs.w	locret_71F8C
		cmpi.b	#$CF,d7
		bls.w	loc_721C6	; sound	$A0-$CF
		cmpi.b	#$D0,d7
		bcs.w	locret_71F8C
		cmpi.b	#$E0,d7
		bcs.w	loc_7230C	; sound	$D0-$DF
		cmpi.b	#$E4,d7
		bls.s	loc_71F8E	; sound	$E0-$E4

locret_71F8C:				; CODE XREF: Sound_ChkValue+Aj
					; Sound_ChkValue+1Ej ...
		rts
; ===========================================================================

loc_71F8E:				; CODE XREF: Sound_ChkValue+3Ej
		subi.b	#$E0,d7
		lsl.w	#2,d7
		jmp	loc_71F98(pc,d7.w)
; ===========================================================================

loc_71F98:
		bra.w	Sound_E0
; ===========================================================================
		bra.w	loc_71FAC
; ===========================================================================
		bra.w	Sound_E2
; ===========================================================================
		bra.w	Sound_E3
; ===========================================================================
		bra.w	Sound_E4
; ===========================================================================
; ---------------------------------------------------------------------------
; Play "Say-gaa" PCM sound
; ---------------------------------------------------------------------------

loc_71FAC:				; CODE XREF: Sound_ChkValue+50j
		move.b	#$88,($A01FFF).l
		move.w	#0,($A11100).l	; start	the Z80
		move.w	#$11,d1

loc_71FC0:				; CODE XREF: Sound_ChkValue+7Ej
		move.w	#$FFFF,d0

loc_71FC4:				; CODE XREF: Sound_ChkValue+7Aj
		nop
		dbf	d0,loc_71FC4
		dbf	d1,loc_71FC0
		addq.w	#4,sp
		rts
; ===========================================================================
; ---------------------------------------------------------------------------
; Play music track $81-$9F
; ---------------------------------------------------------------------------

loc_71FD2:				; CODE XREF: Sound_ChkValue+16j
		cmpi.b	#$88,d7		; is "extra life" music	played?
		bne.s	loc_72024	; if not, branch
		tst.b	$27(a6)
		bne.w	loc_721B6
		lea	$40(a6),a5
		moveq	#9,d0

loc_71FE6:				; CODE XREF: Sound_ChkValue+A2j
		bclr	#2,(a5)
		adda.w	#$30,a5
		dbf	d0,loc_71FE6
		lea	$220(a6),a5
		moveq	#5,d0

loc_71FF8:				; CODE XREF: Sound_ChkValue+B4j
		bclr	#7,(a5)
		adda.w	#$30,a5
		dbf	d0,loc_71FF8
		clr.b	0(a6)
		movea.l	a6,a0
		lea	$3A0(a6),a1
		move.w	#$87,d0

loc_72012:				; CODE XREF: Sound_ChkValue+C8j
		move.l	(a0)+,(a1)+
		dbf	d0,loc_72012
		move.b	#-$80,$27(a6)
		clr.b	0(a6)
		bra.s	loc_7202C
; ===========================================================================

loc_72024:				; CODE XREF: Sound_ChkValue+8Aj
		clr.b	$27(a6)
		clr.b	$26(a6)

loc_7202C:				; CODE XREF: Sound_ChkValue+D6j
		jsr	sub_725CA(pc)
		movea.l	(Go_SpeedUp_Index).l,a4
		subi.b	#-$7F,d7
		move.b	(a4,d7.w),$29(a6)
		movea.l	(Go_MusicIndex).l,a4
		lsl.w	#2,d7
		movea.l	(a4,d7.w),a4
		moveq	#0,d0
		move.w	(a4),d0
		add.l	a4,d0
		move.l	d0,$18(a6)
		move.b	5(a4),d0
		move.b	d0,$28(a6)
		tst.b	$2A(a6)
		beq.s	loc_72068
		move.b	$29(a6),d0

loc_72068:				; CODE XREF: Sound_ChkValue+116j
		move.b	d0,2(a6)
		move.b	d0,1(a6)
		moveq	#0,d1
		movea.l	a4,a3
		addq.w	#6,a4
		moveq	#0,d7
		move.b	2(a3),d7
		beq.w	loc_72114
		subq.b	#1,d7
		move.b	#$C0,d1
		move.b	4(a3),d4
		moveq	#$30,d6
		move.b	#1,d5
		lea	$40(a6),a1
		lea	byte_721BA(pc),a2

loc_72098:				; CODE XREF: Sound_ChkValue+174j
		bset	#7,(a1)
		move.b	(a2)+,1(a1)
		move.b	d4,2(a1)
		move.b	d6,$D(a1)
		move.b	d1,$A(a1)
		move.b	d5,$E(a1)
		moveq	#0,d0
		move.w	(a4)+,d0
		add.l	a3,d0
		move.l	d0,4(a1)
		move.w	(a4)+,8(a1)
		adda.w	d6,a1
		dbf	d7,loc_72098
		cmpi.b	#7,2(a3)
		bne.s	loc_720D8
		moveq	#$2B,d0
		moveq	#0,d1
		jsr	sub_7272E(pc)
		bra.w	loc_72114
; ===========================================================================

loc_720D8:				; CODE XREF: Sound_ChkValue+17Ej
		moveq	#$28,d0
		moveq	#6,d1
		jsr	sub_7272E(pc)
		move.b	#$42,d0
		moveq	#$7F,d1
		jsr	sub_72764(pc)
		move.b	#$4A,d0
		moveq	#$7F,d1
		jsr	sub_72764(pc)
		move.b	#$46,d0
		moveq	#$7F,d1
		jsr	sub_72764(pc)
		move.b	#$4E,d0
		moveq	#$7F,d1
		jsr	sub_72764(pc)
		move.b	#$B6,d0
		move.b	#$C0,d1
		jsr	sub_72764(pc)

loc_72114:				; CODE XREF: Sound_ChkValue+130j
					; Sound_ChkValue+188j
		moveq	#0,d7
		move.b	3(a3),d7
		beq.s	loc_72154
		subq.b	#1,d7
		lea	$190(a6),a1
		lea	byte_721C2(pc),a2

loc_72126:				; CODE XREF: Sound_ChkValue+204j
		bset	#7,(a1)
		move.b	(a2)+,1(a1)
		move.b	d4,2(a1)
		move.b	d6,$D(a1)
		move.b	d5,$E(a1)
		moveq	#0,d0
		move.w	(a4)+,d0
		add.l	a3,d0
		move.l	d0,4(a1)
		move.w	(a4)+,8(a1)
		move.b	(a4)+,d0
		move.b	(a4)+,$B(a1)
		adda.w	d6,a1
		dbf	d7,loc_72126

loc_72154:				; CODE XREF: Sound_ChkValue+1CEj
		lea	$220(a6),a1
		moveq	#5,d7

loc_7215A:				; CODE XREF: Sound_ChkValue+232j
		tst.b	(a1)
		bpl.w	loc_7217C
		moveq	#0,d0
		move.b	1(a1),d0
		bmi.s	loc_7216E
		subq.b	#2,d0
		lsl.b	#2,d0
		bra.s	loc_72170
; ===========================================================================

loc_7216E:				; CODE XREF: Sound_ChkValue+21Aj
		lsr.b	#3,d0

loc_72170:				; CODE XREF: Sound_ChkValue+220j
		lea	dword_722CC(pc),a0
		movea.l	(a0,d0.w),a0
		bset	#2,(a0)

loc_7217C:				; CODE XREF: Sound_ChkValue+210j
		adda.w	d6,a1
		dbf	d7,loc_7215A
		tst.w	$340(a6)
		bpl.s	loc_7218E
		bset	#2,$100(a6)

loc_7218E:				; CODE XREF: Sound_ChkValue+23Aj
		tst.w	$370(a6)
		bpl.s	loc_7219A
		bset	#2,$1F0(a6)

loc_7219A:				; CODE XREF: Sound_ChkValue+246j
		lea	$70(a6),a5
		moveq	#5,d4

loc_721A0:				; CODE XREF: Sound_ChkValue+25Aj
		jsr	sub_726FE(pc)
		adda.w	d6,a5
		dbf	d4,loc_721A0
		moveq	#2,d4

loc_721AC:				; CODE XREF: Sound_ChkValue+266j
		jsr	sub_729A0(pc)
		adda.w	d6,a5
		dbf	d4,loc_721AC

loc_721B6:				; CODE XREF: Sound_ChkValue+90j
		addq.w	#4,sp
		rts
; ===========================================================================
byte_721BA:	dc.b 6,	0, 1, 2, 4, 5, 6, 0 ; DATA XREF: Sound_ChkValue+148t
byte_721C2:	dc.b $80, $A0, $C0, 0	; DATA XREF: Sound_ChkValue+1D6t
; ===========================================================================
; ---------------------------------------------------------------------------
; Play normal sound effect
; ---------------------------------------------------------------------------

loc_721C6:				; CODE XREF: Sound_ChkValue+26j
		tst.b	$27(a6)
		bne.w	loc_722C6
		tst.b	4(a6)
		bne.w	loc_722C6
		tst.b	$24(a6)
		bne.w	loc_722C6
		cmpi.b	#-$4B,d7	; is ring sound	effect played?
		bne.s	loc_721F4	; if not, branch
		tst.b	$2B(a6)
		bne.s	loc_721EE
		move.b	#-$32,d7	; play ring sound in left speaker

loc_721EE:				; CODE XREF: Sound_ChkValue+29Cj
		bchg	#0,$2B(a6)	; change speaker

loc_721F4:				; CODE XREF: Sound_ChkValue+296j
		cmpi.b	#-$59,d7	; is "pushing" sound played?
		bne.s	loc_72208	; if not, branch
		tst.b	$2C(a6)
		bne.w	locret_722C4
		move.b	#-$80,$2C(a6)

loc_72208:				; CODE XREF: Sound_ChkValue+2ACj
		movea.l	(Go_SoundIndex).l,a0
		subi.b	#-$60,d7
		lsl.w	#2,d7
		movea.l	(a0,d7.w),a3
		movea.l	a3,a1
		moveq	#0,d1
		move.w	(a1)+,d1
		add.l	a3,d1
		move.b	(a1)+,d5
		move.b	(a1)+,d7
		subq.b	#1,d7
		moveq	#$30,d6

loc_72228:				; CODE XREF: Sound_ChkValue:loc_722A8j
		moveq	#0,d3
		move.b	1(a1),d3
		move.b	d3,d4
		bmi.s	loc_72244
		subq.w	#2,d3
		lsl.w	#2,d3
		lea	dword_722CC(pc),a5
		movea.l	(a5,d3.w),a5
		bset	#2,(a5)
		bra.s	loc_7226E
; ===========================================================================

loc_72244:				; CODE XREF: Sound_ChkValue+2E4j
		lsr.w	#3,d3
		lea	dword_722CC(pc),a5
		movea.l	(a5,d3.w),a5
		bset	#2,(a5)
		cmpi.b	#-$40,d4
		bne.s	loc_7226E
		move.b	d4,d0
		ori.b	#$1F,d0
		move.b	d0,($C00011).l
		bchg	#5,d0
		move.b	d0,($C00011).l

loc_7226E:				; CODE XREF: Sound_ChkValue+2F6j
					; Sound_ChkValue+30Aj
		movea.l	dword_722EC(pc,d3.w),a5
		movea.l	a5,a2
		moveq	#$B,d0

loc_72276:				; CODE XREF: Sound_ChkValue+32Cj
		clr.l	(a2)+
		dbf	d0,loc_72276
		move.w	(a1)+,(a5)
		move.b	d5,2(a5)
		moveq	#0,d0
		move.w	(a1)+,d0
		add.l	a3,d0
		move.l	d0,4(a5)
		move.w	(a1)+,8(a5)
		move.b	#1,$E(a5)
		move.b	d6,$D(a5)
		tst.b	d4
		bmi.s	loc_722A8
		move.b	#-$40,$A(a5)
		move.l	d1,$20(a5)

loc_722A8:				; CODE XREF: Sound_ChkValue+350j
		dbf	d7,loc_72228
		tst.b	$250(a6)
		bpl.s	loc_722B8
		bset	#2,$340(a6)

loc_722B8:				; CODE XREF: Sound_ChkValue+364j
		tst.b	$310(a6)
		bpl.s	locret_722C4
		bset	#2,$370(a6)

locret_722C4:				; CODE XREF: Sound_ChkValue+2B2j
					; Sound_ChkValue+370j
		rts
; ===========================================================================

loc_722C6:				; CODE XREF: Sound_ChkValue+27Ej
					; Sound_ChkValue+286j ...
		clr.b	0(a6)
		rts
; ===========================================================================
dword_722CC:	dc.l   $FFF0D0,	       0,  $FFF100,  $FFF130; 0
					; DATA XREF: Sound_ChkValue:loc_72170t
					; Sound_ChkValue+2EAt ...
		dc.l   $FFF190,	 $FFF1C0,  $FFF1F0,  $FFF1F0; 4
dword_722EC:	dc.l   $FFF220,	       0,  $FFF250,  $FFF280; 0
		dc.l   $FFF2B0,	 $FFF2E0,  $FFF310,  $FFF310; 4
; ===========================================================================
; ---------------------------------------------------------------------------
; Play GHZ waterfall sound
; ---------------------------------------------------------------------------

loc_7230C:				; CODE XREF: Sound_ChkValue+36j
		tst.b	$27(a6)
		bne.w	locret_723C6
		tst.b	4(a6)
		bne.w	locret_723C6
		tst.b	$24(a6)
		bne.w	locret_723C6
		movea.l	(Go_SoundD0).l,a0
		subi.b	#-$30,d7
		lsl.w	#2,d7
		movea.l	(a0,d7.w),a3
		movea.l	a3,a1
		moveq	#0,d0
		move.w	(a1)+,d0
		add.l	a3,d0
		move.l	d0,$20(a6)
		move.b	(a1)+,d5
		move.b	(a1)+,d7
		subq.b	#1,d7
		moveq	#$30,d6

loc_72348:				; CODE XREF: Sound_ChkValue:loc_72396j
		move.b	1(a1),d4
		bmi.s	loc_7235A
		bset	#2,$100(a6)
		lea	$340(a6),a5
		bra.s	loc_72364
; ===========================================================================

loc_7235A:				; CODE XREF: Sound_ChkValue+400j
		bset	#2,$1F0(a6)
		lea	$370(a6),a5

loc_72364:				; CODE XREF: Sound_ChkValue+40Cj
		movea.l	a5,a2
		moveq	#$B,d0

loc_72368:				; CODE XREF: Sound_ChkValue+41Ej
		clr.l	(a2)+
		dbf	d0,loc_72368
		move.w	(a1)+,(a5)
		move.b	d5,2(a5)
		moveq	#0,d0
		move.w	(a1)+,d0
		add.l	a3,d0
		move.l	d0,4(a5)
		move.w	(a1)+,8(a5)
		move.b	#1,$E(a5)
		move.b	d6,$D(a5)
		tst.b	d4
		bmi.s	loc_72396
		move.b	#-$40,$A(a5)

loc_72396:				; CODE XREF: Sound_ChkValue+442j
		dbf	d7,loc_72348
		tst.b	$250(a6)
		bpl.s	loc_723A6
		bset	#2,$340(a6)

loc_723A6:				; CODE XREF: Sound_ChkValue+452j
		tst.b	$310(a6)
		bpl.s	locret_723C6
		bset	#2,$370(a6)
		ori.b	#$1F,d4
		move.b	d4,($C00011).l
		bchg	#5,d4
		move.b	d4,($C00011).l

locret_723C6:				; CODE XREF: Sound_ChkValue+3C4j
					; Sound_ChkValue+3CCj ...
		rts
; End of function Sound_ChkValue

; ===========================================================================
		dc.l $FFF100, $FFF1F0, $FFF250,	$FFF310, $FFF340, $FFF370

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Snd_FadeOut1:				; DATA XREF: Sound_ChkValue:Sound_E0t
		clr.b	0(a6)
		lea	$220(a6),a5
		moveq	#5,d7

loc_723EA:				; CODE XREF: Snd_FadeOut1+96j
		tst.b	(a5)
		bpl.w	loc_72472
		bclr	#7,(a5)
		moveq	#0,d3
		move.b	1(a5),d3
		bmi.s	loc_7243C
		jsr	sub_726FE(pc)
		cmpi.b	#4,d3
		bne.s	loc_72416
		tst.b	$340(a6)
		bpl.s	loc_72416
		lea	$340(a6),a5
		movea.l	$20(a6),a1
		bra.s	loc_72428
; ===========================================================================

loc_72416:				; CODE XREF: Snd_FadeOut1+24j
					; Snd_FadeOut1+2Aj
		subq.b	#2,d3
		lsl.b	#2,d3
		lea	dword_722CC(pc),a0
		movea.l	a5,a3
		movea.l	(a0,d3.w),a5
		movea.l	$18(a6),a1

loc_72428:				; CODE XREF: Snd_FadeOut1+34j
		bclr	#2,(a5)
		bset	#1,(a5)
		move.b	$B(a5),d0
		jsr	sub_72C4E(pc)
		movea.l	a3,a5
		bra.s	loc_72472
; ===========================================================================

loc_7243C:				; CODE XREF: Snd_FadeOut1+1Aj
		jsr	sub_729A0(pc)
		lea	$370(a6),a0
		cmpi.b	#-$20,d3
		beq.s	loc_7245A
		cmpi.b	#-$40,d3
		beq.s	loc_7245A
		lsr.b	#3,d3
		lea	dword_722CC(pc),a0
		movea.l	(a0,d3.w),a0

loc_7245A:				; CODE XREF: Snd_FadeOut1+68j
					; Snd_FadeOut1+6Ej
		bclr	#2,(a0)
		bset	#1,(a0)
		cmpi.b	#-$20,1(a0)
		bne.s	loc_72472
		move.b	$1F(a0),($C00011).l

loc_72472:				; CODE XREF: Snd_FadeOut1+Cj
					; Snd_FadeOut1+5Aj ...
		adda.w	#$30,a5
		dbf	d7,loc_723EA
		rts
; End of function Snd_FadeOut1


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Snd_FadeOut2:				; DATA XREF: Sound_ChkValue+59Et
		lea	$340(a6),a5
		tst.b	(a5)
		bpl.s	loc_724AE
		bclr	#7,(a5)
		btst	#2,(a5)
		bne.s	loc_724AE
		jsr	loc_7270A(pc)
		lea	$100(a6),a5
		bclr	#2,(a5)
		bset	#1,(a5)
		tst.b	(a5)
		bpl.s	loc_724AE
		movea.l	$18(a6),a1
		move.b	$B(a5),d0
		jsr	sub_72C4E(pc)

loc_724AE:				; CODE XREF: Snd_FadeOut2+6j
					; Snd_FadeOut2+10j ...
		lea	$370(a6),a5
		tst.b	(a5)
		bpl.s	locret_724E4
		bclr	#7,(a5)
		btst	#2,(a5)
		bne.s	locret_724E4
		jsr	loc_729A6(pc)
		lea	$1F0(a6),a5
		bclr	#2,(a5)
		bset	#1,(a5)
		tst.b	(a5)
		bpl.s	locret_724E4
		cmpi.b	#$E0,1(a5)
		bne.s	locret_724E4
		move.b	$1F(a5),($C00011).l

locret_724E4:				; CODE XREF: Snd_FadeOut2+38j
					; Snd_FadeOut2+42j ...
		rts
; End of function Snd_FadeOut2

; ===========================================================================
; ---------------------------------------------------------------------------
; Fade out music
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR Sound_ChkValue

Sound_E0:				; CODE XREF: Sound_ChkValue:loc_71F98j
		jsr	Snd_FadeOut1(pc)
		jsr	Snd_FadeOut2(pc)
		move.b	#3,6(a6)
		move.b	#$28,4(a6)
		clr.b	$40(a6)
		clr.b	$2A(a6)
		rts
; END OF FUNCTION CHUNK	FOR Sound_ChkValue

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


DoFadeOut:				; DATA XREF: SoundDriver+58t
		move.b	6(a6),d0
		beq.s	loc_72510
		subq.b	#1,6(a6)
		rts
; ===========================================================================

loc_72510:				; CODE XREF: DoFadeOut+4j
		subq.b	#1,4(a6)
		beq.w	Sound_E4
		move.b	#3,6(a6)
		lea	$70(a6),a5
		moveq	#5,d7

loc_72524:				; CODE XREF: DoFadeOut+38j
		tst.b	(a5)
		bpl.s	loc_72538
		addq.b	#1,9(a5)
		bpl.s	loc_72534
		bclr	#7,(a5)
		bra.s	loc_72538
; ===========================================================================

loc_72534:				; CODE XREF: DoFadeOut+28j
		jsr	sub_72CB4(pc)

loc_72538:				; CODE XREF: DoFadeOut+22j
					; DoFadeOut+2Ej
		adda.w	#$30,a5
		dbf	d7,loc_72524
		moveq	#2,d7

loc_72542:				; CODE XREF: DoFadeOut+60j
		tst.b	(a5)
		bpl.s	loc_72560
		addq.b	#1,9(a5)
		cmpi.b	#$10,9(a5)
		bcs.s	loc_72558
		bclr	#7,(a5)
		bra.s	loc_72560
; ===========================================================================

loc_72558:				; CODE XREF: DoFadeOut+4Cj
		move.b	9(a5),d6
		jsr	sub_7296A(pc)

loc_72560:				; CODE XREF: DoFadeOut+40j
					; DoFadeOut+52j
		adda.w	#$30,a5
		dbf	d7,loc_72542
		rts
; End of function DoFadeOut


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_7256A:				; DATA XREF: Sound_ChkValue+676t
					; sub_725CA+3At
		moveq	#2,d3
		moveq	#$28,d0

loc_7256E:				; CODE XREF: sub_7256A+10j
		move.b	d3,d1
		jsr	sub_7272E(pc)
		addq.b	#4,d1
		jsr	sub_7272E(pc)
		dbf	d3,loc_7256E
		moveq	#$40,d0
		moveq	#$7F,d1
		moveq	#2,d4

loc_72584:				; CODE XREF: sub_7256A+2Ej
		moveq	#3,d3

loc_72586:				; CODE XREF: sub_7256A+26j
		jsr	sub_7272E(pc)
		jsr	sub_72764(pc)
		addq.w	#4,d0
		dbf	d3,loc_72586
		subi.b	#$F,d0
		dbf	d4,loc_72584
		rts
; End of function sub_7256A

; ===========================================================================
; ---------------------------------------------------------------------------
; Stop music
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR Sound_ChkValue

Sound_E4:				; CODE XREF: Sound_ChkValue+6j
					; Sound_ChkValue+5Cj ...
		moveq	#$2B,d0
		move.b	#-$80,d1
		jsr	sub_7272E(pc)
		moveq	#$27,d0
		moveq	#0,d1
		jsr	sub_7272E(pc)
		movea.l	a6,a0
		move.w	#$E3,d0

loc_725B6:				; CODE XREF: Sound_ChkValue+66Cj
		clr.l	(a0)+
		dbf	d0,loc_725B6
		move.b	#-$80,9(a6)	; set music to $80 (silence)
		jsr	sub_7256A(pc)
		bra.w	sub_729B6
; END OF FUNCTION CHUNK	FOR Sound_ChkValue

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_725CA:				; DATA XREF: Sound_ChkValue:loc_7202Ct
		movea.l	a6,a0
		move.b	0(a6),d1
		move.b	$27(a6),d2
		move.b	$2A(a6),d3
		move.b	$26(a6),d4
		move.w	$A(a6),d5
		move.w	#$87,d0

loc_725E4:				; CODE XREF: sub_725CA+1Cj
		clr.l	(a0)+
		dbf	d0,loc_725E4
		move.b	d1,0(a6)
		move.b	d2,$27(a6)
		move.b	d3,$2A(a6)
		move.b	d4,$26(a6)
		move.w	d5,$A(a6)
		move.b	#-$80,9(a6)
		jsr	sub_7256A(pc)
		bra.w	sub_729B6
; End of function sub_725CA


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


TempoWait:				; DATA XREF: SoundDriver+4Et
		move.b	2(a6),1(a6)
		lea	$4E(a6),a0
		moveq	#$30,d0
		moveq	#9,d1

loc_7261A:				; CODE XREF: TempoWait+12j
		addq.b	#1,(a0)
		adda.w	d0,a0
		dbf	d1,loc_7261A
		rts
; End of function TempoWait

; ===========================================================================
; ---------------------------------------------------------------------------
; Speed	up music
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR Sound_ChkValue

Sound_E2:				; CODE XREF: Sound_ChkValue+54j
		tst.b	$27(a6)
		bne.s	loc_7263E
		move.b	$29(a6),2(a6)
		move.b	$29(a6),1(a6)
		move.b	#-$80,$2A(a6)
		rts
; ===========================================================================

loc_7263E:				; CODE XREF: Sound_ChkValue+6DCj
		move.b	$3C9(a6),$3A2(a6)
		move.b	$3C9(a6),$3A1(a6)
		move.b	#-$80,$3CA(a6)
		rts
; ===========================================================================
; ---------------------------------------------------------------------------
; Change music back to normal speed
; ---------------------------------------------------------------------------

Sound_E3:				; CODE XREF: Sound_ChkValue+58j
		tst.b	$27(a6)
		bne.s	loc_7266A
		move.b	$28(a6),2(a6)
		move.b	$28(a6),1(a6)
		clr.b	$2A(a6)
		rts
; ===========================================================================

loc_7266A:				; CODE XREF: Sound_ChkValue+70Aj
		move.b	$3C8(a6),$3A2(a6)
		move.b	$3C8(a6),$3A1(a6)
		clr.b	$3CA(a6)
		rts
; END OF FUNCTION CHUNK	FOR Sound_ChkValue

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


DoFadeIn:				; DATA XREF: SoundDriver+62t
		tst.b	$25(a6)
		beq.s	loc_72688
		subq.b	#1,$25(a6)
		rts
; ===========================================================================

loc_72688:				; CODE XREF: DoFadeIn+4j
		tst.b	$26(a6)
		beq.s	loc_726D6
		subq.b	#1,$26(a6)
		move.b	#2,$25(a6)
		lea	$70(a6),a5
		moveq	#5,d7

loc_7269E:				; CODE XREF: DoFadeIn+32j
		tst.b	(a5)
		bpl.s	loc_726AA
		subq.b	#1,9(a5)
		jsr	sub_72CB4(pc)

loc_726AA:				; CODE XREF: DoFadeIn+24j
		adda.w	#$30,a5
		dbf	d7,loc_7269E
		moveq	#2,d7

loc_726B4:				; CODE XREF: DoFadeIn+54j
		tst.b	(a5)
		bpl.s	loc_726CC
		subq.b	#1,9(a5)
		move.b	9(a5),d6
		cmpi.b	#$10,d6
		bcs.s	loc_726C8
		moveq	#$F,d6

loc_726C8:				; CODE XREF: DoFadeIn+48j
		jsr	sub_7296A(pc)

loc_726CC:				; CODE XREF: DoFadeIn+3Aj
		adda.w	#$30,a5
		dbf	d7,loc_726B4
		rts
; ===========================================================================

loc_726D6:				; CODE XREF: DoFadeIn+10j
		bclr	#2,$40(a6)
		clr.b	$24(a6)
		rts
; End of function DoFadeIn

; ===========================================================================
; START	OF FUNCTION CHUNK FOR sub_71CCA

loc_726E2:				; CODE XREF: sub_71CCA+12j
		btst	#1,(a5)
		bne.s	locret_726FC
		btst	#2,(a5)
		bne.s	locret_726FC
		moveq	#$28,d0
		move.b	1(a5),d1
		ori.b	#$F0,d1
		bra.w	sub_7272E
; ===========================================================================

locret_726FC:				; CODE XREF: sub_71CCA+A1Cj
					; sub_71CCA+A22j
		rts
; END OF FUNCTION CHUNK	FOR sub_71CCA

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_726FE:				; DATA XREF: sub_71CEC:loc_71D04t
					; sub_71D9E+18t ...
		btst	#4,(a5)
		bne.s	locret_72714
		btst	#2,(a5)
		bne.s	locret_72714

loc_7270A:				; DATA XREF: Snd_FadeOut2+12t
		moveq	#$28,d0
		move.b	1(a5),d1
		bra.w	sub_7272E
; ===========================================================================

locret_72714:				; CODE XREF: sub_726FE+4j sub_726FE+Aj
		rts
; End of function sub_726FE

; ===========================================================================

WriteFMIorIIMain:				; CODE XREF: ROM:00072AE6j
		btst	#2,(a5)
		bne.s	locret_72720
		bra.w	sub_72722
; ===========================================================================

locret_72720:				; CODE XREF: ROM:0007271Aj
		rts

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_72722:				; CODE XREF: ROM:0007271Cj
					; DATA XREF: sub_71E18+22t ...

; FUNCTION CHUNK AT 0007275A SIZE 0000000A BYTES

		btst	#2,1(a5)
		bne.s	loc_7275A
		add.b	1(a5),d0
; End of function sub_72722


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_7272E:				; CODE XREF: sub_71CCA+A2Ej
					; sub_726FE+12j ...
		move.b	($A04000).l,d2
		btst	#7,d2
		bne.s	sub_7272E
		move.b	d0,($A04000).l
		nop
		nop
		nop

loc_72746:				; CODE XREF: sub_7272E+22j
		move.b	($A04000).l,d2
		btst	#7,d2
		bne.s	loc_72746
		move.b	d1,($A04001).l
		rts
; End of function sub_7272E

; ===========================================================================
; START	OF FUNCTION CHUNK FOR sub_72722

loc_7275A:				; CODE XREF: sub_72722+6j
		move.b	1(a5),d2
		bclr	#2,d2
		add.b	d2,d0
; END OF FUNCTION CHUNK	FOR sub_72722

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_72764:				; CODE XREF: sub_72764+Aj
					; DATA XREF: SoundDriver+322t ...
		move.b	($A04000).l,d2
		btst	#7,d2
		bne.s	sub_72764
		move.b	d0,($A04002).l
		nop
		nop
		nop

loc_7277C:				; CODE XREF: sub_72764+22j
		move.b	($A04000).l,d2
		btst	#7,d2
		bne.s	loc_7277C
		move.b	d1,($A04003).l
		rts
; End of function sub_72764

; ===========================================================================
word_72790:	dc.w $25E, $284, $2AB, $2D3, $2FE, $32D, $35C, $38F, $3C5
					; DATA XREF: sub_71D22+10t
		dc.w $3FF, $43C, $47C, $A5E, $A84, $AAB, $AD3, $AFE, $B2D
		dc.w $B5C, $B8F, $BC5, $BFF, $C3C, $C7C, $125E,	$1284
		dc.w $12AB, $12D3, $12FE, $132D, $135C,	$138F, $13C5, $13FF
		dc.w $143C, $147C, $1A5E, $1A84, $1AAB,	$1AD3, $1AFE, $1B2D
		dc.w $1B5C, $1B8F, $1BC5, $1BFF, $1C3C,	$1C7C, $225E, $2284
		dc.w $22AB, $22D3, $22FE, $232D, $235C,	$238F, $23C5, $23FF
		dc.w $243C, $247C, $2A5E, $2A84, $2AAB,	$2AD3, $2AFE, $2B2D
		dc.w $2B5C, $2B8F, $2BC5, $2BFF, $2C3C,	$2C7C, $325E, $3284
		dc.w $32AB, $32D3, $32FE, $332D, $335C,	$338F, $33C5, $33FF
		dc.w $343C, $347C, $3A5E, $3A84, $3AAB,	$3AD3, $3AFE, $3B2D
		dc.w $3B5C, $3B8F, $3BC5, $3BFF, $3C3C,	$3C7C

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_72850:				; DATA XREF: SoundDriver+A8t
					; SoundDriver+D2t ...
		subq.b	#1,$E(a5)
		bne.s	loc_72866
		bclr	#4,(a5)
		jsr	sub_72878(pc)
		jsr	sub_728DC(pc)
		bra.w	loc_7292E
; ===========================================================================

loc_72866:				; CODE XREF: sub_72850+4j
		jsr	sub_71D9E(pc)
		jsr	sub_72926(pc)
		jsr	sub_71DC6(pc)
		jsr	sub_728E2(pc)
		rts
; End of function sub_72850


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_72878:				; DATA XREF: sub_72850+At
		bclr	#1,(a5)
		movea.l	4(a5),a4

loc_72880:				; CODE XREF: sub_72878+16j
		moveq	#0,d5
		move.b	(a4)+,d5
		cmpi.b	#-$20,d5
		bcs.s	loc_72890
		jsr	SMPS_Flags(pc)
		bra.s	loc_72880
; ===========================================================================

loc_72890:				; CODE XREF: sub_72878+10j
		tst.b	d5
		bpl.s	loc_728A4
		jsr	sub_728AC(pc)
		move.b	(a4)+,d5
		tst.b	d5
		bpl.s	loc_728A4
		subq.w	#1,a4
		bra.w	sub_71D60
; ===========================================================================

loc_728A4:				; CODE XREF: sub_72878+1Aj
					; sub_72878+24j
		jsr	sub_71D40(pc)
		bra.w	sub_71D60
; End of function sub_72878


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_728AC:				; DATA XREF: sub_72878+1Ct
		subi.b	#-$7F,d5
		bcs.s	loc_728CA
		add.b	8(a5),d5
		andi.w	#$7F,d5
		lsl.w	#1,d5
		lea	word_729CE(pc),a0
		move.w	(a0,d5.w),$10(a5)
		bra.w	sub_71D60
; ===========================================================================

loc_728CA:				; CODE XREF: sub_728AC+4j
		bset	#1,(a5)
		move.w	#$FFFF,$10(a5)
		jsr	sub_71D60(pc)
		bra.w	sub_729A0
; End of function sub_728AC


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_728DC:				; DATA XREF: sub_72850+Et

; FUNCTION CHUNK AT 00072920 SIZE 00000006 BYTES

		move.w	$10(a5),d6
		bmi.s	loc_72920
; End of function sub_728DC


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_728E2:				; DATA XREF: sub_72850+22t
		move.b	$1E(a5),d0
		ext.w	d0
		add.w	d0,d6
		btst	#2,(a5)
		bne.s	locret_7291E
		btst	#1,(a5)
		bne.s	locret_7291E
		move.b	1(a5),d0
		cmpi.b	#-$20,d0
		bne.s	loc_72904
		move.b	#-$40,d0

loc_72904:				; CODE XREF: sub_728E2+1Cj
		move.w	d6,d1
		andi.b	#$F,d1
		or.b	d1,d0
		lsr.w	#4,d6
		andi.b	#$3F,d6
		move.b	d0,($C00011).l
		move.b	d6,($C00011).l

locret_7291E:				; CODE XREF: sub_728E2+Cj
					; sub_728E2+12j
		rts
; End of function sub_728E2

; ===========================================================================
; START	OF FUNCTION CHUNK FOR sub_728DC

loc_72920:				; CODE XREF: sub_728DC+4j
		bset	#1,(a5)
		rts
; END OF FUNCTION CHUNK	FOR sub_728DC

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_72926:				; DATA XREF: sub_72850+1At

; FUNCTION CHUNK AT 0007299A SIZE 00000006 BYTES

		tst.b	$B(a5)
		beq.w	locret_7298A

loc_7292E:				; CODE XREF: sub_72850+12j
		move.b	9(a5),d6
		moveq	#0,d0
		move.b	$B(a5),d0
		beq.s	sub_7296A
		movea.l	(Go_PSGIndex).l,a0
		subq.w	#1,d0
		lsl.w	#2,d0
		movea.l	(a0,d0.w),a0
		move.b	$C(a5),d0
		move.b	(a0,d0.w),d0
		addq.b	#1,$C(a5)
		btst	#7,d0
		beq.s	loc_72960
		cmpi.b	#-$80,d0
		beq.s	loc_7299A

loc_72960:				; CODE XREF: sub_72926+32j
		add.w	d0,d6
		cmpi.b	#$10,d6
		bcs.s	sub_7296A
		moveq	#$F,d6
; End of function sub_72926


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_7296A:				; CODE XREF: sub_72926+12j
					; sub_72926+40j
					; DATA XREF: ...
		btst	#1,(a5)
		bne.s	locret_7298A
		btst	#2,(a5)
		bne.s	locret_7298A
		btst	#4,(a5)
		bne.s	loc_7298C

loc_7297C:				; CODE XREF: sub_7296A+26j
					; sub_7296A+2Cj
		or.b	1(a5),d6
		addi.b	#$10,d6
		move.b	d6,($C00011).l

locret_7298A:				; CODE XREF: sub_72926+4j sub_7296A+4j ...
		rts
; ===========================================================================

loc_7298C:				; CODE XREF: sub_7296A+10j
		tst.b	$13(a5)
		beq.s	loc_7297C
		tst.b	$12(a5)
		bne.s	loc_7297C
		rts
; End of function sub_7296A

; ===========================================================================
; START	OF FUNCTION CHUNK FOR sub_72926

loc_7299A:				; CODE XREF: sub_72926+38j
		subq.b	#1,$C(a5)
		rts
; END OF FUNCTION CHUNK	FOR sub_72926

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_729A0:				; CODE XREF: sub_728AC+2Cj
					; DATA XREF: sub_71D9E:loc_71DBEt ...
		btst	#2,(a5)
		bne.s	locret_729B4

loc_729A6:				; DATA XREF: Snd_FadeOut2+44t
		move.b	1(a5),d0
		ori.b	#$1F,d0
		move.b	d0,($C00011).l

locret_729B4:				; CODE XREF: sub_729A0+4j
		rts
; End of function sub_729A0


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_729B6:				; CODE XREF: Sound_ChkValue+67Aj
		lea	($C00011).l,a0
		move.b	#-$61,(a0)
		move.b	#-$41,(a0)
		move.b	#-$21,(a0)
		move.b	#-1,(a0)
		rts
; End of function sub_729B6

; ===========================================================================
word_729CE:	dc.w $356, $326, $2F9, $2CE, $2A5, $280, $25C, $23A, $21A
		dc.w $1FB, $1DF, $1C4, $1AB, $193, $17D, $167, $153, $140
		dc.w $12E, $11D, $10D, $FE, $EF, $E2, $D6, $C9,	$BE, $B4
		dc.w $A9, $A0, $97, $8F, $87, $7F, $78,	$71, $6B, $65
		dc.w $5F, $5A, $55, $50, $4B, $47, $43,	$40, $3C, $39
		dc.w $36, $33, $30, $2D, $2B, $28, $26,	$24, $22, $20
		dc.w $1F, $1D, $1B, $1A, $18, $17, $16,	$15, $13, $12
		dc.w $11, 0

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


SMPS_Flags:				; DATA XREF: sub_71C4E+1At
					; sub_71CEC+12t ...
		subi.w	#$E0,d5
		lsl.w	#2,d5
		jmp	loc_72A64(pc,d5.w)
; End of function SMPS_Flags

; ===========================================================================

loc_72A64:
		bra.w	cfPanningAMSFMS
; ===========================================================================
		bra.w	cfAlterNotes
; ===========================================================================
		bra.w	loc_72AF2
; ===========================================================================
		bra.w	loc_72AF8
; ===========================================================================
		bra.w	loc_72B14
; ===========================================================================
		bra.w	loc_72B9E
; ===========================================================================
		bra.w	loc_72BA4
; ===========================================================================
		bra.w	loc_72BAE
; ===========================================================================
		bra.w	loc_72BB4
; ===========================================================================
		bra.w	loc_72BBE
; ===========================================================================
		bra.w	loc_72BC6
; ===========================================================================
		bra.w	loc_72BD0
; ===========================================================================
		bra.w	loc_72BE6
; ===========================================================================
		bra.w	loc_72BEE
; ===========================================================================
		bra.w	loc_72BF4
; ===========================================================================
		bra.w	loc_72C26
; ===========================================================================
		bra.w	loc_72D30
; ===========================================================================
		bra.w	loc_72D52
; ===========================================================================
		bra.w	loc_72D58
; ===========================================================================
		bra.w	loc_72E06
; ===========================================================================
		bra.w	loc_72E20
; ===========================================================================
		bra.w	loc_72E26
; ===========================================================================
		bra.w	loc_72E2C
; ===========================================================================
		bra.w	loc_72E38
; ===========================================================================
		bra.w	loc_72E52
; ===========================================================================
		bra.w	loc_72E64
; ===========================================================================

cfPanningAMSFMS:					
		move.b	(a4)+,d1			; New AMS/FMS/panning value
		tst.b	1(a5)				; Is this a PSG track?
		bmi.s	locret_72AEA		; If so, return
		move.b	$A(a5),d0			; Get current AMS/FMS/panning
		andi.b	#$37,d0				; Retain bits 0-2, 3-4 if set
		or.b	d0,d1				; Mask in new value
		move.b	d1,$A(a5)			; Store value
		move.b	#-$4C,d0			; Command to set AMS/FMS/panning
		bra.w	WriteFMIorIIMain
; ===========================================================================

locret_72AEA:				; CODE XREF: ROM:00072AD2j
		rts
; ===========================================================================

cfAlterNotes:				; CODE XREF: ROM:00072A68j
		move.b	(a4)+,$1E(a5)
		rts
; ===========================================================================

loc_72AF2:				; CODE XREF: ROM:00072A6Cj
		move.b	(a4)+,7(a6)
		rts
; ===========================================================================

loc_72AF8:				; CODE XREF: ROM:00072A70j
		moveq	#0,d0
		move.b	$D(a5),d0
		movea.l	(a5,d0.w),a4
		move.l	#0,(a5,d0.w)
		addq.w	#2,a4
		addq.b	#4,d0
		move.b	d0,$D(a5)
		rts
; ===========================================================================

loc_72B14:				; CODE XREF: ROM:00072A74j
		movea.l	a6,a0
		lea	$3A0(a6),a1
		move.w	#$87,d0

loc_72B1E:				; CODE XREF: ROM:00072B20j
		move.l	(a1)+,(a0)+
		dbf	d0,loc_72B1E
		bset	#2,$40(a6)
		movea.l	a5,a3
		move.b	#$28,d6
		sub.b	$26(a6),d6
		moveq	#5,d7
		lea	$70(a6),a5

loc_72B3A:				; CODE XREF: ROM:00072B60j
		btst	#7,(a5)
		beq.s	loc_72B5C
		bset	#1,(a5)
		add.b	d6,9(a5)
		btst	#2,(a5)
		bne.s	loc_72B5C
		moveq	#0,d0
		move.b	$B(a5),d0
		movea.l	$18(a6),a1
		jsr	sub_72C4E(pc)

loc_72B5C:				; CODE XREF: ROM:00072B3Ej
					; ROM:00072B4Cj
		adda.w	#$30,a5
		dbf	d7,loc_72B3A
		moveq	#2,d7

loc_72B66:				; CODE XREF: ROM:00072B7Cj
		btst	#7,(a5)
		beq.s	loc_72B78
		bset	#1,(a5)
		jsr	sub_729A0(pc)
		add.b	d6,9(a5)

loc_72B78:				; CODE XREF: ROM:00072B6Aj
		adda.w	#$30,a5
		dbf	d7,loc_72B66
		movea.l	a3,a5
		move.b	#-$80,$24(a6)
		move.b	#$28,$26(a6)
		clr.b	$27(a6)
		move.w	#0,($A11100).l
		addq.w	#8,sp
		rts
; ===========================================================================

loc_72B9E:				; CODE XREF: ROM:00072A78j
		move.b	(a4)+,2(a5)
		rts
; ===========================================================================

loc_72BA4:				; CODE XREF: ROM:00072A7Cj
		move.b	(a4)+,d0
		add.b	d0,9(a5)
		bra.w	sub_72CB4
; ===========================================================================

loc_72BAE:				; CODE XREF: ROM:00072A80j
		bset	#4,(a5)
		rts
; ===========================================================================

loc_72BB4:				; CODE XREF: ROM:00072A84j
		move.b	(a4),$12(a5)
		move.b	(a4)+,$13(a5)
		rts
; ===========================================================================

loc_72BBE:				; CODE XREF: ROM:00072A88j
		move.b	(a4)+,d0
		add.b	d0,8(a5)
		rts
; ===========================================================================

loc_72BC6:				; CODE XREF: ROM:00072A8Cj
		move.b	(a4),2(a6)
		move.b	(a4)+,1(a6)
		rts
; ===========================================================================

loc_72BD0:				; CODE XREF: ROM:00072A90j
		lea	$40(a6),a0
		move.b	(a4)+,d0
		moveq	#$30,d1
		moveq	#9,d2

loc_72BDA:				; CODE XREF: ROM:00072BE0j
		move.b	d0,2(a0)
		adda.w	d1,a0
		dbf	d2,loc_72BDA
		rts
; ===========================================================================

loc_72BE6:				; CODE XREF: ROM:00072A94j
		move.b	(a4)+,d0
		add.b	d0,9(a5)
		rts
; ===========================================================================

loc_72BEE:				; CODE XREF: ROM:00072A98j
		clr.b	$2C(a6)
		rts
; ===========================================================================

loc_72BF4:				; CODE XREF: ROM:00072A9Cj
		bclr	#7,(a5)
		bclr	#4,(a5)
		jsr	sub_726FE(pc)
		tst.b	$250(a6)
		bmi.s	loc_72C22
		movea.l	a5,a3
		lea	$100(a6),a5
		movea.l	$18(a6),a1
		bclr	#2,(a5)
		bset	#1,(a5)
		move.b	$B(a5),d0
		jsr	sub_72C4E(pc)
		movea.l	a3,a5

loc_72C22:				; CODE XREF: ROM:00072C04j
		addq.w	#8,sp
		rts
; ===========================================================================

loc_72C26:				; CODE XREF: ROM:00072AA0j
		moveq	#0,d0
		move.b	(a4)+,d0
		move.b	d0,$B(a5)
		btst	#2,(a5)
		bne.w	locret_72CAA
		movea.l	$18(a6),a1
		tst.b	$E(a6)
		beq.s	sub_72C4E
		movea.l	$20(a5),a1
		tst.b	$E(a6)
		bmi.s	sub_72C4E
		movea.l	$20(a6),a1

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_72C4E:				; CODE XREF: ROM:00072C3Ej
					; ROM:00072C48j
					; DATA XREF: ...
		subq.w	#1,d0
		bmi.s	loc_72C5C
		move.w	#$19,d1

loc_72C56:				; CODE XREF: sub_72C4E+Aj
		adda.w	d1,a1
		dbf	d0,loc_72C56

loc_72C5C:				; CODE XREF: sub_72C4E+2j
		move.b	(a1)+,d1
		move.b	d1,$1F(a5)
		move.b	d1,d4
		move.b	#-$50,d0
		jsr	sub_72722(pc)
		lea	byte_72D18(pc),a2
		moveq	#$13,d3

loc_72C72:				; CODE XREF: sub_72C4E+2Cj
		move.b	(a2)+,d0
		move.b	(a1)+,d1
		jsr	sub_72722(pc)
		dbf	d3,loc_72C72
		moveq	#3,d5
		andi.w	#7,d4
		move.b	byte_72CAC(pc,d4.w),d4
		move.b	9(a5),d3

loc_72C8C:				; CODE XREF: sub_72C4E+4Cj
		move.b	(a2)+,d0
		move.b	(a1)+,d1
		lsr.b	#1,d4
		bcc.s	loc_72C96
		add.b	d3,d1

loc_72C96:				; CODE XREF: sub_72C4E+44j
		jsr	sub_72722(pc)
		dbf	d5,loc_72C8C
		move.b	#-$4C,d0
		move.b	$A(a5),d1
		jsr	sub_72722(pc)

locret_72CAA:				; CODE XREF: ROM:00072C32j
		rts
; End of function sub_72C4E

; ===========================================================================
byte_72CAC:	dc.b   8,  8,  8,  8	; 0
		dc.b  $A, $E, $E, $F	; 4

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_72CB4:				; CODE XREF: ROM:00072BAAj
					; DATA XREF: DoFadeOut:loc_72534t ...
		btst	#2,(a5)
		bne.s	locret_72D16
		moveq	#0,d0
		move.b	$B(a5),d0
		movea.l	$18(a6),a1
		tst.b	$E(a6)
		beq.s	loc_72CD8
		movea.l	$20(a6),a1
		tst.b	$E(a6)
		bmi.s	loc_72CD8
		movea.l	$20(a6),a1

loc_72CD8:				; CODE XREF: sub_72CB4+14j
					; sub_72CB4+1Ej
		subq.w	#1,d0
		bmi.s	loc_72CE6
		move.w	#$19,d1

loc_72CE0:				; CODE XREF: sub_72CB4+2Ej
		adda.w	d1,a1
		dbf	d0,loc_72CE0

loc_72CE6:				; CODE XREF: sub_72CB4+26j
		adda.w	#$15,a1
		lea	byte_72D2C(pc),a2
		move.b	$1F(a5),d0
		andi.w	#7,d0
		move.b	byte_72CAC(pc,d0.w),d4
		move.b	9(a5),d3
		bmi.s	locret_72D16
		moveq	#3,d5

loc_72D02:				; CODE XREF: sub_72CB4:loc_72D12j
		move.b	(a2)+,d0
		move.b	(a1)+,d1
		lsr.b	#1,d4
		bcc.s	loc_72D12
		add.b	d3,d1
		bcs.s	loc_72D12
		jsr	sub_72722(pc)

loc_72D12:				; CODE XREF: sub_72CB4+54j
					; sub_72CB4+58j
		dbf	d5,loc_72D02

locret_72D16:				; CODE XREF: sub_72CB4+4j
					; sub_72CB4+4Aj
		rts
; End of function sub_72CB4

; ===========================================================================
byte_72D18:	dc.b $30, $38, $34, $3C, $50, $58, $54,	$5C, $60, $68
					; DATA XREF: sub_72C4E+1Et
		dc.b $64, $6C, $70, $78, $74, $7C, $80,	$88, $84, $8C
byte_72D2C:	dc.b $40, $48, $44, $4C	; DATA XREF: sub_72CB4+36t
; ===========================================================================

loc_72D30:				; CODE XREF: ROM:00072AA4j
		bset	#3,(a5)
		move.l	a4,$14(a5)
		move.b	(a4)+,$18(a5)
		move.b	(a4)+,$19(a5)
		move.b	(a4)+,$1A(a5)
		move.b	(a4)+,d0
		lsr.b	#1,d0
		move.b	d0,$1B(a5)
		clr.w	$1C(a5)
		rts
; ===========================================================================

loc_72D52:				; CODE XREF: ROM:00072AA8j
		bset	#3,(a5)
		rts
; ===========================================================================

loc_72D58:				; CODE XREF: ROM:00072AACj
		bclr	#7,(a5)
		bclr	#4,(a5)
		tst.b	1(a5)
		bmi.s	loc_72D74
		tst.b	8(a6)
		bmi.w	loc_72E02
		jsr	sub_726FE(pc)
		bra.s	loc_72D78
; ===========================================================================

loc_72D74:				; CODE XREF: ROM:00072D64j
		jsr	sub_729A0(pc)

loc_72D78:				; CODE XREF: ROM:00072D72j
		tst.b	$E(a6)
		bpl.w	loc_72E02
		clr.b	0(a6)
		moveq	#0,d0
		move.b	1(a5),d0
		bmi.s	loc_72DCC
		lea	dword_722CC(pc),a0
		movea.l	a5,a3
		cmpi.b	#4,d0
		bne.s	loc_72DA8
		tst.b	$340(a6)
		bpl.s	loc_72DA8
		lea	$340(a6),a5
		movea.l	$20(a6),a1
		bra.s	loc_72DB8
; ===========================================================================

loc_72DA8:				; CODE XREF: ROM:00072D96j
					; ROM:00072D9Cj
		subq.b	#2,d0
		lsl.b	#2,d0
		movea.l	(a0,d0.w),a5
		tst.b	(a5)
		bpl.s	loc_72DC8
		movea.l	$18(a6),a1

loc_72DB8:				; CODE XREF: ROM:00072DA6j
		bclr	#2,(a5)
		bset	#1,(a5)
		move.b	$B(a5),d0
		jsr	sub_72C4E(pc)

loc_72DC8:				; CODE XREF: ROM:00072DB2j
		movea.l	a3,a5
		bra.s	loc_72E02
; ===========================================================================

loc_72DCC:				; CODE XREF: ROM:00072D8Aj
		lea	$370(a6),a0
		tst.b	(a0)
		bpl.s	loc_72DE0
		cmpi.b	#-$20,d0
		beq.s	loc_72DEA
		cmpi.b	#-$40,d0
		beq.s	loc_72DEA

loc_72DE0:				; CODE XREF: ROM:00072DD2j
		lea	dword_722CC(pc),a0
		lsr.b	#3,d0
		movea.l	(a0,d0.w),a0

loc_72DEA:				; CODE XREF: ROM:00072DD8j
					; ROM:00072DDEj
		bclr	#2,(a0)
		bset	#1,(a0)
		cmpi.b	#-$20,1(a0)
		bne.s	loc_72E02
		move.b	$1F(a0),($C00011).l

loc_72E02:				; CODE XREF: ROM:00072D6Aj
					; ROM:00072D7Cj ...
		addq.w	#8,sp
		rts
; ===========================================================================

loc_72E06:				; CODE XREF: ROM:00072AB0j
		move.b	#-$20,1(a5)
		move.b	(a4)+,$1F(a5)
		btst	#2,(a5)
		bne.s	locret_72E1E
		move.b	-1(a4),($C00011).l

locret_72E1E:				; CODE XREF: ROM:00072E14j
		rts
; ===========================================================================

loc_72E20:				; CODE XREF: ROM:00072AB4j
		bclr	#3,(a5)
		rts
; ===========================================================================

loc_72E26:				; CODE XREF: ROM:00072AB8j
		move.b	(a4)+,$B(a5)
		rts
; ===========================================================================

loc_72E2C:				; CODE XREF: ROM:00072ABCj
					; ROM:00072E4Cj ...
		move.b	(a4)+,d0
		lsl.w	#8,d0
		move.b	(a4)+,d0
		adda.w	d0,a4
		subq.w	#1,a4
		rts
; ===========================================================================

loc_72E38:				; CODE XREF: ROM:00072AC0j
		moveq	#0,d0
		move.b	(a4)+,d0
		move.b	(a4)+,d1
		tst.b	$24(a5,d0.w)
		bne.s	loc_72E48
		move.b	d1,$24(a5,d0.w)

loc_72E48:				; CODE XREF: ROM:00072E42j
		subq.b	#1,$24(a5,d0.w)
		bne.s	loc_72E2C
		addq.w	#2,a4
		rts
; ===========================================================================

loc_72E52:				; CODE XREF: ROM:00072AC4j
		moveq	#0,d0
		move.b	$D(a5),d0
		subq.b	#4,d0
		move.l	a4,(a5,d0.w)
		move.b	d0,$D(a5)
		bra.s	loc_72E2C
; ===========================================================================

loc_72E64:				; CODE XREF: ROM:00072AC8j
		move.b	#-$78,d0
		move.b	#$F,d1
		jsr	sub_7272E(pc)
		move.b	#-$74,d0
		move.b	#$F,d1
		bra.w	sub_7272E
; ===========================================================================
z80_Driver:	incbin z80.bin
			even
Music81:	include "Music/music/Mus81 - GHZ.asm"	
			even
Music82:	include "Music/music/Mus82 - LZ.asm"
			even
Music83:	include "Music/music/Mus83 - MZ.asm"
			even
Music84:	include "Music/music/Mus84 - SLZ.asm"
			even
Music85:	include "Music/music/Mus85 - SYZ.asm"
			even
Music86:	include "Music/music/Mus86 - SBZ.asm"
			even
Music87:	include "Music/music/Mus87 - Invincibility.asm"
			even
Music88:	include "Music/music/Mus88 - Extra Life.asm"
			even
Music89:	include "Music/music/Mus89 - Special Stage.asm"
			even
Music8A:	include "Music/music/Mus8A - Title Screen.asm"
			even
Music8B:	include "Music/music/Mus8B - Ending.asm"
			even
Music8C:	include "Music/music/Mus8C - Boss.asm"
			even
Music8D:	include "Music/music/Mus8D - FZ.asm"
			even
Music8E:	include "Music/music/Mus8E - Sonic Got Through.asm"
			even
Music8F:	include "Music/music/Mus8F - Game Over.asm"
			even
Music90:	include "Music/music/Mus90 - Continue Screen.asm"
			even
Music91:	;include "Music/music/Mus91 - Credits.asm"
			;even
		dc.b  $F,$94,  6,  3,  1,$33, $C,$3F,  0,  0,  0,$30,$F4,$12,  1,$78,  0, $B,  4,$2D,$F4,$14,  5,$D7,$F4,  8,  8,$1D,$F4,$20,  9,$39,$D0,  1,  0,  0, $A,$67,$D0,  3,  0,  0, $B,$58,  0,  3,  0,  4,$E2,  1,$80,$60,$EF,$1C,$E6,$F8,$E8,  6,$F8, $D,$7E,$E0,$C0,$E8; 0
		dc.b   0,$EF,  3,$F0, $D,  1,  7,  4,$80,$30,$F8,  0,$F3,$CD,$CB,$18,$C9, $C,$C8,$18,$C9, $C,$C8,$18,$C4,$54,$F8,  0,$E3, $C,$C2,$18,$C6, $C,$C4,$18,$C6, $C,$C4,$18,$BD,$24,$80,$60,$80,$80,$80,$F4,$E2,  1,$EA, $F,$EF,  5,$E6,  2,$80,  6,$C1,$C4,$C1,$C4,  9,$C6; 64
		dc.b $C8, $C,$C9,  6,$C8,$C6,$C4,  9,$C6,  6,$C4,  3,$C1,  6,$80,  6,$C6,$C9,$C6,$C9,  9,$CB,$CD, $C,$CE,  6,$CD,$CB,$C9, $C,$C6, $C,$CB,  4,$C9,$CB,$C9,$24,$E9,$F4,$E6,  9,$EF,  8,$80,$18,$C6,  6,$C8,$C9,$CD,$F8, $D,$74,$EF, $B,$E6,$EB,$80, $C,$C4,$C6,$D0,$F8; 128
		dc.b  $D,$A9,$CD,$1E,$D9,  6,$D5,$18,$80,$24,$E2,  1,$EA, $A,$EF, $F,$E9, $C,$E6, $B,$F8, $E,$6E,$E2,  1,$EA,  7,$80,$60,$E2,  1,$EA,  3,$80,$30,$EF,$17,$E6, $E,$80,  4,$CE,  8,$CD,  3,$80,$CB,$80,$C9,$80,$CB,$80,$C9,  4,$C6,$80,  2,$C7,$80,  4,$C7,  8,$C9,  3; 192
		dc.b $80,$C7,$80,$C6,  4,$C7,$80,  2,$C9, $E,$80,  6,$CD,  2,$80,  4,$CD, $C,$CE,$CD, $A,$CB,  2,$E2,  1,$EA,  4,$E6,$F5,$EF,$1A,$80,$60,$F8,  0,$2D,$E6,  9,$E1,  3,$EF,$18,$F0,  0,  1,  6,  4,$F8,  6,$D1,$E6,$EF,$EF,$1B,$E1,  2,$96,$6C,$E7,$60,$E2,  1,$F2,$C9; 256
		dc.b  $C,$C6,$18,$C9, $C,$C8,$18,$C9, $C,$C8,$18,$C4,$48,$C6, $C,$E3,$80, $C,$CA,$15,$80,  3,$CA,  6,$80,$CB, $F,$80,  3,$C8,$18,$80,  6,$CA,  6,$80,$CA,$80,$CA,$80,$C6,$80,$C4, $F,$80,  3,$C8,$18,$80,  6,$F7,  0,  2,$FF,$DA,$E3,$80,$60,$EF,$1D,$A7, $C,$A7,$B0; 320
		dc.b $B0,$AC,$AC,$AE,$AE,$A7,$A7,$AE,$AE,$AB,$AB,$AC,$AC,$A5,$A5,$AC,$AC,$AB,$AB,$AC,$AC,$A2,$A2,$A2,$A2,$A7,$A7,$A7,$A9,$F7,  0,  2,$FF,$DB,$EF,  0,$E8,  5,$AA, $C,$F8,  2,$6A,$E8,  5,$A9, $C, $C, $C, $C, $C,$E8,  0,$A5,$A7,$A9,$F7,  0,  2,$FF,$E8,$E8,  5,$AA; 384
		dc.b $F8,  2,$52,$E8,  5,$A9,$F8,  2,$4C,$E8,  5,$A7,$F8,  2,$46,$E8,  5,$A5, $C, $C, $C, $C, $C,$E8,  0,$A0,$A2,$A4,$E8,  5,$A5,$F7,  0,$18,$FF,$FB,$E8,  0,$A5,  6,$80,$A5, $C,$A2,  6,$80,$A2, $C,$A3,  6,$80,$A3, $C,$A4,  6,$80,$A4, $C,$EF,  6,$E9,$E8,$E6,  2; 448
		dc.b $B1, $F,$80,  3,$B5,$80,$B8,  9,$80,  3,$BA,  9,$80,  3,$BC, $F,$80,  3,$BA,$80,$B8,  9,$80,  3,$B5,  9,$80,  3,$E9,  5,$F7,  0,  2,$FF,$DE,$E9,$F6,$B1, $F,$80,  3,$B5,$80,$B8,  9,$80,  3,$B5,  9,$80,  3,$B1,  6,$80,$12,$B5,$18,$E6,  1,$EF,  9,$AE,  3,$80; 512
		dc.b $AE,  6,$B5,  3,$80,$B5,  6,$B3,  3,$80,$B3,  6,$B5,  3,$80,$B5,  6,$F7,  0,  2,$FF,$E8,$B3,  3,$80,$B3,  6,$BA,  3,$80,$BA,  6,$B6,  3,$80,$B6,  6,$BA,  3,$80,$BA,  6,$F7,  0,  2,$FF,$E8,$B0,  3,$80,$B0,  6,$B6,  3,$80,$B6,  6,$B3,  3,$80,$B3,  6,$B6,  3; 576
		dc.b $80,$B6,  6,$B5,  3,$80,$B5,  6,$BC,  3,$80,$BC,  6,$B9,  3,$80,$B9,  6,$BC,  3,$80,$BC,  6,$AE,  3,$80,$AE,  6,$B5,  3,$80,$B5,  6,$B1,  3,$80,$B1,  6,$B5,  3,$80,$B5,  6,$AE,  3,$80,  9,$80,$24,$E6,$F8,$B1,  6,$80,  3,$B1,$80,  6,$B1,$12,$80,  6,$B1,  2; 640
		dc.b $80,  1,$B1,  2,$80,  1,$AF,  6,$80,  3,$AF,  3,$80,  6,$AE,$12,$80,  6,$AE,  2,$80,  1,$AE,  2,$80,  1,$B3,  6,$80,  3,$B3,  6,$80,  3,$B3,  2,$80,  1,$B3,  2,$80,  1,$E9,$FF,$F7,  0,  4,$FF,$EA,$E9,  4,$AC,  6,$80,  3,$AC,$80,  6,$AC,$12,$80,  6,$AC,  2; 704
		dc.b $80,  1,$AC,  2,$80,  1,$B0,  6,$80,  3,$B0,$80,  6,$B0,$12,$80,  6,$B3,  2,$80,  1,$B0,  2,$80,  1,$B1,  6,$80,  3,$B1,$80,  6,$B1,$12,$80,  6,$B5,  2,$80,  1,$B6,  2,$80,  1,$B8,  6,$80,$AC,$24,$EF,$10,$E9, $C,$E6,  7,$E8,  6,$F8,  0,$E3,$E9,  6,$F8,  0; 768
		dc.b $DE,$E9,$FF,$F8,  0,$D9,$E9,  2,$F8,  0,$D4,$E9,$F9,$F7,  2,  2,$FF,$E8,$E8,  0,$E9,$F4,$E6,$FC,$EF,$14,$80,$30,$80,$30,$BA,  3,$80,$BA,$80,$B8,$80,$B8,$80,$B6,$80,$B6,$80,$B5,$80,$B5,  2,$80,$BB,$E6,  2,$80,  4,$BB,  8,$BD,  3,$80,$BB,$80,$BA,  6,$80,$BB; 832
		dc.b   4,$BA,$80,  2,$B8,$80,  4,$B8,  8,$BA,  3,$80,$B8,$80,$B6,$80,$B6,$80,$B8,  4,$B6,$80,  2,$B5,$80,  4,$B5,  8,$B5,  3,$80,$B5,$80,$BA,  9,$80,  3,$BA, $A,$B3,  2,$E9, $C,$E6,$FE,$EF,$19,$80,$60,$AE,  6,$80,$AE,$80,$A9,$80,$A9,$80,$AC,$12,$AB, $C,$AC,  6; 896
		dc.b $AB, $C,$AE,  6,$80,$AE,$80,$A9,$80,$A9,$80,$B3,$12,$B2, $C,$B3,  6,$B2, $C,$F7,  0,  2,$FF,$DA,$AC,  6,$80,$A9,$80,$AA,$80,$AB,$80,$AC,  6,$AC,  6,$A9,  6,$80,$AA,$80,$AC,$80,$A9,  6,$80,$A9,$80,$AD,$80,$AD,$80,$B0,  6,$80,$B0,$80,$B3,$80,$B3,$80,$80, $C; 960
		dc.b $AE,$12,$80,  6,$AE,$12,$AD,$12,$AE,  6,$80,$E6,$FD,$A2,$6C,$E7,$60,$F2,  0,  1, $C, $C, $C, $C, $C, $C,$E8,  0, $C,$E3,$B1,  3,$B1,$AC,$AC,$AE,$AE,$AC,$AC,$F7,  0,  2,$FF,$F3,$E3,$80,$60,$F7,  0,  8,$FF,$FA,$EF,$1F,$E6,  1,$E0,$40,$CB,  6,$CD,$CF,$D0,$CD; 1024
		dc.b $CF,$D0,$D2,$CF,$D0,$D2,$D4,$D2,$D4,$D5,$D7,$E0,$80,$D9,$E0,$40,$D5,$E6,  2,$F7,  0, $D,$FF,$F4,$E0,$C0,$EF,  2,$E6,$E5,$E9,$E8,$D0,  6,$D2,$D5, $C,$D2,$80,$4E,$80,$D0,  6,$D2,$D5, $C,$D9,$80,$4E,$80,$D0,  6,$D2,$D5, $C,$D2,$80,$36,$80,$D5,  6,$80,$12,$D2; 1088
		dc.b $18,$D0,  6,$80,$D2,$80,$D5,$80,$F4,$EF,  4,$E6,$FE,$C9,  1,$E7,$C8,$1B,$80,  8,$C7,  1,$E7,$C6,$1B,$80,  8,$F7,  0,  2,$FF,$EE,$C9,  1,$E7,$C8, $B,$80, $C,$C7,  1,$E7,$C6, $B,$80, $C,$CA,  1,$E7,$C9,$1B,$80,  8,$C9,  1,$E7,$C8,$24,$E7,$18,$E7,$5A,$80,  6; 1152
		dc.b $E9,$18,$80,$60,$80,$80,$30,$E9,$E8,$EF,  8,$E9, $C,$E6,  3,$E1,  2,$80,$18,$C6,  6,$C8,$C9,$CD,$F8,  9,$4F,$EF, $D,$E9, $C,$E6, $B,$80, $C,$C4,$C6,$D0,$F8,  9,$82,$EF, $A,$E6,$EC,$80,  6,$E1,$14,$C4,  1,$E7,$E1,  0,  2,$C6,  3,$E8,  5,$C9,  3,$C9,  6,$C6; 1216
		dc.b   3,$C9,$E8,  0,$C9,$E6,$FC,$E9,$33,$EF, $E,$B4,  3,$E6,  7,$B4,$E6,  7,$B4,$E6,  7,$B4,$EF, $A,$E6,$EF,$E9,$CD,$CD,  3,$CE,$D0,$80,  9,$E1,$EC,$D5,  1,$E7,$E1,  0,$F0,$2C,  1,  4,  4,$D5,$23,$F4,$EF, $F,$E6,$FF,$E1,  3,$F8, $A, $B,$E1,  0,$EF,$15,$E6,  9; 1280
		dc.b $80,$30,$80,$30,$80,$2E,$C2,  2,$80,  4,$C2,  8,$C2,  3,$80,$C2,$80,$C1,  3,$80,$13,$BF,  2,$80,  4,$BF,  8,$BF,  3,$80,$BF,$80,$BD,  3,$80,$15,$80,  4,$D2,  8,$D0,  3,$80,$D0,$80,$CE,$80,$CE,$80,$CD,  4,$CE,  2,$CD,  4,$CB,  2,$EF, $A,$E6,$F9,$80,$60,$CD; 1344
		dc.b   6,$80,$CD,$80,$CA,$80,$CA,$80,$CB,$12,$CB,$1E,$CD,  6,$80,$CD,$80,$CA,$80,$CA,$80,$D0,$12,$D0,$1E,$F7,  0,  2,$FF,$E2,$80, $C,$CB,$12,$80,  6,$CB,$80,$CA,$12,$CB,$CA, $C,$C5,$18,$C8,$CB,$D1,$80, $C,$CD,$80,$CD,$12,$CC,$CD,  6,$80,$EF,$19,$E6,$F8,$E1,  3; 1408
		dc.b $A2,$6C,$E7,$60,$F2,$CB,  6,$CD,$CF,$D0,$CD,$CF,$D0,$D2,$CF,$D0,$D2,$D4,$D2,$D4,$D5,$D7,$E3,$EF,$20,$80,$60,$E6,  8,$F8,  1,$2D,$C3, $C,$C3,$80,$80,$C6,$C6,$80,$80,$F8,  1,$21,$C6,$24,$24,$18,$E0,$80,$F8,  1,$25,$E6,$F2,$C5,  1,$E7,$C4,$1B,$80,  8,$C3,  1; 1472
		dc.b $E7,$C2,$1B,$80,  8,$F7,  0,  2,$FF,$EE,$C5,  1,$E7,$C4, $B,$80, $C,$C3,  1,$E7,$C2, $B,$80, $C,$C7,  1,$E7,$C6,$1B,$80,  8,$C5,  1,$E7,$C4,$24,$E7,$18,$E7,$5A,$80,  6,$E9,$18,$80,$60,$80,$80,$5A,$E0,$C0,$EF, $A,$E9,$F4,$E6,  5,$D4,  9,$80,  3,$D4,$80,$D5; 1536
		dc.b   6,$80,$D4, $C,$80,  6,$F7,  0,  2,$FF,$EF,$80,$12,$D5,  3,$80, $F,$D5,  3,$80,$1B,$D5,  3,$80, $F,$D5,  3,$80,  9,$CE,  9,$80,  3,$CE,$80,$D2,  6,$80,$CE, $C,$80,  6,$D1,  9,$80,  3,$D1,$80,$D4,  6,$80,$D1, $C,$80,  6,$80,$80, $C,$D5,  3,$80, $F,$D5,  3; 1600
		dc.b $80, $F,$D5,  3,$80,$2D,$E9,$F4,$E6,  3,$EF, $C,$E0,$80,$F8,  8,$54,$EF,$11,$E6,$F6,$E9,$18,$F8,  0,$BE,$80, $C,$E1,$EC,$C6,  2,$E1,  0,$E7, $A,$80,  3,$C6,$80,$80,$C6,$80,  9,$F8,  0,$A9,$E1,$EC,$C6,  2,$E1,  0, $A,$80,  6,$F0,$18,  1,  7,  4,$E1,$E2,$C6; 1664
		dc.b   2,$E7,$E1,  0,$1C,$E1,  0,$E1,  3,$F8,  0,$BD,$E1,  0,$E0,$C0,$EF, $A,$E6,$F5,$80,$60,$CA,  6,$80,$CA,$80,$C6,$80,$C6,$80,$C8,$12,$C8,$1E,$CA,  6,$80,$CA,$80,$C6,$80,$C6,$80,$CB,$12,$CB,$1E,$F7,  0,  2,$FF,$E2,$EF,$18,$E1,  3,$E6,  8,$F8,  1,  5,$EF,$19; 1728
		dc.b $E6,$F0,$F0,  0,  1,  6,  4,$A2,$6C,$E7,$60,$F2,$C8,$24,$24,$18,$C6,$24,$24,$18,$C4,$24,$24,$18,$E3,$EF,  2,$E9,$E8,$E6, $D,$F8,  0,$26,$BF,$BF,$F7,  0,  2,$FF,$F7,$F8,  0,$1C,$B5,$B5,$BD,$BD,$BA,$BA,$B6,$B6,$B3,$B3,$BC,$BC,$E6,  3,$E9, $C,$EF,  1,$D0,$18; 1792
		dc.b $D2,$D4,$E9,$F4,$EF,  4,$E3,$C1, $C,$C1,$BD,$BD,$BA,$BA,$B6,$B6,$BF,$BF,$BC,$BC,$B8,$B8,$E3,$80, $C,$E1,$EC,$C4,  2,$E1,  0,$E7,  6,$80,  1,$C4,  3,$80,$18,$80, $C,$E1,$EC,$CA,  2,$E1,  0,$E7,  6,$80,  1,$CA,  3,$80,$18,$80, $C,$E1,$EC,$C9,  2,$E1,  0,$E7; 1856
		dc.b   6,$80,  1,$C9,  3,$80,$18,$E3,$E6,  8,$EF,$16,$80,$30,$80,$30,$E5,  1,$F8,  0,$35,$E5,  2,$EF,$12,$F0,  1,  1,  1,  4,$CB,  2,$80,  4,$CB,  8,$CB,  3,$80,$CB,$80,$C9,$80,$D2,$80,$CE,$80,  7,$C7,  2,$80,  4,$C7,  8,$C7,  3,$80,$C7,$80,$C6,  3,$80,$13,$C6; 1920
		dc.b  $E,$CA, $C,$CD,$D6, $A,$D7,  2,$E3,$AF,  1,$E7,$AE,  4,$80,  7,$AF,  1,$E7,$AE,  4,$80,  7,$B1,  1,$E7,$B0,  4,$80,  7,$B1,  1,$E7,$B0,  4,$80,  7,$B2,  1,$E7,$B1,  4,$80,  7,$B2,  1,$E7,$B1,  4,$80,  7,$B3,  1,$E7,$B2,  4,$80,  7,$B3,  1,$E7,$B2,  4,$80; 1984
		dc.b   3,$E3,$80, $C,$D0,$D4,$D7,$DB,$80,  6,$DB, $C,$DC,  6,$DB, $C,$DD,$54,$80, $C,$DE,$80,$DE,$80,$12,$DD,$DE, $C,$E3,$EF,$20,$80,$60,$E6,$F0,$F8,  1,  7,$BF, $C, $C,$80,$18,$C3, $C, $C,$80,$18,$F8,  0,$FA,$C3,$24,$24,$18,$E0,$40,$F8,$FE,$DE,$E6,$F2,$C2,  1; 2048
		dc.b $E7,$C1,$1B,$80,  8,$C0,  1,$E7,$BF,$1B,$80,  8,$F7,  0,  2,$FF,$EE,$C2,  1,$E7,$C1, $B,$80, $C,$C0,  1,$E7,$BF, $B,$80, $C,$C3,  1,$E7,$C2,$1B,$80,  8,$C2,  1,$E7,$C1,$24,$E7,$18,$E7,$5A,$80,  6,$E9,$18,$E0,$C0,$E6,  3,$E9, $C,$EF,  7,$80,$4E,$B8,  3,$BA; 2112
		dc.b $BD,$80,$BA,$80,$51,$C6,  3,$C2,$BD,$80,$C2,$80,$5D,$EF, $A,$E9,$E8,$E6,  2,$D0,  9,$80,  3,$D0,$80,$D2,  6,$80,$D0, $C,$80,  6,$F7,  0,  2,$FF,$EF,$80,$12,$D2,  3,$80, $F,$D2,  3,$80,$1B,$D2,  3,$80, $F,$D2,  3,$80,  9,$CB,  9,$80,  3,$CB,$80,$CE,  6,$80; 2176
		dc.b $CB, $C,$80,  6,$CD,  9,$80,  3,$CD,$80,$D1,  6,$80,$CD, $C,$80,$18,$D2,  3,$80, $F,$D2,  3,$80, $F,$D2,  3,$80,$2D,$EF, $C,$E0,$40,$E9,$F4,$E6,  3,$F8,  5,$A8,$EF,$12,$E9,$24,$E6,$F4,$F8,  6,$7C,$CD,$CE,$D0,$F8,  6,$76,$D0,$CE,$CD,$E9,$F4,$F8,$FE,$8A,$E0; 2240
		dc.b $C0,$EF,$1A,$E1,  3,$E6,$F8,$80,$60,$F8,$F8,$45,$E6,  0,$EF,$1A,$80,$60,$80, $C,$CD,  6,$80,$D4,$CD,  6,$80, $C,$CD,  6,$80,$D4,$CD,  6,$80,$18,$E6,  5,$80, $C,$AE,$80,$AE,$F2,$C4,$24,$24,$18,$C3,$24,$24,$18,$C1,$24,$24,$18,$E3,$80,$60,$F5,  8,$EC,  3,$E8; 2304
		dc.b   6,$F8,  4,$77,$F5,  1,$E8,  0,$EC,$FD,$80,$18,$C9,  6,$80,$1E,$C9, $C,$80,$18,$80,$18,$C8,  6,$80,$1E,$C8, $C,$80,$18,$F7,  0,  3,$FF,$E8,$80,$18,$C6,  6,$80,$1E,$C6, $C,$80,$18,$80,$18,$C4,  6,$80,$1E,$C4, $C,$80,$18,$F5,  5,$F0, $E,  1,  1,  3,$E8,$10; 2368
		dc.b $C1,$24,$BF,$C1,$BF,$C1, $C,$80,$BF,$80,$C2,$24,$E8,  0,$C1,$60,$E7,$3C,$F4,$F5,  9,$EC,  1,$80,  6,$CD, $C,$CD,$CD,$CD,  6,$80,$CD, $C,$CD,$CD,  3,  9,  6,$E9,  5,$F7,  0,  2,$FF,$EA,$E9,$F6,$80,  6,$CD, $C,$CD,$CD,$CD,  6,$80,$30,$F5,  8,$EC,  1,$F8,  4; 2432
		dc.b $91,$80,  2,$80,$30,$EC,  3,$E9,$F4,$F5,  5,$F8,  5,$17,$E9, $C,$EC,$FC,$F5,  0,$F8,  0,$72,$80, $C,$C2,$80,  3,$C2,$80,$80,$C2,$80,  9,$F8,  0,$64,$C2, $C,$80,  6,$C2,$1E,$F5,  6,$EC,  4,$80,$30,$80,$30,$E5,  1,$F8,$FD,$D2,$E5,  2,$CB,  2,$80,  4,$CB,  8; 2496
		dc.b $CB,  3,$80,$CB,$80,$C9,$80,$D2,$80,$CE,$80,  7,$C7,  2,$80,  4,$C7,  8,$C7,  3,$80,$C7,$80,$C6,  3,$80,$13,$C6, $E,$CA, $C,$CD,$D6, $A,$D7,  2,$80,$60,$80,$80,$80,$80,$EC,$FF,$80, $C,$C8,$12,$80,  6,$C8,$80,$C6,$12,$C8,$C6, $C,$C1,$18,$C5,$C8,$CB,$80, $C; 2560
		dc.b $CA,$80,$CA,$12,$C9,$CA,  6,$F2,$80, $C,$C1,  7,$80,  2,$C1,  3,$80,$18,$80, $C,$C7,  7,$80,  2,$C7,  3,$80,$18,$80, $C,$C6,  7,$80,  2,$C6,  3,$80,$18,$E3,$80,$60,$F7,  0,  8,$FF,$FA,$80,  2,$F8,$FB,$53,$EC,$FE,$F5,  1,$80,$16,$CD,  6,$80,$1E,$CD, $C,$80; 2624
		dc.b $18,$80,$18,$CB,  6,$80,$1E,$CB, $C,$80,$18,$80,$18,$CD,  6,$80,$1E,$CD, $C,$80,$18,$80,$18,$CB,  6,$80,$1E,$CB, $C,$80,$18,$F7,  0,  2,$FF,$E8,$80,$18,$C9,  6,$80,$1E,$C9, $C,$80,$18,$80,$18,$C8,  6,$80,$1E,$C8, $C,$80,$18,$E8,  6,$F5,  6,$D5, $C,$D4,$D2; 2688
		dc.b $D0,$F7,  0,  8,$FF,$F7,$E8,  0,$F5,  9,$EC,  1,$80,  6,$D0, $C,$D0,$D0,$D0,  6,$80,$D0, $C,$D0,$D0,  3,  9,  6,$E9,  5,$F7,  0,  2,$FF,$EA,$E9,$F6,$80,  6,$D0, $C,$D0,$D0,$D0,  6,$80,$30,$80,  2,$E1,  1,$EC,  3,$F8,  3,$5A,$E1,  0,$80,$30,$EC,  1,$E9,$F4; 2752
		dc.b $F5,  5,$F8,  3,$8B,$E9, $C,$EC,$FD,$E8,  3,$D5,  3,$D5,$DC,$D5,$DA,$D5,$D9,$D5,$F7,  0,  2,$FF,$F3,$D3,$D3,$DA,$D3,$D8,$D3,$D6,$D3,$F7,  0,  2,$FF,$F4,$D2,$D2,$D9,$D2,$D7,$D2,$D5,$D2,$F7,  0,  4,$FF,$F4,$F7,  1,  2,$FF,$D4,$80,$60,$80,$80,$80,$80,$80,$80; 2816
		dc.b $80,$80,$E6, $C,$E1,  2,$EC,  2,$80, $C,$CD,  6,$80,$D4,$CD,  6,$80, $C,$CD,  6,$80,$D4,$CD,$F2,$F3,$E7,$E8,  4,$C6, $C,$F7,  0,$48,$FF,$FA,$E8,  6, $C,$F7,  0,$60,$FF,$FB,$EC,$FF,$F8,  2,$AE,$E8, $E, $C,$E8,  3,  6,  6,  3,  3,  6,  3,  3,  6,$F8,  2,$9E; 2880
		dc.b $F7,  0,  4,$FF,$F9,$F5,  9,$EC,  1,$E9, $B,$AE,  6,$AE,$B5,$B5,$B3,$B3,$B5,$B5,$F7,  0,  2,$FF,$F3,$B3,$B3,$BA,$BA,$B6,$B6,$BA,$BA,$F7,  0,  2,$FF,$F4,$B0,$B0,$B6,$B6,$B3,$B3,$B6,$B6,$B5,$B5,$BC,$BC,$B9,$B9,$BC,$BC,$AE,$AE,$B5,$B5,$B1,$B1,$B5,$B5,$AE,  6; 2944
		dc.b $80,$1E,$E8,  2,$E9,$F5,$F5,  4,$C6,  3,  3,$EC,  2,$F5,  8,$E8,  8,  6,$E8,  3,$EC,$FE,$F7,  0,$1E,$FF,$EC,$80,$24,$F5,  4,  3,  3,$EC,  2,$F5,  8,$E8,  8,  6,$E8,  3,$EC,$FE,$F7,  0,$20,$FF,$ED,$80,$30,$E8,  1,$F5,  4,$EC,  3,$C6,  2,$80,$C6,$F7,  0,  8; 3008
		dc.b $FF,$F8,$80,  4,$C6,  2,$F7,  0,  8,$FF,$F8,$EC,$FF,$C6,  2,$80,$C6,$F7,  0,$18,$FF,$F8,$EC,$FE,$C6,  4,$80,$C6,$F7,  0,  8,$FF,$F8,$E8,  3, $C,$E8, $C, $C,$E8,  3, $C,$E8, $C, $C,$F7,  0, $D,$FF,$F0,$E8,  3,  6,$E8, $E,$12,$E8,  3, $C,$E8, $F, $C,$F2,$82; 3072
		dc.b   6,$82,$82,$82,$82, $C,  6, $C,  6, $C, $C, $C,$F8,  1,$20,$81,$18,$82, $C,$82,$81,$18,$82, $C,$82,$F8,  1,$13,$81, $C,$82,$82,$82,$82,$82,$82,$82,$81,$18,$82, $C,$81,$18, $C,$82,$18,$F7,  0,  7,$FF,$F3,$81,$18,$82, $C,$81,$18,$82, $C, $C, $C,$81,$18,$82; 3136
		dc.b  $C,$81,$18, $C,$82,$18,$F7,  0,  3,$FF,$F3,$81,$18,$82, $C,$81,$18,$82, $C,$82,$82,$EB,  2,$81,$12,$81,  6,$81, $C,$82,$F7,  0,  5,$FF,$F5,$81,$12,$81,  6,$81,  6,$82,$82,$82,$81, $C,$F7,  0,$18,$FF,$FA,$81, $C,$81,$81,$81,  6,$81,  2,$81,$82,$82, $C,$80; 3200
		dc.b $24,$81, $C,$81,$81,$81,$F7,  0,  7,$FF,$F7,$81, $C,$81,$82,  3,$82,$82,$82,$82,$82,$82,$82,$F8,  0,$A5,$88,  2,$81,  1,$89,  5,$82,  1,$88,  5,$89,  6,$F8,  0,$96,$89,  2,$82,  1,$88,  5,$82,  1,$89,  5,$82,  1,$88,  2,$82,  3,$82,  3,$82,$81,$81,$82,$82; 3264
		dc.b $81,$81,$81,$82,  9,$82,  6,  3,  3,$81,  9,  3,$82,  9,$81,  6,  6,  3,$82,  6,  3,  3,$82,  6,$82,$82,$82,$82,$82,$82,  4,  2,  4,$81,  2,$80,  4,$81,  8,$82,  6,$81,$81, $C,$82, $A,$81,  2,$F7,  0,  3,$FF,$EF,$EB,  1,$80,$18,$82,$14,$81,  4,$82, $C,$82; 3328
		dc.b $82, $C,  8,$81,  4,$81, $C,$82,$81,$82,$F7,  1,  3,$FF,$F7,$81, $C,$82,$81,  6,$80,  2,$82,$82,$82,  9,$82,  3,$F7,  0,  3,$FF,$E5,$81, $C,$82,$81,$82,$81,  6,$82,$12,$82, $C,$81,$F2,$81,$18,$82, $C,$81,$18,$81, $C,$82,$81,$F7,  0,  3,$FF,$F2,$E3,$81, $C; 3392
		dc.b $82,  9,$81,  6,  3,$81,  1,$88,  2,$89,  3,$82,  1,$88, $B,$81, $C,$82,  9,$81,  6,  3,$81,  1,$88,  2,$89,  3,$82,  1,$88, $B,$81, $C,$82,  9,$81,  6,  3,$81,  1,$88,  2,$89,  3,$82,  1,$88, $B,$81, $C,$82,  9,$81,  6,$82,  1,$E3,$F8,  0, $F,$C3,$BF,$C1; 3456
		dc.b $C3,$BF,$F8,  0,  7,$C8,$C6,$C8,$C9,$CB,$E3,$C8, $C,$C4,$C8,$CB,$C9,$C8,$C6,$C8,$C6,$C3,$C6,$C9,$C8,$C6,$C4,$C6,$C4,$C1,$C4,$C8,$C6,$C4,$C3,$C4,$C3,$C4,$C6,$E3,$80, $C,$D0,$D4,$D7,$DB, $C,$80,  6,$DB, $C,$DC,  6,$DB, $C,$D9,$60,$80, $C,$D0,$D4,$D7,$DB, $C; 3520
		dc.b $80,  6,$DB, $C,$DC,  6,$DB, $C,$DD,$5D,$80,  3,$DE,$12,$80,  6,$DE,$12,$80,  6,$80,  6,$DD,$12,$DE,  6,$80,$12,$E3,$E8, $E, $C,$E8,  3,  6,  6,  6,  6,  6,  6,$E3,$D4,  9,$80,  3,$D4,  6,$D2,$F7,  0,  3,$FF,$F5,$D4,$D2,$CD,$C9,$D0, $C,$D2,  6,$E7,$CE,$4D; 3584
		dc.b $80,  1,$D2,$24,$D4, $C,$D1,$24,$D4,  9,$80,  3,$D4,$12,$D2,$1E,$E3,$80,$30,$80,$80,$DA,  3,$D7,$D2,$CE,$D7,$D2,$CE,$CB,$D2,$CE,$CB,$C6,$CE,$CB,$C6,$C2,$33,$80,$5E,$E3,$CD,$2A,$CD,  3,$CE,$D0,  9,$D2,$D3,  6,$D2, $C,$D0,$CE,$1E,$CE,  6,$CD,$CE,$1E,$CB, $C; 3648
		dc.b $CD,$CE,$2A,$CB,  3,$CD,$CE,  9,$D0,$D1,  6,$D0, $C,$CE,$E3,$F8,  0,$47,$CB,  6,$80,  3,$CB,$80,  6,$CA,$18,$80,  6,$CE,  6,$80,  3,$CD,  6,$80,  3,$CB,$80,$F7,  0,  2,$FF,$F2,$CE,  6,$80,  3,$CD,  6,$80,  3,$CB,$18,$80,  6,$E9,$FE,$F8,  0,$1C,$E9,  3,$F8; 3712
		dc.b   0,$17,$E9,$FF,$80,  6,$E8,  8,$D0,  9,  9,  9,  9,$E8,  5,  3,  3,$E8,  0,$80, $C,$CE,$24,$E3,$CD,  6,$80,  3,$CD,$80,  6,$CD,$18,$80,  6,$E3,$D0,  6,$80,  3,$D0,$80,  6,$D0,$18,$80,  6,$CE,  6,$80,  3,$CE,$80,  6,$CD,$18,$80,  6,$D2,  6,$80,  3,$D0,  6; 3776
		dc.b $80,  3,$CE,$80,$D2,  6,$80,  3,$D0,  6,$80,  3,$CE,$80,$D2,  6,$80,  3,$D0,  6,$80,  3,$CE,$18,$80,  6,$CE,  6,$80,  3,$CE,$80,  6,$CE,$18,$80,  6,$D1,  6,$80,  3,$D1,$80,  6,$D1,$18,$80,  6,$80,  6,$E8,  8,$D4,  9,  9,  9,  9,$E8,  5,  3,  3,$E8,  0,$80; 3840
		dc.b  $C,$D2,$24,$E3,$F8,  0,$11,$D0,$12,$D2,  6,$D0,$12,$CD, $C,$F8,  0,  6,$D0,$30,$80,  6,$E3,$D0,$1E,$CD,  6,$C9,$D5,$D3, $C,$D5,  6,$D3, $C,$D0,  6,$D3,$D2,$24,$CD,  6,$CE,$E3,$80,  3,$CD,$C9,  6,  6,$C4,$C9,  9,$CD,  9,$80,  6,$80,  3,$CE,$CA,  6,  6,$C7; 3904
		dc.b $CA,  9,$CE,  9,$80,  6,$80,  3,$CD,$C9,  6,  6,$C6,$C9,  9,$CD, $F,$CB, $C,$E3,$20,$36,$35,$30,$31,$DF,$DF,$9F,$9F,  7,  6,  9,  6,  7,  6,  6,  8,$20,$10,$10,$F8,$19,$37,$13,$80,$2C,$72,$78,$34,$34,$1F,$12,$1F,$12,  0, $A,  0, $A,  0,  0,  0,  0, $F,$1F; 3968
		dc.b  $F,$1F,$16,$80,$17,$80,$2C,$74,$74,$34,$34,$1F,$12,$1F,$1F,  0,  0,  0,  0,  0,  1,  0,  1, $F,$3F, $F,$3F,$16,$80,$17,$80,  4,$72,$42,$32,$32,$12,$12,$12,$12,  0,  8,  0,  8,  0,  8,  0,  8, $F,$1F, $F,$1F,$23,$80,$23,$80,$2C,$74,$74,$34,$34,$1F,$12,$1F; 4032
		dc.b $1F,  0,  7,  0,  7,  0,  7,  0,  7,  0,$38,  0,$38,$16,$80,$17,$80,$31,$34,$35,$30,$31,$DF,$DF,$9F,$9F, $C,  7, $C,  9,  7,  7,  7,  8,$2F,$1F,$1F,$2F,$17,$32,$14,$80,$18,$37,$30,$30,$31,$9E,$DC,$1C,$9C, $D,  6,  4,  1,  8, $A,  3,  5,$BF,$BF,$3F,$2F,$2C; 4096
		dc.b $22,$14,$80,$3C,$31,$52,$50,$30,$52,$53,$52,$53,  8,  0,  8,  0,  4,  0,  4,  0,$1F, $F,$1F, $F,$1A,$80,$16,$80,$22, $A,$13,  5,$11,  3,$12,$12,$11,  0,$13,$13,  0,  3,  2,  2,  1,$1F,$1F, $F, $F,$1E,$18,$26,$81,$3A,$61,$3C,$14,$31,$9C,$DB,$9C,$DA,  4,  9; 4160
		dc.b   4,  3,  3,  1,  3,  0,$1F, $F, $F,$AF,$21,$47,$31,$80,$3A,  1,  7,  1,  1,$8E,$8E,$8D,$53, $E, $E, $E,  3,  0,  0,  0,  0,$1F,$FF,$1F, $F,$18,$28,$27,$80,$34,$33,$41,$7E,$74,$5B,$9F,$5F,$1F,  4,  7,  7,  8,  0,  0,  0,  0,$FF,$FF,$EF,$FF,$23,$90,$29,$97; 4224
		dc.b   4,$72,$42,$32,$32,$1F,$1F,$1F,$1F,  0,  0,  0,  0,  0,  0,  0,  0,  0,  7,  0,  7,$23,$80,$23,$80,$3C,$38,$74,$76,$33,$10,$10,$10,$10,  2,  7,  4,  7,  3,  9,  3,  9,$2F,$2F,$2F,$2F,$1E,$80,$1E,$80,$F4,  6,  4, $F, $E,$1F,$1F,$1F,$1F,  0,  0, $B, $B,  0; 4288
		dc.b   0,  5,  8, $F, $F,$FF,$FF,$15,$85,  2,$8A,$29,$36,$74,$71,$31,  4,  4,  5,$1D,$12, $E,$1F,$1F,  4,  6,  3,  1,$5F,$6F, $F, $F,$27,$27,$2E,$80,  8, $A,$70,$30,  0,$1F,$1F,$5F,$5F,$12, $E, $A, $A,  0,  4,  4,  3,$2F,$2F,$2F,$2F,$24,$2D,$13,$80,$3D,  1,  1; 4352
		dc.b   1,  1,$8E,$52,$14,$4C,  8,  8, $E,  3,  0,  0,  0,  0,$1F,$1F,$1F,$1F,$1B,$80,$80,$9B,$3D,  1,  2,  0,  1,$1F, $E, $E, $E,  7,$1F,$1F,$1F,  0,  0,  0,  0,$1F, $F, $F, $F,$17,$8D,$8C,$8C,$3C,$31,$52,$50,$30,$52,$53,$52,$53,  8,  0,  8,  0,  4,  0,  4,  0; 4416
		dc.b $10,  7,$10,  7,$1A,$80,$16,$80,$18,$37,$30,$30,$31,$9E,$DC,$1C,$9C, $D,  6,  4,  1,  8, $A,  3,  5,$BF,$BF,$3F,$2F,$32,$22,$14,$80,$3A,  1,  1,  1,  2,$8D,  7,  7,$52,  9,  0,  0,  3,  1,  2,  2,  0,$5F, $F, $F,$2F,$18,$22,$18,$80,$2C,$74,$74,$34,$34,$1F; 4480
		dc.b $1F,$1F,$1F,  0,  0,  0,  0,  0,  1,  0,  1, $F,$3F, $F,$3F,$16,$80,$17,$80,  4,$37,$72,$77,$49,$1F,$1F,$1F,$1F,  7, $A,  7, $D,  0,  0,  0,  0,$10,  7,$10,  7,$23,$80,$23,$80,$3D,  1,  2,  2,  2,$14, $E,$8C, $E,  8,  5,  2,  5,  0,  0,  0,  0,$1F,$1F,$1F; 4544
		dc.b $1F,$1A,$80,$80,$80,$20,$36,$35,$30,$31,$DF,$DF,$9F,$9F,  7,  6,  9,  6,  7,  6,  6,  8,$2F,$1F,$1F,$FF,$19,$37,$13,$80,$3A,$51,  8,$51,  2,$1E,$1E,$1E,$10,$1F,$1F,$1F, $F,  0,  0,  0,  2, $F, $F, $F,$1F,$18,$24,$22,$81,$3A,$32,$56,$32,$42,$8D,$4F,$15,$52; 4608
		dc.b   6,  8,  7,  4,  2,  0,  0,  0,$1F,$1F,$2F,$2F,$19,$20,$2A,$80,$3A,  1,  7,  1,  1,$8E,$8E,$8D,$53, $E, $E, $E,  3,  0,  0,  0,  0,$1F,$FF,$1F, $F,$18,$28,$27,$80,  8, $A,$70,$30,  0,$1F,$1F,$5F,$5F,$12, $E, $A, $A,  0,  4,  4,  3,$2F,$2F,$2F,$2F,$24,$2D; 4672
		dc.b $13,$80,$3A,  1,  7,  1,  1,$8E,$8E,$8D,$53, $E, $E, $E,  3,  0,  0,  0,  7,$1F,$FF,$1F, $F,$18,$28,$27,$80,$36, $F,  1,  1,  1,$1F,$1F,$1F,$1F,$12,$11, $E,  0,  0, $A,  7,  9,$FF, $F,$1F, $F,$18,$80,$80,$80,$3A,  3,$19,  1,$53,$1F,$DF,$1F,$9F, $C,  2, $C; 4736
		dc.b   5,  4,  4,  4,  7,$1F,$FF, $F,$2F,$1D,$36,$1B,$80,  0; 4800
Music92:	include "Music/music/Mus92 - Drowning.asm"
			even
Music93:	include "Music/music/Mus93 - Get Emerald.asm"
			even
; ---------------------------------------------------------------------------
; Sound	effect pointers
; ---------------------------------------------------------------------------
SoundIndex:	dc.l SoundA0, SoundA1, SoundA2,	SoundA3, SoundA4, SoundA5
					; DATA XREF: ROM:Go_SoundIndexo
		dc.l SoundA6, SoundA7, SoundA8,	SoundA9, SoundAA, SoundAB
		dc.l SoundAC, SoundAD, SoundAE,	SoundAF, SoundB0, SoundB1
		dc.l SoundB2, SoundB3, SoundB4,	SoundB5, SoundB6, SoundB7
		dc.l SoundB8, SoundB9, SoundBA,	SoundBB, SoundBC, SoundBD
		dc.l SoundBE, SoundBF, SoundC0,	SoundC1, SoundC2, SoundC3
		dc.l SoundC4, SoundC5, SoundC6,	SoundC7, SoundC8, SoundC9
		dc.l SoundCA, SoundCB, SoundCC,	SoundCD, SoundCE, SoundCF
SoundD0Index:	dc.l SoundD0		; DATA XREF: ROM:Go_SoundD0o
SoundA0:	include "Music/sfx/SndA0 - Jump.asm"
			even
SoundA1:	include "Music/sfx/SndA1 - Lamppost.asm"
			even
SoundA2:	include "Music/sfx/SndA2.asm"
			even	
SoundA3:	include "Music/sfx/SndA3 - Death.asm"
			even	
SoundA4:	include "Music/sfx/SndA4 - Skid.asm"
			even
SoundA5:	include "Music/sfx/SndA5.asm"
			even	
SoundA6:	include "Music/sfx/SndA6 - Hit Spikes.asm"
			even	
SoundA7:	include "Music/sfx/SndA7 - Push Block.asm"
			even	
SoundA8:	include "Music/sfx/SndA8 - SS Goal.asm"
			even	
SoundA9:	include "Music/sfx/SndA9 - SS Item.asm"
			even	
SoundAA:	include "Music/sfx/SndAA - Splash.asm"
			even	
SoundAB:	include "Music/sfx/SndAB.asm"
			even	
SoundAC:	include "Music/sfx/SndAC - Hit Boss.asm"
			even	
SoundAD:	include "Music/sfx/SndAD - Get Bubble.asm"
			even
SoundAE:	include "Music/sfx/SndAE - Fireball.asm"
			even
SoundAF:	include "Music/sfx/SndAF - Shield.asm"
			even
SoundB0:	include "Music/sfx/SndB0 - Saw.asm"
			even
SoundB1:	include "Music/sfx/SndB1 - Electric.asm"
			even
SoundB2:	include "Music/sfx/SndB2 - Drown Death.asm"
			even
SoundB3:	include "Music/sfx/SndB3 - Flamethrower.asm"
			even
SoundB4:	include "Music/sfx/SndB4 - Bumper.asm"
			even
SoundB5:	include "Music/sfx/SndB5 - Ring.asm"
			even
SoundB6:	include "Music/sfx/SndB6 - Spikes Move.asm"
			even
SoundB7:	include "Music/sfx/SndB7 - Rumbling.asm"
			even
SoundB8:	include "Music/sfx/SndB8.asm"
			even
SoundB9:	include "Music/sfx/SndB9 - Collapse.asm"
			even
SoundBA:	include "Music/sfx/SndBA - SS Glass.asm"
			even
SoundBB:	include "Music/sfx/SndBB - Door.asm"
			even
SoundBC:	include "Music/sfx/SndBC - Teleport.asm"
			even
SoundBD:	include "Music/sfx/SndBD - ChainStomp.asm"
			even
SoundBE:	include "Music/sfx/SndBE - Roll.asm"
			even
SoundBF:	include "Music/sfx/SndBF - Get Continue.asm"
			even
SoundC0:	include "Music/sfx/SndC0 - Basaran Flap.asm"
			even
SoundC1:	include "Music/sfx/SndC1 - Break Item.asm"
			even
SoundC2:	include "Music/sfx/SndC2 - Drown Warning.asm"
			even
SoundC3:	include "Music/sfx/SndC3 - Giant Ring.asm"
			even
SoundC4:	include "Music/sfx/SndC4 - Bomb.asm"
			even
SoundC5:	include "Music/sfx/SndC5 - Cash Register.asm"
			even
SoundC6:	include "Music/sfx/SndC6 - Ring Loss.asm"
			even
SoundC7:	include "Music/sfx/SndC7 - Chain Rising.asm"
			even
SoundC8:	include "Music/sfx/SndC8 - Burning.asm"
			even
SoundC9:	include "Music/sfx/SndC9 - Hidden Bonus.asm"
			even
SoundCA:	include "Music/sfx/SndCA - Enter SS.asm"
			even
SoundCB:	include "Music/sfx/SndCB - Wall Smash.asm"
			even
SoundCC:	include "Music/sfx/SndCC - Spring.asm"
			even
SoundCD:	include "Music/sfx/SndCD - Switch.asm"
			even
SoundCE:	include "Music/sfx/SndCE - Ring Left Speaker.asm"
			even
SoundCF:	include "Music/sfx/SndCF - Signpost.asm"
			even
SoundD0:	include "Music/sfx/SndD0 - Waterfall.asm"
			even
SegaPCM:	incbin "Music/SegaPCM.bin"