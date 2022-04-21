assume cs:code, ds:data
data segment
org 1000h ;starting addr of data in 1000h
        side dd 5.0233 ;side of square
        sqarea dd 01 dup(?) ;1 byte to strore value in sqarea
data ends

code segment
.8087
start:
    mov ax,data
    mov ds,ax

    finit
    fld side
    fst st(4)
    fmul st(0), st(4)
    fst sqarea
    hlt
code ends
end start

; To check answer: https://gregstoll.com/~gregstoll/floattohex/