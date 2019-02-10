.model small
.stack 100h
.data
    msg db 'Enter a character :$'
    
    msg2 db 0dh,0ah,' You are enter wrong chracter $'
    msg3 db 0dh,0ah, 'It is capital and small is: $'
    msg4 db 0dh,0ah, 'It is small chracter and capital is : $' 
      msg5 db 0dh,0ah, 'It is numaric not possible to convert $'  
    

.code

 MAIN PROC
    MOV AX,@DATA
	MOV DS,AX
	MOV AH,9
	LEA DX,msg
    INT 21H
    
    mov ah,1
    int 21h
    
    cmp al,122
    jnle else_if 
    
    
    cmp al,97
    jnge else_if
     
    mov cl,al
    MOV AH,9
	LEA DX,msg4
    INT 21H
    
     
    
    
    sub cl,32
    mov dl,cl
    mov ah,2
    int 21h 
    jmp display
    
   
    
    else_if:
    
     
    cmp al, 90
    jnle else_if1
    
    
    cmp al,65
    jnge else_if1
    
    
    mov bl,al
    
    MOV AH,9
	LEA DX,msg3
    INT 21H 
  
       
       
    add bl,32
    mov dl,bl
    mov ah,2
    int 21h
     
    jmp display
    
    MOV AH,9
	LEA DX,msg2
    INT 21H
    
    
    else_if1:
    
     cmp al, 57
    jnle else_if1
    
    
    cmp al,48
    jnge else_if1
    
    
   
    
    MOV AH,9
	LEA DX,msg5
    INT 21H 
    jmp display 
    
    MOV AH,9
	LEA DX,msg2
    INT 21H
    
    display:
    
    mov ah,4ch
    int 21h

   MAIN ENDP
   END MAIN