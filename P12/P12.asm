global strlen
global str_mid
global clrBit

section .text

strlen:

    push ebp
    mov ebp, esp

    push esi              
    push ebx

    mov esi, [ebp+8]      
    xor eax, eax          ; eax contador en 0

loop_strlen:

    mov bl, [esi]         ; tomar caracter actual

    cmp bl, 0             ; verificar fin de cadena
    je fin_strlen

    inc eax               ; aumentar longitud
    inc esi               ; siguiente caracter

    jmp loop_strlen

fin_strlen:

    pop ebx
    pop esi

    pop ebp
    ret


str_mid:

    push ebp
    mov ebp, esp

    push esi
    push edi

    mov edi, [ebp+8]      ; cadena salida
    mov esi, [ebp+12]     ; cadena entrada

    mov ecx, [ebp+16]     ; start
    mov edx, [ebp+20]     ; end

    add esi, ecx          ; avanzar hasta start

loop_mid:

    cmp ecx, edx          ; si start > end termina
    jg fin_mid

    mov al, [esi]         ; copiar caracter
    mov [edi], al

    inc esi               ; siguiente caracter entrada
    inc edi               ; siguiente posicion salida
    inc ecx               ; avanzar contador

    jmp loop_mid

fin_mid:

    mov byte [edi], 0     ; agregar fin de cadena

    pop edi
    pop esi

    pop ebp
    ret


clrBit:

    push ebp
    mov ebp, esp

    mov eax, [ebp+8]      ; valor original
    mov ecx, [ebp+12]     ; numero de bit

    mov edx, 1
    shl edx, cl           ; mover bit a posicion deseada

    not edx               ; invertir mascara

    and eax, edx          ; poner ese bit en 0

    pop ebp
    ret