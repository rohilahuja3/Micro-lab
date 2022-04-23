assume cs:code,ds:data

data segment
fac_num DW 0005h
data ends

code segment
start:
    mov ax,data
    mov ds,ax

    mov ax,0001h
    mov cx,fac_num

    loop1:
        mul cx ; ax = ax * cx
        loop loop1
    
hlt
code ends
end start