global mystrlen

mystrlen:

    push ebp
    mov ebp, esp

    mov esi, [ebp+8]   ; apuntador a cadena
    xor eax, eax       ; contador = 0

ciclo:

    cmp byte [esi], 0  ; fin de cadena?
    je fin

    inc eax            ; contador++
    inc esi            ; siguiente caracter
    jmp ciclo

fin:

    mov esp, ebp
    pop ebp
    ret