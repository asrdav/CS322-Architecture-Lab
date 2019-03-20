.model small
.stack 64
.data
a db 02h,02h,02h,02h,02h,02h,02h,02h,02h,02h

.code

start: mov ax,@data
       mov ds,ax
       mov cl,10
       lea si,a
       mov ax,0000h
again: add al,[si]
       inc si
       dec cl
       jnz again
       mov cl,0ah
       div cl
       mov ah,4ch
       int 21h
       end start
       .end
