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
        ;dc.b    #$7E, #144, #VOL04_CONST ; B

Spelunker5Track1Stops
        dc.b    #$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker5Track1Stops
	dc.b	#>Spelunker5Track1Stops

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
        dc.b    #$77, #12, #VOL06_CONST ; C
        dc.b    #$3B, #12, #VOL06_CONST ; C
        dc.b    #$6A, #12, #VOL06_CONST ; D
        dc.b    #$34, #12, #VOL06_CONST ; D
        dc.b    #$64, #12, #VOL06_CONST ; D#
        dc.b    #$31, #12, #VOL06_CONST ; D#
        dc.b    #$59, #12, #VOL06_CONST ; F
        dc.b    #$2C, #12, #VOL06_CONST ; F

        ; Uses pokey_notes column H (brown)
        dc.b    #$77, #12, #VOL06_CONST ; C
        dc.b    #$3B, #12, #VOL06_CONST ; C
        dc.b    #$6A, #12, #VOL06_CONST ; D
        dc.b    #$34, #12, #VOL06_CONST ; D
        dc.b    #$64, #12, #VOL06_CONST ; D#
        dc.b    #$31, #12, #VOL06_CONST ; D#
        dc.b    #$59, #12, #VOL06_CONST ; F
        dc.b    #$2C, #12, #VOL06_CONST ; F

        ; Uses pokey_notes column H (brown)
        dc.b    #$77, #12, #VOL06_CONST ; C
        dc.b    #$3B, #12, #VOL06_CONST ; C
        dc.b    #$6A, #12, #VOL06_CONST ; D
        dc.b    #$34, #12, #VOL06_CONST ; D
        dc.b    #$64, #12, #VOL06_CONST ; D#
        dc.b    #$31, #12, #VOL06_CONST ; D#
        dc.b    #$59, #12, #VOL06_CONST ; F
        dc.b    #$2C, #12, #VOL06_CONST ; F

        ; Uses pokey_notes column H (brown)
        dc.b    #$77, #12, #VOL06_CONST ; C
        dc.b    #$3B, #12, #VOL06_CONST ; C
        dc.b    #$6A, #12, #VOL06_CONST ; D
        dc.b    #$34, #12, #VOL06_CONST ; D
        dc.b    #$64, #12, #VOL06_CONST ; D#
        dc.b    #$31, #12, #VOL06_CONST ; D#
        dc.b    #$59, #12, #VOL06_CONST ; F
        dc.b    #$2C, #12, #VOL06_CONST ; F

        ; Uses pokey_notes column H (brown)
        dc.b    #$77, #12, #VOL06_CONST ; C
        dc.b    #$3B, #12, #VOL06_CONST ; C
        dc.b    #$6A, #12, #VOL06_CONST ; D
        dc.b    #$34, #12, #VOL06_CONST ; D
        dc.b    #$64, #12, #VOL06_CONST ; D#
        dc.b    #$31, #12, #VOL06_CONST ; D#
        dc.b    #$59, #12, #VOL06_CONST ; F
        dc.b    #$2C, #12, #VOL06_CONST ; F

        ; Uses pokey_notes column H (brown)
        dc.b    #$77, #12, #VOL06_CONST ; C
        dc.b    #$3B, #12, #VOL06_CONST ; C
        dc.b    #$6A, #12, #VOL06_CONST ; D
        dc.b    #$34, #12, #VOL06_CONST ; D
        dc.b    #$64, #12, #VOL06_CONST ; D#
        dc.b    #$31, #12, #VOL06_CONST ; D#
        dc.b    #$59, #12, #VOL06_CONST ; F
        dc.b    #$2C, #12, #VOL06_CONST ; F

	; Change up

        ; Uses pokey_notes column H (brown)
        dc.b    #$77, #12, #VOL06_CONST ; C
        dc.b    #$3B, #12, #VOL06_CONST ; C
        dc.b    #$6A, #12, #VOL06_CONST ; D
        dc.b    #$34, #12, #VOL06_CONST ; D
        dc.b    #$64, #12, #VOL06_CONST ; D#
        dc.b    #$31, #12, #VOL06_CONST ; D#
        dc.b    #$6A, #12, #VOL06_CONST ; D
        dc.b    #$34, #12, #VOL06_CONST ; D

        ; Uses pokey_notes column H (brown)
        dc.b    #$77, #12, #VOL06_CONST ; C
        dc.b    #$3B, #12, #VOL06_CONST ; C
        dc.b    #$77, #12, #VOL06_CONST ; C
        dc.b    #$3B, #12, #VOL06_CONST ; C
        dc.b    #$77, #12, #VOL06_CONST ; C
        dc.b    #$3B, #12, #VOL06_CONST ; C
        dc.b    #$77, #12, #VOL06_CONST ; C
        dc.b    #$3B, #12, #VOL06_CONST ; C

Spelunker5Track2Stops
        dc.b    #$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker5Track2Stops
	dc.b	#>Spelunker5Track2Stops

  ENDIF ; (IF MUTE_TRACK2)

;================
Spelunker5Track3
;================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK3
        ; HACK - turn these lines to shut off music for this track
        dc.b   #$00, #96, #RESTDEFAULT ; rest
        dc.b   #$FF
        dc.b   #<Spelunker5Track4
        dc.b   #>Spelunker5Track4
  ELSE

	; Uses pokey_notes column P (green)
        ;dc.b    #$71, #24, #ARCH24_16FD ; B

Spelunker5Track3Stops
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker5Track3Stops
	dc.b	#>Spelunker5Track3Stops
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
Spelunker5Track4Stops
        dc.b    #$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker5Track4Stops
	dc.b	#>Spelunker5Track4Stops

  ENDIF ; (IF MUTE_TRACK4)

