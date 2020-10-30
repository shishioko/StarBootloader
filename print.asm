PrintString:
	push ax
	push bx

	mov ah, 0x0e
    mov si, bx
	.Loop:
    lodsb
	cmp al, 0
	je .Exit
		int 0x10
		jmp .Loop
	.Exit:
	pop ax
	pop bx
    call NextLine
    ret
NextLine:
    MOV AL, 0
    stosb
    mov AH, 0x0E
    MOV AL, 0x0D
    INT 0x10
    MOV AL, 0x0A
    INT 0x10
    ret
