.model small
.stack 100h
.code
main proc
    mov cx,5
    l1:
    mov bx,cx 
    
    l2:
    mov ah,2
    mov dl,'*'
    int 21h
    loop l2
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov cx,bx
    loop l1
    

