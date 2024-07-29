.model small
.stack 100h
.data
x db 10,13,'Input Hex Value: $'
y db 10,13,'Coverted Decimal : $'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,x
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,17d 
    
    mov ah,2
    mov dl,10 
    int 21h
    mov dl,13 
    int 21h
    
    mov ah,2
    mov dl,49
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h  
    
    
    
    



    
    
    
    
    
    

