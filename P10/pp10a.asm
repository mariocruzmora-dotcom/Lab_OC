%include "../LIB/pc_iox.inc"

section .text

global suma

suma:

    push ebp
    mov ebp, esp

    mov eax, [ebp+8]      ; num1
    add eax, [ebp+12]     ; num2

    pop ebp
    ret