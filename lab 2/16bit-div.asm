assume cs:code,ds:data

data segment
num1 DW 5000h
num2 DW 3000h
resq DB ?
resr DB ?
data ends

code segment
start:
    mov ax,data
    mov ds,ax
    xor dx,dx

    mov ax,num1
    mov bx,num2
    div bx
    mov resq,al
    mov resr,ah
    hlt

code ends
end start

; the remainder will be stores in DX register and the Questionent will be stored in AX register