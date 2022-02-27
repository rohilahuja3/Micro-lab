assume cs:code
code segment

start:
mov ax, 0001h
mov cx, 0003h

NUMER:
mul cx
loop NUMER
mov bx, ax
mov ax, 0001h
mov cx, 0005h

DENOM:
mul cx
loop DENOM
div bx
mov bx,ax
mov ax,0001h
mov cx,0002h

DENOM2:
mul cx
loop DENOM2
mov cx,ax
mov ax,bx
div cx

hlt
code ends
end start