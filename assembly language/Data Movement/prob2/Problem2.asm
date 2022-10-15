;prob2.asm
;let your complete first name
;run across the center of the screen

                                
org 100h 				                    ;this directive required for a simple 1 segment .com program.
                                
mov ax,0b800h 				                ;set AX to hexadecimal value of B800h.

mov ds, ax 				                    ;copy value of AX to DS.

mov di, 0

mov cx, 80

mov di, (160*12) + (4*2)		            ;set the screen to the center

print: 					                    ;Variable
 
    push cx
    mov cx,0ffffh
    
        delay: 				                ;Variable
        
            
            push cx
            mov cx,0ffh
            
                dugay:			            ;Variable
		      add di, 2 

                      mov bx[di], 'M' 		;display the letter M

                      mov bx[di+ 2], 'E'	;display the letter E

                      mov bx[di+ 4], 'L'	;display the letter L

                      mov bx[di+ 6], 'V'	;display the letter V

                      mov bx[di+ 8], 'I'	;display the letter I

                      mov bx[di+ 10], 'N'	;display the letter N

                      mov bx[di+ 12], ' '	;MAKE A SPACE

                      mov bx[di+ 14], 'R'	;display the letter R

                      mov bx[di+ 16], 'E'	;display the letter E

                      mov bx[di+ 18], 'Y'	;display the letter Y
                      
                      mov bx[di],' ' 		;make the first letter disappear and show the next one
                      mov bx[di+ 2], ' '	;make the first letter disappear and show the next one
                      mov bx[di+ 4], ' '	;make the first letter disappear and show the next one
                      mov bx[di+ 6], ' '	;make the first letter disappear and show the next one
                      mov bx[di+ 8], ' '	;make the first letter disappear and show the next one
                      mov bx[di+ 10], ' '	;make the first letter disappear and show the next one
                      mov bx[di+ 14], ' '	;make the first letter disappear and show the next one
                      mov bx[di+ 16], ' '	;make the first letter disappear and show the next one
                      mov bx[di+ 18], ' '	;make the first letter disappear and show the next one
                      
                      push cx
                      mov cx,0ffffh
                      pop cx
        loop dugay 				            ; loop the varialbe dugay to repeat the process
        pop cx 
        
    loop delay
    pop cx

loop print


int 20h

ret						                    ;return function




