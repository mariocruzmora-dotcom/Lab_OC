%include "../LIB/pc_iox.inc"

section .data
    N dw 0
    
section	.text

	global _start       ;must be declared for using gcc

_start:                     

; a

    mov ebx, 0x5C4B2A60
    add ebx, 0x0021E5DC

    mov eax, ebx
    call pHex_dw

; b
    mov al,10 	; cambio de linea
	call putchar

    push bx

; c
    mov al,10 	; cambio de linea
	call putchar

    mov al, bl
    mov ah, 0
    mov cl, 8
    mul cl

    mov [N], ax

    mov eax, 0
    mov ax, [N]
    call pHex_dw

; d
    mov al,10 	; cambio de linea
	call putchar

    inc word [N]

    mov eax, 0
    mov ax, [N]
    call pHex_dw

; e

    mov ax, bx
    mov bl, 0xFF
    div bl

    mov al,10 	; cambio de linea
	call putchar

    ; imprimir cociente
    movzx eax, al
    call pHex_dw

    mov al,10 	; cambio de linea
	call putchar

    ; imprimir residuo
    movzx eax, ah
    call pHex_dw

; f

    mov al,10 	; cambio de linea
	call putchar

    add [N], ah

    mov eax, 0
    mov ax, [N]
    call pHex_dw

; h

    mov al,10 	; cambio de linea
	call putchar
    
    pop ax

    mov eax, 0
    mov ax, ax
    call pHex_dw

;
    mov eax, 1
    mov ebx, 0
    int 0x80