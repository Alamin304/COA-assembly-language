.model small
.stack 100h
.data
msg1 db 'Welcome to my calculator $'
msg2 db 'Please User enter digit 1 : $'
msg3 db 'Please User enter digit 2 : $'
msg4 db 'Thank you for using my calculator $'
msg5 db 'Have a good day $'
.code
main proc
    mov ax, @data
    mov ds, ax
    
    lea dx, msg1
    mov ah, 9
    int 21h
    
    mov ah,2
    moV dl, 0DH
    int 21h
    mov dl, 0AH
    int 21h
    
    lea dx, msg2
    mov ah, 9
    int 21h
    
    mov ah,1
    int 21h
    mov bl, al
    
    mov ah,2
    moV dl, 0DH
    int 21h
    mov dl, 0AH
    int 21h
    
    lea dx, msg3
    mov ah, 9
    int 21h
    
    mov ah,1
    int 21h
    mov bh, al
    
    mov ah,2
    moV dl, 0DH
    int 21h
    mov dl, 0AH
    int 21h
    
    sub bl,bh
    add bl,48d
    
    mov dl,bl
    mov ah,2
    int 21h
    
    mov ah,2
    moV dl, 0DH
    int 21h
    mov dl, 0AH
    int 21h
    
    lea dx, msg4
    mov ah, 9
    int 21h 
    
    mov ah,2
    moV dl, 0DH
    int 21h
    mov dl, 0AH
    int 21h
    
    lea dx, msg5
    mov ah, 9
    int 21h
    
    mov ah, 4ch
    int 21h
    
    main endp
end main
