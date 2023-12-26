.MODEL SMALL
.STACK 100H

.DATA
    TBao DB 'Go vao 1 so he hai (max 16bit, CR de thoi):$'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 9
    LEA DX, TBao
    INT 21H

    XOR BX, BX
    MOV AH, 1

TIEP:
    INT 21H
    CMP AL, 13
    JZ THOIDOC

    AND AL, 0FH
    SHL BX, 1
    OR BL, AL
    JMP TIEP

THOIDOC:
    MOV CX, 16
    MOV AH, 2

HIEN:
    XOR DL, DL
    ROL BX, 1
    ADC DL, 30H
    INT 21H
    LOOP HIEN

    MOV AH, 4CH
    INT 21H

MAIN ENDP

END MAIN
