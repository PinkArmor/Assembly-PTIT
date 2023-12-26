.model small
.stack 100h
.data
     str db 'con chim non$'
.code  

main proc
    mov ax, @data
    mov ds, ax
    
    lea si,str
    lap:
       cmp [si],'$'
       je break 
       
       cmp [si],'a'
       jl continue
       
       cmp [si],'z'
       jg continue
       
       sub [si],32
       
       continue:
       mov ah,2
       mov dl,[si]
       int 21h
       
       inc si
       jmp lap
     
     break:
       mov ah, 4ch
       int 21h
main endp
end main