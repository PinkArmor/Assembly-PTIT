.model small
.stack 100h
.data   
tb1 DB "nhap so thap phan: $" 
tb2 DB 10,13,"So vua nhap la: $" 
x dw ? ; x la ten bien, dw/ddw/db8bit cac kieu cua bien,?ko bt gia tri khoi tao 
y dw ?
.code
main proc
     mov ax, @data
     mov ds,ax
     ;nhapso
     mov ah,9
     lea dx, tb1
     int 21h
     call nhapso
     ;hien thi so
     mov ah,9
     lea dx,tb2
     int 21h
     call hthi
     ;ketthuc 
     mov ah, 4ch
     int 21h
main endp
       ;nhap
nhapso proc 
       mov x,0
       mov y,0
       mov bx,10
nhap:
       mov ah,1
       int 21h
       cmp al,13
       je thoat
       sub al,30h
       xor ah,ah
       mov y,ax
       mov ax,x
       mul bx
       add ax,y
       mov x,ax
       jmp nhap
thoat:
       ret              
nhapso endp    
       ;xuat
hthi proc
    mov bx,10
    mov ax,x
    mov cx,0
chia:
    mov dx,0
    div bx
    inc cx
    push dx
    cmp al,0
    je ht
    jmp chia
ht:    
    pop dx 
    add dl, 30h
    mov ah,2
    int 21h
    dec cx
    cmp cx,0
    jne ht
    ret
hthi endp    
endp main