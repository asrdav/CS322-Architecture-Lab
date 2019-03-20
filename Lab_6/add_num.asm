;---------------------------------------
  ; ADD Subroutine
  ;---------------------------------------
      .data
  
      bxx dw 0000h                        ;
      cxx dw 0000h                        ;
  
      .code
  ;---------------------------------------
  addx:                                   ;
      mov bxx, bx                         ;save incoming register
      mov cxx, cx                         ;save incoming register
      mov bx, si                          ;move n to bl - acts as a cursor
  loopAdd:                                ;loop point
      mov cx, [si+bx]                     ;move word at point si+bx into register cx
      ADC [di+bx], cx                     ;add with carry  
      sub bx, 0002h;                      ;decrement cursor by a full word
      cmp bx, 0000h                       ;bx == 0?
      jg loopAdd                          ;no? jump to loop point
  end:                                    ;
      mov bx, bxx                         ;return register to original state
      mov cx, cxx                         ;return register to original state
      ret                                 ;return
;--------------------------------------
