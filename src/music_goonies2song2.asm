MUTE_TRACK1		set	0
MUTE_TRACK2		set	0
MUTE_TRACK3		set	0
MUTE_TRACK4		set	0

; Drum equates
BASSDRUM1		equ	$5C
HIGHSNARE		equ	$07
SNAREDRUM		equ	$0E

;=============
Goonies2Song2Track1
;=============
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK1
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song2Track1
	dc.b	#>Goonies2Song2Track1
  ELSE

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_E,  #6,  #VOL08_CONST ; E
	dc.b	#MAIN_OCT4_C,  #6,  #VOL06_CONST ; C
	dc.b	#MAIN_OCT4_D,  #6,  #VOL04_CONST ; D
	dc.b	#MAIN_OCT4_G,  #12, #VOL02_CONST ; G

Goonies2Song2Track1Stops
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song2Track1Stops
	dc.b	#>Goonies2Song2Track1Stops
  ENDIF ; (IF MUTE_TRACK1)

;=============
Goonies2Song2Track2
;=============
; Uses pokey_notes column H (brown)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

	; Some info from here https://www.poppiano.org/en/sheet/?id=16205

  IF MUTE_TRACK2
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song2Track2
	dc.b	#>Goonies2Song2Track2
  ELSE
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT3_E,  #6,  #VOL06_CONST ; E
	dc.b	#BASS_OCT3_C,  #6,  #VOL06_CONST ; C
	dc.b	#BASS_OCT3_D,  #6,  #VOL06_CONST ; D
	dc.b	#BASS_OCT3_G,  #18, #VOL06_CONST ; G

Goonies2Song2Track2Stops
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song2Track2Stops
	dc.b	#>Goonies2Song2Track2Stops
  ENDIF ; (IF MUTE_TRACK2)

;=============
Goonies2Song2Track3
;=============
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK3
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song2Track3
	dc.b	#>Goonies2Song2Track3
  ELSE
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_E,  #6,  #VOL08_CONST ; E
	dc.b	#MAIN_OCT4_C,  #6,  #VOL06_CONST ; C
	dc.b	#MAIN_OCT4_D,  #6,  #VOL04_CONST ; D
	dc.b	#MAIN_OCT4_G,  #12, #ARCH96_72FD ; G

Goonies2Song2Track3Stops
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song2Track3Stops
	dc.b	#>Goonies2Song2Track3Stops
  ENDIF ; (IF MUTE_TRACK3)

;=============
Goonies2Song2Track4
;=============
	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK4
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song2Track4
	dc.b	#>Goonies2Song2Track4
  ELSE

	; This track has no music
Goonies2Song2Track4Stops
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song2Track4Stops
	dc.b	#>Goonies2Song2Track4Stops
  ENDIF ; (IF MUTE_TRACK4)

