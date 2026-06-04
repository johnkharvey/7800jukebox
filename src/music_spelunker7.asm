MUTE_TRACK1		set	0
MUTE_TRACK2		set	0
MUTE_TRACK3		set	0
MUTE_TRACK4		set	0

; Drum equates
BASSDRUM1		equ	$5C
HIGHSNARE		equ	$07
SNAREDRUM		equ	$0E

;=================
Spelunker7Track1
;=================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK1
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker7Track1
	dc.b	#>Spelunker7Track1
  ELSE

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_AS, #16, #ARCH12_16EX ; A#
	dc.b	#MAIN_OCT4_G,  #8,  #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_A,  #16, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_F,  #8,  #VOL04_CONST ; F
	dc.b	#MAIN_OCT4_G,  #16, #ARCH12_16EX ; G
	dc.b	#MAIN_OCT4_DS, #8,  #VOL04_CONST ; D#
	dc.b	#MAIN_OCT4_F,  #16, #ARCH12_16EX ; F
	dc.b	#MAIN_OCT4_D,  #8,  #VOL04_CONST ; D

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_C,  #16, #ARCH12_16EX ; C
	dc.b	#RESTNOSOUND,  #8,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_DS, #16, #ARCH12_16EX ; D#
	dc.b	#RESTNOSOUND,  #8,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_C,  #24, #ARCH24_16FD ; C
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest

Spelunker7Track1Stops
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker7Track1Stops
	dc.b	#>Spelunker7Track1Stops

  ENDIF ; (IF MUTE_TRACK1)

;================
Spelunker7Track2
;================
; Uses pokey_notes column H (brown)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK2
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker7Track2
	dc.b	#>Spelunker7Track2
  ELSE

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_G,  #12, #VOL06REST02 ; G
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_DS, #12, #VOL06REST02 ; D#
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#RESTNOSOUND,  #36, #RESTDEFAULT ; rest

Spelunker7Track2Stops
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker7Track2Stops
	dc.b	#>Spelunker7Track2Stops

  ENDIF ; (IF MUTE_TRACK2)

;================
Spelunker7Track3
;================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK3
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker7Track3
	dc.b	#>Spelunker7Track3
  ELSE

Spelunker7Track3Stops
	; This track has no music
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker7Track3Stops
	dc.b	#>Spelunker7Track3Stops
  ENDIF ; (IF MUTE_TRACK3)

;================
Spelunker7Track4
;================
	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK4
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker7Track4
	dc.b	#>Spelunker7Track4
  ELSE

	; This track has no music
Spelunker7Track4Stops
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker7Track4Stops
	dc.b	#>Spelunker7Track4Stops

  ENDIF ; (IF MUTE_TRACK4)

