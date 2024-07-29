.model small
.stack 100h
.code
main proc
    mov cx,5
    mov ah,2
    mov dl,'*'
    lev2:
    lev1:
    int 21h 
    loop lev1
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    dec dl
    
    loop lev1