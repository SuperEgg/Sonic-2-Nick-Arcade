Beta_1up:
	smpsHeaderStartSong 1
	smpsHeaderVoice	ExtraLife_Voices
	smpsHeaderChan  $06, $03
	smpsHeaderTempo	$02, $05
	smpsHeaderDAC   ExtraLife_DAC 
	smpsHeaderFM	ExtraLife_FM1,  $E8, $10 
	smpsHeaderFM	ExtraLife_FM2,  $E8, $10 
	smpsHeaderFM	ExtraLife_FM3,  $E8, $10  
	smpsHeaderFM	ExtraLife_FM4,  $E8, $10  
	smpsHeaderFM	ExtraLife_FM5,  $E8, $10  
	smpsHeaderPSG	ExtraLife_PSG1, $D0, $06, $00, sTone_05
	smpsHeaderPSG	ExtraLife_PSG3, $DC, $06, $00, sTone_05
	smpsHeaderPSG	ExtraLife_PSG3, $DC, $00, $00, sTone_04 
ExtraLife_FM4:	
		smpsAlterNote 	$03 
		smpsPan 		panRight, $00 
		smpsJump 		ExtraLife_Jump01 
ExtraLife_FM1:
		smpsPan 		panLeft, $00
	ExtraLife_Jump01:	
			smpsSetvoice	$00 
			smpsNoteFill	$06 
				dc.b 	$D9, $06, $03, $03, $06, $06 
			smpsNoteFill 	$00 
				dc.b 	$DB, $09, $D7, $D6, $06, $D9, $18  
			smpsStop 
ExtraLife_FM2:
		smpsSetvoice 	$01 
		smpsNoteFill 	$06 
		smpsFade 		$01 
			dc.b 	$D6, $06, $03, $03, $06, $06 
		smpsNoteFill $00 
			dc.b 	$D7, $09, $D4, $D2, $06, $D6, $18 
		smpsFade $01 
		smpsStop 
ExtraLife_FM5 
		smpsAlterNote 	$03 
		smpsPan 		panRight, $00 
		smpsJump  		ExtraLife_Jump00 
ExtraLife_FM3:
		smpsPan 		panLeft, $00 
	ExtraLife_Jump00: 
			smpsSetvoice $02 
				dc.b 	$BA, $0C, $80, $06, $BA, $B8, $80, $03 
				dc.b 	$B8, $06, $80, $03, $B8, $06, $BA, $18 
		smpsStop 
ExtraLife_PSG1: 
	smpsNoteFill 	$06 
		dc.b 	$D6, $06, $03, $03, $06, $06 
	smpsNoteFill 	$00 
		dc.b 	$D7, $09, $D4, $D2, $06, $D6, $18 
ExtraLife_PSG3:
		smpsStop 
ExtraLife_DAC: 
		dc.b S2dHiTimpani, $12, $06, S2dVLowTimpani, $09, $09, $06, S2dHiTimpani, $06 
		dc.b S2dLowTimpani, S2dHiTimpani, S2dLowTimpani, S2dHiTimpani, $0C, $E4 

ExtraLife_Voices:
		dc.b $3A 
		dc.b $01, $01, $07, $01,  $8E, $8D, $8E, $53,  $0E, $0E, $0E, $03
		dc.b $00, $00, $00, $00,  $1F, $1F, $FF, $0F,  $18, $16, $4E, $80;
ExtraLife_Voices1:	
		dc.b $3A
		dc.b $01, $01, $07, $01,  $8E, $8D, $8E, $53,  $0E, $0E, $0E, $03
		dc.b $00, $00, $00, $00,  $1F, $1F, $FF, $0F,  $18, $27, $28, $80;
ExtraLife_Voices2:	
		dc.b $3A
		dc.b $01, $01, $07, $01,  $8E, $8D, $8E, $53,  $0E, $0E, $0E, $03
		dc.b $00, $00, $00, $07,  $1F, $1F, $FF, $0F,  $18, $27, $28, $80;
	