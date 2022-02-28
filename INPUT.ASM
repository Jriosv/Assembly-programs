DATA SEGMENT

DATA ENDS


CODE SEGMENT
        ASSUME CS: CODE, DS: DATA
        START:
             MOV AH,1
             INT 21H

             MOV DL,AL
             MOV AH,2
             INT 21H

        STOP:
             MOV AH, 4CH
             INT 21H

CODE ENDS
        END START
