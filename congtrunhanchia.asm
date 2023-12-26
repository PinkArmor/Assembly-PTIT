.model small
.stack 100h
.data 
.code
main proc 
    ;cong
    mov al,6
    mov al,5
    add al,bl
    ;tru
    mov al,6
    mov bl,5
    sub al,bl
    ;nhan
    mov al,5
    mov bl,4
    mul bl
    ;chia
    mov ax,20
    mov bx,6
    div bl
    div bx

end main