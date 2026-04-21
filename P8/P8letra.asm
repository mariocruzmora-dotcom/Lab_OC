%include "../LIB/pc_iox.inc"

section .text
msg db "Es un numero",0
msg1 db "Es una letra",0
global _start

_start:


leer: call getche 
                cmp al,'A'
                jb leer
                cmp al,'Z'
                ja leer
                mov cl,al
                cmp cl, 'A'
                jae letra


letra:mov edx,msg1
      call puts
      mov eax,1
      mov ebx,0
      int 80h


MOV al,10
call putchar