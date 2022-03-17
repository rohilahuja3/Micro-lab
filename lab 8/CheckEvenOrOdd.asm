; assume cs:code,ds:data
; data segment
; num db 04h
; m1 db 'Even$'
; m2 db 'Odd$'
; data ends

; code segment
; start:
; mov ax,data
; mov ds,ax
; mov ax,1
; ror ax,1
; jc odd
; mov dx,offset m1
; mov ah,09h
; int 21h
; jmp exit
; odd:
; mov dx,offset m2
; mov ah,09h
; int 21h
; exit:
; mov ah,4ch
; int 21h
; code ends
; end start


DATA SEGMENT
        NUM DB 8H
        EVENMSG DB "EVEN NUMBER$"
        ODDMSG DB "ODD NUMBER$"
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE, DS:DATA
START:
        MOV AX,DATA
        MOV DS,AX
        LEA SI,NUM
        MOV AX,[SI]
        ROR AX,1
        JNC NEXT
ODDS:
        ;ODD
        MOV AH,09H
        LEA DX,ODDMSG
        INT 21H
        MOV AH,4CH
        INT 21H
        MOV AH,4CH
        INT 21H
NEXT:
        ;EVEN
        MOV AH,09H
        LEA DX,EVENMSG
        INT 21H
        MOV AH,4CH
        INT 21H
        CODE ENDS
END START

