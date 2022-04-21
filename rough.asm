assume cs:code,ds:data

data segment
num1 DB 32h
data ends

code segment
start:
    mov ax,data
    mov ds,ax

    xor ax,ax
    xor dx,dx

    mov al,num1
    mov dl,al

    and al,0fh

    mov cl,04h
    ror dl,cl     
    and dl,0fh    

    mov bl,0ah
    imul dl,bl
    ; add al,dl

hlt
code ends
end start