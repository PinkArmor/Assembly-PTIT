.model small
.stack 100h
.data
.code 
main proc 
    mov ax, 0
    mov bx, 0
    mov cx, 255
tinhtong:
    inc ax   ;ax++
    add bx,ax
    loop tinhtong 
end main   
 