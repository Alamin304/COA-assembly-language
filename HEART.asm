.MODEL SMALL

 .STACK 100H

 .DATA

 A DB 3

 B DB ?

 C DB 'HELLO COA SECTION B $'



.CODE



MAIN PROC

 MOV AX,@DATA

 MOV DS,AX


 LEA DX,C

 MOV AH,9

 INT 21H

 ;MOV AH,1

 ;INT 21H

 ; MOV A,AL


 MOV DL,A

 MOV AH,2

 INT 21H



 MOV AH,4CH

 INT 21H

 MAIN ENDP

 END MAIN