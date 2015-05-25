echo # Sonic-2-Nick-Arcade >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/SuperEgg/Sonic-2-Nick-Arcade.git
git push -u origin master

@echo off
echo Build started...

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