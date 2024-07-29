.model small
.stack 100h
.data
x db ?
y db ?
a db 10,13,'After swap$'
b db 10,13,'Before swap $'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    ;before swap 
    mov ah,9
    lea dx,b
    int 21h
    
    ;new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
           
    ;input first value       
    mov ah,1
    int 21h
    mov x,al 
    
    
    ;new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;input socend value
    mov ah,1
    int 21h
    mov y,al
     
    ;value exchange
    mov bl,x

    mov bh,y
    
    mov x,bh
    
    mov y,bl
    
    ;after swap message
    mov ah,9
    lea dx,a
    int 21h
     
    ;new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    ;print value first value after swap
    mov ah,2
    mov dl,x
    int 21h
          
    ;new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
     
    ;print socend value value after swap
    mov ah,2
    mov dl,y
    int 21h
    main endp
end main

    