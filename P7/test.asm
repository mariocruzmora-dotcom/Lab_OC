%include "../LIB/pc_iox.inc"

section .text
global _start

_start:

    ; valor inicial
    mov eax,22446688h

    ; imprimir valor original
    push eax
    call pHex_dw
    pop eax

    mov al,10
    call putchar

    ; rotación correcta
    ror eax,4

    ; imprimir valor rotado
    push eax
    call pHex_dw
    pop eax

    mov al,10
    call putchar

    ; salida limpia
    mov eax,1
    mov ebx,0
    int 0x80