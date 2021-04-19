
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

main proc
    
    label1:
        mov dl,'a'
        mov ah,2
        int 21h
    jmp label1
main endp   

ret




