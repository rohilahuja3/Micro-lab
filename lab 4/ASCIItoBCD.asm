; assume cs:code,ds:data

; data segment
; num1 DW 3132h
; data ends

; code segment
; start:
;     mov ax,data
;     mov ds,ax

;     mov ax,num1

;     sub ax,3030h

;     mov cl,04h
;     ; shl ah,cl
;     ror ah,cl
;     add al,ah

;     mov ah,00h

; hlt
; code ends
; end start


; Method - 2
assume cs:code,ds:data

data segment
num1 DW 3933h
data ends

code segment
start:
        mov ax,data
        mov ds,ax

        mov ax,num1

        and al,0fh

        and ah,0fh
        mov cl,04h
        rol ah,cl

        add al,ah
        mov ah,00h

hlt 
code ends
end start
