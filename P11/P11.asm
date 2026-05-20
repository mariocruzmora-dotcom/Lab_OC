section .data
char db 0

section .text

global pBin8b
global pBin16b
global pBin32b

my_putchar:

    pushad

    mov [char], al

    mov eax,4
    mov ebx,1
    mov ecx,char
    mov edx,1
    int 80h

    popad
    ret

pBin8b:

    push ebp
    mov ebp, esp

    push ebx
    push ecx

    mov bl, [ebp+8]
    mov ecx, 8

ciclo8:

    shl bl,1
    jc uno8

    mov al,'0'
    call my_putchar
    jmp siguiente8

uno8:

    mov al,'1'
    call my_putchar

siguiente8:

    loop ciclo8

    pop ecx
    pop ebx

    mov esp, ebp
    pop ebp
    ret

pBin16b:

    push ebp
    mov ebp, esp

    push ebx
    push ecx

    mov bx, [ebp+8]
    mov ecx, 16

ciclo16:

    shl bx,1
    jc uno16

    mov al,'0'
    call my_putchar
    jmp siguiente16

uno16:

    mov al,'1'
    call my_putchar

siguiente16:

    loop ciclo16

    pop ecx
    pop ebx

    mov esp, ebp
    pop ebp
    ret

pBin32b:

    push ebp
    mov ebp, esp

    push ebx
    push ecx

    mov ebx, [ebp+8]
    mov ecx, 32

ciclo32:

    shl ebx,1
    jc uno32

    mov al,'0'
    call my_putchar
    jmp siguiente32

uno32:

    mov al,'1'
    call my_putchar

siguiente32:

    loop ciclo32

    pop ecx
    pop ebx

    mov esp, ebp
    pop ebp
    ret

section .note.GNU-stack noalloc noexec nowrite progbits