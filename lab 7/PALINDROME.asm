ASSUME CS:CODE,DS:DATA,ES:EXTRA
DATA SEGMENT
BLOCK1 DB '1234'
MSG1 DB "IT IS PALINDROME $"
MSG2 DB "IT IS NOT PALINDROME $"
PAL DB 00H
DATA ENDS

PRINT MACRO MSG
MOV AH,09H
LEA DX,MSG
INT 21H
INT 3H
ENDM
 
EXTRA SEGMENT
BLOCK2 DB ?
EXTRA ENDS
 
CODE SEGMENT
START: 
    MOV AX,DATA
    MOV DS,AX
    MOV AX,EXTRA
    MOV ES,AX
    LEA SI,BLOCK1
    LEA DI,BLOCK2+3
    MOV CX,00004H

    BACK:
    CLD
    LODSB
    STD
    STOSB
    LOOP BACK
    LEA SI,BLOCK1
    LEA DI,BLOCK2
    MOV CX,0004H
    CLD
    REPZ CMPSB

    JNZ SKIP
    PRINT MSG1
    SKIP: PRINT MSG2
    
CODE ENDS
END START