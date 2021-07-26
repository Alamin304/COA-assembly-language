.MODEL SMALL
.STACK 100H
.DATA

A DB 'PLEASE ENTER THE DIGIT 1 $' 
B DB 'PLEASE ENTER THE DIGIT 2 $'
C DB 'OUTPUT $'
D DB 'Thank You for using my Calculator $'
E DB 'Have a good day $'
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,A
    MOV AH,9
    INT 21H
    
    MOV AH,2  
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
     MOV AH,1
    INT 21H
    MOV BL,AL 
    
    MOV AH,2  
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,B
    MOV AH,9
    INT 21H
    
    MOV AH,2  
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    
    MOV AH,2  
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,C
    MOV AH,9
    INT 21H 
    
    ADD BL,BH   
    SUB BL,48D
    
    MOV AH,2  
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H  
    
    MOV DL,BL
    MOV AH,2
    INT 21H
    
    MOV AH,2  
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    LEA DX,D
    MOV AH,9
    INT 21H
    
     
    MOV AH,2  
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
           
    LEA DX,E
    MOV AH,9
    INT 21H 
           
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN