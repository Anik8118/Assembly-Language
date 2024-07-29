.model small
.stack 100h
.data
a db ?
b db ?

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    sub al,48 
    mov a,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,1
    int 21h
    sub al,48 
    mov b,al 
    
    mov bl,a
    mul b
    
    mov ah,2
    mov dl,bl
    add dl,48
    int 21h
    
    main endp
end main