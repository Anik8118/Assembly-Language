.model small
.stack 100h 
.data
a db "Enter the two number$:" 
b db "num1 is greater than num2$:"
c db "num1 is greater than num2$:"
.code

main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h 
    
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov bh,al 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h  
    
    cmp bl,bh
    jg L1
    jmp L2 
    jmp exit:   
    

    
    L1:
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit: 
 
    
    L2:
    mov ah,2
    mov dl,bh
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main