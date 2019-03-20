.model small
.stack
.data
a db "enter the first number : $"
b db "enter the second number: $"
e db 0ah,0dh,"$"
d db "sum is=$"
.code
start:	lea dx,a
	mov ah,09h
	int 21h
	mov ah,01h
	int 21h
	mov bl,al
	lea dx,e
	mov ah,09h
	int 21h
	lea dx,b
	mov ah,09h
	int 21h
	mov ah,01h
	int 21h
	mov ah,00h
	add al,bl
	aaa
	mov bl,al
	mov bh,ah
	lea dx,e
	mov ah,09h
	int 21h
	lea dx,d
	mov ah,09h
	int 21h
	mov dl,bh
	add dl,30h
	mov ah,02
	int 21h
	mov dl,bl
	add dl,30h
	mov ah,02
	int 21h
	end start
	.end
