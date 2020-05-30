.model tiny
.dosseg
.data
  screen db 2000 dup(0)
  str2search db 'MANUN'
  str2out db 'MANUN',0ah,0dh,'$'
  stry db 'Y',0ah,0dh,'$'
  strn db 'N',0ah,0dh,'$'
.code
.startup
;send MANUN to screen
;lea dx,str2out
;mov ah,9
;int 21h
;end send MANUN to screen

; for speed test read only 6 first symbol from screen
  mov dx,6
  mov cx,0
  lea bx,screen
  mov ax,0b000h
  mov di,08000h
  mov es,ax
L1:
  push bx
  push dx

  call readchar

  pop dx
  pop bx
  mov [bx],al
  inc bx
  dec dx
  jnz L1

    mov dx,6
    mov bx,0
L2:
  cld
  mov si,offset screen
  add si,bx
  mov di,offset str2search
  mov cx, 5
  repne cmpsb 
  jnz found
  inc bx
  dec dx
  jnz L2
  lea dx, strn
  jmp fin
found:
    lea dx,stry
    jmp fin  
   
fin:   
    mov ah,9
    int 21h
    mov    ah, 4Ch 
    int    21h
    
readchar:
  mov al,es:[di]
  inc di
  inc di
ret    
end
