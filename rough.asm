assume cs:code

code segment
start:
    mov ah,04h
    mov bh,03h
    mul bh
    hlt

code ends
end start