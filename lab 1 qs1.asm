.MODEL SMALL
 .STACK 100H
 .DATA
 .CODE
 MAIN PROC 
    
 MOV AH,1        ;input number 1
 INT 21H

 MOV BL,AL       ;by default saved in AL

 MOV AH,1        ;input number 2
 INT 21H

 MOV BH,AL       ;by default saved in AL  

 
 ADD BL,BH       ;bl=bl+bh
 SUB BL,30H      ;bl=bl-30

 

 MOV DL,BL       ;dl value is shown as output

 MOV AH,2
 INT 21H

 MOV AH,4CH
 INT 21H
 MAIN ENDP
 END MAIN
