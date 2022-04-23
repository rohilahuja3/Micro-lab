assume cs:code,ds:data

data segment
n DW 0005h
r DW 0002h
data ends

code segment
start:
    mov ax,data
    mov ds,ax

    mov ax,0001h
    mov cx,n
    sub cx,r

    DENOMINATOR:
        mul cx    ; ax = ax * cx i.e calculating n-r (3) factorial
        loop DENOMINATOR

    mov bx,ax     ; storing the value of n-r (3) factorial to bx register

    mov ax,0001h
    mov cx,n

    NUMERATOR:
        mul cx    ; ax = ax * cx i.e calculating n (5) factorial
        loop NUMERATOR

    div bx

hlt
code ends
end start