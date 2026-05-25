MUTE_TRACK1		set	0
MUTE_TRACK2		set	0
MUTE_TRACK3		set	1
MUTE_TRACK4		set	1

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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song2Track1
	dc.b	#>Goonies2Song2Track1
  ELSE

	; Uses pokey_notes column P (green)
	dc.b	#$53, #6,  #VOL08_CONST ; E
	dc.b	#$6A, #6,  #VOL06_CONST ; C
	dc.b	#$5E, #6,  #VOL04_CONST ; D
	dc.b	#$46, #12, #VOL02_CONST ; G

Goonies2Song2Track1Stops
	dc.b	#$00, #96, #RESTDEFAULT ; rest
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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song2Track2
	dc.b	#>Goonies2Song2Track2
  ELSE
	; Uses pokey_notes column H (brown)
	dc.b	#$2F, #6,  #VOL06_CONST ; E
	dc.b	#$3B, #6,  #VOL06_CONST ; C
	dc.b	#$34, #6,  #VOL06_CONST ; D
	dc.b	#$27, #18, #VOL06_CONST ; G

Goonies2Song2Track2Stops
	dc.b	#$00, #96, #RESTDEFAULT ; rest
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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song2Track3
	dc.b	#>Goonies2Song2Track3
  ELSE
	; Uses pokey_notes column P (green)
	dc.b	#$53, #6,  #VOL08_CONST ; E
	dc.b	#$6A, #6,  #VOL06_CONST ; C
	dc.b	#$5E, #6,  #VOL04_CONST ; D
	dc.b	#$46, #12, #ARCH96_72FD ; G

Goonies2Song2Track3Stops
	dc.b	#$00, #96, #RESTDEFAULT ; rest
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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song2Track4
	dc.b	#>Goonies2Song2Track4
  ELSE

	; This track has no music
Goonies2Song2Track4Stops
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song2Track4Stops
	dc.b	#>Goonies2Song2Track4Stops
  ENDIF ; (IF MUTE_TRACK4)

MUTE_TRACK1		set	0
