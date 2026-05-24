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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker8Track1
	dc.b	#>Spelunker8Track1
  ELSE

	; Uses pokey_notes column P (green)
	dc.b	#$6A, #6,  #VOL04_CONST ; C
	dc.b	#$53, #6,  #VOL04_CONST ; E
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$46, #6,  #VOL04_CONST ; G
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$46, #6,  #VOL04REST02 ; G
	dc.b	#$46, #12, #VOL04_CONST ; G
	dc.b	#$4F, #12, #VOL04_CONST ; F
	dc.b	#$53, #12, #VOL04_CONST ; E

	; Uses pokey_notes column P (green)
	dc.b	#$4F, #6,  #VOL04_CONST ; F
	dc.b	#$3E, #6,  #VOL04_CONST ; A
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$33, #6,  #VOL04_CONST ; C
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$33, #6,  #VOL04REST02 ; C
	dc.b	#$33, #12, #VOL04_CONST ; C
	dc.b	#$37, #12, #VOL04_CONST ; B
	dc.b	#$3E, #12, #VOL04_CONST ; A

	; Uses pokey_notes column P (green)
	dc.b	#$5E, #6,  #VOL04_CONST ; D
	dc.b	#$4A, #6,  #VOL04_CONST ; F#
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$3E, #6,  #VOL04_CONST ; A
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$3E, #6,  #VOL04REST02 ; A
	dc.b	#$3E, #12, #VOL04_CONST ; A
	dc.b	#$46, #12, #VOL04_CONST ; G
	dc.b	#$4A, #12, #VOL04_CONST ; F#

	; Uses pokey_notes column P (green)
	dc.b	#$46, #6,  #VOL04_CONST ; G
	dc.b	#$37, #6,  #VOL04_CONST ; B
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$2D, #6,  #VOL04_CONST ; D
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$2D, #6,  #VOL04REST02 ; D
	dc.b	#$2D, #12, #VOL04_CONST ; D
	dc.b	#$33, #12, #VOL04_CONST ; C
	dc.b	#$37, #12, #VOL04_CONST ; B

	;===============

	; Uses pokey_notes column P (green)
	dc.b	#$6A, #6,  #VOL04_CONST ; C
	dc.b	#$53, #6,  #VOL04_CONST ; E
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$46, #6,  #VOL04_CONST ; G
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$46, #6,  #VOL04REST02 ; G
	dc.b	#$46, #12, #VOL04_CONST ; G
	dc.b	#$4F, #12, #VOL04_CONST ; F
	dc.b	#$53, #12, #VOL04_CONST ; E

	; Uses pokey_notes column P (green)
	dc.b	#$4F, #6,  #VOL04_CONST ; F
	dc.b	#$3E, #6,  #VOL04_CONST ; A
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$33, #6,  #VOL04_CONST ; C
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$33, #6,  #VOL04REST02 ; C
	dc.b	#$33, #12, #VOL04_CONST ; C
	dc.b	#$37, #12, #VOL04_CONST ; B
	dc.b	#$3E, #12, #VOL04_CONST ; A

	; Uses pokey_notes column P (green)
	dc.b	#$5E, #6,  #VOL04_CONST ; D
	dc.b	#$4A, #6,  #VOL04_CONST ; F#
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$3E, #6,  #VOL04_CONST ; A
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$3E, #6,  #VOL04REST02 ; A
	dc.b	#$3E, #12, #VOL04_CONST ; A
	dc.b	#$46, #12, #VOL04_CONST ; G
	dc.b	#$4A, #12, #VOL04_CONST ; F#

	; Uses pokey_notes column P (green)
	dc.b	#$46, #6,  #VOL04_CONST ; G
	dc.b	#$37, #6,  #VOL04_CONST ; B
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$2D, #6,  #VOL04_CONST ; D
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$2D, #6,  #VOL04REST02 ; D
	dc.b	#$2D, #12, #VOL04_CONST ; D
	dc.b	#$33, #12, #VOL04_CONST ; C
	dc.b	#$37, #12, #VOL04_CONST ; B

	;===============

	; Uses pokey_notes column P (green)
	dc.b	#$6A, #6,  #VOL04_CONST ; C
	dc.b	#$53, #6,  #VOL04_CONST ; E
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$46, #6,  #VOL04_CONST ; G
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$6A, #6,  #VOL04REST02 ; C
	dc.b	#$53, #12, #VOL04_CONST ; E
	dc.b	#$46, #12, #VOL04_CONST ; G
	dc.b	#$6A, #12, #VOL04_CONST ; C

	; Uses pokey_notes column P (green)
	dc.b	#$5E, #6,  #VOL04_CONST ; D
	dc.b	#$4A, #6,  #VOL04_CONST ; F#
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$3E, #6,  #VOL04_CONST ; A
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$5E, #6,  #VOL04REST02 ; D
	dc.b	#$4A, #12, #VOL04_CONST ; F#
	dc.b	#$3E, #12, #VOL04_CONST ; A
	dc.b	#$5E, #12, #VOL04_CONST ; D

	; Uses pokey_notes column P (green)
	dc.b	#$53, #6,  #VOL04_CONST ; E
	dc.b	#$41, #6,  #VOL04_CONST ; G#
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$37, #6,  #VOL04_CONST ; B
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$53, #6,  #VOL04REST02 ; E
	dc.b	#$41, #12, #VOL04_CONST ; G#
	dc.b	#$37, #12, #VOL04_CONST ; B
	dc.b	#$53, #12, #VOL04_CONST ; E

	; Uses pokey_notes column P (green)
	dc.b	#$4F, #6,  #VOL04_CONST ; F
	dc.b	#$3E, #6,  #VOL04_CONST ; A
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$33, #6,  #VOL04_CONST ; C
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$4F, #6,  #VOL04REST02 ; F
	dc.b	#$3E, #12, #VOL04_CONST ; A
	dc.b	#$33, #12, #VOL04_CONST ; C
	dc.b	#$2D, #12, #VOL04_CONST ; D

	; Uses pokey_notes column P (green)
	dc.b	#$28, #36, #VOL04_CONST ; E
	dc.b	#$00, #36, #RESTDEFAULT ; rest

Spelunker8Track1Stops
	dc.b	#$00, #96, #RESTDEFAULT ; rest
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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker8Track2
	dc.b	#>Spelunker8Track2
  ELSE

	; Uses pokey_notes column H (brown)
	dc.b	#$3B, #14, #VOL04_CONST ; C
	dc.b	#$00, #4,  #RESTDEFAULT ; rest
	dc.b	#$3B, #9,  #VOL04_CONST ; C
	dc.b	#$00, #3,  #RESTDEFAULT ; rest
	dc.b	#$3B, #14, #VOL04_CONST ; C
	dc.b	#$00, #4,  #RESTDEFAULT ; rest
	dc.b	#$3B, #9,  #VOL04_CONST ; C
	dc.b	#$00, #3,  #RESTDEFAULT ; rest
	dc.b	#$3B, #9,  #VOL04_CONST ; C
	dc.b	#$00, #3,  #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#$59, #14, #VOL04_CONST ; F
	dc.b	#$00, #4,  #RESTDEFAULT ; rest
	dc.b	#$59, #9,  #VOL04_CONST ; F
	dc.b	#$00, #3,  #RESTDEFAULT ; rest
	dc.b	#$59, #14, #VOL04_CONST ; F
	dc.b	#$00, #4,  #RESTDEFAULT ; rest
	dc.b	#$59, #9,  #VOL04_CONST ; F
	dc.b	#$00, #3,  #RESTDEFAULT ; rest
	dc.b	#$59, #9,  #VOL04_CONST ; F
	dc.b	#$00, #3,  #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#$34, #14, #VOL04_CONST ; D
	dc.b	#$00, #4,  #RESTDEFAULT ; rest
	dc.b	#$34, #9,  #VOL04_CONST ; D
	dc.b	#$00, #3,  #RESTDEFAULT ; rest
	dc.b	#$34, #14, #VOL04_CONST ; D
	dc.b	#$00, #4,  #RESTDEFAULT ; rest
	dc.b	#$34, #9,  #VOL04_CONST ; D
	dc.b	#$00, #3,  #RESTDEFAULT ; rest
	dc.b	#$34, #9,  #VOL04_CONST ; D
	dc.b	#$00, #3,  #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#$4F, #14, #VOL04_CONST ; G
	dc.b	#$00, #4,  #RESTDEFAULT ; rest
	dc.b	#$4F, #9,  #VOL04_CONST ; G
	dc.b	#$00, #3,  #RESTDEFAULT ; rest
	dc.b	#$4F, #14, #VOL04_CONST ; G
	dc.b	#$00, #4,  #RESTDEFAULT ; rest
	dc.b	#$4F, #9,  #VOL04_CONST ; G
	dc.b	#$00, #3,  #RESTDEFAULT ; rest
	dc.b	#$4F, #9,  #VOL04_CONST ; G
	dc.b	#$00, #3,  #RESTDEFAULT ; rest

	;================

	; Uses pokey_notes column H (brown)
	dc.b	#$3B, #14, #VOL04_CONST ; C
	dc.b	#$00, #4,  #RESTDEFAULT ; rest
	dc.b	#$3B, #9,  #VOL04_CONST ; C
	dc.b	#$00, #3,  #RESTDEFAULT ; rest
	dc.b	#$3B, #14, #VOL04_CONST ; C
	dc.b	#$00, #4,  #RESTDEFAULT ; rest
	dc.b	#$3B, #9,  #VOL04_CONST ; C
	dc.b	#$00, #3,  #RESTDEFAULT ; rest
	dc.b	#$3B, #9,  #VOL04_CONST ; C
	dc.b	#$00, #3,  #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#$59, #14, #VOL04_CONST ; F
	dc.b	#$00, #4,  #RESTDEFAULT ; rest
	dc.b	#$59, #9,  #VOL04_CONST ; F
	dc.b	#$00, #3,  #RESTDEFAULT ; rest
	dc.b	#$59, #14, #VOL04_CONST ; F
	dc.b	#$00, #4,  #RESTDEFAULT ; rest
	dc.b	#$59, #9,  #VOL04_CONST ; F
	dc.b	#$00, #3,  #RESTDEFAULT ; rest
	dc.b	#$59, #9,  #VOL04_CONST ; F
	dc.b	#$00, #3,  #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#$34, #14, #VOL04_CONST ; D
	dc.b	#$00, #4,  #RESTDEFAULT ; rest
	dc.b	#$34, #9,  #VOL04_CONST ; D
	dc.b	#$00, #3,  #RESTDEFAULT ; rest
	dc.b	#$34, #14, #VOL04_CONST ; D
	dc.b	#$00, #4,  #RESTDEFAULT ; rest
	dc.b	#$34, #9,  #VOL04_CONST ; D
	dc.b	#$00, #3,  #RESTDEFAULT ; rest
	dc.b	#$34, #9,  #VOL04_CONST ; D
	dc.b	#$00, #3,  #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#$4F, #14, #VOL04_CONST ; G
	dc.b	#$00, #4,  #RESTDEFAULT ; rest
	dc.b	#$4F, #9,  #VOL04_CONST ; G
	dc.b	#$00, #3,  #RESTDEFAULT ; rest
	dc.b	#$4F, #14, #VOL04_CONST ; G
	dc.b	#$00, #4,  #RESTDEFAULT ; rest
	dc.b	#$4F, #9,  #VOL04_CONST ; G
	dc.b	#$00, #3,  #RESTDEFAULT ; rest
	dc.b	#$4F, #9,  #VOL04_CONST ; G
	dc.b	#$00, #3,  #RESTDEFAULT ; rest

	;================

	; Uses pokey_notes column H (brown)
	dc.b	#$3B, #14, #VOL04_CONST ; C
	dc.b	#$00, #4,  #RESTDEFAULT ; rest
	dc.b	#$3B, #9,  #VOL04_CONST ; C
	dc.b	#$00, #3,  #RESTDEFAULT ; rest
	dc.b	#$3B, #14, #VOL04_CONST ; C
	dc.b	#$00, #4,  #RESTDEFAULT ; rest
	dc.b	#$3B, #9,  #VOL04_CONST ; C
	dc.b	#$00, #3,  #RESTDEFAULT ; rest
	dc.b	#$3B, #9,  #VOL04_CONST ; C
	dc.b	#$00, #3,  #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#$3B, #14, #VOL04_CONST ; C
	dc.b	#$00, #4,  #RESTDEFAULT ; rest
	dc.b	#$3B, #9,  #VOL04_CONST ; C
	dc.b	#$00, #3,  #RESTDEFAULT ; rest
	dc.b	#$3B, #14, #VOL04_CONST ; C
	dc.b	#$00, #4,  #RESTDEFAULT ; rest
	dc.b	#$3B, #9,  #VOL04_CONST ; C
	dc.b	#$00, #3,  #RESTDEFAULT ; rest
	dc.b	#$3B, #9,  #VOL04_CONST ; C
	dc.b	#$00, #3,  #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#$3B, #14, #VOL04_CONST ; C
	dc.b	#$00, #4,  #RESTDEFAULT ; rest
	dc.b	#$3B, #9,  #VOL04_CONST ; C
	dc.b	#$00, #3,  #RESTDEFAULT ; rest
	dc.b	#$3B, #14, #VOL04_CONST ; C
	dc.b	#$00, #4,  #RESTDEFAULT ; rest
	dc.b	#$3B, #9,  #VOL04_CONST ; C
	dc.b	#$00, #3,  #RESTDEFAULT ; rest
	dc.b	#$3B, #9,  #VOL04_CONST ; C
	dc.b	#$00, #3,  #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#$3B, #14, #VOL04_CONST ; C
	dc.b	#$00, #4,  #RESTDEFAULT ; rest
	dc.b	#$3B, #9,  #VOL04_CONST ; C
	dc.b	#$00, #3,  #RESTDEFAULT ; rest
	dc.b	#$3B, #14, #VOL04_CONST ; C
	dc.b	#$00, #4,  #RESTDEFAULT ; rest
	dc.b	#$2C, #9,  #VOL04_CONST ; F
	dc.b	#$00, #3,  #RESTDEFAULT ; rest
	dc.b	#$27, #9,  #VOL04_CONST ; G
	dc.b	#$00, #3,  #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#$3B, #36, #VOL04_CONST ; C
	dc.b	#$00, #36, #RESTDEFAULT ; rest

Spelunker8Track2Stops
	dc.b	#$00, #96, #RESTDEFAULT ; rest
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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker8Track4
	dc.b	#>Spelunker8Track4
  ELSE

Spelunker8Track3Stops
	; This track has no music
	dc.b	#$00, #96, #RESTDEFAULT ; rest
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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker8Track4
	dc.b	#>Spelunker8Track4
  ELSE

	; This track has no music
Spelunker8Track4Stops
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker8Track4Stops
	dc.b	#>Spelunker8Track4Stops

  ENDIF ; (IF MUTE_TRACK4)

