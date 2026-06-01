MUTE_TRACK1		set	0
MUTE_TRACK2		set	0
MUTE_TRACK3		set	0
MUTE_TRACK4		set	0

; Drum equates
BASSDRUM1		equ	$5C
HIGHSNARE		equ	$07
SNAREDRUM		equ	$0E

;=================
Spelunker10Track1
;=================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK1
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker10Track1
	dc.b	#>Spelunker10Track1
  ELSE

	; Uses pokey_notes column P (green)

	dc.b	#MAIN_OCT4_E,  #12, #ARCH12_16EX ; E
	dc.b	#MAIN_OCT3_B,  #12, #ARCH12_16EX ; B
	dc.b	#MAIN_OCT4_E,  #12, #ARCH12_16EX ; E
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#

	dc.b	#MAIN_OCT4_G,  #12, #ARCH12_16EX ; G
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_E,  #12, #ARCH12_16EX ; E
	dc.b	#MAIN_OCT3_B,  #12, #ARCH12_16EX ; B

	dc.b	#MAIN_OCT4_FS, #96, #ARCH96_72FD; F#

	dc.b	#MAIN_OCT4_E,  #12, #ARCH12_16EX ; E
	dc.b	#MAIN_OCT3_B,  #12, #ARCH12_16EX ; B
	dc.b	#MAIN_OCT4_E,  #12, #ARCH12_16EX ; E
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#

	dc.b	#MAIN_OCT4_G,  #12, #ARCH12_16EX ; G
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_E,  #12, #ARCH12_16EX ; E
	dc.b	#MAIN_OCT3_B,  #12, #ARCH12_16EX ; B

	dc.b	#MAIN_OCT4_E,  #12, #ARCH12_16EX ; E
	dc.b	#MAIN_OCT3_B,  #12, #ARCH12_16EX ; B
	dc.b	#MAIN_OCT4_E,  #12, #ARCH12_16EX ; E
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#

	dc.b	#MAIN_OCT4_G,  #12, #ARCH12_16EX ; G
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_E,  #12, #ARCH12_16EX ; E
	dc.b	#MAIN_OCT3_B,  #12, #ARCH12_16EX ; B

	dc.b	#MAIN_OCT4_E,  #96, #ARCH96_72FD ; E

Spelunker10Track1Stops
	dc.b	#RESTNOSOUND,  #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker10Track1Stops
	dc.b	#>Spelunker10Track1Stops

  ENDIF ; (IF MUTE_TRACK1)

;================
Spelunker10Track2
;================
; Uses pokey_notes column H (brown)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK2
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker10Track2
	dc.b	#>Spelunker10Track2
  ELSE

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_B, #96,  #VOL02_CONST ; B

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_A, #96,  #VOL02_CONST ; A

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_B, #48,  #VOL02_CONST ; B
	dc.b	#BASS_OCT2_A, #48,  #VOL02_CONST ; A

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_G, #48,  #VOL02_CONST ; G
	dc.b	#BASS_OCT2_A, #48,  #VOL02_CONST ; A

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_B, #168, #VOL02_CONST ; B
	dc.b	#RESTNOSOUND, #24 , #RESTDEFAULT ; rest

Spelunker10Track2Stops
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker10Track2Stops
	dc.b	#>Spelunker10Track2Stops

  ENDIF ; (IF MUTE_TRACK2)

;================
Spelunker10Track3
;================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK3
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker10Track3
	dc.b	#>Spelunker10Track3
  ELSE

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT3_E, #24, #ARCH24_16FD ; E
	dc.b	#MAIN_OCT3_E, #24, #ARCH24_16FD ; E
	dc.b	#MAIN_OCT3_E, #24, #ARCH24_16FD ; E
	dc.b	#MAIN_OCT3_E, #24, #ARCH24_16FD ; E

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT3_D, #24, #ARCH24_16FD ; D
	dc.b	#MAIN_OCT3_D, #24, #ARCH24_16FD ; D
	dc.b	#MAIN_OCT3_D, #24, #ARCH24_16FD ; D
	dc.b	#MAIN_OCT3_D, #24, #ARCH24_16FD ; D

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT3_E, #24, #ARCH24_16FD ; E
	dc.b	#MAIN_OCT3_E, #24, #ARCH24_16FD ; E
	dc.b	#MAIN_OCT3_D, #24, #ARCH24_16FD ; D
	dc.b	#MAIN_OCT3_D, #24, #ARCH24_16FD ; D

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT3_C, #24, #ARCH24_16FD ; C
	dc.b	#MAIN_OCT3_C, #24, #ARCH24_16FD ; C
	dc.b	#MAIN_OCT3_D, #24, #ARCH24_16FD ; D
	dc.b	#MAIN_OCT3_D, #24, #ARCH24_16FD ; D

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT3_E, #24, #ARCH24_16FD ; E
	dc.b	#MAIN_OCT3_E, #24, #ARCH24_16FD ; E
	dc.b	#MAIN_OCT3_E, #24, #ARCH24_16FD ; E
	dc.b	#MAIN_OCT3_E, #24, #ARCH24_16FD ; E

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT3_E, #96, #ARCH96_72FD ; E
	;dc.b	#RESTNOSOUND, #24, #RESTDEFAULT ; rest

Spelunker10Track3Stops
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker10Track3Stops
	dc.b	#>Spelunker10Track3Stops
  ENDIF ; (IF MUTE_TRACK3)

;================
Spelunker10Track4
;================
	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK4
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker10Track4
	dc.b	#>Spelunker10Track4
  ELSE

	; This track has no music
Spelunker10Track4Stops
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker10Track4Stops
	dc.b	#>Spelunker10Track4Stops

  ENDIF ; (IF MUTE_TRACK4)

