.model small
.stack 100h
.code
main proc
    mov ah,1
    int 21h
    mov bl,al
    sub bl,17d
    
    mov ah,2
    ;int 21h
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
    main endp
end main



