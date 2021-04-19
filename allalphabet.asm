
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.data
.code
main proc
     mov cx,26
     
     mov dx,65 ; ascii code of A=65 and z=90
     t1:
     mov ah,2
     int 21h
     
     
     inc dx
     loop t1
     
     

ret




