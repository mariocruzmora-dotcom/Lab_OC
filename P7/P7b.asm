%include "../LIB/pc_iox.inc"  	; incluir declaraciones de procedimiento externos
								; que se encuentran en la biblioteca libpc_io.a
extern pbin.o

section	.text
	global _start       ;referencia para inicio de programa
	
_start:    

;a
;b
    MOV CX, 0x3F48
    CALL pHex_dw

    MOV al,10 	; cambio de linea
	call putchar

    MOV CL, 7
    SHL CX, CL
    CALL pHex_dw
    
section	.data



