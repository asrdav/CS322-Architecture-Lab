.model small
.stack 64
.data
a db 08h dup(?)
b db 08h dup(?)
.code
start:  mov ax,@data
        mov ds,ax
        lea si,a
        lea di,b
        mov dx,0000h
        mov ax,0021h
        mov bx,0002h
        mov cx,0008h
again:  div bx
        mov [si],dx
        inc si
        loop again
        dec si
        mov cx,08h
again1: mov al,[si]
        mov [di],al
        dec si
        inc di
        loop again1
        mov ah,4ch
        int 21h
        end start
        .end
