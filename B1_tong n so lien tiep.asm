.Model Small
.Stack 100H
.Data
.Code
main proc
    nhap:
    MOV Ah,01H       ;nhap 
    INT 21H          
    sub al,30h       ;doi ki tu sang so

    mov cl,al         ;cl=al
    mov ch,0         ;ch=0
    mov ax,0         ;ax=0
lap:
    add ax,cx        ;tinh tong ax=ax+cx       
loop lap    
    mov bx,10        ;bx=10
chia:
    mov dx,0
    div bx           ;ax=ax/10(phan du duoc luu trong dx)
    inc cx           ;cx+1
    push dx          ;cat dx vao ngan xep
    test ax,ax       ;kiem tra ax==0 ?
    jz ht
    jmp chia
ht:
    pop dx           ;lay ket qua 
    add dx,30h       ;doi sang ascii
    mov ah,2
    int 21h
loop ht
main endp
end main