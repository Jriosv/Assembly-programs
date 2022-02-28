DATA SEGMENT
DATA ENDS

CODE SEGMENT
        ASSUME CS:CODE, DS:DATA
        START:
             XOR AX, AX
             MOV ES, AX
             XOR BYTE PTR ES:[417H], 40H

        STOP:
             MOV AH,4CH
             INT 21H
CODE ENDS
       END START
