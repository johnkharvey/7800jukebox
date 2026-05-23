MUTE_TRACK1		set	0
MUTE_TRACK2		set	0
MUTE_TRACK3		set	0
MUTE_TRACK4		set	0

; Drum equates
BASSDRUM1		equ	$5C
HIGHSNARE		equ	$07
SNAREDRUM		equ	$0E

;=================
Spelunker5Track1
;=================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK1
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker5Track1
	dc.b	#>Spelunker5Track1
  ELSE

	; Uses pokey_notes column P (green)
	dc.b	#$53, #12, #ARCH12_16EX ; E
	dc.b	#$6A, #12, #ARCH12_16EX ; C
	dc.b	#$5E, #12, #ARCH12_16EX ; D
	dc.b	#$58, #24, #ARCH24_16FD ; D#
	dc.b	#$5E, #24, #ARCH24_16FD ; D
	dc.b	#$6A, #12, #ARCH12_16EX ; C

	; Uses pokey_notes column P (green)
	dc.b	#$46, #36, #ARCH48_24FD ; G
	dc.b	#$4F, #48, #ARCH48_24FD ; F
	dc.b	#$00, #12, #RESTDEFAULT ; rest

	; Uses pokey_notes column P (green)
	dc.b	#$53, #12, #ARCH12_16EX ; E
	dc.b	#$6A, #12, #ARCH12_16EX ; C
	dc.b	#$5E, #12, #ARCH12_16EX ; D
	dc.b	#$58, #24, #ARCH24_16FD ; D#
	dc.b	#$5E, #24, #ARCH24_16FD ; D
	dc.b	#$6A, #12, #ARCH12_16EX ; C

	; Uses pokey_notes column P (green)
	dc.b	#$53, #48, #ARCH48_24FD ; E
	dc.b	#$00, #48, #RESTDEFAULT ; rest

	; Uses pokey_notes column P (green)
	dc.b	#$53, #12, #ARCH12_16EX ; E
	dc.b	#$6A, #12, #ARCH12_16EX ; C
	dc.b	#$5E, #12, #ARCH12_16EX ; D
	dc.b	#$58, #24, #ARCH24_16FD ; D#
	dc.b	#$5E, #24, #ARCH24_16FD ; D
	dc.b	#$6A, #12, #ARCH12_16EX ; C

	; Uses pokey_notes column P (green)
	dc.b	#$46, #36, #ARCH48_24FD ; G
	dc.b	#$4F, #48, #ARCH48_24FD ; F
	dc.b	#$00, #12, #RESTDEFAULT ; rest

	; Uses pokey_notes column P (green)
	dc.b	#$53, #12, #ARCH12_16EX ; E
	dc.b	#$6A, #12, #ARCH12_16EX ; C
	dc.b	#$5E, #12, #ARCH12_16EX ; D
	dc.b	#$6A, #12, #ARCH12_16EX ; C
	dc.b	#$58, #12, #ARCH12_16EX ; D#
	dc.b	#$6A, #12, #ARCH12_16EX ; C
	dc.b	#$5E, #12, #ARCH12_16EX ; D

	; Uses pokey_notes column P (green)
	dc.b	#$6A, #48, #ARCH48_24FD ; C
	dc.b	#$00, #60, #RESTDEFAULT ; rest

	dc.b	#$FF
	dc.b	#<Spelunker5Track1
	dc.b	#>Spelunker5Track1

  ENDIF ; (IF MUTE_TRACK1)

;================
Spelunker5Track2
;================
; Uses pokey_notes column H (brown)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK2
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker5Track2
	dc.b	#>Spelunker5Track2
  ELSE

	; Uses pokey_notes column H (brown)
	dc.b	#$77, #12, #VOL06_CONST ; C
	dc.b	#$3B, #12, #VOL06_CONST ; C
	dc.b	#$6A, #12, #VOL06_CONST ; D
	dc.b	#$34, #12, #VOL06_CONST ; D
	dc.b	#$64, #12, #VOL06_CONST ; D#
	dc.b	#$31, #12, #VOL06_CONST ; D#
	dc.b	#$59, #12, #VOL06_CONST ; F
	dc.b	#$2C, #12, #VOL06_CONST ; F

	; Uses pokey_notes column H (brown)
	dc.b	#$77, #12, #VOL06_CONST ; C
	dc.b	#$3B, #12, #VOL06_CONST ; C
	dc.b	#$6A, #12, #VOL06_CONST ; D
	dc.b	#$34, #12, #VOL06_CONST ; D
	dc.b	#$64, #12, #VOL06_CONST ; D#
	dc.b	#$31, #12, #VOL06_CONST ; D#
	dc.b	#$59, #12, #VOL06_CONST ; F
	dc.b	#$2C, #12, #VOL06_CONST ; F

	; Uses pokey_notes column H (brown)
	dc.b	#$77, #12, #VOL06_CONST ; C
	dc.b	#$3B, #12, #VOL06_CONST ; C
	dc.b	#$6A, #12, #VOL06_CONST ; D
	dc.b	#$34, #12, #VOL06_CONST ; D
	dc.b	#$64, #12, #VOL06_CONST ; D#
	dc.b	#$31, #12, #VOL06_CONST ; D#
	dc.b	#$59, #12, #VOL06_CONST ; F
	dc.b	#$2C, #12, #VOL06_CONST ; F

	; Uses pokey_notes column H (brown)
	dc.b	#$77, #12, #VOL06_CONST ; C
	dc.b	#$3B, #12, #VOL06_CONST ; C
	dc.b	#$6A, #12, #VOL06_CONST ; D
	dc.b	#$34, #12, #VOL06_CONST ; D
	dc.b	#$64, #12, #VOL06_CONST ; D#
	dc.b	#$31, #12, #VOL06_CONST ; D#
	dc.b	#$59, #12, #VOL06_CONST ; F
	dc.b	#$2C, #12, #VOL06_CONST ; F

	; Uses pokey_notes column H (brown)
	dc.b	#$77, #12, #VOL06_CONST ; C
	dc.b	#$3B, #12, #VOL06_CONST ; C
	dc.b	#$6A, #12, #VOL06_CONST ; D
	dc.b	#$34, #12, #VOL06_CONST ; D
	dc.b	#$64, #12, #VOL06_CONST ; D#
	dc.b	#$31, #12, #VOL06_CONST ; D#
	dc.b	#$59, #12, #VOL06_CONST ; F
	dc.b	#$2C, #12, #VOL06_CONST ; F

	; Uses pokey_notes column H (brown)
	dc.b	#$77, #12, #VOL06_CONST ; C
	dc.b	#$3B, #12, #VOL06_CONST ; C
	dc.b	#$6A, #12, #VOL06_CONST ; D
	dc.b	#$34, #12, #VOL06_CONST ; D
	dc.b	#$64, #12, #VOL06_CONST ; D#
	dc.b	#$31, #12, #VOL06_CONST ; D#
	dc.b	#$59, #12, #VOL06_CONST ; F
	dc.b	#$2C, #12, #VOL06_CONST ; F

	; Change up

	; Uses pokey_notes column H (brown)
	dc.b	#$77, #12, #VOL06_CONST ; C
	dc.b	#$3B, #12, #VOL06_CONST ; C
	dc.b	#$6A, #12, #VOL06_CONST ; D
	dc.b	#$34, #12, #VOL06_CONST ; D
	dc.b	#$64, #12, #VOL06_CONST ; D#
	dc.b	#$31, #12, #VOL06_CONST ; D#
	dc.b	#$6A, #12, #VOL06_CONST ; D
	dc.b	#$34, #12, #VOL06_CONST ; D

	; Uses pokey_notes column H (brown)
	dc.b	#$77, #12, #VOL06_CONST ; C
	dc.b	#$3B, #12, #VOL06_CONST ; C
	dc.b	#$77, #12, #VOL06_CONST ; C
	dc.b	#$3B, #12, #VOL06_CONST ; C
	dc.b	#$77, #12, #VOL06_CONST ; C
	dc.b	#$3B, #12, #VOL06_CONST ; C
	dc.b	#$77, #12, #VOL06_CONST ; C
	dc.b	#$3B, #12, #VOL06_CONST ; C

	dc.b	#$FF
	dc.b	#<Spelunker5Track2
	dc.b	#>Spelunker5Track2

  ENDIF ; (IF MUTE_TRACK2)

;================
Spelunker5Track3
;================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK3
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker5Track4
	dc.b	#>Spelunker5Track4
  ELSE

	; This track has no music
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker5Track3
	dc.b	#>Spelunker5Track3
  ENDIF ; (IF MUTE_TRACK3)

;================
Spelunker5Track4
;================
	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK4
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker5Track4
	dc.b	#>Spelunker5Track4
  ELSE

	; This track has no music
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker5Track4
	dc.b	#>Spelunker5Track4

  ENDIF ; (IF MUTE_TRACK4)

