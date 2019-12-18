; blink LEDs PORTA
;Author
;Date
 ;************************************
 
 #include <p16f877a.inc>
 org 00h
 main:
	clrw
	BCF STATUS, RP0
	BCF STATUS, RP1 ;  bank 0 
	CLRF PORTA

	bsf STATUS, RP0; bank 1
	
	movlw 0x06
	movwf ADCON1
	movlw b'11111110'
	movwf TRISA
	BCF STATUS, RP0
	BCF STATUS, RP1 ;  bank 0   ; bank 0, access to PORTA
	loop: 
	    ;movlw b'00000001'
	   ; movwf PORTA
	   BSF PORTA, RA0
	    nop
	    ;movlw b'00000000'
	    ;movwf PORTA
	    BCF PORTA, RA0
	    nop
	    goto loop 
 end
    


