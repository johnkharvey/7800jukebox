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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song4Track1
	dc.b	#>Goonies2Song4Track1
  ELSE

	; This track is odd - it's the same as track 3 but delayed one beat
	dc.b	#$00, #12, #RESTDEFAULT ; rest

Goonies2Song4Track1Restart

        ; Uses pokey_notes column P (green)
        dc.b    #$46, #12, #VOL04_CONST ; G
        dc.b    #$33, #12, #VOL04_CONST ; C
        dc.b    #$2D, #12, #VOL04_CONST ; D
        dc.b    #$21, #12, #VOL04_CONST ; G
        dc.b    #$46, #12, #VOL04_CONST ; G
        dc.b    #$33, #12, #VOL04_CONST ; C
        dc.b    #$2D, #12, #VOL04_CONST ; D
        dc.b    #$21, #12, #VOL04_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #$46, #12, #VOL04_CONST ; G
        dc.b    #$33, #12, #VOL04_CONST ; C
        dc.b    #$2D, #12, #VOL04_CONST ; D
        dc.b    #$21, #12, #VOL04_CONST ; G
        dc.b    #$46, #12, #VOL04_CONST ; G
        dc.b    #$33, #12, #VOL04_CONST ; C
        dc.b    #$2D, #12, #VOL04_CONST ; D
        dc.b    #$21, #12, #VOL04_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #$46, #12, #VOL04_CONST ; G
        dc.b    #$33, #12, #VOL04_CONST ; C
        dc.b    #$2D, #12, #VOL04_CONST ; D
        dc.b    #$21, #12, #VOL04_CONST ; G
        dc.b    #$46, #12, #VOL04_CONST ; G
        dc.b    #$33, #12, #VOL04_CONST ; C
        dc.b    #$2D, #12, #VOL04_CONST ; D
        dc.b    #$21, #12, #VOL04_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #$46, #12, #VOL04_CONST ; G
        dc.b    #$33, #12, #VOL04_CONST ; C
        dc.b    #$2D, #12, #VOL04_CONST ; D
        dc.b    #$21, #12, #VOL04_CONST ; G
        dc.b    #$46, #12, #VOL04_CONST ; G
        dc.b    #$33, #12, #VOL04_CONST ; C
        dc.b    #$2D, #12, #VOL04_CONST ; D
        dc.b    #$21, #12, #VOL04_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #$46, #12, #VOL04_CONST ; G
        dc.b    #$33, #12, #VOL04_CONST ; C
        dc.b    #$2D, #12, #VOL04_CONST ; D
        dc.b    #$21, #12, #VOL04_CONST ; G
        dc.b    #$46, #12, #VOL04_CONST ; G
        dc.b    #$33, #12, #VOL04_CONST ; C
        dc.b    #$2D, #12, #VOL04_CONST ; D
        dc.b    #$21, #12, #VOL04_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #$46, #12, #VOL04_CONST ; G
        dc.b    #$33, #12, #VOL04_CONST ; C
        dc.b    #$2D, #12, #VOL04_CONST ; D
        dc.b    #$21, #12, #VOL04_CONST ; G
        dc.b    #$46, #12, #VOL04_CONST ; G
        dc.b    #$33, #12, #VOL04_CONST ; C
        dc.b    #$2D, #12, #VOL04_CONST ; D
        dc.b    #$21, #12, #VOL04_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #$46, #12, #VOL04_CONST ; G
        dc.b    #$33, #12, #VOL04_CONST ; C
        dc.b    #$2D, #12, #VOL04_CONST ; D
        dc.b    #$21, #12, #VOL04_CONST ; G
        dc.b    #$46, #12, #VOL04_CONST ; G
        dc.b    #$33, #12, #VOL04_CONST ; C
        dc.b    #$2D, #12, #VOL04_CONST ; D
        dc.b    #$21, #12, #VOL04_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #$46, #12, #VOL04_CONST ; G
        dc.b    #$33, #12, #VOL04_CONST ; C
        dc.b    #$2D, #12, #VOL04_CONST ; D
        dc.b    #$21, #12, #VOL04_CONST ; G
        dc.b    #$46, #12, #VOL04_CONST ; G
        dc.b    #$33, #12, #VOL04_CONST ; C
        dc.b    #$2D, #12, #VOL04_CONST ; D
        dc.b    #$21, #12, #VOL04_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #$46, #12, #VOL04_CONST ; G
        dc.b    #$33, #12, #VOL04_CONST ; C
        dc.b    #$2D, #12, #VOL04_CONST ; D
        dc.b    #$21, #12, #VOL04_CONST ; G
        dc.b    #$46, #12, #VOL04_CONST ; G
        dc.b    #$33, #12, #VOL04_CONST ; C
        dc.b    #$2D, #12, #VOL04_CONST ; D
        dc.b    #$21, #12, #VOL04_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #$46, #12, #VOL04_CONST ; G
        dc.b    #$33, #12, #VOL04_CONST ; C
        dc.b    #$2D, #12, #VOL04_CONST ; D
        dc.b    #$21, #12, #VOL04_CONST ; G
        dc.b    #$46, #12, #VOL04_CONST ; G
        dc.b    #$33, #12, #VOL04_CONST ; C
        dc.b    #$2D, #12, #VOL04_CONST ; D
        dc.b    #$21, #12, #VOL04_CONST ; G

        ; change up
        ; Uses pokey_notes column P (green)
        dc.b    #$46, #12, #VOL04_CONST ; G
        dc.b    #$37, #12, #VOL04_CONST ; B
        dc.b    #$2D, #12, #VOL04_CONST ; D
        dc.b    #$21, #12, #VOL04_CONST ; G
        dc.b    #$46, #12, #VOL04_CONST ; G
        dc.b    #$37, #12, #VOL04_CONST ; B
        dc.b    #$2D, #12, #VOL04_CONST ; D
        dc.b    #$21, #12, #VOL04_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #$46, #12, #VOL04_CONST ; G - low
        dc.b    #$21, #12, #VOL04_CONST ; G - high
        dc.b    #$25, #12, #VOL04_CONST ; F
        dc.b    #$2A, #12, #VOL04_CONST ; D#
        dc.b    #$25, #12, #VOL04_CONST ; F
        dc.b    #$2A, #12, #VOL04_CONST ; D#
        dc.b    #$2D, #12, #VOL04_CONST ; D
        dc.b    #$37, #12, #VOL04_CONST ; B

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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song4Track2
	dc.b	#>Goonies2Song4Track2
  ELSE
	; Uses pokey_notes column H (brown)
        dc.b    #$54, #6,   #VOL06_CONST ; F# trill
        dc.b    #$4F, #186, #VOL06_CONST ; G

        ; Uses pokey_notes column H (brown)
        dc.b    #$4B, #192, #VOL06_CONST ; G#

        ; Uses pokey_notes column H (brown)
        dc.b    #$54, #6,   #VOL06_CONST ; F# trill
        dc.b    #$4F, #186, #VOL06_CONST ; G

        ; Uses pokey_notes column H (brown)
        dc.b    #$4B, #192, #VOL06_CONST ; G#

        ; Uses pokey_notes column H (brown)
        dc.b    #$42, #192, #VOL06_CONST ; A#

        ; Uses pokey_notes column H (brown)
        dc.b    #$3F, #96, #VOL06_CONST ; B
        dc.b    #$4F, #12, #VOL06_CONST ; G
        dc.b    #$27, #12, #VOL06_CONST ; G - high
        dc.b    #$2C, #12, #VOL06_CONST ; F
        dc.b    #$31, #12, #VOL06_CONST ; D#
        dc.b    #$2C, #12, #VOL06_CONST ; F
        dc.b    #$31, #12, #VOL06_CONST ; D#
        dc.b    #$34, #12, #VOL06_CONST ; D
        dc.b    #$3F, #12, #VOL06_CONST ; B

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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song4Track3
	dc.b	#>Goonies2Song4Track3
  ELSE

        ; Uses pokey_notes column P (green)
        dc.b    #$46, #12, #VOL06_CONST ; G
        dc.b    #$33, #12, #VOL06_CONST ; C
        dc.b    #$2D, #12, #VOL06_CONST ; D
        dc.b    #$21, #12, #VOL06_CONST ; G
        dc.b    #$46, #12, #VOL06_CONST ; G
        dc.b    #$33, #12, #VOL06_CONST ; C
        dc.b    #$2D, #12, #VOL06_CONST ; D
        dc.b    #$21, #12, #VOL06_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #$46, #12, #VOL06_CONST ; G
        dc.b    #$33, #12, #VOL06_CONST ; C
        dc.b    #$2D, #12, #VOL06_CONST ; D
        dc.b    #$21, #12, #VOL06_CONST ; G
        dc.b    #$46, #12, #VOL06_CONST ; G
        dc.b    #$33, #12, #VOL06_CONST ; C
        dc.b    #$2D, #12, #VOL06_CONST ; D
        dc.b    #$21, #12, #VOL06_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #$46, #12, #VOL06_CONST ; G
        dc.b    #$33, #12, #VOL06_CONST ; C
        dc.b    #$2D, #12, #VOL06_CONST ; D
        dc.b    #$21, #12, #VOL06_CONST ; G
        dc.b    #$46, #12, #VOL06_CONST ; G
        dc.b    #$33, #12, #VOL06_CONST ; C
        dc.b    #$2D, #12, #VOL06_CONST ; D
        dc.b    #$21, #12, #VOL06_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #$46, #12, #VOL06_CONST ; G
        dc.b    #$33, #12, #VOL06_CONST ; C
        dc.b    #$2D, #12, #VOL06_CONST ; D
        dc.b    #$21, #12, #VOL06_CONST ; G
        dc.b    #$46, #12, #VOL06_CONST ; G
        dc.b    #$33, #12, #VOL06_CONST ; C
        dc.b    #$2D, #12, #VOL06_CONST ; D
        dc.b    #$21, #12, #VOL06_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #$46, #12, #VOL06_CONST ; G
        dc.b    #$33, #12, #VOL06_CONST ; C
        dc.b    #$2D, #12, #VOL06_CONST ; D
        dc.b    #$21, #12, #VOL06_CONST ; G
        dc.b    #$46, #12, #VOL06_CONST ; G
        dc.b    #$33, #12, #VOL06_CONST ; C
        dc.b    #$2D, #12, #VOL06_CONST ; D
        dc.b    #$21, #12, #VOL06_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #$46, #12, #VOL06_CONST ; G
        dc.b    #$33, #12, #VOL06_CONST ; C
        dc.b    #$2D, #12, #VOL06_CONST ; D
        dc.b    #$21, #12, #VOL06_CONST ; G
        dc.b    #$46, #12, #VOL06_CONST ; G
        dc.b    #$33, #12, #VOL06_CONST ; C
        dc.b    #$2D, #12, #VOL06_CONST ; D
        dc.b    #$21, #12, #VOL06_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #$46, #12, #VOL06_CONST ; G
        dc.b    #$33, #12, #VOL06_CONST ; C
        dc.b    #$2D, #12, #VOL06_CONST ; D
        dc.b    #$21, #12, #VOL06_CONST ; G
        dc.b    #$46, #12, #VOL06_CONST ; G
        dc.b    #$33, #12, #VOL06_CONST ; C
        dc.b    #$2D, #12, #VOL06_CONST ; D
        dc.b    #$21, #12, #VOL06_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #$46, #12, #VOL06_CONST ; G
        dc.b    #$33, #12, #VOL06_CONST ; C
        dc.b    #$2D, #12, #VOL06_CONST ; D
        dc.b    #$21, #12, #VOL06_CONST ; G
        dc.b    #$46, #12, #VOL06_CONST ; G
        dc.b    #$33, #12, #VOL06_CONST ; C
        dc.b    #$2D, #12, #VOL06_CONST ; D
        dc.b    #$21, #12, #VOL06_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #$46, #12, #VOL06_CONST ; G
        dc.b    #$33, #12, #VOL06_CONST ; C
        dc.b    #$2D, #12, #VOL06_CONST ; D
        dc.b    #$21, #12, #VOL06_CONST ; G
        dc.b    #$46, #12, #VOL06_CONST ; G
        dc.b    #$33, #12, #VOL06_CONST ; C
        dc.b    #$2D, #12, #VOL06_CONST ; D
        dc.b    #$21, #12, #VOL06_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #$46, #12, #VOL06_CONST ; G
        dc.b    #$33, #12, #VOL06_CONST ; C
        dc.b    #$2D, #12, #VOL06_CONST ; D
        dc.b    #$21, #12, #VOL06_CONST ; G
        dc.b    #$46, #12, #VOL06_CONST ; G
        dc.b    #$33, #12, #VOL06_CONST ; C
        dc.b    #$2D, #12, #VOL06_CONST ; D
        dc.b    #$21, #12, #VOL06_CONST ; G

	; change up
        ; Uses pokey_notes column P (green)
        dc.b    #$46, #12, #VOL06_CONST ; G
        dc.b    #$37, #12, #VOL06_CONST ; B
        dc.b    #$2D, #12, #VOL06_CONST ; D
        dc.b    #$21, #12, #VOL06_CONST ; G
        dc.b    #$46, #12, #VOL06_CONST ; G
        dc.b    #$37, #12, #VOL06_CONST ; B
        dc.b    #$2D, #12, #VOL06_CONST ; D
        dc.b    #$21, #12, #VOL06_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #$46, #12, #VOL06_CONST ; G - low
        dc.b    #$21, #12, #VOL06_CONST ; G - high
        dc.b    #$25, #12, #VOL06_CONST ; F
        dc.b    #$2A, #12, #VOL06_CONST ; D#
        dc.b    #$25, #12, #VOL06_CONST ; F
        dc.b    #$2A, #12, #VOL06_CONST ; D#
        dc.b    #$2D, #12, #VOL06_CONST ; D
        dc.b    #$37, #12, #VOL06_CONST ; B


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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song4Track4
	dc.b	#>Goonies2Song4Track4
  ELSE

        ; This track has no music
Goonies2Song4Track4Stops
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song4Track4Stops
	dc.b	#>Goonies2Song4Track4Stops
  ENDIF ; (IF MUTE_TRACK4)

