[org 0x7c00]
mov [BOOT_DISK], dl
mov bp, 0x7c00
mov sp, bp

mov al, 0x00

call Readdisk

jmp PROGRAM_SPACE

%include "print.asm"
%include "filesystem.asm"

padding: times (510 - ($ - $$)) db 0
BOOT_SIGN: db 0x55, 0xaa