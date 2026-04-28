%include "../LIB/pc_iox.inc"

section .data
msgLet db "Capura x",0


section .text
global _start

_start:
ecoN:
    mov ecx, 5

leer:
    call getche

    cmp eax,'0'
    jb leer
    cmp eax,'9'
    jbe conversion

    jmp leer

conversion:
    
    sub eax,30h
    mov ebx, eax
    jmp ciclo

ciclo: 

    ;mov edx,msgLet
    ;call puts

    sub ecx, 1
    cmp ecx, 0
    ja leer

    jmp fin

fin:


    mov eax,1
    mov ebx,0
    int 80h


    