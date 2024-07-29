.model small
.stack 100h
.data
x db 10,13,'Summation : $'
y db 10,13,'Substraction : $'
z db 10,13,'Multiplication : $'
v db 10,13,'Division : $' 
a dw ?
b dw ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    mov bh,al
    int 21h
    mov cl,al
    int 21h
    mov ch,al
    int 21h
    
    mov ah,9
    lea dx,x
    int 21h
    
    add bl,bh
    sub bl,48
    
    mov ah,2
    mov dl,bl
    int 21h
     
    ;sub bl,bh
    ;add bl,48
    
    ;mov bx,cl
    ;mul ch

