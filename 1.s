.model tiny
.dosseg
.data
myvar1 DW 1,0,3,5,2,1,2,8
myvar2 DW 2,2,1,2,5,4,6,6
myvar3 DW 0,0,0,0,0,0,0,0
.code
.startup

  mov     ax, myvar1
  mov     bx, myvar2
  adc     ax, bx
  mov     myvar3, ax

  mov     ax, myvar1+1
  mov     bx, myvar2+1
  adc     ax, bx
  mov     myvar3+1, ax

  mov     ax, myvar1+2
  mov     bx, myvar2+2
  adc     ax, bx
  mov     myvar3+2, ax

  mov     ax, myvar1+3
  mov     bx, myvar2+3
  adc     ax, bx
  mov     myvar3+3, ax

  mov     ax, myvar1+4
  mov     bx, myvar2+4
  adc     ax, bx
  mov     myvar3+4, ax

  mov     ax, myvar1+5
  mov     bx, myvar2+5
  adc     ax, bx
  mov     myvar3+5, ax

  mov     ax, myvar1+6
  mov     bx, myvar2+6
  adc     ax, bx
  mov     myvar3+6, ax

  mov     ax, myvar1+7
  mov     bx, myvar2+7
  adc     ax, bx
  mov     myvar3+7, ax

    mov    ah, 4Ch
    int    21h  
end
