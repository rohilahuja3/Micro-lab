assume cs:code
code segment

start:
mov ax, 0001h
mov cx, 0003h

DENOMINATOR:
mul cx ;ax=ax*cx  calculartion of 3 fac
loop DENOMINATOR
mov bx, ax
mov ax, 0001h
mov cx, 0005

NUMERATOR:
mul cx ;ax=ax*cx  calculartion of 5 fac
loop NUMERATOR
div bx ;ax=ax/bx

hlt
code ends
end start