.model small
.stack 100h
.data
a db 10,13,'Input first Number : $'
b db 10,13,'Input Socend Number : $'
c db 10,13,'Input Third Number : $'
d db 10,13,'Input Fourth Number : $'
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
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,1 
    int 21h
    mov bh,al 
    
    mov ah,9
    lea dx,c
    int 21h
    
    mov ah,1
    int 21h
    mov cl,al
    
    mov ah,9
    lea dx,d
    int 21h
    
    mov ah,1
    int 21h
    mov ch,al
    
    l1:
    cmp bl,bh
    jg l2
    jmp l3
    
    l2:
    cmp bl,cl
    jg l4
    jmp l5
    
    l4:
    cmp bl,ch
    jg l6
    
    mov ah,2
    mov dl,ch
    int 21h 
    jmp exit
    
    l6:
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit
    
    l3:
    cmp bh,cl
    jg l7
    jmp l8
    
    l7:
    cmp bh,ch
    jg l8
    jmp l4
    
    l8:
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit
    
    l5:
    cmp cl,bh
    jg l9
    jmp l10
    
    l9:
    cmp cl,ch
    jg l11
    jmp l4
    
    l11:
    mov ah,2
    mov dl,cl
    int 21h 
    jmp exit
    
    l10:
    jmp l3
    
    
    
     
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    
    
    
