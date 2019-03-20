.model small
.stack 64
.data
a db 02h,02h,03h,03h,05h,05h,0ah,0ah,0ah,0ah

.code

start: mov ax,@data
       mov ds,ax
       mov cl,0a
       lea si,a
       mov ax,0000h; /*ax stores the final result*/
again: add al,[si]; /*adding data stored at si to ax*/
       inc si; /*incrementing the index*/
       dec cl; /*decrementing the count*/ 
       jnz again
       mov cl,0ah; /*resetting the count to 10*/
       div cl; /*dividing ax by cl*/
	mov  ah, 02h; /*to print ax*/
	mov  dl, ax
	add  dl, "0"
	int  21h
       mov ah,4ch
       int 21h
       end start
       .end
