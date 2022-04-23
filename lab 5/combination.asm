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

    fac_n_minus_r:
        mul cx    ; ax = ax * cx i.e calculating n-r (3) factorial
        loop fac_n_minus_r

    mov bx,ax     ; storing the value of n-r (3) factorial to bx register


    mov ax,0001h
    mov cx,r

    fac_r:
        mul cx    ; ax = ax * cx i.e calculating r (2) factorial
        loop fac_r

    mul bx        ; ax = ax * bx i.e (n-r)! * r!
    mov bx,ax     ; save total denominator = (n-r)! * r! in bx register


    mov ax,0001h
    mov cx,n

    fac_n:
        mul cx    ; ax = ax * cx i.e calculating n (5) factorial
        loop fac_n

    div bx        ; this is n! / (n-r)! * r! which will be stored in ax register

hlt
code ends
end start