%include "../LIB/pc_iox.inc"

section .text
msg db "caracter menor a 5",0
global _start

_start:


leer: call getche ;se guarda en al
cmp al,'0'  	;compara con 0
jb leer    	;salta a leer si esta aBajo de cero
cmp al,'9'
ja leer        ;salata a leer si esta Arriba de 9
cmp al, '5'   
jae fin        ;salta a fin si esta por Arriba o igual a 5

MOV al,10
call putchar

mov edx,msg
call puts

MOV al,10
call putchar



  fin:  mov eax,1
    mov ebx,0
    int 80h