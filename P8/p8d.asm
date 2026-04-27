%include "../LIB/pc_iox.inc"

section .data
msg db "Datos capturados",0

section .bss
arr resb 10

section .text
global _start

_start:

    mov cx,10
    mov esi,arr

captura:
    call getche
    mov [esi],al
    inc esi
    loop captura

    mov al,10
    call putchar

    mov edx,msg
    call puts

    mov al,10
    call putchar

    mov cx,10
    mov esi,arr

mostrar:
    mov al,[esi]
    call putchar
    mov al,10
    call putchar
    inc esi
    loop mostrar

    mov eax,1
    mov ebx,0
    int 80h