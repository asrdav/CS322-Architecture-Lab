.model small
.stack 64
.data
 
msg db " India is my country $"
 
.code

start: mov ax,@data
       mov ds,ax
       lea DX, msg
       MOV AH,09
       INT 21H
       mov ah,4ch
       int 21h
       end  
