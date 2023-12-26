.model small
.stack 100h
.data
     str db 'Kien Truc May Tinh$'
     str1 db 'con chim non$'
     crlf db 13,10,'$'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    
    cmp al,'A'  ;A<= al <= Z
    jl continue
    cmp al, 'Z'
    jg continue 
         
    add al,32
    continue:
    mov ah,2 
    mov dl,al
    int 21h
    
main endp
end main
 