.model small
.stack 100h
.data
m1 db 10,13,'Satardat $'  
m2 db 10,13,'Sunday $'
m3 db 10,13,'Monday $' 
m4 db 10,13,'Tuesday $'
m5 db 10,13,'Wednesday $'
m6 db 10,13,'Thusday $'
m7 db 10,13,'Friday $'
inp db 10,13,'Input : $'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,inp
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al 
    sub bl,48
    
    cmp bl,1
    je l1
    
    cmp bl,2
    je l2
    
    cmp bl,3
    je l3
    
    cmp bl,4
    je l4
    
    cmp bl,5
    je l5
    
    cmp bl,6
    je l6
    
    cmp bl,7
    je l7
    
    l1:
    mov ah,9
    lea dx,m1
    int 21h
    jmp exit
    
    l2:
    mov ah,9
    lea dx,m2
    int 21h
    jmp exit
    
    l3:
    mov ah,9
    lea dx,m3
    int 21h
    jmp exit
    
    l4:
    mov ah,9
    lea dx,m4
    int 21h
    jmp exit 
    
    l5:
    mov ah,9
    lea dx,m5
    int 21h
    jmp exit 
    
    l6:
    mov ah,9
    lea dx,m6
    int 21h
    jmp exit 
    
    l7:
    mov ah,9
    lea dx,m7
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main

