section .text

global getBit


getBit:

    push ebp
    mov ebp, esp

    mov eax, [ebp+8]      
    mov ecx, [ebp+12]     

    shr eax, cl           
    and eax, 1            

    mov esp, ebp
    pop ebp
    ret
