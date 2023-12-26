.Model Small
.Stack 100
.Data
    CRLF     DB 13,10,'$'
    ChaoTay  DB 'Hello!$'
    ChaoTa   DB 'Chao ban!$'
    Thongbao DB 'Nhap vao so dong cach:$'
    SoCRLF   DB ?
.Code
MAIN Proc
    MOV AX, @Data
    MOV DS,AX
    MOV AH,9
    LEA DX, Thongbao
    INT 21H
    
    MOV AH,1
    INT 21H
    
    AND AL,0FH
    MOV SoCRLF, AL
    MOV AH,9
    LEA DX,CRLF
    INT 21H
    
    MOV AH,9
    LEA DX,CRLF
    XOR CX,CX
    MOV CL,SoCRLF
LAP: 
    INT 21H
    LOOP LAP
    LEA DX, ChaoTa
    INT 21H
    MOV AH, 4CH
    INT 21H
MAIN Endp
END
