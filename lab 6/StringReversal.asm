assume cs:code,ds:data

data segment
str1 DB 'rohil$'
len DW $-str1
str2 DB ?
data ends

code segment

start:
    mov ax,data
    mov ds,ax
    mov cx,len

    add cx,-1
    lea SI,str1
    lea DI,str2

    add SI,len
    add SI,-2

    REVERSE:
        mov al,[SI]
        mov [DI],al
        dec SI
        inc DI
        loop REVERSE

    mov dl,'$'
    mov [DI],dl
    mov ah,09h
    lea dx,str2
    int 21h
    mov ah,4ch
    int 21h
    hlt

code ends
end start
ends