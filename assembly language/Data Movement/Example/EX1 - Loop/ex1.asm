
;ex2.asm
;prints 'A' one at a time
;starting at row 0, column 0

org 100h



mov ax, 0b800h
mov ds, ax
mov di, 0
mov cx, 5

print:  
        mov bx[di], 41h
        push cx
        mov cx, 0ffffh
            
            delay: 
                   push cx
                   mov cx, 0fffh
                
                dugay: add di, 2
                       mov bx[di], 41h
                       push cx
                       mov cx, 0ffffh
                       pop cx
                    loop dugay
                    
                    pop cx
                    
                loop delay
                
                pop cx
                
            loop print
            
            int 20h
ret




