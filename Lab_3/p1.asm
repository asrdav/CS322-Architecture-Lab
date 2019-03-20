.model small
.stack 64
.data
a db 01h,02h,03h,01h,01h

.code

start: mov ax,@data 
       mov ds,ax
       mov cl,5
       lea si,a
       mov ax,0000h; /*ax will store the result*/
again: add al,[si]; /*adding the value at index si to al*/
       inc si; /*increment si*/
       dec cl; /*decrement count*/
       jnz again
       mov  ah, 02h; /*to print ax*/
	mov  dl, ax
	add  dl, "0"
	int  21h
       mov ah,4ch
       int 21h
       end start
       .end
