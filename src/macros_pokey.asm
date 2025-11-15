;===========================================
; This file contains macros for POKEY music
;===========================================

; Usage: SEED_POKEY SplashScreen1

	mac	SEED_POKEY

SeedPokeyFor{1}
	;==================
	LDA	#$00
	STA	PokeyInstrument1Countdown
	STA	PokeyInstrument2Countdown
	STA	PokeyInstrument3Countdown
	STA	PokeyInstrument4Countdown
	;==================
	; Set vars to point to {1}Track(s)
	LDA	#<{1}Track1
	STA	PokeyCurrentMusicIndexLSB1
	LDA	#>{1}Track1
	STA	PokeyCurrentMusicIndexMSB1

	LDA	#<{1}Track2
	STA	PokeyCurrentMusicIndexLSB2
	LDA	#>{1}Track2
	STA	PokeyCurrentMusicIndexMSB2

	LDA	#<{1}Track3
	STA	PokeyCurrentMusicIndexLSB3
	LDA	#>{1}Track3
	STA	PokeyCurrentMusicIndexMSB3

	LDA	#<{1}Track4
	STA	PokeyCurrentMusicIndexLSB4
	LDA	#>{1}Track4
	STA	PokeyCurrentMusicIndexMSB4
	RTS

	endm

