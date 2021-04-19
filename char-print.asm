
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.data
.code
main proc
    mov dl,"L"
    mov ah,2
    int 21h
    
    mov dl,"E"
    mov ah,2
    int 21h
    
    mov dl,"E"
    mov ah,2
    int 21h 
    
    mov dl,"O"
    mov ah,2
    int 21h
    
    mov dl,"N"
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
main endp
end main

ret




