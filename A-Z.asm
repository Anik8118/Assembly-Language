.model small
.stack 100h
.code
main proc
    mov cx,26
    mov ah,2 
    mov dl,65
    level:
    int 21h 
    inc dl 
    loop level
