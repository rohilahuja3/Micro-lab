assume cs:code,ds:data

data segment
num1 DW 0032h
data ends

code segment
start:
    mov ax,data
    mov ds,ax

    mov ax,num1

    mov SI,1000h           ; SI reg is a 16bit register
    mov word ptr[SI],ax    ; we are using word ptr coz when we use [SI] this is the memory of SI which is 8 bit and not 16. 
                           ; therefore we use word ptr to declare that we are string 16 bit number

    mov SI,2000h           ; at this location we will store all the remainders
    mov word ptr[SI],0000h

    mov cx,0ah

    up:
        mov dx,00h     ; remainder of a 16 bit division is always stored in DX reg and we are declaring it as 00h so that the values gets 0 after every iteration 
        div cx         ; divides the value in ax reg with 0ah in cx register
        mov [SI],dl    ; we are storing the remainders in the memory at 2000h location
        inc SI
        cmp ax,cx      ; this compares if the value in ax is less than or equal to 0ah or 10.
        jae up         ; jae is jump above or equals to i.e if the ax is greater than or equal to 0ah then only it will jump else it won't

    mov [SI],al        ; this is the last value which is part of the decimal

hlt
code ends
end start