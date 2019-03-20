.model small
.stack 100H
.data
	NUM1 DB 5
	NUM2 DB 9
	NUM3 DB 7
	NUM4 DB 8
	NUM5 DB 11
	SUM DB ?

.code
start:	MOV AX, @data
		MOV DS,AX
		MOV AL,NUM1
		ADD AL,NUM2
		ADD AL,NUM3
		ADD AL,NUM4
		ADD AL,NUM5
		MOV AH,02H
		MOV DL,AL
		ADD DL,"0"
		INT 21H
		MOV SUM,AL
		MOV AH,4CH
		INT 21H
		end start
		.end
