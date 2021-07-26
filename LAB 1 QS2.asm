.MODEL SMALL
.STACK 100H
.DATA
.CODE
 MAIN PROC
    MOV AH,1        ;input number 1
    INT 21H

    MOV BL,AL       ;by default saved in AL
     MOV AH,2       ;next line
     MOV DL,0DH
     INT 21H
     MOV DL,0AH
     INT 21H

    MOV AH,1        ;input number 2
    INT 21H

    MOV BH,AL       ;by default saved in AL 

    
     MOV AH,2       ;next line
     MOV DL,0DH
     INT 21H
     MOV DL,0AH
     INT 21H   

     
     MOV AH,1       ;input number3
     INT 21H
     MOV CL,AL

     
     MOV AH,2       ;next line
     MOV DL,0DH
     INT 21H
     MOV DL,0AH
     INT 21H

    ADD BL,BH       ;bl=bl+bh
    SUB BL,48D      ;bl=bl-48  
    MOV CH,BL
    ADD CH,CL
    SUB CH,48

    
    MOV DL,CH       ;dl value is shown as output

    MOV AH,2
    INT 21H

    MOV AH,4CH
    INT 21H
    MAIN ENDP
 END MAIN