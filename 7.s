.model tiny
.dosseg
.data
  data_in  dw 0,1,10,100
  datares dw 6,9,486,49806
  loopcount  dw 4
  stry  db 'pass',0ah,0dh,'$'
  strn  db 'fail',0ah,0dh,'$'
.code
.startup

  mov cx, word ptr loopcount
L1:
  call calculate

  lea bx, datares
  mov dx,cx
  dec dx
  shl dx,1
  add bx, dx
  mov dx, word ptr [bx]
  cmp ax,dx
  jne fail
  dec cx
  jnz L1

  lea dx, stry
  jmp fin
  
fail:
    lea dx,strn
    jmp fin  
   
fin:   
    mov ah,9
    int 21h
    mov    ah, 4Ch 
    int    21h
    
calculate:
    push cx
    push bx
  lea bx,data_in
  dec cx
  shl cx,1
  add bx,cx
  mov ax, word ptr [bx]
  and ax,00ffh
  push ax
  mov bx,ax
  mul bx
  mov bx,5
  mul bx
  pop bx
  shl bx,1
  sub ax,bx
  add ax,6
  pop bx
  pop cx
ret    
end
