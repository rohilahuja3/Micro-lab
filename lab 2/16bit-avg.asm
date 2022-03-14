assume cs:code,ds:data

data segment
num1 DW 0009h
num2 DW 0003h
num3 DW 0003h
avg DW ?
data ends

code segment
start:
    mov ax,data
    mov ds,ax

    mov ax,num1
    mov bx,num2
    add ax,bx
    mov bx,num3
    add ax,bx
    mov dl,03h ;not able to use 16bit register dx=0003h
    div dl
    mov avg,ax
    hlt

code ends
end start