Waylon_Header:
smpsHeaderStartSong = 2
	smpsHeaderVoiceUVB
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $0E

	smpsHeaderDAC       Waylon_DAC
	smpsHeaderFM        Waylon_FM1,	$0C, $07
	smpsHeaderFM        Waylon_FM2,	$0C, $07
	smpsHeaderFM        Waylon_FM3,	$0C, $07
	smpsHeaderFM        Waylon_FM4,	$00, $07
	smpsHeaderFM        Waylon_FM5,	$00, $07
	smpsHeaderPSG       Waylon_PSG1,	$0C, $06, $00, fTone_01
	smpsHeaderPSG       Waylon_PSG2,	$00, $05, $00, $00
	smpsHeaderPSG       Waylon_PSG3,	$00, $00, $00, $00


Waylon_FM1:
	smpsSetvoice 	$15	
	dc.b 	nE1,$0D,nFs1,$0D,nA1,$0D,nC2,$06,nB1,$06,nA1,$0D,nE1,$0D,nFs1,$0D
	
A_Chord_Loop:
	dc.b    nA1,$18,nE2,$18,nA1,$18,nE2,$18,nA1 
	smpsstop
Waylon_FM2:
	smpsSetvoice 	$15
	dc.b 	nRst,$0D,nRst,$0D,nRst,$0D,nRst,$06,nRst,$06,nRst,$0D,nRst,$0D,nRst,$0D	
	dc.b 	nRst,$18,nA2,$18,nA2,$18,nA2,$18,nA2	
	smpsstop
Waylon_FM3:
	smpsSetvoice 	$15
	dc.b 	nRst,$0D,nRst,$0D,nRst,$0D,nRst,$06,nRst,$06,nRst,$0D,nRst,$0D,nRst,$0D	
	dc.b 	nRst,$18,nCs2,$18,nCs2,$18,nCs2,$18,nCs2
	smpsstop
Waylon_FM4:
Waylon_FM5:
Waylon_PSG1:
Waylon_PSG2:
Waylon_PSG3:
Waylon_DAC:
	smpsstop
