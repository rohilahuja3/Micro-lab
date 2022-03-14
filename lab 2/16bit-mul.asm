assume cs:code,ds:data

data segment
num1 DW 2000h
num2 DW 4000h
reslw DW ?
reshw DW ?
data ends

code segment
start:
    mov ax,data
    mov ds,ax

    mov ax,num1
    mov bx,num2
    mul bx
    mov reslw,ax
    mov reshw,dx
    hlt

code ends
end start