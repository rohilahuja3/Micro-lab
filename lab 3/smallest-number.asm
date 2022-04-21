Assume cs:code,ds:DATA

data segment
; array DB 6ah, 3ah, 8bh, 5ch, 9eh
;106, 58, 139, 92, 158
array DB 99h, 12h, 56h, 45h, 36h
data ends

code segment
start:
    mov ax,data
    mov ds,ax

    mov cl,04h
    lea SI,array
    
    xor ax,ax   ; just to clear the ax register
    mov al,[SI]
    
    loop1:
        ; for smallest number
        add SI,01h
        cmp al,[SI]
        jc loop2
        mov al,[SI]

    loop2:
        loop loop1

hlt 
code ends
end start