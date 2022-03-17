assume cs:code

code segment
start:
    mov cx,0000h
    mov bx,0004h
    
    loop1:  mov ax,cx
            mul cx
            cmp ax,bx
            jz store
            inc cx
            jnz loop1

    store:
            hlt

code ends
end start