.model small
.stack 64
.data
 
msg db " India is my country $"
 
.code

start: mov ax,@data
       mov ds,ax
       MOV AH,02
       Mov dl,'j'
       INT 21H
       mov ah,4ch
       int 21h
       end  
        
