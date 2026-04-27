%include "../LIB/pc_iox.inc"

section .text
global _start

_start:

    mov cx,5
    mov bx,1

fila:
    cmp bx,cx
    ja fin

    mov dx,bx

col:
    cmp dx,0
    je salto
    mov al,'*'
    call putchar
    dec dx
    jmp col

salto:
    mov al,10
    call putchar

    inc bx
    jmp fila

fin:
    mov eax,1
    mov ebx,0
    int 80h