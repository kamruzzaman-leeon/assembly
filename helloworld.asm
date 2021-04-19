org 100h

mov ah, 09h   ;function to display string message 

mov dx,offset leeon ; offset of message string

int 21h   ; DOS intrrupt                                         
mov ah,4ch      ;function terminate
int 21h

ENDP
leeon db "hello leeon's world$"

end main  

ret