[org 0x8000]

mov bx, SuccesMessage
call PrintString

SuccesMessage:  db 'Succes!',0

%include "print.asm"
times (512 - ($ - $$)) db 0