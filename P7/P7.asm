%include "../LIB/pc_iox.inc"

section .text
global _start

_start:

    MOV eax,0x22446688

push eax
call pHex_dw
pop eax

MOV al,10
call putchar

ROR eax,4

push eax
call pHex_dw
pop eax

MOV al,10
call putchar

    mov eax,1
    mov ebx,0
    int 0x80