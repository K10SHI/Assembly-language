
;ex1a.asm
;displays the letters A to D
;at row 12, column 4

org 100h

mov ax, 0b800h
mov ds, ax

mov di, (160*12) + (4*2)

mov bx[di], 41h
mov bx[di+1], 87h
mov bx[di+2], 42h
mov bx[di+3], 87h
mov bx[di+4], 43h
mov bx[di+5], 87h
mov bx[di+6], 44h
mov bx[di+7], 87h
int 20h

ret




