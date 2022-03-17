assume cs:code,ds:DATA

data segment
mg1 db 'b$'
data ends

code segment
start:
    mov ax,data
    mov ds,ax
    print mg1
    ; mov dl,'b'
    int 21h

code ends
end start