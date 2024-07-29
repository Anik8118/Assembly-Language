.model small
.stack 100h
.data
x db 10,13,'Capital $'
y db 10,13,'Small $' 
z db 10,13,'Input a Letter :  $'
d db 10,13,'Digit $' 
.code
main proc
     mov dx,@data
     mov ds,dx
     
     mov ah,9
     lea dx,z
     int 21h
     
     mov ah,1
     int 21h
     mov bl,al
     
     l1:
     cmp bl,48
     jge l2
     jmp l5
     
     l2:
     cmp bl,57
     jle l4
     jmp l5
     
     l4:
     mov ah,9
     lea dx,d
     int 21h
     jmp exit
     
     l5:
     cmp bl,65
     jge l6
     jmp l5
     
     l6:
     cmp bl,90
     jle l7
     jmp l8
     
     l7:
     mov ah,9
     lea dx,x
     int 21h
     jmp exit
     
     l8:
     cmp bl,97
     jge l9
     jmp l5
     
     l9:
     cmp bl,122
     jle l10
     jmp l5
     
     l10:
     mov ah,9
     lea dx,y
     int 21h
     jmp exit
     
     exit:
     mov ah,4ch
     int 21h
     main endp
end main
     
     
      

