.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV DL,65
    MOV CX,26
    MOV AH,2
    TOP:
    INT 21H
    INC DL
    LOOP TOP
    MAIN ENDP
END MAIN