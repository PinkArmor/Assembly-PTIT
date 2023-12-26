.model small
.stack 100h
.data
   cach db 13,10,'$'
.code
main proc
    mov ax ,@data
    mov ds,ax
    
    mov ah,1
    int 21h
   
    
    mov dl,al
    sub dl,32  
    mov ah,2
    int 21h
    
main endp
end main