.model small
.stack 100h
.data
tb1 db "nhap vao so thap phan: $"
tb2 db  10,13, "so thap phan vua nhap: $"
x dw ?
y dw ?
.code         
main proc
    mov ax, @data
    mov ds,ax
    
    ;nhap so
    mov ah,9
    lea dx, tb1
    int 21h
    call nhapso  ; goi ham  
    
    ; hien thi
    mov ah,9
    lea dx, tb2
    int 21h
    call inso
    
    mov ah,4ch
    int 21h
main endp
;ham con


;nhap so
nhapso proc
    mov x,0
    mov y,0
    mov bx,10    ; bx=10
 
 nhap: 
    mov ah,1
    int 21h
    cmp al,13    ; so sanh voi enter
    je  nhapxong ; nhay neu ma bang 
    sub al ,30h  ; 30h=0 ep kieu al thanh so
    xor ah, ah   ; xoa ah di 
    mov y,ax
    mov ax,x
    mul bx       ; lay bx*ax(ax*10)luu vao ax
    add ax,y 
    mov x,ax
    jmp nhap     ; nhay ko dieu kien
 nhapxong:
    ret
nhapso endp 
; 123 %10 -> 12 %10 -> 1%10 
; ngan xep 321 -> pop ngan xep -> 123
; hien thi
 inso proc
    mov bx,10
    mov ax,x
   
    mov cx,0
   chia :
      mov dx,0
      div bx
      inc cx
      push dx
      cmp al,0    ;ktra xem ax da het so chua
      je hienthi  ;neu het thi den nha hienthi
      jmp chia    ;chua het thi tiep tuc chia
   hienthi: 
      pop dx
      add dl, 30h ;ep kieu dua ve dang ascii
      mov ah,2    ;in 1 ki tu
      int 21h
      dec cx      ;giam cx di 1
      cmp cx,0
      jne hienthi ;neu cx chua =0 tiep tuc hien thi
      ret
      
  inso endp
 endp main
     