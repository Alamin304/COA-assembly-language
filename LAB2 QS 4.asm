.model small
.stack 100h
.data
msg db '* $'
.code
main proc
    mov ax, @data
    mov ds, ax
    
    lea dx, msg
    mov ah, 9
    int 21h
    
    mov ah,2
    moV dl, 0DH
    int 21h
    mov dl, 0AH
    int 21h
    
    lea dx, msg
    mov ah, 9
    int 21h
    int 21h
    
    mov ah,2
    moV dl, 0DH
    int 21h
    mov dl, 0AH
    int 21h
    
    lea dx, msg
    mov ah, 9
    int 21h
    int 21h
    int 21h  
    
    mov ah,2
    moV dl, 0DH
    int 21h
    mov dl, 0AH
    int 21h
    
    lea dx, msg
    mov ah, 9
    int 21h
    int 21h
    int 21h 
    int 21h
    
    mov ah,2
    moV dl, 0DH
    int 21h
    mov dl, 0AH
    int 21h
    
    lea dx, msg
    mov ah, 9
    int 21h
    int 21h
    int 21h 
    int 21h
    int 21h
    
    
    
    
    main endp
end main