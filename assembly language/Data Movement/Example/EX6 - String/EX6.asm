;ex6.asm
;same as ex5 but with attribute


org 100h

mov ax, cs
mov ds, ax

mov si, offset string

mov ax, 0b800h
mov es, ax

mov di, 0
mov cx, 4



print:

mov dl, bx[si] 

mov dh, bx[si+1]

mov es:[di], dx

inc si, 2
inc di, 2

loop print

int 20h

string: db 'A', 87h, 'B', 87h, 'C', 87h, 'D', 87h , '$'

ret




