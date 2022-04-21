assume cs:code
code segment

start:
    mov cx, 0005h
    mov ax, 0001h
    mov bx, 0001h

LOOP1:
    mul cx ;ax=ax*cx 
    inc bx
    loop LOOP1 ;loop function has an auto dec cx
    hlt

code ends
end start