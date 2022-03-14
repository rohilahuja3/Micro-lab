assume cs:code,ds:data

data segment
num1 DW 0005h
num2 DW 0004h
num3 DW ?
data ends

code segment
start:
    mov ax,data
    mov ds,ax

    mov ax,num1
    mov bx,num2
    sub ax,bx
    mov num3,ax
    hlt

code ends
end start