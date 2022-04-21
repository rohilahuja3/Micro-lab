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

    and dl,0fh    ; masking the higher nibble of the number therefore 02 will be stored in dl
    
    mov cl,04h
    ror al,cl     ; rotating the number to the right by 4 bits
    and al,0fh    ; masking the higher nibble of the number therefore 03 will be stored in al

    mov bl,0ah
    mul bl
    add al,dl

hlt
code ends
end start