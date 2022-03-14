assume cs:code,ds:data

data segment
num1 DB 04h ;storing number 1 in data segmenmt with data type DB= 8 bits
num2 DB 02h ;storing number 2 in data segmenmt with data type DB= 8 bits
num3 DB ?  ;currently number 3 is a reserved space in data segmenmt with data type DB= 8 bits 
data ends

code segment  ; starting the code segment
start:

    mov ax,data ;mov ax,data is a command to move the value of data segment to ax register
    mov ds,ax   ;mov ds,ax is a command to move the value of ax register to ds = data segment register

    mov al,num1 ;loading num1 in ah register because it is a 8 bit number
    mov bl,num2 ;loading num2 in ah register because it is a 8 bit number
    mov ah,00h  ;setting al to 0 because we want to add the two numbers
    div bl      ;multiplying num1 and num2 and storing the result in ah register
    mov num3,al ;transferring the result from ah register to num3
    hlt

code ends
end start


; why is this is only working when i store num1 and num2 in lower bits of ax i.e al and bl