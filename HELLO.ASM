; codigo para imprimir hola mundo sistemas operativos lab 1

DATA SEGMENT
    MENSAJE DB "Hola mundo$"

DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA
    START:
        MOV AX, DATA
        MOV DS, AX

        ;LEA DX, MENSAJE
        MOV DX, OFFSET MENSAJE
        MOV AH, 9
        INT 21H

    STOP:
        MOV AH, 4CH
        INT 21H
        
CODE ENDS
    END START

 
