.model small
.stack 100h
.data
a db 10,13,'Capital : $'
b db 10,13,'Not Capital : $'
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
    
    l1:
    cmp bl,65
    jge l2
    
    mov ah,9
    lea dx,b
    int 21h 
    jmp exit
    
    l2:
    cmp bl,90
    jle l3
    
    mov ah,9
    lea dx,b
    int 21h 
    jmp exit
    
    l3:
    mov ah,9
    lea dx,a
    int 21h 
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    

    


