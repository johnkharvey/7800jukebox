;==================================
; POKEY equates for the Atari 7800
;==================================

        processor 6502

;=====================
; Set our magic start
;=====================
POKEY_START	equ	$4000

;================================
AUDF2	equ	POKEY_START+$00	; extra audio channels and frequencies
AUDC2	equ	POKEY_START+$01
AUDF3	equ	POKEY_START+$02
AUDC3	equ	POKEY_START+$03
AUDF4	equ	POKEY_START+$04
AUDC4	equ	POKEY_START+$05
AUDF5	equ	POKEY_START+$06
AUDC5	equ	POKEY_START+$07
AUDCTL	equ	POKEY_START+$08	; Audio Control
RANDOM	equ	POKEY_START+$0A	; Random number (read-only)
SKCTL	equ	POKEY_START+$0F	; Serial Port control
;================================
