.model small 
.stack 100h
.data
.code 
main proc
    mov cl,4    ;gan gia tri 4 cho cl
    rol bx,cl   ;xoay trai, xoay gia tri trong thanh ghi bx sang cl lan
    mov cl,4    ;gan gia tri 4 cho cl
    ror bh,cl   ;xoay phai, xoay gia tri trong thanh ghi bh sang cl lan
    mov ah,4ch 
    int 21h
main endp
end main
 
 
;rol:cac bit dc ra khoi vi tri trai nhat se dc dua vao vi tri phai nhat
;rol:dc sd de di chuyen chu so thap trong he16 sang vi tri cao hon
;ror:cac bit dc ra khoi vi tri phai nhat se dc dua vao vi tri trai nhat
;rol:dc sd de di chuyen chu so cao trong he16 sang vi tri thap hon  