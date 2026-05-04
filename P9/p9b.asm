%include "../LIB/pc_iox.inc"

section .data
vector db 1,2,3,4,5

section .text
global _start

_start:
    mov ecx, 5
    mov ebx, vector
    call desplegar

    mov eax,1
    mov ebx,0
    int 80h

desplegar:
sig:
    push ecx
    push ebx

    mov al, [ebx]
    mov dl, al
    xor eax, eax
    mov al, dl
    call pHex_w

    pop ebx
    pop ecx

    inc ebx
    loop sig
    ret