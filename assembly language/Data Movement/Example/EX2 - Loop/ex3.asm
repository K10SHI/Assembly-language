;es3.asm
;run 'A' across the screen 

org 100h


mov ax,0b800h
mov ds, ax
mov di, 0
mov cx, 80

print: 
    push cx
    mov cx,0ffffh
        delay:
            push cx
            mov cx,0ffh
                dugay:add di, 2
                      mov bx[di], 41h
                      mov bx[di],' ' 
                      push cx
                      mov cx,0ffffh
                      pop cx
        loop dugay
        pop cx
    loop delay

pop cx
loop print

int 20h

ret




