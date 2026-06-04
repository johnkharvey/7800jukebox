MUTE_TRACK1		set	0
MUTE_TRACK2		set	0
MUTE_TRACK3		set	0
MUTE_TRACK4		set	0

; Drum equates
BASSDRUM1		equ	$5C
HIGHSNARE		equ	$07
SNAREDRUM		equ	$0E

;=================
Spelunker8Track1
;=================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK1
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker8Track1
	dc.b	#>Spelunker8Track1
  ELSE

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_C,  #6,  #VOL04_CONST ; C
	dc.b	#MAIN_OCT4_E,  #6,  #VOL04_CONST ; E
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_G,  #6,  #VOL04_CONST ; G
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_G,  #6,  #VOL04REST02 ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_F,  #12, #VOL04_CONST ; F
	dc.b	#MAIN_OCT4_E,  #12, #VOL04_CONST ; E

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_F,  #6,  #VOL04_CONST ; F
	dc.b	#MAIN_OCT4_A,  #6,  #VOL04_CONST ; A
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT5_C,  #6,  #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT5_C,  #6,  #VOL04REST02 ; C
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT4_B,  #12, #VOL04_CONST ; B
	dc.b	#MAIN_OCT4_A,  #12, #VOL04_CONST ; A

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_D,  #6,  #VOL04_CONST ; D
	dc.b	#MAIN_OCT4_FS, #6,  #VOL04_CONST ; F#
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_A,  #6,  #VOL04_CONST ; A
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_A,  #6,  #VOL04REST02 ; A
	dc.b	#MAIN_OCT4_A,  #12, #VOL04_CONST ; A
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_FS, #12, #VOL04_CONST ; F#

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #6,  #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_B,  #6,  #VOL04_CONST ; B
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT5_D,  #6,  #VOL04_CONST ; D
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT5_D,  #6,  #VOL04REST02 ; D
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT4_B,  #12, #VOL04_CONST ; B

	;===============

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_C,  #6,  #VOL04_CONST ; C
	dc.b	#MAIN_OCT4_E,  #6,  #VOL04_CONST ; E
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_G,  #6,  #VOL04_CONST ; G
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_G,  #6,  #VOL04REST02 ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_F,  #12, #VOL04_CONST ; F
	dc.b	#MAIN_OCT4_E,  #12, #VOL04_CONST ; E

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_F,  #6,  #VOL04_CONST ; F
	dc.b	#MAIN_OCT4_A,  #6,  #VOL04_CONST ; A
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT5_C,  #6,  #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT5_C,  #6,  #VOL04REST02 ; C
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT4_B,  #12, #VOL04_CONST ; B
	dc.b	#MAIN_OCT4_A,  #12, #VOL04_CONST ; A

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_D,  #6,  #VOL04_CONST ; D
	dc.b	#MAIN_OCT4_FS, #6,  #VOL04_CONST ; F#
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_A,  #6,  #VOL04_CONST ; A
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_A,  #6,  #VOL04REST02 ; A
	dc.b	#MAIN_OCT4_A,  #12, #VOL04_CONST ; A
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_FS, #12, #VOL04_CONST ; F#

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #6,  #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_B,  #6,  #VOL04_CONST ; B
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT5_D,  #6,  #VOL04_CONST ; D
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT5_D,  #6,  #VOL04REST02 ; D
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT4_B,  #12, #VOL04_CONST ; B

	;===============

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_C,  #6,  #VOL04_CONST ; C
	dc.b	#MAIN_OCT4_E,  #6,  #VOL04_CONST ; E
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_G,  #6,  #VOL04_CONST ; G
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_C,  #6,  #VOL04REST02 ; C
	dc.b	#MAIN_OCT4_E,  #12, #VOL04_CONST ; E
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_C,  #12, #VOL04_CONST ; C

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_D,  #6,  #VOL04_CONST ; D
	dc.b	#MAIN_OCT4_FS, #6,  #VOL04_CONST ; F#
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_A,  #6,  #VOL04_CONST ; A
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_D,  #6,  #VOL04REST02 ; D
	dc.b	#MAIN_OCT4_FS, #12, #VOL04_CONST ; F#
	dc.b	#MAIN_OCT4_A,  #12, #VOL04_CONST ; A
	dc.b	#MAIN_OCT4_D,  #12, #VOL04_CONST ; D

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_E,  #6,  #VOL04_CONST ; E
	dc.b	#MAIN_OCT4_GS, #6,  #VOL04_CONST ; G#
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_B,  #6,  #VOL04_CONST ; B
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_E,  #6,  #VOL04REST02 ; E
	dc.b	#MAIN_OCT4_GS, #12, #VOL04_CONST ; G#
	dc.b	#MAIN_OCT4_B,  #12, #VOL04_CONST ; B
	dc.b	#MAIN_OCT4_E,  #12, #VOL04_CONST ; E

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_F,  #6,  #VOL04_CONST ; F
	dc.b	#MAIN_OCT4_A,  #6,  #VOL04_CONST ; A
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT5_C,  #6,  #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_F,  #6,  #VOL04REST02 ; F
	dc.b	#MAIN_OCT4_A,  #12, #VOL04_CONST ; A
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT5_E,  #36, #VOL04_CONST ; E
	dc.b	#RESTNOSOUND,  #36, #RESTDEFAULT ; rest

Spelunker8Track1Stops
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker8Track1Stops
	dc.b	#>Spelunker8Track1Stops

  ENDIF ; (IF MUTE_TRACK1)

;================
Spelunker8Track2
;================
; Uses pokey_notes column H (brown)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK2
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker8Track2
	dc.b	#>Spelunker8Track2
  ELSE

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT3_C,  #14, #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_C,  #9,  #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_C,  #14, #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_C,  #9,  #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_C,  #9,  #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_F,  #14, #VOL04_CONST ; F
	dc.b	#RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_F,  #9,  #VOL04_CONST ; F
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_F,  #14, #VOL04_CONST ; F
	dc.b	#RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_F,  #9,  #VOL04_CONST ; F
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_F,  #9,  #VOL04_CONST ; F
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT3_D,  #14, #VOL04_CONST ; D
	dc.b	#RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_D,  #9,  #VOL04_CONST ; D
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_D,  #14, #VOL04_CONST ; D
	dc.b	#RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_D,  #9,  #VOL04_CONST ; D
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_D,  #9,  #VOL04_CONST ; D
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_G,  #14, #VOL04_CONST ; G
	dc.b	#RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_G,  #9,  #VOL04_CONST ; G
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_G,  #14, #VOL04_CONST ; G
	dc.b	#RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_G,  #9,  #VOL04_CONST ; G
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_G,  #9,  #VOL04_CONST ; G
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest

	;================

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT3_C,  #14, #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_C,  #9,  #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_C,  #14, #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_C,  #9,  #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_C,  #9,  #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_F,  #14, #VOL04_CONST ; F
	dc.b	#RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_F,  #9,  #VOL04_CONST ; F
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_F,  #14, #VOL04_CONST ; F
	dc.b	#RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_F,  #9,  #VOL04_CONST ; F
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_F,  #9,  #VOL04_CONST ; F
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT3_D,  #14, #VOL04_CONST ; D
	dc.b	#RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_D,  #9,  #VOL04_CONST ; D
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_D,  #14, #VOL04_CONST ; D
	dc.b	#RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_D,  #9,  #VOL04_CONST ; D
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_D,  #9,  #VOL04_CONST ; D
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_G,  #14, #VOL04_CONST ; G
	dc.b	#RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_G,  #9,  #VOL04_CONST ; G
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_G,  #14, #VOL04_CONST ; G
	dc.b	#RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_G,  #9,  #VOL04_CONST ; G
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_G,  #9,  #VOL04_CONST ; G
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest

	;================

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT3_C,  #14, #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_C,  #9,  #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_C,  #14, #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_C,  #9,  #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_C,  #9,  #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT3_C,  #14, #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_C,  #9,  #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_C,  #14, #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_C,  #9,  #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_C,  #9,  #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT3_C,  #14, #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_C,  #9,  #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_C,  #14, #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_C,  #9,  #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_C,  #9,  #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT3_C,  #14, #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_C,  #9,  #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_C,  #14, #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_F,  #9,  #VOL04_CONST ; F
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_G,  #9,  #VOL04_CONST ; G
	dc.b	#RESTNOSOUND,  #3,  #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT3_C,  #36, #VOL04_CONST ; C
	dc.b	#RESTNOSOUND,  #36, #RESTDEFAULT ; rest

Spelunker8Track2Stops
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker8Track2Stops
	dc.b	#>Spelunker8Track2Stops

  ENDIF ; (IF MUTE_TRACK2)

;================
Spelunker8Track3
;================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK3
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker8Track3
	dc.b	#>Spelunker8Track3
  ELSE

Spelunker8Track3Stops
	; This track has no music
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker8Track3Stops
	dc.b	#>Spelunker8Track3Stops
  ENDIF ; (IF MUTE_TRACK3)

;================
Spelunker8Track4
;================
	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK4
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker8Track4
	dc.b	#>Spelunker8Track4
  ELSE

	; This track has no music
Spelunker8Track4Stops
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker8Track4Stops
	dc.b	#>Spelunker8Track4Stops

  ENDIF ; (IF MUTE_TRACK4)

