assume cs:code,ds:data

data segment
num1 DB 12h
data ends

code segment
start:
        mov ax,data
        mov ds,ax

        mov al,num1
        mov ah,al       ; storing the same number 12 in the ah register

        and al,0fh      ; masking the higher nibble of the number
        
        mov cl,04h      ; setting the count to 4 to shift the ah number by 4 bits
        shr ah,cl       ; shift right instruction
        ; ror ah,cl       ; rotate instruction we can also use this
        and ah,0fh      ; masking the higher nibble of the number because the number is now shifted by 4 bits

        add ax,3030h    ; adding 30h to both the numbers in ah and al
hlt
code ends
end start