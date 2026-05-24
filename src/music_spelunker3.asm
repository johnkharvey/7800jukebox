MUTE_TRACK1		set	0
MUTE_TRACK2		set	0
MUTE_TRACK3		set	0
MUTE_TRACK4		set	0

; Drum equates
BASSDRUM1		equ	$5C
HIGHSNARE		equ	$07
SNAREDRUM		equ	$0E

;=================
Spelunker3Track1
;=================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK1
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker3Track1
	dc.b	#>Spelunker3Track1
  ELSE

	; Uses pokey_notes column P (green)
	dc.b	#$33, #12, #ARCH12_16EX ; C
	dc.b	#$33, #12, #ARCH12_16EX ; C
	dc.b	#$00, #36, #RESTDEFAULT ; rest
	dc.b	#$5E, #12, #ARCH12_16EX ; D
	dc.b	#$58, #6,  #VOL06_CONST ; D#
	dc.b	#$53, #6,  #VOL06_CONST ; E
	dc.b	#$46, #12, #ARCH12_16EX ; G

	; Uses pokey_notes column P (green)
	dc.b	#$33, #12, #ARCH12_16EX ; C
	dc.b	#$33, #12, #ARCH12_16EX ; C
	dc.b	#$00, #36, #RESTDEFAULT ; rest
	dc.b	#$5E, #12, #ARCH12_16EX ; D
	dc.b	#$58, #6,  #VOL06_CONST ; D#
	dc.b	#$53, #6,  #VOL06_CONST ; E
	dc.b	#$46, #12, #ARCH12_16EX ; G

	; Uses pokey_notes column P (green)
	dc.b	#$33, #12, #ARCH12_16EX ; C
	dc.b	#$33, #12, #ARCH12_16EX ; C
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$2A, #12, #ARCH12_16EX ; D#
	dc.b	#$2D, #12, #ARCH12_16EX ; D
	dc.b	#$33, #12, #ARCH12_16EX ; C
	dc.b	#$3E, #12, #ARCH12_16EX ; A

	dc.b	#$33, #12, #ARCH12_16EX ; C
	dc.b	#$2D, #12, #ARCH12_16EX ; D
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$46, #36, #ARCH48_24FD ; G
	dc.b	#$00, #24, #RESTDEFAULT ; rest

	;=========================================

	; Uses pokey_notes column P (green)
	dc.b	#$33, #12, #ARCH12_16EX ; C
	dc.b	#$33, #12, #ARCH12_16EX ; C
	dc.b	#$00, #36, #RESTDEFAULT ; rest
	dc.b	#$5E, #12, #ARCH12_16EX ; D
	dc.b	#$58, #6,  #VOL06_CONST ; D#
	dc.b	#$53, #6,  #VOL06_CONST ; E
	dc.b	#$46, #12, #ARCH12_16EX ; G

	; Uses pokey_notes column P (green)
	dc.b	#$33, #12, #ARCH12_16EX ; C
	dc.b	#$33, #12, #ARCH12_16EX ; C
	dc.b	#$00, #36, #RESTDEFAULT ; rest
	dc.b	#$5E, #12, #ARCH12_16EX ; D
	dc.b	#$58, #6,  #VOL06_CONST ; D#
	dc.b	#$53, #6,  #VOL06_CONST ; E
	dc.b	#$46, #12, #ARCH12_16EX ; G

	; Uses pokey_notes column P (green)
	dc.b	#$33, #12, #ARCH12_16EX ; C
	dc.b	#$33, #12, #ARCH12_16EX ; C
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$2A, #12, #ARCH12_16EX ; D#
	dc.b	#$2D, #12, #ARCH12_16EX ; D
	dc.b	#$33, #12, #ARCH12_16EX ; C
	dc.b	#$3E, #12, #ARCH12_16EX ; A

	dc.b	#$33, #12, #ARCH12_16EX ; C
	dc.b	#$2D, #12, #ARCH12_16EX ; D
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$46, #36, #ARCH48_24FD ; G
	dc.b	#$00, #24, #RESTDEFAULT ; rest

	;=========================================

	dc.b	#$2A, #24, #ARCH48_24FD ; D#
	dc.b	#$2D, #12, #ARCH12_16EX ; D
	dc.b	#$2A, #24, #ARCH48_24FD ; D#
	dc.b	#$25, #24, #ARCH48_24FD ; F
	dc.b	#$21, #24, #ARCH48_24FD ; G

	dc.b	#$25, #36, #ARCH48_24FD ; F
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$46, #12, #ARCH12_16EX ; G (low)

	dc.b	#$21, #36, #ARCH48_24FD ; G
	dc.b	#$00, #72, #RESTDEFAULT ; rest

	dc.b	#$21, #12, #ARCH12_16EX ; G
	dc.b	#$21, #12, #ARCH12_16EX ; G
	dc.b	#$21, #12, #ARCH12_16EX ; G
	dc.b	#$21, #12, #ARCH12_16EX ; G
	dc.b	#$21, #12, #ARCH12_16EX ; G
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$00, #12, #RESTDEFAULT ; rest

	dc.b	#$FF
	dc.b	#<Spelunker3Track1
	dc.b	#>Spelunker3Track1

  ENDIF ; (IF MUTE_TRACK1)

;================
Spelunker3Track2
;================
; Uses pokey_notes column H (brown)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK2
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker3Track2
	dc.b	#>Spelunker3Track2
  ELSE

	; Uses pokey_notes column H (brown)
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$3B, #12, #VOL06REST02 ; C
	dc.b	#$8E, #12, #VOL06REST02 ; A
	dc.b	#$46, #12, #VOL06REST02 ; A
	dc.b	#$86, #12, #VOL06REST02 ; A#
	dc.b	#$42, #12, #VOL06REST02 ; A#
	dc.b	#$7E, #12, #VOL06REST02 ; B
	dc.b	#$3F, #12, #VOL06REST02 ; B

	; Uses pokey_notes column H (brown)
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$3B, #12, #VOL06REST02 ; C
	dc.b	#$8E, #12, #VOL06REST02 ; A
	dc.b	#$46, #12, #VOL06REST02 ; A
	dc.b	#$86, #12, #VOL06REST02 ; A#
	dc.b	#$42, #12, #VOL06REST02 ; A#
	dc.b	#$7E, #12, #VOL06REST02 ; B
	dc.b	#$3F, #12, #VOL06REST02 ; B

	; Uses pokey_notes column H (brown)
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$3B, #12, #VOL06REST02 ; C
	dc.b	#$8E, #12, #VOL06REST02 ; A
	dc.b	#$46, #12, #VOL06REST02 ; A
	dc.b	#$86, #12, #VOL06REST02 ; A#
	dc.b	#$42, #12, #VOL06REST02 ; A#
	dc.b	#$7E, #12, #VOL06REST02 ; B
	dc.b	#$3F, #12, #VOL06REST02 ; B

	; Uses pokey_notes column H (brown)
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$3B, #12, #VOL06REST02 ; C
	dc.b	#$8E, #12, #VOL06REST02 ; A
	dc.b	#$46, #12, #VOL06REST02 ; A
	dc.b	#$86, #12, #VOL06REST02 ; A#
	dc.b	#$42, #12, #VOL06REST02 ; A#
	dc.b	#$7E, #12, #VOL06REST02 ; B
	dc.b	#$3F, #12, #VOL06REST02 ; B

	;===================================

	; Uses pokey_notes column H (brown)
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$3B, #12, #VOL06REST02 ; C
	dc.b	#$8E, #12, #VOL06REST02 ; A
	dc.b	#$46, #12, #VOL06REST02 ; A
	dc.b	#$86, #12, #VOL06REST02 ; A#
	dc.b	#$42, #12, #VOL06REST02 ; A#
	dc.b	#$7E, #12, #VOL06REST02 ; B
	dc.b	#$3F, #12, #VOL06REST02 ; B

	; Uses pokey_notes column H (brown)
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$3B, #12, #VOL06REST02 ; C
	dc.b	#$8E, #12, #VOL06REST02 ; A
	dc.b	#$46, #12, #VOL06REST02 ; A
	dc.b	#$86, #12, #VOL06REST02 ; A#
	dc.b	#$42, #12, #VOL06REST02 ; A#
	dc.b	#$7E, #12, #VOL06REST02 ; B
	dc.b	#$3F, #12, #VOL06REST02 ; B

	; Uses pokey_notes column H (brown)
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$3B, #12, #VOL06REST02 ; C
	dc.b	#$8E, #12, #VOL06REST02 ; A
	dc.b	#$46, #12, #VOL06REST02 ; A
	dc.b	#$86, #12, #VOL06REST02 ; A#
	dc.b	#$42, #12, #VOL06REST02 ; A#
	dc.b	#$7E, #12, #VOL06REST02 ; B
	dc.b	#$3F, #12, #VOL06REST02 ; B

	; Uses pokey_notes column H (brown)
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$3B, #12, #VOL06REST02 ; C
	dc.b	#$8E, #12, #VOL06REST02 ; A
	dc.b	#$46, #12, #VOL06REST02 ; A
	dc.b	#$86, #12, #VOL06REST02 ; A#
	dc.b	#$42, #12, #VOL06REST02 ; A#
	dc.b	#$7E, #12, #VOL06REST02 ; B
	dc.b	#$3F, #12, #VOL06REST02 ; B

	;===================================

	; Uses pokey_notes column H (brown)
	dc.b	#$64, #12, #VOL06REST02 ; D#
	dc.b	#$31, #12, #VOL06REST02 ; D#
	dc.b	#$4F, #12, #VOL06REST02 ; G
	dc.b	#$27, #12, #VOL06REST02 ; G
	dc.b	#$4B, #12, #VOL06REST02 ; G#
	dc.b	#$25, #12, #VOL06REST02 ; G#
	dc.b	#$42, #12, #VOL06REST02 ; A#
	dc.b	#$21, #12, #VOL06REST02 ; A#

	; Uses pokey_notes column H (brown)
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$2C, #12, #VOL06REST02 ; F
	dc.b	#$46, #12, #VOL06REST02 ; A
	dc.b	#$23, #12, #VOL06REST02 ; A
	dc.b	#$42, #12, #VOL06REST02 ; A#
	dc.b	#$21, #12, #VOL06REST02 ; A#
	dc.b	#$3B, #12, #VOL06REST02 ; C
	dc.b	#$1D, #12, #VOL06REST02 ; C

	; Uses pokey_notes column H (brown)
	dc.b	#$4F, #12, #VOL06REST02 ; G
	dc.b	#$27, #12, #VOL06REST02 ; G
	dc.b	#$4F, #12, #VOL06REST02 ; G
	dc.b	#$27, #12, #VOL06REST02 ; G
	dc.b	#$4F, #12, #VOL06REST02 ; G
	dc.b	#$27, #12, #VOL06REST02 ; G
	dc.b	#$4F, #12, #VOL06REST02 ; G
	dc.b	#$27, #12, #VOL06REST02 ; G

	; Uses pokey_notes column H (brown)
	dc.b	#$4F, #12, #VOL06REST02 ; G
	dc.b	#$4F, #12, #VOL06REST02 ; G
	dc.b	#$4F, #12, #VOL06REST02 ; G
	dc.b	#$4F, #12, #VOL06REST02 ; G
	dc.b	#$4F, #12, #VOL06REST02 ; G
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$00, #12, #RESTDEFAULT ; rest

	dc.b	#$FF
	dc.b	#<Spelunker3Track2
	dc.b	#>Spelunker3Track2

  ENDIF ; (IF MUTE_TRACK2)

;================
Spelunker3Track3
;================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK3
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker3Track4
	dc.b	#>Spelunker3Track4
  ELSE

	; This track has no music
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker3Track3
	dc.b	#>Spelunker3Track3
  ENDIF ; (IF MUTE_TRACK3)

;================
Spelunker3Track4
;================
	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK4
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker3Track4
	dc.b	#>Spelunker3Track4
  ELSE

	; This track has no music
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker3Track4
	dc.b	#>Spelunker3Track4

  ENDIF ; (IF MUTE_TRACK4)

