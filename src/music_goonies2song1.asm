MUTE_TRACK1		set	0
MUTE_TRACK2		set	0
MUTE_TRACK3		set	0
MUTE_TRACK4		set	0

; Drum equates
BASSDRUM1		equ	$5C
HIGHSNARE		equ	$07
SNAREDRUM		equ	$0E

;=============
Goonies2Song1Track1
;=============
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK1
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song1Track1
	dc.b	#>Goonies2Song1Track1
  ELSE

	; This track is odd - it's the same as track 3 but delayed one beat
	dc.b	#RESTNOSOUND, #12, #RESTDEFAULT ; rest

Goonies2Song1Track1Restart
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_A,  #12, #VOL04_CONST ; A
	dc.b	#MAIN_OCT4_F,  #12, #VOL04_CONST ; F
	dc.b	#MAIN_OCT4_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT4_A,  #12, #VOL04_CONST ; A
	dc.b	#MAIN_OCT4_F,  #12, #VOL04_CONST ; F
	dc.b	#MAIN_OCT4_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT4_A,  #12, #VOL04_CONST ; A
	dc.b	#MAIN_OCT4_F,  #12, #VOL04_CONST ; F

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_AS, #12, #VOL04_CONST ; A#
	dc.b	#MAIN_OCT4_F,  #12, #VOL04_CONST ; F
	dc.b	#MAIN_OCT4_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT4_AS, #12, #VOL04_CONST ; A#
	dc.b	#MAIN_OCT4_F,  #12, #VOL04_CONST ; F
	dc.b	#MAIN_OCT4_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT4_AS, #12, #VOL04_CONST ; A#
	dc.b	#MAIN_OCT4_F,  #12, #VOL04_CONST ; F

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_E,  #12, #VOL04_CONST ; E
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_E,  #12, #VOL04_CONST ; E
	dc.b	#MAIN_OCT5_C,  #12, #VOL04_CONST ; C
	dc.b	#MAIN_OCT4_G,  #12, #VOL04_CONST ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_AS, #12, #VOL04_CONST ; A#
	dc.b	#MAIN_OCT4_F,  #12, #VOL04_CONST ; F
	dc.b	#MAIN_OCT4_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT4_AS, #12, #VOL04_CONST ; A#
	dc.b	#MAIN_OCT4_F,  #12, #VOL04_CONST ; F
	dc.b	#MAIN_OCT4_D,  #12, #VOL04_CONST ; D
	dc.b	#MAIN_OCT4_AS, #12, #VOL04_CONST ; A#
	dc.b	#MAIN_OCT4_F,  #12, #VOL04_CONST ; F

	dc.b	#$FF
	dc.b	#<Goonies2Song1Track1Restart
	dc.b	#>Goonies2Song1Track1Restart
  ENDIF ; (IF MUTE_TRACK1)

;=============
Goonies2Song1Track2
;=============
; Uses pokey_notes column H (brown)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

	; Some info from here https://www.poppiano.org/en/sheet/?id=16205

  IF MUTE_TRACK2
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song1Track2
	dc.b	#>Goonies2Song1Track2
  ELSE
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_F,  #96, #VOL06_CONST ; F 

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_F,  #84, #VOL06_CONST ; F - continue previous
	dc.b	#BASS_OCT2_C,  #6,  #VOL06_CONST ; C
	dc.b	#BASS_OCT2_E,  #6,  #VOL06_CONST ; E

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_F,  #96, #VOL06_CONST ; F

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_F,  #24, #VOL06_CONST ; F - continue previous
	dc.b	#BASS_OCT2_C,  #12, #VOL06_CONST ; C - low
	dc.b	#BASS_OCT2_AS, #24, #VOL06_CONST ; A# - high
	dc.b	#BASS_OCT3_C,  #24, #VOL06_CONST ; C - high
	dc.b	#BASS_OCT2_AS, #12, #VOL06_CONST ; A#

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_CS, #6,  #VOL06_CONST ; C# (trill)
	dc.b	#BASS_OCT2_D,  #90, #VOL06_CONST ; D

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_D,  #84, #VOL06_CONST ; D - continue previous
	dc.b	#BASS_OCT1_A,  #12, #VOL06_CONST ; A - low

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_AS, #84, #VOL06_CONST ; A#
	dc.b	#BASS_OCT1_A,  #6,  #VOL06_CONST ; A
	dc.b	#BASS_OCT1_AS, #6,  #VOL06_CONST ; A#

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_C,  #36, #VOL06_CONST ; C
	dc.b	#BASS_OCT1_AS, #24, #VOL06_CONST ; A#
	dc.b	#BASS_OCT2_C,  #12, #VOL06_CONST ; C
	dc.b	#BASS_OCT2_D,  #12, #VOL06_CONST ; D
	dc.b	#BASS_OCT2_E,  #12, #VOL06_CONST ; E

	dc.b	#$FF
	dc.b	#<Goonies2Song1Track2
	dc.b	#>Goonies2Song1Track2
  ENDIF ; (IF MUTE_TRACK2)

;=============
Goonies2Song1Track3
;=============
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK3
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song1Track3
	dc.b	#>Goonies2Song1Track3
  ELSE
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_A,  #12, #VOL06_CONST ; A
	dc.b	#MAIN_OCT4_F,  #12, #VOL06_CONST ; F
	dc.b	#MAIN_OCT4_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT4_A,  #12, #VOL06_CONST ; A
	dc.b	#MAIN_OCT4_F,  #12, #VOL06_CONST ; F
	dc.b	#MAIN_OCT4_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT4_A,  #12, #VOL06_CONST ; A
	dc.b	#MAIN_OCT4_F,  #12, #VOL06_CONST ; F

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_AS, #12, #VOL06_CONST ; A#
	dc.b	#MAIN_OCT4_F,  #12, #VOL06_CONST ; F
	dc.b	#MAIN_OCT4_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT4_AS, #12, #VOL06_CONST ; A#
	dc.b	#MAIN_OCT4_F,  #12, #VOL06_CONST ; F
	dc.b	#MAIN_OCT4_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT4_AS, #12, #VOL06_CONST ; A#
	dc.b	#MAIN_OCT4_F,  #12, #VOL06_CONST ; F

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT5_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT4_E,  #12, #VOL06_CONST ; E
	dc.b	#MAIN_OCT5_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT4_E,  #12, #VOL06_CONST ; E
	dc.b	#MAIN_OCT5_C,  #12, #VOL06_CONST ; C
	dc.b	#MAIN_OCT4_G,  #12, #VOL06_CONST ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_AS, #12, #VOL06_CONST ; A#
	dc.b	#MAIN_OCT4_F,  #12, #VOL06_CONST ; F
	dc.b	#MAIN_OCT4_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT4_AS, #12, #VOL06_CONST ; A#
	dc.b	#MAIN_OCT4_F,  #12, #VOL06_CONST ; F
	dc.b	#MAIN_OCT4_D,  #12, #VOL06_CONST ; D
	dc.b	#MAIN_OCT4_AS, #12, #VOL06_CONST ; A#
	dc.b	#MAIN_OCT4_F,  #12, #VOL06_CONST ; F

	dc.b	#$FF
	dc.b	#<Goonies2Song1Track3
	dc.b	#>Goonies2Song1Track3
  ENDIF ; (IF MUTE_TRACK3)

;=============
Goonies2Song1Track4
;=============
	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK4
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song1Track4
	dc.b	#>Goonies2Song1Track4
  ELSE

	dc.b	#HIGHSNARE,  #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #20, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM,  #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #20, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM,  #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #20, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM,  #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#HIGHSNARE,  #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #2, #RESTDEFAULT ; rest
	dc.b	#HIGHSNARE,  #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #2, #RESTDEFAULT ; rest

	dc.b	#$FF
	dc.b	#<Goonies2Song1Track4
	dc.b	#>Goonies2Song1Track4
  ENDIF ; (IF MUTE_TRACK4)

