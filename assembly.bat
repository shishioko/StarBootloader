cd src & rem Goto source Folder
C:\Users\User\AppData\Local\bin\NASM\nasm.exe -o ..\bin\bootsec.bin -f bin bootsec.asm & rem Assembly boot sector
C:\Users\User\AppData\Local\bin\NASM\nasm.exe -o ..\bin\extendedboot.bin -f bin extendedboot.asm & rem Assembly extended assemblys
copy /b ..\bin\bootsec.bin+..\bin\extendedboot.bin ..\bin\disk.bin & rem Combine binarys
del ..\bin\extendedboot.bin & rem Delete temporary file
del ..\bin\bootsec.bin & rem Delete temporary file
..\bin\bochsrc.bxrc & rem Debug