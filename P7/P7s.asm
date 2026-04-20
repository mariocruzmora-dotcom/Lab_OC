%include "../LIB/pc_iox.inc"

section .text
global _start

_start:

;a

    mov ebx,22446688h

    mov eax,ebx
    call pHex_dw

    mov al,10
    call putchar

    ror ebx,4

    mov eax,ebx
    call pHex_dw

    mov al,10
    call putchar


;b

    mov cx,3F48h

    mov ax,cx
    call pHex_w

    mov al,10
    call putchar

    mov cx,3F48h
    shl cx,2
    sub cx,02E0h

    mov ax,cx
    call pHex_w

    mov al,10
    call putchar


;c

    mov esi,20D685F3h

    mov eax,esi
    call pHex_dw
    
    mov al,10
    call putchar

    mov eax,(1<<0)|(1<<5)|(1<<13)|(1<<18)|(1<<30)
    xor esi,eax

    mov eax,esi
    call pHex_dw
    mov al,10
    call putchar


;d

    push esi


;e

    mov ch,0A7h

    mov al,ch
    call pHex_b
    mov al,10
    call putchar

    or ch,(1<<3)|(1<<6)

    mov al,ch
    call pHex_b
    mov al,10
    call putchar


;f

    mov bp,67DAh

    mov ax,bp
    call pHex_w
    mov al,10
    call putchar

    mov ax,~((1<<1)|(1<<4)|(1<<6)|(1<<10)|(1<<14))
    and bp,ax

    mov ax,bp
    call pHex_w
    mov al,10
    call putchar


;g

    shr bp,3

    mov ax,bp
    call pHex_w
    mov al,10
    call putchar


;h

    mov ebx,12345678h
    shr ebx,5

    mov eax,ebx
    call pHex_dw
    mov al,10
    call putchar


;i

    shl cx,3

    mov ax,cx
    call pHex_w
    mov al,10
    call putchar


;j

    pop esi

    mov eax,esi
    call pHex_dw
    mov al,10
    call putchar


;k

    mov eax,esi
    shl esi,3
    shl eax,1
    add esi,eax

    mov eax,esi
    call pHex_dw
    mov al,10
    call putchar


    mov eax,1
    mov ebx,0
    int 0x80