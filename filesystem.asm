
PROGRAM_SPACE equ 0x8000

Readdisk:
    mov bx,StartReadMessage
    call PrintString
	mov ah, 0x02
	mov bx, PROGRAM_SPACE
	mov al, 32
	mov dl, [BOOT_DISK]
	mov ch, 0x00
	mov dh, 0x00
	mov cl, 0x02

    int 0x13

    jc DiskReadFailed

    ret

BOOT_DISK:
    db 0
DiskReadErrorMessage:
    db 'Could not read from disk',0
StartReadMessage:
    db 'Trying to load from Disk',0
DiskReadFailed:
    mov bx, DiskReadErrorMessage
    call PrintString

    jmp $