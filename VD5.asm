.Model Small
.Stack 100
.Data
    Str1  DB 'a','b','c','d','e','f','g','h'   
    Str2  DB 8 DUP('$')
    Tbao  DB 'chuoi da duoc doi: $',10,13
.Code
MAIN Proc
     MOV AX,@Data  ;Khoi dau thanh ghi DS
     MOV DS,AX     
     MOV ES,AX    
     
     LEA SI, Str1+7 ; SI chi vao chuoi cu
     LEA DI, Str2+7 ; DI chi vao cuoi chuoi moi
     STD           ; dinh huong lui              
     MOV CX,8      ; CX chua so byte phai doi    
     
LAP: LODSB         ; lay 1 ky tu cua chuoi cu
     SUB AL,20H    ; doi thanh chu hoa
     STOSB         ; cat vao chuoi moi
     LOOP LAP      ; lap cho den het  
     
     LEA DX, Tbao  ; chuan bi hien chuoi moi
     MOV AH,9
     INT 21H           
     
     MOV AH,4CH    ; ve DOS
     INT 21H 
     
MAIN Endp
     END MAIN