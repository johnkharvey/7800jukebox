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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker6Track1
	dc.b	#>Spelunker6Track1
  ELSE

	; Uses pokey_notes column P (green)
	dc.b	#$6A, #24, #VOL04_CONST ; C
	dc.b	#$58, #24, #VOL04_CONST ; D#
	dc.b	#$46, #24, #VOL04_CONST ; G
	dc.b	#$33, #24, #VOL04_CONST ; C

	; Uses pokey_notes column P (green)
	dc.b	#$46, #3, #VOL04_CONST ; G
	dc.b	#$41, #3, #VOL04_CONST ; G#
	dc.b	#$46, #3, #VOL04_CONST ; G
	dc.b	#$41, #3, #VOL04_CONST ; G#
	dc.b	#$46, #3, #VOL04_CONST ; G
	dc.b	#$41, #3, #VOL04_CONST ; G#
	dc.b	#$46, #3, #VOL04_CONST ; G
	dc.b	#$41, #3, #VOL04_CONST ; G#
	dc.b	#$46, #3, #VOL04_CONST ; G
	dc.b	#$41, #3, #VOL04_CONST ; G#
	dc.b	#$46, #3, #VOL04_CONST ; G
	dc.b	#$41, #3, #VOL04_CONST ; G#
	dc.b	#$46, #3, #VOL04_CONST ; G
	dc.b	#$41, #3, #VOL04_CONST ; G#
	dc.b	#$46, #3, #VOL04_CONST ; G
	dc.b	#$41, #3, #VOL04_CONST ; G#
	dc.b	#$4F, #12, #VOL04_CONST ; F
	dc.b	#$58, #12, #VOL04_CONST ; D#
	dc.b	#$5E, #12, #VOL04_CONST ; D
	dc.b	#$6A, #12, #VOL04_CONST ; C

	; Uses pokey_notes column P (green)
	dc.b	#$00, #96, #RESTDEFAULT ; rest

	; Uses pokey_notes column P (green)
	dc.b	#$00, #96, #RESTDEFAULT ; rest

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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker6Track2
	dc.b	#>Spelunker6Track2
  ELSE

	; Uses pokey_notes column H (brown)
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$64, #12, #VOL06REST02 ; D#
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$42, #12, #VOL06REST02 ; A#
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$64, #12, #VOL06REST02 ; D#
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$42, #12, #VOL06REST02 ; A#

	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$4B, #12, #VOL06REST02 ; G#
	dc.b	#$3B, #12, #VOL06REST02 ; C
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$4B, #12, #VOL06REST02 ; G#
	dc.b	#$3B, #12, #VOL06REST02 ; C

	dc.b	#$00, #96, #RESTDEFAULT ; rest

	dc.b	#$00, #96, #RESTDEFAULT ; rest

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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker6Track3
	dc.b	#>Spelunker6Track3
  ELSE

	; This track has no music
	dc.b	#$00, #96, #RESTDEFAULT ; rest
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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker6Track4
	dc.b	#>Spelunker6Track4
  ELSE

	; This track has no music
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker6Track4
	dc.b	#>Spelunker6Track4

  ENDIF ; (IF MUTE_TRACK4)

