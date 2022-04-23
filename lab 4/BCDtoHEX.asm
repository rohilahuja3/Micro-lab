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

    ; mov cl,04h
    ; ror al,cl     ; rotating the number to the right by 4 bits
    ; and al,0fh    ; and then  masking the higher nibble from number 23 so that we get 03h

    and al,0f0h   ; masking the higher nibble of the number therefore 03 will be stored in al
    mov cl,04h
    ror al,cl     ; rotating the number to the right by 4 bits

    mov bl,0ah
    mul bl        ; multiply 0ah (10 in hex) with value in al register i.e 03h
    add al,dl     ; 03h * 0ah + 02h witll be stored in al register

hlt
code ends
end start