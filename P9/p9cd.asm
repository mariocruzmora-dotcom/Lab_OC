%include "../LIB/pc_iox.inc"

section .data
vector1 db 1,2,3,4,5
vector2 db 5,4,3,2,1

section .text
global _start

_start:
    mov ebx, vector1
    mov edx, vector2
    mov ecx, 5
    call suma_vectores

    mov ecx, 5
    mov ebx, vector1
    call desplegar

    mov eax,1
    mov ebx,0
    int 80h


suma_vectores:
sig1:
    mov al, [ebx]
    mov ah, [edx]
    add al, ah
    mov [ebx], al

    inc ebx
    inc edx
    loop sig1
    ret


desplegar:
sig2:
    push ecx
    push ebx

    mov al, [ebx]
    mov dl, al
    xor eax, eax
    mov al, dl
    call pHex_w

    mov al, ' '
    call putchar

    pop ebx
    pop ecx

    inc ebx
    loop sig2
    ret