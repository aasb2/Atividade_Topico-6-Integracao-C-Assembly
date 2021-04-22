global sort

section .data

section .text

sort:
    enter 0,0
    mov eax, dword[esp+8]
    mov edx, dword[esp+12]
    
    push ebx
    push esi
    push edi

    mov ecx,0;
    mov ebx,0;
    
    sub edx,1
    loop1:
        mov ecx,0  
        
    loop2:
        
        mov esi, dword[eax+4*ecx]
        cmp esi,dword[eax + 4*ecx +4]        
        jle noSwap
        
        xchg esi, dword[eax + 4*ecx +4]
        xchg esi, dword[eax + 4*ecx]
        
        noSwap:
        
        inc ecx
        cmp ecx,edx
        jl loop2
        
        inc ebx
        cmp ebx,ecx
        jl loop1
        
    
    
    pop edi
    pop esi
    pop ebx

    leave
    ret

