
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.data
    msg1 db 10,13,"enter the row number: $"
    
    row db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
   
    lea dx,msg1
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    mov cx,ax
 
    
    label:
        mov dl,"*"
        
        mov ah,2
        
        label2:
            int 21h
            dec cx
        loop label2    
;        
;    mov ah,2
;    mov dl,10
;    int 21h
;    mov dl,13
;    int 21h
;     
;    loop label
;    exit:
;    mov ah,4ch
;    int 21h
main endp
       

ret




