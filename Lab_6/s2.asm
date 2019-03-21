.model small
.stack 64
.data

a1 DB 'H', 'e', 'l', 'l', 'o'
a2 dw 111h, 222h, 333h, 444h, 555h
.code

start:  mov ax,@data
        mov ds,ax
	LEA SI, a1
	MOV CX, 5
	MOV AH, 0Eh
      m: LODSB
        INT 10h
        LOOP m
        ;Load word at DS:[SI] into AX
        LEA SI, a2
	MOV CX, 5
	REP LODSW
        mov ah,4ch
        int 21h
        end  
