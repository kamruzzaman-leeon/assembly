
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.data
.code
main proc
    mov cx,9
    mov dx,57
    
    t1:
    mov ah,2
    int 21h
    
    dec dx
    
    loop t1
main endp

ret




