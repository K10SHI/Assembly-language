
;ex1.asm
; prints the letter 'A'on the screen
; at row 0, column 0

org 100h

mov ax, 0b800h
mov ds, ax
mov si, 0
mov bx[si], 41h ;hex code of �A�
mov bx[si+1], 87h
int 20h

ret




