@echo off
echo Build started...

asm68k /k /p /o ae- rom.asm, rom.bin >errors.txt, , rom.lst

IF NOT EXIST rom.bin goto LABLERR
rem rompad rom.bin 255 0
rem fixheadr.exe rom.bin

:LABLDONE
echo Build succeeded
pause

exit \b

:LABLERR
echo Build failed
pause
