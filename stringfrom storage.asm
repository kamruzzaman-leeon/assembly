
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.data
    var1 db "leeon$"
    var2 db "world$"
    var3 db " $"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    ;mov dl,var1
    ;add dl,48
    
    mov dx,offset var1
    
    mov ah,9  ;output command
    int 21h
     
    lea dx,var3
    
    mov ah,9
    
    int 21h
    lea dx,var2
    

    mov ah,9
    int 21h
    
main endp
    
ret




