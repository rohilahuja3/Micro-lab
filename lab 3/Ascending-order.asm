assume cs:code,ds:DATA

data segment
array DB 99h, 12h, 56h, 45h, 36h
data ends

code segment
start:
    mov ax,data
    mov ds,ax

    mov ch,04h  ;this ch is the outer for loop to travese through the array 
                ;first 99h and then when all 4 comparisions is done move to 12h

    up2:
        mov cl,04h  ;this is for the inner for loop comparision to compare 99h with all the elements
        lea SI,array  ;this is the index pointer to the offset location of array

    up1:
        mov al,[SI]  ;this loads the first element 99h in the al register 
        mov bl,[SI+1];this hold the 2nd element 12h in bl register
        cmp al,bl   ;this compares al and bl register i.e al - bl if al=99h and bl=12 therefore 99h-12h i.e no carry 
                    ;therefore jc command only works when carry exists and then it will jump to line number 27 and swap will happen 
                    ;for example when al=12h and bl=99h then al-bl will have carry because then al is the smaller number and 
                    ;jc down command will execute and 
        jc down     ;this is jump on carry commmand and executes when al has smaller number than bl
        mov dl,[SI+1]
        xchg [SI],dl
        mov [SI+1],dl

    down:
        inc SI
        dec cl
        jnz up1     ;jump until cl is zero
        dec ch
        jnz up2     ;jump until ch is zero

    hlt

code ends
end start