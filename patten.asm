.model small
.stack 100h
.code
main proc
    mov cx, 8        ; Set the number of rows
    mov bx, 20       ; Set the number of asterisks per row
outer_loop:
    mov ah, 2        ; Function to print a character
    mov dl, '*'      ; Character to print

inner_loop:
    int 21h          ; Print the character
    dec bx           ; Decrement the counter for characters per row
    jnz inner_loop   ; If not zero, continue inner loop

    mov ah, 2        ; Function to print a newline
    mov dl, 10       ; ASCII code for newline character
    int 21h

    mov ah, 2        ; Function to print a carriage return
    mov dl, 13       ; ASCII code for carriage return character
    int 21h

    dec cx           ; Decrement the counter for rows
    jnz outer_loop   ; If not zero, continue outer loop

    mov ah, 4Ch      ; Function to exit program
    int 21h
main endp
end main
el