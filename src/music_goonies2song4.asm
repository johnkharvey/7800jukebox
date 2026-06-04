MUTE_TRACK1		set	0
MUTE_TRACK2		set	0
MUTE_TRACK3		set	0
MUTE_TRACK4		set	0

; Drum equates
BASSDRUM1		equ	$5C
HIGHSNARE		equ	$07
SNAREDRUM		equ	$0E

;=============
Goonies2Song4Track1
;=============
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK1
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song4Track1
	dc.b	#>Goonies2Song4Track1
  ELSE

	; This track is odd - it's the same as track 3 but delayed one beat
	dc.b	#RESTNOSOUND, #12, #RESTDEFAULT ; rest

Goonies2Song4Track1Restart

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL04_CONST ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL04_CONST ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL04_CONST ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL04_CONST ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL04_CONST ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL04_CONST ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL04_CONST ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL04_CONST ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL04_CONST ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL04_CONST ; G

	; change up
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_B,  #12, #VOL04_CONST ; B
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_B,  #12, #VOL04_CONST ; B
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL04_CONST ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G - low
	dc.b	#MAIN_OCT5_G,  #12, #VOL04_CONST ; G - high
	dc.b	#MAIN_OCT5_F,  #12, #VOL04_CONST ; F
	dc.b	#MAIN_OCT5_DS, #12, #VOL04_CONST ; D#
	dc.b	#MAIN_OCT5_F,  #12, #VOL04_CONST ; F
	dc.b	#MAIN_OCT5_DS, #12, #VOL04_CONST ; D#
	dc.b	#MAIN_OCT5_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT4_B,  #12, #VOL04_CONST ; B

	dc.b	#$FF
	dc.b	#<Goonies2Song4Track1Restart
	dc.b	#>Goonies2Song4Track1Restart
  ENDIF ; (IF MUTE_TRACK1)

;=============
Goonies2Song4Track2
;=============
; Uses pokey_notes column H (brown)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

	; Some info from here https://www.poppiano.org/en/sheet/?id=16205

  IF MUTE_TRACK2
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song4Track2
	dc.b	#>Goonies2Song4Track2
  ELSE
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_FS, #6,   #VOL06_CONST ; F# trill
	dc.b	#BASS_OCT2_G,  #186, #VOL06_CONST ; G

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_GS, #192, #VOL06_CONST ; G#

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_FS, #6,   #VOL06_CONST ; F# trill
	dc.b	#BASS_OCT2_G,  #186, #VOL06_CONST ; G

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_GS, #192, #VOL06_CONST ; G#

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_AS, #192, #VOL06_CONST ; A#

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_B,  #96, #VOL06_CONST ; B
	dc.b	#BASS_OCT2_G,  #12, #VOL06_CONST ; G
	dc.b	#BASS_OCT3_G,  #12, #VOL06_CONST ; G - high
	dc.b	#BASS_OCT3_F,  #12, #VOL06_CONST ; F
	dc.b	#BASS_OCT3_DS, #12, #VOL06_CONST ; D#
	dc.b	#BASS_OCT3_F,  #12, #VOL06_CONST ; F
	dc.b	#BASS_OCT3_DS, #12, #VOL06_CONST ; D#
	dc.b	#BASS_OCT3_D,  #12, #VOL06_CONST ; D
	dc.b	#BASS_OCT2_B,  #12, #VOL06_CONST ; B

	dc.b	#$FF
	dc.b	#<Goonies2Song4Track2
	dc.b	#>Goonies2Song4Track2
  ENDIF ; (IF MUTE_TRACK2)

;=============
Goonies2Song4Track3
;=============
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK3
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song4Track3
	dc.b	#>Goonies2Song4Track3
  ELSE

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL06_CONST ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL06_CONST ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL06_CONST ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL06_CONST ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL06_CONST ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL06_CONST ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL06_CONST ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL06_CONST ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL06_CONST ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT5_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL06_CONST ; G

	; change up
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT4_B,  #12, #VOL06_CONST ; B
	dc.b	#MAIN_OCT5_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT4_B,  #12, #VOL06_CONST ; B
	dc.b	#MAIN_OCT5_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT5_G,  #12, #VOL06_CONST ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G - low
	dc.b	#MAIN_OCT5_G,  #12, #VOL06_CONST ; G - high
	dc.b	#MAIN_OCT5_F,  #12, #VOL06_CONST ; F
	dc.b	#MAIN_OCT5_DS, #12, #VOL06_CONST ; D#
	dc.b	#MAIN_OCT5_F,  #12, #VOL06_CONST ; F
	dc.b	#MAIN_OCT5_DS, #12, #VOL06_CONST ; D#
	dc.b	#MAIN_OCT5_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT4_B,  #12, #VOL06_CONST ; B


	dc.b	#$FF
	dc.b	#<Goonies2Song4Track3
	dc.b	#>Goonies2Song4Track3
  ENDIF ; (IF MUTE_TRACK3)

;=============
Goonies2Song4Track4
;=============
	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK4
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song4Track4
	dc.b	#>Goonies2Song4Track4
  ELSE

	; This track has no music
Goonies2Song4Track4Stops
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song4Track4Stops
	dc.b	#>Goonies2Song4Track4Stops
  ENDIF ; (IF MUTE_TRACK4)

