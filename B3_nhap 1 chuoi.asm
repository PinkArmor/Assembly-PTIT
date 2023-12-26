.model small
.stack 100h
.data
    tb1 db 10,13,'chuoi da nhap: $' 
    str db 100 dup('$')   ; khoi tao chuoi 
.code
 main proc
     mov ax, @data
     mov ds, ax
     ; nhap chuoi ki tu
     mov ah,10  ; ham ngat nhap chuoi ki tu , 10=0ah
     lea dx,str
     int 21h
     
     mov ah,9 ;in 1 xau
     lea dx, tb1
     int 21h  ;in ra
     
     
     ;dua dx chi ve phan tu thu cua mang la
     ;ky tu dau tien dc nhap vao
     lea dx, str+2  ;xau luon bat dau tu byte thu2 
     int 21h        ;byte 0 khong thay doi  
                    ;byte 1 la tong so ki tu 
     
     mov ah,4ch
     int 21h
 main endp
 endp