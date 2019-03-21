.model small
.stack 64
.data

  STR1 DB "ENTER FIRST STRING HERE ->$"
  STR2 DB "ENTER SECOND STRING HERE ->$"
  STR11 DB "FIRST STRING : ->$"
  STR22 DB "SECOND STRING: ->$"
 
  INSTR1 DB 20 DUP("$")
  INSTR2 DB 20 DUP("$")
  NEWLINE DB 10,13,"$"
  N DB ?
  S DB ?
  MSG1 DB "BOTH STRING ARE SAME$"
  MSG2 DB "BOTH STRING ARE DIFFERENT$"
.code


START:  MOV AX,@DATA
        MOV DS,AX

        LEA SI,INSTR1
        LEA DI,INSTR2

;GET STRING
        MOV AH,09H
        LEA DX,STR1
        INT 21H

        MOV AH,0AH
        MOV DX,SI
        INT 21H


        MOV AH,09H
        LEA DX,NEWLINE
        INT 21H

        MOV AH,09H
        LEA DX,STR2
        INT 21H

        MOV AH,0AH
        MOV DX,DI
        INT 21H


        MOV AH,09H
        LEA DX,NEWLINE
        INT 21H


;PRINT THE STRING

        MOV AH,09H
        LEA DX,STR11
        INT 21H

        MOV AH,09H
        LEA DX,INSTR1+2
        INT 21H

        MOV AH,09H
        LEA DX,NEWLINE
        INT 21H

        MOV AH,09H
        LEA DX,STR22
        INT 21H

        MOV AH,09H
        LEA DX,INSTR2+2
        INT 21H

        MOV AH,09H
        LEA DX,NEWLINE
        INT 21H

;STRING COMPARISION
        MOV BX,00

        MOV BL,INSTR1+1
        MOV BH,INSTR2+1

        CMP BL,BH
        JNE L1

        ADD SI,2
        ADD DI,2

      L2:MOV BL,BYTE PTR[SI]
        CMP BYTE PTR[DI],BL
        JNE L1
        INC SI
        INC DI
        CMP BYTE PTR[DI],"$"
        JNE L2

        MOV AH,09H
        LEA DX,MSG1
        INT 21H

        JMP L5

      L1:MOV AH,09H
        LEA DX,MSG2
        INT 21H



     L5:
        MOV AH,09H
        LEA DX,NEWLINE
        INT 21H

        MOV AH,4CH
        INT 21H

END START
