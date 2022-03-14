assume cs:code,ds:data

data segment
num1 DW 4000h
num2 DW 2000h
resq DB ?
resr DB ?
data ends

code segment
start:
    mov ax,data
    mov ds,ax

    mov ax,num1
    mov bx,num2
    div bx
    mov resq,al
    mov resr,ah
    hlt

code ends
end start