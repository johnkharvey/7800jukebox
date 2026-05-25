MUTE_TRACK1		set	1
MUTE_TRACK2		set	0
MUTE_TRACK3		set	1
MUTE_TRACK4		set	0

; Drum equates
BASSDRUM1		equ	$5C
HIGHSNARE		equ	$07
SNAREDRUM		equ	$0E

;BASSDRUM       equ     $0F
BASSDRUM        equ     $5C
DRUM4FRAMES     equ     14
;SNAREDRUM      equ     $07
SNAREDRUM       equ     $0E
DRUM4FRAMES     equ     14

;=============
Goonies2Song1Track1
;=============
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK1
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song1Track1
	dc.b	#>Goonies2Song1Track1
  ELSE
	; Uses pokey_notes column P (green)
	dc.b	#$2D, #18, #VOL06REST02 ; D

	dc.b	#$FF
	dc.b	#<Goonies2Song1Track1
	dc.b	#>Goonies2Song1Track1
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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song1Track2
	dc.b	#>Goonies2Song1Track2
  ELSE
	; Uses pokey_notes column H (brown)

	;E?  Tiny trill on start
        dc.b    #$59, #96, #VOL06_CONST ; F 

        dc.b    #$59, #84, #VOL06_CONST ; F - continue previous
        dc.b    #$77, #6,  #VOL06_CONST ; C
        dc.b    #$5E, #6,  #VOL06_CONST ; E

        dc.b    #$59, #96, #VOL06_CONST ; F

        dc.b    #$59, #24, #VOL06_CONST ; F - continue previous
        dc.b    #$77, #12, #VOL06_CONST ; C - low
        dc.b    #$42, #24, #VOL06_CONST ; A# - high
        dc.b    #$3B, #24, #VOL06_CONST ; C - high
        dc.b    #$42, #12, #VOL06_CONST ; A#

        dc.b    #$70, #6,  #VOL06_CONST ; C# (trill)
        dc.b    #$6A, #90, #VOL06_CONST ; D

        dc.b    #$6A, #84, #VOL06_CONST ; D - continue previous
        dc.b    #$8E, #12,  #VOL06_CONST ; A - low

        dc.b    #$86, #84, #VOL06_CONST ; A#
        dc.b    #$8E, #6,  #VOL06_CONST ; A
        dc.b    #$86, #6,  #VOL06_CONST ; A#

        dc.b    #$77, #36, #VOL06_CONST ; C
        dc.b    #$86, #24, #VOL06_CONST ; A#
        dc.b    #$77, #12, #VOL06_CONST ; C
        dc.b    #$6A, #12, #VOL06_CONST ; D
        dc.b    #$5E, #12, #VOL06_CONST ; E

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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song1Track3
	dc.b	#>Goonies2Song1Track3
  ELSE
	; Uses pokey_notes column P (green)
	dc.b	#$2D, #18, #VOL06REST02 ; D

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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song1Track4
	dc.b	#>Goonies2Song1Track4
  ELSE

	dc.b	#HIGHSNARE , #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #20, #RESTDEFAULT ; rest
        dc.b    #SNAREDRUM , #4, #DRUM4FRAMES   ; bass drum
        dc.b    #$00, #20, #RESTDEFAULT ; rest
        dc.b    #SNAREDRUM , #4, #DRUM4FRAMES   ; bass drum
        dc.b    #$00, #20, #RESTDEFAULT ; rest
        dc.b    #SNAREDRUM , #4, #DRUM4FRAMES   ; bass drum
        dc.b    #$00, #8, #RESTDEFAULT ; rest
        dc.b    #HIGHSNARE , #4, #DRUM4FRAMES   ; bass drum
        dc.b    #$00, #2, #RESTDEFAULT ; rest
        dc.b    #HIGHSNARE , #4, #DRUM4FRAMES   ; bass drum
        dc.b    #$00, #2, #RESTDEFAULT ; rest

	dc.b	#$FF
	dc.b	#<Goonies2Song1Track4
	dc.b	#>Goonies2Song1Track4
  ENDIF ; (IF MUTE_TRACK4)

