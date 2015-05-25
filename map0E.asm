Offset_0x00BAA2:                                          
                dc.w    Offset_0x00BAA6-Offset_0x00BAA2
                dc.w    Offset_0x00BB00-Offset_0x00BAA2 
Offset_0x00BAA6: ; Object $0E - Mappings
                dc.w    $000B ; Sonic in Title Screen
                dc.l    $D40D0000, $0000FFD8, $CC0E0008, $0004FFF8
                dc.l    $CC070014, $000A0018, $E40F001C, $000EFFE0
                dc.l    $E40B002C, $00160000, $EC070038, $001C0018
                dc.l    $040F0040, $0020FFD8, $040F0050, $0028FFF8
                dc.l    $0C060060, $00300018, $24040066, $0033FFE8
                dc.l    $240D0068, $0034FFF8
Offset_0x00BB00:
                dc.w    $000A ; Tails in Title Screen
                dc.l    $DC060070, $0038FFEC, $F40F0076, $003BFFD4
                dc.l    $F40F0086, $0043FFF4, $E4090096, $004BFFFC
                dc.l    $DC0B009C, $004E0014, $FC0800A8, $00540014
                dc.l    $040500AB, $00550014, $140400AF, $0057FFD4
                dc.l    $140D00B1, $0058FFE4, $140D00B9, $005C0004
                nop