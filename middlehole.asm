.model small
.stack 100h
.data
a db 10,13,'middle hole $'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov cx,3
    
    lev:
    
    mov dl,'*'
    
    mov ah,2
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    loop lev
    
        mov cx,3
    
    lev2:
    
    mov dl,'*'
    
    mov ah,2
    int 21h
    int 21h
    int 21h
    
    
    mov dl,' '
    
    mov ah,2
    int 21h
    int 21h
    int 21h
    int 21h
    
    mov dl,'*'
    
    mov ah,2
    int 21h
    int 21h
    int 21h
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    loop lev2
    
    mov cx,3
    
    lev3:
    
    mov dl,'*'
    
    mov ah,2
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    loop lev3 
    


    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    .model small
.stack 100h
.data
a db 10,13,'$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov cx,3
    
    lev:
    
    mov dl,'*'
    
    mov ah,2
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    loop lev
    
        mov cx,3
    
    lev2:
    
    mov dl,'*'
    
    mov ah,2
    int 21h
    int 21h
    int 21h
    
    
    mov dl,' '
    
    mov ah,2
    int 21h
    int 21h
    int 21h
    int 21h
    
    mov dl,'*'
    
    mov ah,2
    int 21h
    int 21h
    int 21h
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    loop lev2
    
    mov cx,3
    
    lev3:
    
    mov dl,'*'
    
    mov ah,2
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    loop lev3 
    


    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    