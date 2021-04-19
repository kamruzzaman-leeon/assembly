;character print using ascii code
                ;; _____________________!_____________________  
.model small
    ;model small tells the assembler that we intend to use the small memory model
	;one code segment, one data segment and one stack segment - and the values of
	;the segment registers are never changed.
.stack 100h
    ;STACK 100h : is a segment directive which defines 100h words as program STACK.
.data
	;the data section is used for declaring initialized data or constants.
.code
    ;This defines an area in memory that stores the instruction codes
                ;; _____________________!_____________________ 
                
main proc
    mov cx,0     ;counter flag placed by 0
    
    level:        ;create loop for every line can hold 10 character
    mov bx,cx     ;cx register value store into bx
         
    mov cx,10     ;counter flag replace by 10
    
    level2:
    mov ah,2       ;output function
    mov dl,bl      ;bl content store into dl
    int 21h        ;dos-intrrupt
    
    inc bl         ;increase the bl register address by one
    cmp bl,255     ;compare bl with 255 ,result is not stored anywhere, flags are
                   ;set (OF, SF, ZF, AF, PF, CF) according to result. 

    je exit         ;Short Jump if first operand is Equal to second
                    ;operand (as set by CMP instruction). 

    loop level2
    
    ;newline
    mov ah,2         ;code for output
    mov dl,10        ;function for shift left-most position
    int 21h          ;Dos-intrrupt ,21h is for text manipulation
    mov dl,13        ;function for shift same horizontal but newline position
    int 21h
    
    inc bl       ;increase the bl register address by one.
    mov cx,bx
    loop level
          ;; _____________________!_____________________
                     
    ;;exit function start
    exit:
    mov ah,4ch  ;function terminate
    int 21h      ;dos interrupt
    ;;exit function end
    main endp     ;end of procedure
            ;; _____________________!_____________________
                     
end main      ;marks the end of the file,specifying an entry point for your program