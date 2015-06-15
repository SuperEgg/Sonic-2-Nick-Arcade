@echo off
echo Build started...

call BuildZ80.bat

asm68k /k /p /o ae- S2NA.asm, S2NA.bin >errors.txt, , S2NA.lst

IF NOT EXIST S2NA.bin goto LABLERR
rem rompad S2NA.bin 255 0
rem fixheadr.exe S2NA.bin

:LABLDONE
echo Build succeeded
pause

exit \b

:LABLERR
echo Build failed
pause
