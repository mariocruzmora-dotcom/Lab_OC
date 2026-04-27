%include "../LIB/pc_iox.inc"

section .data
msgNum db "Es un numero",0
msgLet db "Es una letra",0

section .text
global _start

_start:

leer:
    call getche

    cmp al,'0'
    jb leer
    cmp al,'Z'
    ja leer

    cmp al,'9'
    jbe num

    cmp al,'A'
    jae letra

    jmp leer

num:
    mov edx,msgNum
    call puts
    jmp fin

letra:
    mov edx,msgLet
    call puts

fin:
    mov eax,1
    mov ebx,0
    int 80h