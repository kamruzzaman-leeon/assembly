				;; _____________________!_____________________ 
.model small
  
	;model small tells the assembler that we intend to use the small memory model
	;one code segment, one data segment and one stack segment - and the values of
	;the segment registers are never changed.

.stack 100h
	;STACK 100h : is a segment directive which defines 100h words as program STACK.

.data
	;the data section is used for declaring initialized data or constants.

leeon db 'Enter the password :$'      ;store the string into data segment
Correct db 'Correct Password,Dear !$'  ;store the string into data segment
Wrong db 'Wrong Password!try again. $'  ;store the string into data segment
password db 'cse442$'                  ;store the string into data segment

.code
      ;This defines an area in memory that stores the instruction codes
			;; _____________________!_____________________                    
main proc
    mov ax,@data    ;first address point that's move to the ax.
    mov ds,ax 		;move ax memory data to ds.
	
    mov ah,9     ;string print function
    lea dx,leeon
    ;LEA is more powerful because it also allows  
			;to get the address of an indexed variables.
			;load address of a to dx.

    int 21h   ;mov the dl data into AL
		;read character from standard input, with echo,
		; result is stored in AL.
		;if there is no character in the keyboard buffer,
		;the function waits until any key is pressed.
		;Dos-intrrupt ,21h is for text manipulation
		;10h is for graphics manipulation
		
   			
   ;;leeon storage data print stop

			;; _____________________!_____________________ 
    
    mov bx, offset password  ;offset password  The OFFSET operator returns the offset of a memory location relative to the beginning of the segment
    mov cx,6
    
    label:                ;create label to insert character until counter is not zero 
        mov ah,08         ;hide insert charracter with back that ascii is 08h
        int 21h           ;dos-intrrupt
        cmp al,[bx]       ;compare al value with bx array character
        jne wr
        inc bx           ;increase bx register address by one
        loop label:
            
          ;;newline start
            mov ah,2      ;code for output
            mov dl,10     ;function for shift left-most position
            int 21h       ;Dos-intrrupt ,21h is for text manipulation
            mov dl,13     ;function for shift same horizontal but newline position
            int 21h
          ;;newline end 
          
            mov ah,9     ;string print function
            lea dx,Correct  ;print correct store message
            int 21h          ;dos-intrrupt
            jmp exit       ;jump to exit
   

      wr:
        
        ;;newline start
            mov ah,2      ;code for output
            mov dl,10     ;function for shift left-most position
            int 21h       ;Dos-intrrupt ,21h is for text manipulation
            mov dl,13     ;function for shift same horizontal but newline position
            int 21h
          ;;newline en  
        mov ah,9            ;string print function
        lea dx,Wrong        ;print wrong store message
        int 21h


                    ;; _____________________!_____________________
                     
     
   ;;exit function start
   exit:
    mov ah,4ch    ;function terminate
    int 21h		  ;dos interrupt 
   ;;exit function end
    main endp   ;end of program
	
                     ;; _____________________!_____________________
                     
     
end main 	;marks the end of the file,specifying an entry point for your program