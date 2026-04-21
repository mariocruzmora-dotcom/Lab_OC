%include "../LIB/pc_iox.inc"

section .text
msg db "Es un numero",0
msg1 db "Es una letra",0
global _start

_start:

leer: call getche 
cmp al,'0'
jb leer
cmp al,'9'
ja leer
cmp al, '0'
jae num
                cmp al,'A'
                jb leer
                cmp al,'Z'
                ja leer
                cmp cl, 'A'
                jae letra

num:  mov edx,msg
      call puts
      mov eax,1
      mov ebx,0
      int 80h

letra:mov edx,msg1
      call puts
      mov eax,1
      mov ebx,0
      int 80h


MOV al,10
call putchar