MUTE_TRACK1		set	0
MUTE_TRACK2		set	0
MUTE_TRACK3		set	0
MUTE_TRACK4		set	0

; Drum equates
BASSDRUM1		equ	$5C
HIGHSNARE		equ	$07
SNAREDRUM		equ	$0E

;=================
Spelunker9Track1
;=================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK1
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker9Track1
	dc.b	#>Spelunker9Track1
  ELSE

	; Uses pokey_notes column P (green)
	dc.b	#$28, #18, #VOL04_CONST ; E
	dc.b	#$33, #18, #VOL04_CONST ; C
	dc.b	#$28, #24, #VOL04_CONST ; E
	dc.b	#$33, #12, #VOL04_CONST ; C
	dc.b	#$28, #6,  #VOL04_CONST ; E
	dc.b	#$33, #18, #VOL04_CONST ; C

	; Uses pokey_notes column P (green)
	dc.b	#$28, #18, #VOL04_CONST ; E
	dc.b	#$33, #18, #VOL04_CONST ; C
	dc.b	#$28, #24, #VOL04_CONST ; E
	dc.b	#$33, #12, #VOL04_CONST ; C
	dc.b	#$28, #6,  #VOL04_CONST ; E
	dc.b	#$33, #18, #VOL04_CONST ; C

	; Uses pokey_notes column P (green)
	dc.b	#$2D, #18, #VOL04_CONST ; D
	dc.b	#$39, #18, #VOL04_CONST ; A#
	dc.b	#$2D, #24, #VOL04_CONST ; D
	dc.b	#$39, #12, #VOL04_CONST ; A#
	dc.b	#$2D, #6,  #VOL04_CONST ; D
	dc.b	#$39, #18, #VOL04_CONST ; A#

	; Uses pokey_notes column P (green)
	dc.b	#$2D, #18, #VOL04_CONST ; D
	dc.b	#$39, #18, #VOL04_CONST ; A#
	dc.b	#$2D, #24, #VOL04_CONST ; D
	dc.b	#$39, #12, #VOL04_CONST ; A#
	dc.b	#$2D, #6,  #VOL04_CONST ; D
	dc.b	#$39, #18, #VOL04_CONST ; A#

	dc.b	#$FF
	dc.b	#<Spelunker9Track1
	dc.b	#>Spelunker9Track1

  ENDIF ; (IF MUTE_TRACK1)

;================
Spelunker9Track2
;================
; Uses pokey_notes column H (brown)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK2
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker9Track2
	dc.b	#>Spelunker9Track2
  ELSE

	; Uses pokey_notes column H (brown)
	dc.b	#$3B, #18, #VOL04_CONST ; C
	dc.b	#$00, #18, #RESTDEFAULT ; rest
	dc.b	#$3B, #24, #VOL04_CONST ; C
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$3B, #6,  #VOL04_CONST ; C
	dc.b	#$00, #18, #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#$3B, #18, #VOL04_CONST ; C
	dc.b	#$00, #18, #RESTDEFAULT ; rest
	dc.b	#$3B, #24, #VOL04_CONST ; C
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$3B, #6,  #VOL04_CONST ; C
	dc.b	#$00, #18, #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#$42, #18, #VOL04_CONST ; A#
	dc.b	#$00, #18, #RESTDEFAULT ; rest
	dc.b	#$42, #24, #VOL04_CONST ; A#
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$42, #6,  #VOL04_CONST ; A#
	dc.b	#$00, #18, #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#$42, #18, #VOL04_CONST ; A#
	dc.b	#$00, #18, #RESTDEFAULT ; rest
	dc.b	#$42, #24, #VOL04_CONST ; A#
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$42, #6,  #VOL04_CONST ; A#
	dc.b	#$00, #18, #RESTDEFAULT ; rest

	dc.b	#$FF
	dc.b	#<Spelunker9Track2
	dc.b	#>Spelunker9Track2

  ENDIF ; (IF MUTE_TRACK2)

;================
Spelunker9Track3
;================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK3
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker9Track3
	dc.b	#>Spelunker9Track3
  ELSE

	; Uses pokey_notes column P (green)
	dc.b	#$46, #18, #ARCH24_16FD ; G
	dc.b	#$00, #18, #RESTDEFAULT ; rest
	dc.b	#$46, #24, #ARCH24_16FD ; G
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$46, #6,  #ARCH24_16FD ; G
	dc.b	#$00, #18, #RESTDEFAULT ; rest

	; Uses pokey_notes column P (green)
	dc.b	#$46, #18, #ARCH24_16FD ; G
	dc.b	#$00, #18, #RESTDEFAULT ; rest
	dc.b	#$46, #24, #ARCH24_16FD ; G
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$46, #6,  #ARCH24_16FD ; G
	dc.b	#$00, #18, #RESTDEFAULT ; rest

	; Uses pokey_notes column P (green)
	dc.b	#$4F, #18, #ARCH24_16FD ; F
	dc.b	#$00, #18, #RESTDEFAULT ; rest
	dc.b	#$4F, #24, #ARCH24_16FD ; F
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$4F, #6,  #ARCH24_16FD ; F
	dc.b	#$00, #18, #RESTDEFAULT ; rest

	; Uses pokey_notes column P (green)
	dc.b	#$4F, #18, #ARCH24_16FD ; F
	dc.b	#$00, #18, #RESTDEFAULT ; rest
	dc.b	#$4F, #24, #ARCH24_16FD ; F
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$4F, #6,  #ARCH24_16FD ; F
	dc.b	#$00, #18, #RESTDEFAULT ; rest

	dc.b	#$FF
	dc.b	#<Spelunker9Track3
	dc.b	#>Spelunker9Track3
  ENDIF ; (IF MUTE_TRACK3)

;================
Spelunker9Track4
;================
	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK4
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker9Track4
	dc.b	#>Spelunker9Track4
  ELSE

	; This track has no music
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker9Track4
	dc.b	#>Spelunker9Track4

  ENDIF ; (IF MUTE_TRACK4)

