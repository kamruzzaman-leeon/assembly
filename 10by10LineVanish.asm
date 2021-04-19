;**********
;*        *
;* ****** *
;* *    * *
;* * ** * *
;* * ** * *
;* *    * *
;* ****** *
;*        *
;* ****** *
;10 by 10 line vanish
              
              
              ;; _____________________!_____________________ 
.model small
    ;model small tells the assembler that we intend to use the small memory model
	;one code segment, one data segment and one stack segment - and the values of
	;the segment registers are never changed.
.stack 100h
    ;STACK 100h : is a segment directive which defines 100h words as program STACK.
.data
    ;the data section is used for declaring initialized data or constants.
leeon db '10 BY 10 MANUAL PRINT LINE GAP$'
    ;10,13-> Line Feed (LF) - ASCII Character 10, and Carriage Return (CR) - ASCII 
	;Character 13 LF moves the cursor down one line (without changing the
	;horizontal position), and CR moves the cursor back to the left-most column
.code
    ;This defines an area in memory that stores the instruction codes
          
               ;; _____________________!_____________________ 
main proc
    mov ax,@data  ;first address point that's move to the ax.
    mov ds,ax     ;move ax memory data to ds.
    
                ;; _____________________!_____________________
   ;; leeon stroage data print start             
    mov ah,9
      ;function to display string message
    lea dx,leeon
      ;LEA is more powerful because it also allows  
	  ;to get the address of an indexed variables.
	  ;load address of a to dx.
    int 21h
        ;mov the dl data into AL
		;read character from standard input, with echo,
		; result is stored in AL.
		;if there is no character in the keyboard buffer,
		;the function waits until any key is pressed.
		;Dos-intrrupt ,21h is for text manipulation
		;10h is for graphics manipulation
		
   			
   ;;leeon storage data print stop
   			;; _____________________!_____________________ 
		    	
   ;;newline start 
    mov ah,2
		;code for output
    mov dl,10
		;insert 10 into dl, that means shitf 1eft most position
    int 21h      
		;dos interrupt
    mov dl,13 
		;shift new line but same horizontal position
    int 21h     
		;dos interrupt
		
   ;;newline end
                ;; _____________________!_____________________ 
                        ;;**********
    mov cx,1
    
    level1:
    
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
	
    ;newline
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
	
    loop level1
                ;; _____________________!_____________________
				
    mov cx,1
    
    level2:
    mov dl,'*'
    
    mov ah,2
    int 21h
    
    mov dl,' '
    mov ah,2
    int 21h
   
    int 21h    
    int 21h
	int 21h  
    int 21h    
    int 21h     
    int 21h        
    int 21h 
    mov dl,'*'
    mov ah,2    
    int 21h
    
	;newline
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
	
    loop level2
    
                ;; _____________________!_____________________ 
    mov cx,1 
    
    level3:
    mov dl,'*'
    mov ah,2
    int 21h
    
    mov dl,' '
    mov ah,2
    int 21h
    
    mov dl,'*'
    mov ah,2
    int 21h    
    int 21h       
    int 21h      
    int 21h       
    int 21h        
    int 21h
	
    mov dl,' '
    mov ah,2    
    int 21h 
    mov dl,'*'
    mov ah,2    
    int 21h
    
	;newline
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    loop level3
                   ;; _____________________!_____________________ 
    mov cx,1 
    
    level4:    
    mov dl,'*'    
    mov ah,2
    int 21h
    
    mov dl,' '
    mov ah,2
    int 21h
    
    mov dl,'*'
    mov ah,2
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
	
    mov dl,' '
    mov ah,2    
    int 21h
	
    mov dl,'*'
    mov ah,2    
    int 21h
    
	;newline
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
	
    loop level4
                      ;; _____________________!_____________________
					  
    mov cx,2 
    
    level5:    
    mov dl,'*'    
    mov ah,2
    int 21h
    
    mov dl,' '
    mov ah,2
    int 21h
    
    mov dl,'*'
    mov ah,2
    int 21h
    mov dl,' '
    mov ah,2    
    int 21h
    mov dl,'*'
    mov ah,2    
    int 21h    
    int 21h
	
    mov dl,' '
    mov ah,2    
    int 21h
    mov dl,'*'
    mov ah,2    
    int 21h
    mov dl,' '
    mov ah,2    
    int 21h 
    mov dl,'*'
    mov ah,2    
    int 21h
    
	;newline
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
	
    loop level5
				;; _____________________!_____________________
					  
    mov cx,1 
    
    level6:
    
    mov dl,'*'
    
    mov ah,2
    int 21h
    
    mov dl,' '
    mov ah,2
    int 21h
    
    mov dl,'*'
    mov ah,2
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
    mov dl,' '
    mov ah,2    
    int 21h 
    mov dl,'*'
    mov ah,2    
    int 21h
    
    ;newline
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    loop level6
						 ;; _____________________!_____________________ 
    mov cx,1 
                     
    level7:
    
    mov dl,'*'    
    mov ah,2
    int 21h
    
    mov dl,' '
    mov ah,2
    int 21h
    
    mov dl,'*'
    mov ah,2
    int 21h
       
    int 21h    
    int 21h    
    int 21h   
    int 21h   
    int 21h
    
    mov dl,' '
    mov ah,2    
    int 21h
     
    mov dl,'*'
    mov ah,2    
    int 21h
    
    ;newline
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    loop level7
							;; _____________________!_____________________
    mov cx,1
                            
    level8:
    
    mov dl,'*' 
    mov ah,2
    int 21h
    
    mov dl,' '
    mov ah,2
    int 21h
      
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h    
    int 21h
     
    mov dl,'*'
    mov ah,2    
    int 21h
    
    ;newline
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    loop level8
    
    mov cx,1
                             ;; _____________________!_____________________ 
    level9:
    
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
    
    ;newline
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    loop level9
    
                               ;; _____________________!_____________________ 
    ;;exit function start
    exit: 
    mov ah,4ch
    int 21h
    ;;exit function end
    main endp ;end of program
end main      ;marks the end of the file,specifying an entry point for your program