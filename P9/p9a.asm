%include "../LIB/pc_iox.inc"

section .data
msgLet db "Capura x",0

section .bss
vector resb 10

section .text
global _start

_start:
ecoN:
    mov ecx, 5
    mov ebx, vector
leer:
    call getche

    cmp al,'0'
    jb leer
    cmp al,'9'
    ja leer

conversion:
    
    sub al,30h

    mov [ebx], al
    inc ebx
    mov dl, al
    xor eax, eax
    mov al, dl
    call pHex_w
    jmp ciclo

ciclo: 

    ;mov edx,msgLet
    ;call puts

    loop leer

    jmp fin

fin:


    mov eax,1
    mov ebx,0
    int 80h


    