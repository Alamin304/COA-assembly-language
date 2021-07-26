.MODEL SMALL
.STACK 100H
.DATA 
A DB 'Welcome To My Calculator!! $'
B DB 'Please User Enter the number 5:$'
C DB 'Twos Complement of 5:$'
D DB 'Twos Complement of Twos Complement of 5:$'
E DB 'Thank You for using my Calculator $'
F DB 'Have a good day $'
.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,A
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DX,0DH
    INT 21H
    MOV DX,0AH
    INT 21H
   
    LEA DX,B
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DX,0DH
    INT 21H
    MOV DX,0AH
    INT 21H
    
    
    MOV AH,1
    INT 21H  
    MOV BL,AL  
    
    MOV AH,2
    MOV DX,0DH
    INT 21H
    MOV DX,0AH
    INT 21H
    
    LEA DX,C
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DX,0DH
    INT 21H
    MOV DX,0AH
    INT 21H   
    
    MOV AH,45D
    MOV DL,AH
    MOV AH,2
    INT 21H
    
    MOV AH,BL
    MOV DL,AH
    MOV AH,2
    INT 21H 
    
    MOV AH,2
    MOV DX,0DH
    INT 21H
    MOV DX,0AH
    INT 21H
  
    LEA DX,D
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DX,0DH
    INT 21H
    MOV DX,0AH
    INT 21H
    
    MOV AH,BL
    MOV DL,AH
    MOV AH,2
    INT 21H   
    
    MOV AH,2
    MOV DX,0DH
    INT 21H
    MOV DX,0AH
    INT 21H 
    
   
    LEA DX,E
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DX,0DH
    INT 21H
    MOV DX,0AH
    INT 21H
   
    LEA DX,F
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DX,0DH
    INT 21H
    MOV DX,0AH
    INT 21H
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN