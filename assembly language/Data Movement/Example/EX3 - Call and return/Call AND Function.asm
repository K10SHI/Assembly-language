;ex4.asm
;this program prints the letters
;A, B, & C one at a time

org 100h


mov ax, 0b800h
mov ds, ax
mov si, 4



delay: add bx, 2

mov bx[si], 'A'

call delay1  

mov cx, .00008

int 20h


delay1:

mov bx[si+2], 'B'
            
call delay2  

push cx

mov cx, 0

delay2:
 
mov bx[si+4], 'C'

push cx 

mov cx, 0 

pop cx 

loop delay2 

pop cx 

loop delay1


ret




