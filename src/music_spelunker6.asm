MUTE_TRACK1		set	0
MUTE_TRACK2		set	0
MUTE_TRACK3		set	0
MUTE_TRACK4		set	0

; Drum equates
BASSDRUM1		equ	$5C
HIGHSNARE		equ	$07
SNAREDRUM		equ	$0E

;=================
Spelunker6Track1
;=================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK1
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker6Track1
	dc.b	#>Spelunker6Track1
  ELSE

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_C,  #24, #VOL04_CONST ; C
	dc.b	#MAIN_OCT4_DS, #24, #VOL04_CONST ; D#
	dc.b	#MAIN_OCT4_G,  #24, #VOL04_CONST ; G
	dc.b	#MAIN_OCT5_C,  #24, #VOL04_CONST ; C

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #3,  #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_GS, #3,  #VOL04_CONST ; G#
	dc.b	#MAIN_OCT4_G,  #3,  #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_GS, #3,  #VOL04_CONST ; G#
	dc.b	#MAIN_OCT4_G,  #3,  #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_GS, #3,  #VOL04_CONST ; G#
	dc.b	#MAIN_OCT4_G,  #3,  #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_GS, #3,  #VOL04_CONST ; G#
	dc.b	#MAIN_OCT4_G,  #3,  #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_GS, #3,  #VOL04_CONST ; G#
	dc.b	#MAIN_OCT4_G,  #3,  #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_GS, #3,  #VOL04_CONST ; G#
	dc.b	#MAIN_OCT4_G,  #3,  #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_GS, #3,  #VOL04_CONST ; G#
	dc.b	#MAIN_OCT4_G,  #3,  #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_GS, #3,  #VOL04_CONST ; G#
	dc.b	#MAIN_OCT4_F,  #12, #VOL04_CONST ; F
	dc.b	#MAIN_OCT4_DS, #12, #VOL04_CONST ; D#
	dc.b	#MAIN_OCT4_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT4_C,  #12, #VOL04_CONST ; C

	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest

	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest

	dc.b	#$FF
	dc.b	#<Spelunker6Track1
	dc.b	#>Spelunker6Track1

  ENDIF ; (IF MUTE_TRACK1)

;================
Spelunker6Track2
;================
; Uses pokey_notes column H (brown)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK2
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker6Track2
	dc.b	#>Spelunker6Track2
  ELSE

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_DS, #12, #VOL06REST02 ; D#
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_AS, #12, #VOL06REST02 ; A#
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_DS, #12, #VOL06REST02 ; D#
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_AS, #12, #VOL06REST02 ; A#

	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_GS, #12, #VOL06REST02 ; G#
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_GS, #12, #VOL06REST02 ; G#
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C

	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest

	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest

	dc.b	#$FF
	dc.b	#<Spelunker6Track2
	dc.b	#>Spelunker6Track2

  ENDIF ; (IF MUTE_TRACK2)

;================
Spelunker6Track3
;================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK3
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker6Track3
	dc.b	#>Spelunker6Track3
  ELSE

	; This track has no music
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker6Track3
	dc.b	#>Spelunker6Track3
  ENDIF ; (IF MUTE_TRACK3)

;================
Spelunker6Track4
;================
	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK4
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker6Track4
	dc.b	#>Spelunker6Track4
  ELSE

	; This track has no music
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker6Track4
	dc.b	#>Spelunker6Track4

  ENDIF ; (IF MUTE_TRACK4)

