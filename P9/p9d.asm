%include "../LIB/pc_iox.inc"

section .data
N equ 5

section .bss
vector1 resb 10
vector2 resb 10

section .text
global _start

_start:

    mov ecx, N
    mov ebx, vector1

leer1:
    call getche
    cmp al,'0'
    jb leer1
    cmp al,'9'
    ja leer1

    sub al,30h
    mov [ebx], al
    inc ebx
    loop leer1

    mov ecx, N
    mov ebx, vector2

leer2:
    call getche
    cmp al,'0'
    jb leer2
    cmp al,'9'
    ja leer2

    sub al,30h
    mov [ebx], al
    inc ebx
    loop leer2

    mov ebx, vector1
    mov edx, vector2
    mov ecx, N
    call suma_vectores

    mov ecx, N
    mov ebx, vector1
    call desplegar

    mov ebx, vector1
    mov edx, vector2
    mov ecx, N
    call producto_escalar

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


producto_escalar:
    xor eax, eax

sig3:
    push ebx
    push edx

    mov al, [ebx]
    mov bl, [edx]
    mul bl            ; AX = resultado

    mov bh, 0         ; limpiar
    add eax, ebx      ; acumular bien

    pop edx
    pop ebx

    inc ebx
    inc edx
    loop sig3

    call pHex_w
    ret