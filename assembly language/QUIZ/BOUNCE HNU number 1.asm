
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;Make an assembly language program that will display “HNU” 
;on the top left portion of the screen 
;to the bottom center portion 
;and to the top right portion as if it is bouncing on the screen.

mov ax, 0b800h
mov ds, ax
mov si, 4 
mov cx, 5

delay:			;variable or it is a like a group name
mov si, (160*0) + (0*2) ;it Display the text in the top left

mov bx[si], 'H'         ;it display letter H
mov bx[si+2], 'N'	;it display letter N
mov bx[si+4], 'U'	;it display letter U

mov bx[si],' '		;it make the letter H disappear and display the next letter
mov bx[si + 2], ' ' 	;it make the letter H disappear and display the next letter
mov bx[si + 4], ' ' 	;it make the letter H disappear and display the next letter 

call delay1

push cx
mov cx, 0ffffh




delay1:
mov si, (160*24) + (34*2) ;it Display the text in the bottom center 

mov bx[si], 'H'         ;it display letter H
mov bx[si+2], 'N'	;it display letter N
mov bx[si+4], 'U'	;it display letter U

mov bx[si],' '		;it make the letter H disappear and display the next letter
mov bx[si + 2], ' ' 	;it make the letter H disappear and display the next letter
mov bx[si + 4], ' ' 	;it make the letter H disappear and display the next letter 

            
call delay2  		;Call function

push cx

mov cx, 0ffh

delay2: 
mov si, (160*0) + (76*2) ;it Display the text in the top right
 
mov bx[si], 'H'         ;it display letter H
mov bx[si+2], 'N'	;it display letter N
mov bx[si+4], 'U'	;it display letter U

mov bx[si],' '		;it make the letter H disappear and display the next letter
mov bx[si + 2], ' ' 	;it make the letter H disappear and display the next letter
mov bx[si + 4], ' ' 	;it make the letter H disappear and display the next letter 

push cx 

mov cx, 0ffffh

pop cx 

loop delay  		; it loop the delay variable to countinue the process

pop cx 

loop delay1 

pop cx

loop delay2

int 20h

ret 			;return function
	



