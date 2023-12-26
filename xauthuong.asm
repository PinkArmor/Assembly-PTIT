.model small
.stack 100h
.data
     str db 'Kien Truc May Tinh$'
     crlf db 13,10,'$'

.code
main proc
    mov ax,@data
    mov ds,ax
   
    lea si,str           ;16bit
    lap:
      cmp [si], '$'
      je break
      
      cmp [si], 'A'      ;8bit
      jl continue 
    
      cmp  [si], 'Z'
      jg continue
     
      add [si],32
      continue:
    
      mov ah,2
      mov dl, [si]
      int 21h
      
      inc si
    jmp lap
  break:   
    
main endp
end main
 