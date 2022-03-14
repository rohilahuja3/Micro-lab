assume cs:code, ds:data, es:extra
data segment
; A DB 35H, 36H, 37H, 38H
; B DB 45H, 46H, 47H, 48H

A DB 00H, 01H, 02H, 03h
B DB 01H, 02H, 03H, 04h
data ends

extra segment
z DB ?
extra ends


code segment
start: 
    mov ax, data
    mov ds, ax
    mov es, ax

    mov bx, 0000H
    mov cl, 04h
    mov DI, offset Z

    up:
    mov al, A[bx]
    add al, B[bx]
    inc bx
    stosb; stores the result obtained in ES:DI
    dec cl
    jnz up

    int 03h
code ends
end start