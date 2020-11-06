 .global main
    .thumb
    .data
    .text
    .include "initial2.asm"
main:
    bl GPIO_Init
    ldr R2, GPIO_PORTE_DATA_R
    ldr R0, GPIO_PORTF_DATA_R
;initial point
startpoint:
    mov R1, #0x00
    mov R3, #0x00
    B cycle
 ;go through each point until the end
settwo:
    mov R1, #0x01
    mov R3, #0x01
    lsl R1, #2
    str R1, [R0]
   lsr R3, #1
    str R3, [R2]
    mov R1, R3
    push{LR}
    bl delay
    mov R1, #0x00
    mov R3, #0x00
    mov R1, R3
    pop {LR}
    bl delay
    B R4BlinkityBlink2
    B setthree

setthree:
   mov R1, #0x01
   mov R3, #0x01
   lsl R1, #2
   str R1, [R0]
   lsr R3, #1
   str R3, [R2]
   mov R1, R3
   push{LR}
   bl delay
   mov R1, #0x00
   mov R3, #0x00
   mov R1, R3
   pop {LR}
   bl delay
   B R4BlinkityBlink3
   B setfour

setfour:
    mov R1, #0x05
    mov R3, #0x05
    lsl R1, #2
    str R1, [R0]
    lsr R3, #1
    str R3, [R2]
    mov R1, R3
    push{LR}
    bl delay
    mov R1, #0x00
    mov R3, #0x00
    mov R1, R3
    pop {LR}
    bl delay
    B R4BlinkityBlink4
    B setfive

setfive:
    mov R1, #0x13
    mov R3, #0x13
    lsl R1, #2
    str R1, [R0]
    lsr R3, #1
    str R3, [R2]
	mov R1, R3
    push{LR}
    bl delay
    mov R1, #0x00
    mov R3, #0x00
    mov R1, R3
    pop {LR}
    bl delay
    B R4BlinkityBlink5
    B setsix

setsix:
    mov R1, #0x64
    mov R3, #0x64
    lsl R1, #2
    str R1, [R0]
    lsr R3, #1
    str R3, [R2]
    mov R1, R3
    push{LR}
    bl delay
    mov R1, #0x00
    mov R3, #0x00
    mov R1, R3
    pop {LR}
    bl delay
    B R4BlinkityBlink6
    B setseven

setseven:
    mov R1, #0x12
    mov R3, #0x12
    lsl R1, #2
    str R1, [R0]
    lsr R3, #1
    str R3, [R2]
    mov R1, R3
    push{LR}
    bl delay
    mov R1, #0x00
    mov R3, #0x00
    mov R1, R3
    pop {LR}
    bl delay
    B R4BlinkityBlink7
    B seteight

seteight:
    mov R1, #0x73
    mov R3, #0x73
    lsl R1, #2
    str R1, [R0]
    lsr R3, #1
    str R3, [R2]
    mov R1, R3
    push{LR}
    bl delay
    mov R1, #0x00
    mov R3, #0x00
    mov R1, R3
    pop {LR}
    bl delay
    B R4BlinkityBlink8
    B setnine

setnine:
    mov R1, #0x65
    mov R3, #0x65
    lsl R1, #2
    str R1, [R0]
    lsr R3, #1
    str R3, [R2]
    mov R1, R3
    push{LR}
    bl delay
    mov R1, #0x00
    mov R3, #0x00
    mov R1, R3
    pop {LR}
    bl delay
    B R4BlinkityBlink9
    B setten

setten:
    mov R1, #0x12
  	mov R3, #0x12
    lsr R1, #1
    str R1, [R0]
    lsr R3, #1
    str R3, [R2]
    mov R1, R3
    push{LR}
    bl delay
    mov R1, #0x00
    mov R3, #0x00
    ;mov R1, R3
    pop {LR}
    bl delay
    B R4BlinkityBlink10
    B holeInTheParachute

cycle:
    ;lsl R1, #2
    str R1, [R0]

    ;lsr R3, #1
    str R3, [R2]

    ;turn on
    mov R1, R3
    push{LR}
    bl delay

    ; turn off
    mov R1, #0x00
    mov R3, #0x00
    mov R1, R3
    pop {LR}
    bl delay
    B R4BlinkityBlink
    B settwo

R4BlinkityBlink:
	mov R4, #0x02
    str R4, [R0]
    bl delay
    mov R4, #0x00
    str R4, [R0]
    bl delay
    B settwo

R4BlinkityBlink2:
    mov R4, #0x02
    str R4, [R0]
    bl delay
    mov R4, #0x00
    str R4, [R0]
    bl delay
    B setthree

R4BlinkityBlink3:
   mov R4, #0x02
   str R4, [R0]
   bl delay
   mov R4, #0x00
   str R4, [R0]
   bl delay
   B setfour

R4BlinkityBlink4:
   mov R4, #0x02
   str R4, [R0]
   bl delay
   mov R4, #0x00
   str R4, [R0]
   bl delay
   B setfive

R4BlinkityBlink5:
   mov R4, #0x02
   str R4, [R0]
   bl delay
   mov R4, #0x00
   str R4, [R0]
   bl delay
   B setsix

R4BlinkityBlink6:
   mov R4, #0x02
   str R4, [R0]
   bl delay
   mov R4, #0x00
   str R4, [R0]
   bl delay
   B setseven

R4BlinkityBlink7:
   mov R4, #0x02
   str R4, [R0]
   bl delay
   mov R4, #0x00
   str R4, [R0]
   bl delay
   B seteight

R4BlinkityBlink8:
   mov R4, #0x02
   str R4, [R0]
   bl delay
   mov R4, #0x00
   str R4, [R0]
   bl delay
   B setnine

R4BlinkityBlink9:
   mov R4, #0x02
   str R4, [R0]
   bl delay
   mov R4, #0x00
   str R4, [R0]
   bl delay
   B setten

R4BlinkityBlink10:
   mov R4, #0x02
   str R4, [R0]
   bl delay
   mov R4, #0x00
   str R4, [R0]
   bl delay

holeInTheParachute:
    mov R4, #0
    mov R1, #0
    mov R3, #0
    B death

delay:
    mov R5, #0
    mov R6, #0x80000
    ;add R6, R6, #4000
    b delay_2

delay_2:
    add R5, #0x01
    CMP R5, R6
    bne delay_2
    Bx lr

GPIO_Init:
    ; 1) activate clock
    ldr R1, SYSCTL_RCGCGPIO_R
    ldr R0, [R1]
    ldr R2, SYSCTL_RCGC2_GPIOF
    orr R0, R0, R2 ; clock
    str R0, [R1]
    ldr R2, SYSCTL_RCGC2_GPIOE
    orr R0, R0, R2 ; clock
    str R0, [R1]
    nop  ; allow time extra time
    nop
    ; 2) unlock
    ldr R0, GPIO_LOCK_KEY
    ldr R1, GPIO_PORTF_LOCK_R
    str R0, [R1]
    ldr R0, GPIO_PORTF_CR_R
    mov R1, #0x1F
    str R1, [R0]
    ldr R0, GPIO_LOCK_LOCKED
    ldr R1, GPIO_PORTF_LOCK_R
    str R0, [R1]
    ; 3) disable analog functionality
    ldr R1, GPIO_PORTF_AMSEL_R
    ldr R0, [R1]
    bic R0, R0, #0x1F
    str R0, [R1]
    ldr R1, GPIO_PORTE_AMSEL_R
    ldr R0, [R1]
    bic R0, R0, #0x3E
    str R0, [R1]
    ; 4) configure as GPIO
    ldr R1, GPIO_PORTF_PCTL_R
    ldr R0, [R1]
    mov R3, #0x000F
    lsl R2, R3, #0x10
    mov R3, #0xFFFF
    add R2, R2, R3
    bic R0, R0, R2
    str R0, [R1]
    ldr R1, GPIO_PORTE_PCTL_R
    ldr R0, [R1]
    mov R3, #0x000E
    lsl R2, R3, #0x30
    mov R3, #0xFFFF
    add R2, R2, R3
    bic R0, R0, R2
    str R0, [R1]
    ; 5) set direction register
    ldr R1, GPIO_PORTF_DIR_R
    ldr R0, [R1]
    orr R0, R0, #0x0E
    str R0, [R1]
    ldr R1, GPIO_PORTE_DIR_R
    ldr R0, [R1]
    orr R0, R0, #0x3E
    str R0, [R1]
    ; 6) port function
    ldr R1, GPIO_PORTF_AFSEL_R
    ldr R0, [R1]
    bic R0, R0, #0x1F
    str R0, [R1]
    ldr R1, GPIO_PORTE_AFSEL_R
    ldr R0, [R1]
    bic R0, R0, #0x3E
    str R0, [R1]
    ; pull-up resistors
    ldr R1, GPIO_PORTF_PUR_R
    ldr R0, [R1]
    orr R0, R0, #0x11
    str R0, [R1]
    ; enable 8mA drive
    ldr R1, GPIO_PORTF_DR8R_R
    ldr R0, [R1]
    orr R0, R0, #0x1F
    str R0, [R1]
    ; 7) enable digital port
    ldr R1, GPIO_PORTF_DEN_R
    ldr R0, [R1]
    orr R0, R0, #0x1F
    str R0, [R1]
    ldr R1, GPIO_PORTE_DEN_R
    ldr R0, [R1]
    orr R0, R0, #0x3E
    str R0, [R1]
    bx  LR
death:
    nop
    B death
