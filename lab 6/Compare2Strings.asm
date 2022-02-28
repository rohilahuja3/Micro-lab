ASSUME CS:CODE, DS:DATA, ES:EXTRA

DATA SEGMENT;data segment starts
str1 db 'rohil$';Define string1 str1
LEN dw $-str1 ; variable LEN will have length of str1
D DB 'Equals$'; Variable D points to string equals
F DB 'Unequal$'; variable F points to string unequals
data ends

extra segment; extra segment starts
str2 db 'rohil$'; define string 2 str2
extra ends

code segment; code segment starts
start:
    mov ax, data
    mov ds, ax ; init ds
    mov ax, extra
    mov es, ax; init extra

    lea SI, str1; load ea of str1 in SI
    lea DI, str2; load ea of str2 in DI
    mov cx, LEN; take length of string str1 in cx register
    cld; clear direction flag

    rep cmpsb ;compare two strings till cx=0 or zf != 1
    jne next; Jump to NEXT if no zf ie zf=0
    lea dx, d; load ea of strign d in dx
    jmp display

    next:
        lea dx, F;

    display: 
        mov ah, 09h
        int 21h; ea is in dx
        mov ah, 4ch; mov 43h to terminate
        int 21h; dos interuupt

code ends
end start