@echo off
echo Build started...

call BuildZ80.bat

asm68k /o ae- /p S2NA.asm,S2NA.bin

IF NOT EXIST S2NA.bin goto LABLERR
rem rompad S2NA.bin 255 0
rem fixheadr.exe S2NA.bin

echo Build succeeded

goto LABLDONE

:LABLERR
echo Build failed
pause
:LABLDONE
pause