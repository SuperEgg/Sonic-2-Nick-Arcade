set __COMPAT_LAYER=

@ECHO OFF
set USEANSI=n
md output
md output\uncompressed
md output\compressed
as\asl -gnuerrors -c -A -xx -q smps.asm
as\p2bin smps.p output\uncompressed\smpsbuilt.bin -r 0x-0x
derecmp kc output\uncompressed output\compressed
copy output\compressed\smpsbuilt.bin z80.bin
copy output\uncompressed\smpsbuilt.bin UncZ80.bin
del smps.p
pause
