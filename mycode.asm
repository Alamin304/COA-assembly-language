.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
     
    MOV AH,1;input
    INT 21H 
    
    MOV BL,AL
    
    MOV AH,2  ;next line
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    MOV DL,BL
    
    MOV AH,2;output
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN