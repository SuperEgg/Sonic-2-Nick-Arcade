Beta_Boss_Music:                       
	smpsHeaderStartSong 1
	smpsHeaderVoice	Beta_Boss_Voice
	smpsHeaderChan  $06, $03
	smpsHeaderTempo	$01, $09
	smpsHeaderDAC	Beta_Boss_DAC
	smpsHeaderFM	Beta_Boss_FM1, $0C, $08 
	smpsHeaderFM	Beta_Boss_FM2, $00, $0D 
	smpsHeaderFM	Beta_Boss_FM3, $00, $12 
	smpsHeaderFM	Beta_Boss_FM4, $00, $12  
	smpsHeaderFM	Beta_Boss_FM5, $00, $12 
	smpsHeaderPSG	Beta_Boss_PSG1, $E8, $04, $00, $0C 
	smpsHeaderPSG	Beta_Boss_PSG2, $E8, $06, $00, $0C  
	smpsHeaderPSG	Beta_Boss_PSG3, $E8, $08, $00, $0C

Beta_Boss_FM1:	
		smpsSetvoice 		$00 
		smpsNoteFill 		$09 
		dc.b 	$96, $0C, $A2, $A2, $96, $A2, $A2, $96, $A2 
		smpsNoteFill 		$00 
		dc.b 	$91, $9D, $91, $9D, $91, $9D, $91, $9D 
		smpsNoteFill 		$09 
		dc.b 	$96, $A2, $A2, $96, $A2, $A2, $96, $A2
		smpsNoteFill		$00
		dc.b 	$91, $9D, $93, $9F, $94, $A0, $95, $A1

	Beta_Boss_Loop01: 
			smpsCall 			Beta_Boss_Call01 
			dc.b 	$94, $0C, $A0, $06, $A0, $94, $0C, $A0, $06, $A0 
			smpsCall 			Beta_Boss_Call01 
			dc.b 	$91, $0C, $9D, $06, $9D, $91, $0C, $9D, $06, $9D 
			smpsLoop 			$00, $04, Beta_Boss_Loop01  
			smpsJump 			Beta_Boss_FM1
 
	Beta_Boss_Call01:
			dc.b 	$96, $0C, $A2, $06, $A2, $96, $0C, $A2, $06, $A2
			dc.b 	$96, $0C, $A2, $06, $A2, $96, $0C, $A2, $06, $A2
			dc.b 	$94, $0C, $A0, $06, $A0, $94, $0C, $A0, $06, $A0 
			S1smpsReturn

Beta_Boss_PSG1: 
		smpsJump 			Beta_Boss_Jump01

Beta_Boss_PSG2: 
		smpsAlterNote 		$01 
		dc.b 	$80, $06 
		smpsJump 			Beta_Boss_Jump01

Beta_Boss_PSG3: 
		smpsAlterNote 		$FF 
		dc.b 	$80, $0C  
		smpsJump 			Beta_Boss_Jump01
 
Beta_Boss_FM2:
		smpsSetvoice 		$01

	Beta_Boss_Jump01:
			smpsNoteFill 		$09  
			dc.b 	$AE, $0C, $A9, $A9, $AE, $A9, $A9, $AE, $A9  
			smpsNoteFill 		$00 
			dc.b 	$B0, $18, $B0, $B0, $B0 
			smpsLoop 			$00, $02, Beta_Boss_Jump01

	Beta_Boss_Loop02:
			smpsCall 			Beta_Boss_Call02 
			smpsLoop  			$00, $04, Beta_Boss_Loop02 
			smpsJump 			Beta_Boss_Jump01

	Beta_Boss_Call02: 
			dc.b 	$AE, $0C, $B0, $B1, $18, $B3, $B1, $B0, $0C, $B1, $B0, $AC, $18, $A9, $0C, $AC, $18
			dc.b 	$AE, $0C, $B0, $B1, $18, $B3, $B1, $B0, $0C, $B1, $B3, $B4, $B5, $80, $24 
			S1smpsReturn

Beta_Boss_FM3:
		smpsSetvoice 		$01

	Beta_Boss_Loop03: 
			smpsNoteFill 		$09 
			dc.b 	$B1, $0C, $AE, $AE, $B1, $AE, $AE, $B1, $AE 
			smpsNoteFill 		$00 
			dc.b 	$AD, $18, $AD, $AD, $AD 
			smpsLoop 			$00, $02, Beta_Boss_Loop03

	Beta_Boss_Loop04: 
			dc.b 				$80, $30, $80 
			smpsLoop 			$00, $08, Beta_Boss_Loop04

	Beta_Boss_Loop05:
			S1smpsAlterPitch 	$0C 
			smpsCall 			Beta_Boss_Call02 
			S1smpsAlterPitch 	$F4  
			smpsLoop 			$00, $02, Beta_Boss_Loop05 
			smpsJump 			Beta_Boss_FM3

Beta_Boss_FM4:
		smpsPan 			panLeft, $00 
		smpsModSet 			$0C, $01, $04, $04 
		smpsJump  			Beta_Boss_Jump02 

Beta_Boss_FM5:
		smpsPan 			panRight, $00 
		smpsModSet 			$0C, $01, $FC, $04
		smpsJump			Beta_Boss_Jump02

	Beta_Boss_Jump02: 
			S1smpsAlterPitch 	$F4 
			smpsSetvoice 		$01 
			dc.b 	$80, $30, $80, $24, $BF, $06, $C1, $C2, $0C, $C2, $C1 
			dc.b 	$C1, $BF, $BF, $C1, $18, $80, $30, $80, $24, $BF, $06 
			dc.b 	$C1, $C2, $0C, $C1, $C0, $C1, $C5, $18, $C1 
			S1smpsAlterPitch  	$0C 

	Beta_Boss_Loop06:
			dc.b 	$80, $30, $80 
			smpsLoop 			$00, $04, Beta_Boss_Loop06 
			smpsCall 			Beta_Boss_Call03 
			dc.b 	$AC 
			smpsCall 			Beta_Boss_Call03  
			dc.b 	$AD, $BD, $E7, $18, $BF, $0C, $BD, $BC, $30, $B8, $BD, $E7 
			dc.b 	$18, $BF, $0C, $BD, $BC, $30, $B9, $BD, $0C, $BF, $C1, $18
			dc.b 	$C2, $C1, $BF, $0C, $C1, $BF, $BC, $18, $B8, $0C, $BC, $18 
			dc.b 	$BD, $0C, $BF, $C1, $18, $C2, $C1, $BF, $0C, $C1, $C2, $C3  
			dc.b 	$C5, $30 
			smpsJump 			Beta_Boss_Jump02

	Beta_Boss_Call03: 
			dc.b 	$B1, $30, $E7, $18, $B3, $0C, $B1, $B0, $30 
			S1smpsReturn

Beta_Boss_DAC:
		dc.b 	$82, $0C, $8E, $8E, $82, $8E, $8E, $82, $8E, $8E, $18, $8E, $8E, $8E 
		smpsLoop 			$00, $02, Beta_Boss_DAC

	Beta_Boss_Loop07:  
			dc.b 	$81, $0C, $82, $06, $82, $81, $0C, $82, $06, $82, $81, $0C, $82, $06  
			dc.b 	$82, $81, $0C, $82, $06, $82, $81, $0C, $82, $06, $82, $81, $0C, $82 
			dc.b  	$06, $82, $81, $0C, $82, $02, $8E, $04, $82, $02, $8E, $04, $81, $0C 
			dc.b 	$82, $02, $8E, $04, $82, $02, $8E, $04 
			smpsLoop 			$00, $08, Beta_Boss_Loop07
			smpsJump 			Beta_Boss_DAC

Beta_Boss_Voice:
		dc.b $20
		dc.b $36, $30, $35, $31,  $DF, $9F, $DF, $9F,  $07, $09, $06, $06
		dc.b $07, $06, $06, $08,  $20, $10, $10, $F8,  $19, $13, $37, $80 
		
		dc.b $3A 
		dc.b $01, $01, $01, $02,  $8D, $07, $07, $52,  $09, $00, $00, $03 
		dc.b $01, $02, $02, $00,  $52, $02, $02, $28,  $18, $18, $22, $80

		dc.b $3A 
		dc.b $01, $01, $07, $01,  $9F, $9F, $9F, $5F,  $0E, $0E, $0E, $03
		dc.b $00, $00, $00, $00,  $13, $13, $AA, $08,  $18, $27, $28, $80 
		
		dc.b $2C
		dc.b $70, $32, $74, $34,  $19, $19, $14, $14,  $01, $02, $08, $05 
		dc.b $01, $02, $01, $01,  $13, $10, $87, $37,  $17, $19, $80, $85                          
