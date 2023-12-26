.model small
.stack 100h
.data
      crlf db 13,10, '$'
      str db 50 dup('$')
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea si, str
    mov cx,0        ;cx de luu so ki tu
    
    lap:
        mov ah,1
        int 21h
        
        cmp al,13   ;kiem tra xuong dong, so sanh vs enter
        je  break   ;neu al=xuong dong => break
        
        mov [si],al ;neu al la str cho vao si
        push [si]   ;cho vao stack
        
        inc si
        inc cx
    jmp lap
    break:
    
    mov ah,9
    lea dx, crlf
    int 21h
    
    hienthi:
        pop dx
        mov ah,2
        int 21h
        loop hienthi    

main endp
end main