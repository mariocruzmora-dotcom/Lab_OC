section .text

global pBin8b


my_putchar:

    pushad

    push eax
    mov eax,4
    mov ebx,1
    mov ecx,esp
    mov edx,1
    int 80h

    pop eax
    popad
    ret


pBin8b:

    push ebp
    mov ebp, esp

    mov bl, [ebp+8]   ; cargar dato
    mov ecx, 8        ; 8 bits

ciclo:

    shl bl,1          ; mover bit al carry
    jc imprimir1

    mov al,'0'
    call my_putchar
    jmp siguiente

imprimir1:

    mov al,'1'
    call my_putchar

siguiente:

    loop ciclo

    mov esp, ebp
    pop ebp
    ret

section .note.GNU-stack noalloc noexec nowrite progbits