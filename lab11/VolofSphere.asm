assume cs:code, ds:data
data segment
org 1000h 
        radius dd 5.0233
        const dd 1.333
        volume dd 01 dup(?)
data ends

code segment
.8087
start:
    mov ax,data
    mov ds,ax

    finit
    fld radius
    fst st(4)
    fmul st(0), st(4)
    fmul st(0), st(4)
    fld const
    fmul ; const * r^3
    fldpi ; load pi value
    fmul ; mul pi with const*r^3
    fst volume
    hlt

code ends
end start

; To check answer: https://gregstoll.com/~gregstoll/floattohex/