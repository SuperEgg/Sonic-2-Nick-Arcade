set __COMPAT_LAYER=

@ECHO OFF
set USEANSI=n
as\asl -gnuerrors -c -A -xx -q smps.asm
as\smpsp2bin smps.p z80.bin
del smps.p
pause
