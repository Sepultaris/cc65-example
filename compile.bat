rem Build with CC65 v2.19 otherwise replace crt0.s and nes.lib

cd src
..\bin\cc65.exe -v cc65-example.c
..\bin\ca65.exe -v cc65-example.s
..\bin\ca65.exe -v crt0.s
..\bin\ld65.exe -v --config nes.cfg crt0.o ..\lib\nes.lib cc65-example.o -o cc65-example.nes
cd ..