rem Build with CC65 v2.19 otherwise replace crt0.s and nes.lib

cd src
..\bin\cc65.exe -v -DNES -DFASTCALL cc65-example.c
..\bin\ca65.exe -v cc65-example.s
..\bin\ca65.exe -v crt0.s
..\bin\ld65.exe -v --config nes.cfg crt0.o  cc65-example.o ..\lib\nes.lib -o cc65-example.nes
d:\nes\fceux.exe cc65-example.nes
cd ..