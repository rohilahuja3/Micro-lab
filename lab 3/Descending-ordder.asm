Assume cs:code, ds:data

data segment
array DB 99h, 12h, 56h, 45h, 36h
data ends

code segment
start:
    mov ax,data
    mov ds,ax

    mov ch,04h

up1:
    mov cl,04h
    lea SI,array

up2:
    mov al,[SI]
    mov bl,[SI+1]
    cmp al,bl
    jnc down
    mov dl,[SI+1]
    xchg [SI],dl
    mov [SI+1],dl

down:
    inc SI
    dec cl
    jnz up2
    dec ch
    jnz up1

hlt

code ends
end start