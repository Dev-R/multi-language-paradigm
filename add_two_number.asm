.MODEL SMALL
.STACK 200H
.DATA
    NUM1 DB 12
    NUM2 DB 3
    VAL  DW ?
    MSG1 DB "The sum is : "
    DECIMAL  DB "00000$"

.CODE
BEGIN PROC
    MOV AX, @DATA
    MOV DS, AX

    XOR AX, AX
    MOV AL, NUM1
    ADD AL, NUM2
    ADC AH, 0
    MOV VAL, AX

    MOV AX, VAL
    CALL AX_to_DEC

    LEA DX, MSG1
    MOV AH, 9
    INT 21H

    MOV AX, 4C00H
    INT 21H
BEGIN ENDP

AX_to_DEC PROC
        mov bx, 10              ; divisor
        xor cx, cx              ; CX=0 (number of digits)