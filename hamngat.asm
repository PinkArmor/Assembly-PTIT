.model small
.stack 100h
.data 
       nhan DB "xin chao$"
.code 
main proc  
    ;ham ngat 1: nhap 1 ki tu
    mov ah,1
    int 21h
    ;ham ngat 2: hien thi 1 ky tu
    mov bl, 36h
    mov ah,2
    mov dl, bl  
    int 21h
    ;ham ngat 9: in ra 1 chuoi ky tu
    mov ax, @data
    mov ds,ax
    mov ah,9
    lea dx,nhan
    int 21h
    
main endp
end main