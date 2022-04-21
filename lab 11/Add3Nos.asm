assume cs:code, ds:data
data segment
org 1000h
        X dd 1.023
        Y dd 1.023
        Z dd 1.023
        Sum dd 01 dup(?)
data ends

code segment
.8087
start:
    mov ax,data
    mov ds,ax

    finit
    fld X
    fld Y
    fld Z

    fadd st(0), st(1) ; st(0) = st(0) + st(1)
    fadd st(0), st(2) ; st(0) = st(0) + st(2)

    fst Sum
    hlt
code ends
end start

; To check answer: https://gregstoll.com/~gregstoll/floattohex/