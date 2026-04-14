%include "../LIB/pc_iox.inc"  	; incluir declaraciones de procedimiento externos
								; que se encuentran en la biblioteca libpc_io.a

section	.text
	global _start       ;referencia para inicio de programa
	
_start:    

;a

	MOV eax,0x22446688
    call pHex_dw

    MOV al,10 	; cambio de linea
	call putchar
    
    ROL eax,28
    call pHex_dw

     MOV al,10 	; cambio de linea
	call putchar

;b

    
section	.data



