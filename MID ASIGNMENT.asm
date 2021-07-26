.MODEL SMALL
.STACK 100H
.DATA
    MSG1 DB 'Hello AIUBIANS $'
    MSG2 DB 'How is life going?$'
    MSG3 DB 'Lets play a fun game!$'
    MSG4 DB 'Ask me about a small letter (a..z) and I will convert it for you in upper case letter...$'
    MSG5 DB 'Interesting right?$'  
    MSG6 DB 'So give it a try! $'
    MSG7 DB 'Enter a letter:- $' 
    MSG8 DB 'Fun Right!$'
    MSG9 DB 'Now lets play another game!$'
    MSG10 DB 'Give me two numbers as Input and I will add them for you... $'
    MSG11 DB 'Give it a try!$'
    MSG12 DB 'Number 1:- $'
    MSG13 DB 'Number 2:- $'
    MSG14 DB 'Addition:- $' 
    MSG15 DB 'Please recommend to your friends if you liked the game!$'
    MSG16 DB 'Thank you!$'  
.CODE
   MAIN PROC   
     MOV AX, @DATA                
     MOV DS, AX

     LEA DX,MSG1              
     MOV AH, 9
     INT 21H  

     MOV AH,2     
     MOV DL, 0DH
     INT 21H
     MOV DL, 0AH
     INT 21H     
 
     LEA DX,MSG2              
     MOV AH, 9
     INT 21H        

     MOV AH,2     
     MOV DL, 0DH
     INT 21H
     MOV DL, 0AH
     INT 21H     
     
          
     LEA DX,MSG3             
     MOV AH, 9
     INT 21H  
     
     MOV AH,2     
     MOV DL, 0DH
     INT 21H
     MOV DL, 0AH
     INT 21H     
     
     MOV AH,2     
     MOV DL, 0DH
     INT 21H
     MOV DL, 0AH
     INT 21H   
     
     LEA DX,MSG4             
     MOV AH, 9
     INT 21H    
     
     MOV AH,2     
     MOV DL, 0DH
     INT 21H
     MOV DL, 0AH
     INT 21H   
     
     
     LEA DX,MSG5             
     MOV AH, 9
     INT 21H   
     
     MOV AH,2     
     MOV DL, 0DH
     INT 21H
     MOV DL, 0AH
     INT 21H   
     
     
     LEA DX,MSG6             
     MOV AH, 9
     INT 21H     
     
     MOV AH,2     
     MOV DL, 0DH
     INT 21H
     MOV DL, 0AH
     INT 21H  
     
     MOV AH,2     
     MOV DL, 0DH
     INT 21H
     MOV DL, 0AH
     INT 21H   
     
     LEA DX,MSG7         
     MOV AH,9          
     INT 21H    
     
     MOV AH,2        
     MOV DL, 0DH
     INT 21H
     MOV DL, 0AH
     INT 21H        
   
    
     MOV AH,1       
     INT 21H  
    
    
     MOV BL, AL
     AND BL, 0DFH      
    
     MOV AH,2       
     MOV DL, 0DH
     INT 21H
     MOV DL, 0AH
     INT 21H      
     
     MOV AH, 2 ; 
     MOV DL, BL
     INT 21H  
     
     MOV AH,2       
     MOV DL, 0DH
     INT 21H
     MOV DL, 0AH
     INT 21H   
     
     LEA DX,MSG8         
     MOV AH,9          
     INT 21H     
     
     MOV AH,2        
     MOV DL, 0DH
     INT 21H
     MOV DL, 0AH
     INT 21H   
     
     LEA DX,MSG9         
     MOV AH,9          
     INT 21H      
     
     MOV AH,2       
     MOV DL, 0DH
     INT 21H
     MOV DL, 0AH
     INT 21H   
     
     LEA DX,MSG10         
     MOV AH,9          
     INT 21H   
     
     MOV AH,2        
     MOV DL, 0DH
     INT 21H
     MOV DL, 0AH
     INT 21H   
     
     LEA DX,MSG11         
     MOV AH,9          
     INT 21H  
     
     MOV AH,2        
     MOV DL, 0DH
     INT 21H
     MOV DL, 0AH
     INT 21H   
     
     LEA DX,MSG12         
     MOV AH,9          
     INT 21H     
     
     MOV AH,1          
     INT 21H
     MOV BL, AL
     
     MOV AH,2       
     MOV DL, 0DH
     INT 21H
     MOV DL, 0AH
     INT 21H   
     
     LEA DX,MSG13        
     MOV AH,9          
     INT 21H   
     
     MOV AH,1         
     INT 21H
     MOV BH, AL
    
     MOV AH,2      
     MOV DL, 0DH
     INT 21H
     MOV DL, 0AH
     INT 21H   
    
     LEA DX,MSG14        
     MOV AH,9          
     INT 21H 
    
     ADD BL,BH        
     SUB BL,48D
    
     MOV DL,BL
     MOV AH,2
     INT 21H
    
     MOV AH,2       
     MOV DL, 0DH
     INT 21H
     MOV DL, 0AH
     INT 21H  
    
     LEA DX,MSG15        
     MOV AH,9          
     INT 21H  
     
     MOV AH,2       
     MOV DL, 0DH
     INT 21H
     MOV DL, 0AH
     INT 21H  
    
     LEA DX,MSG16        
     MOV AH,9          
     INT 21H 
     
     MOV AH, 4CH                  
     INT 21H  
     
    MAIN ENDP
   
 END MAIN