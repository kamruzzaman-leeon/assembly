;**********
;**********
;**********
;***	***
;***	***
;***	***
;**********
;**********
;**********
;9 by 10 
				;; _____________________!_____________________ 

.model small	;use the small memory model -one code segment, one data segment
.stack 100h		;one stack segment where values of the segment registers are never changed.
				
.data			; to declare the memory region, where data elements are stored for the program.

leeon db  '9 by 10 hole in middle position$'
	
	
.code			 ;This defines an area in memory that stores the instruction codes
				
				;; _____________________!_____________________ 
			
main proc
    mov ax,@data  ;first address point that's move to the ax.
    mov ds,ax     ;move ax memory data to ds. 
    
            
              ;; _____________________!_____________________   
              
              
  ;; leeon stroage data print start
   
    mov ah,9      ;function to display string message
    lea dx,leeon      ;load address of leeon to dx.
    int 21h       ;Dos-intrrupt ,21h is for text manipulation 
    
  ;;leeon storage data print stop 
              
              
              ;; _____________________!_____________________ 
               
               
  ;;newline start
    mov ah,2      ;code for output
    mov dl,10     ;function for shift left-most position
    int 21h       ;Dos-intrrupt ,21h is for text manipulation
    mov dl,13     ;function for shift same horizontal but newline position
    int 21h
  ;;newline end
               
               
               ;; _____________________!_____________________
               
               
   
  ;**********
  ;**********
  ;**********
  ;print start         
    mov cx,3
    
    level:    
    
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
    loop level
    ;level loop continue until cx not euqal to zero.
    
  ;**********
  ;**********
  ;**********
  ;print end
    
              ;; _____________________!_____________________
  
  ;***    ***
  ;***    ***
  ;***    ***
  ;print start
    mov cx,3
    
    level2:
    
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
    loop level2
    
  ;***    ***
  ;***    ***
  ;***    ***
  ;print start 
  
                 ;; _____________________!_____________________
    
    
  ;**********
  ;**********
  ;**********
  ;print start 
    mov cx,3
    
    level3:
    
    mov dl,'*'
    
    mov ah,2
    int 21h          ;dos interrupt
    int 21h          ;dos interrupt
    int 21h          ;dos interrupt
    int 21h          ;dos interrupt
    int 21h          ;dos interrupt
    int 21h          ;dos interrupt
    int 21h          ;dos interrupt
    int 21h          ;dos interrupt
    int 21h          ;dos interrupt
    int 21h          ;dos interrupt
    
    mov ah,2         ;call output function
    mov dl,10        ;function for shift left-most position
    int 21h
    mov dl,13
    int 21h
    loop level3 
    
  ;**********
  ;**********
  ;**********
  ;print end
                     ;; _____________________!_____________________
                     
   ;;exit function start                  
    exit:
    mov ah,4ch     ;function terminate
    int 21h        ;dos interrupt
   ;;exit function end
   
    main endp      ;end of procedure.  
    
                     ;; _____________________!_____________________
                     
                     
end main    ;marks the end of the file,specifying an entry point for your program
    