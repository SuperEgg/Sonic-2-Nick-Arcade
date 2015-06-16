@ECHO OFF

set USEANSI=n

REM // run the assembler
REM // -c outputs a shared file (smps.h)
REM // -A gives us a small speedup
REM // -xx shows the most detailed error output
REM // -q makes AS shut up
REM // -L outputs a listing file (smps.lst)
as\asl -gnuerrors -c -A -xx -q -L smps.asm

as\smpsp2bin smps.p z80.bin

del smps.p

pause
