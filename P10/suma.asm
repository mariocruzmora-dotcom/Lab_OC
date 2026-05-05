%include "../LIB/pc_iox.inc"
;%include "../LIB/libpc_iox.a"

section .text

global suma          
;global _start

;_start:
    
   

suma:
    push ebp
    mov ebp, esp
    
    mov eax, [ebp+8]  ; n1 
    add eax, [ebp+12] ; n2 
    
    pop ebp
    ret               
