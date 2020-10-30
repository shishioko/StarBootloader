C:\Users\User\AppData\Local\bin\NASM\nasm.exe -o bootsec.bin -f bin bootsec.asm
C:\Users\User\AppData\Local\bin\NASM\nasm.exe -o kernel.bin -f bin kernel.asm
copy /b bootsec.bin+kernel.bin disk.bin
del kernel.bin
del bootsec.bin
copy disk.bin bin/disk.bin
del disk.bin
cd bin
bochsrc.bxrc