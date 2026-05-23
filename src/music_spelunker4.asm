MUTE_TRACK1		set	0
MUTE_TRACK2		set	0
MUTE_TRACK3		set	0
MUTE_TRACK4		set	0

; Drum equates
BASSDRUM1		equ	$5C
HIGHSNARE		equ	$07
SNAREDRUM		equ	$0E

;=================
Spelunker4Track1
;=================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK1
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker4Track1
	dc.b	#>Spelunker4Track1
  ELSE

	; Uses pokey_notes column P (green)
	dc.b	#$6A, #36, #ARCH48_24FD ; C
	dc.b	#$8F, #12, #VOL06_CONST ; G
	dc.b	#$79, #12, #VOL06_CONST ; A#
	dc.b	#$7F, #12, #VOL06_CONST ; A
        dc.b    #$00, #12, #RESTDEFAULT ; rest
	dc.b	#$8F, #48, #ARCH96_72FD ; G
        dc.b    #$00, #60, #RESTDEFAULT ; rest

	dc.b	#$A1, #12, #VOL06_CONST ; F
	dc.b	#$AB, #12, #VOL06_CONST ; E
	dc.b	#$A1, #12, #VOL06_CONST ; F
	dc.b	#$AB, #12, #VOL06_CONST ; E
	dc.b	#$A1, #12, #VOL06_CONST ; F
	dc.b	#$8F, #12, #VOL06_CONST ; G
        dc.b    #$00, #12, #RESTDEFAULT ; rest
	dc.b	#$AB, #48, #ARCH96_72FD ; E
        dc.b    #$00, #60, #RESTDEFAULT ; rest

	dc.b	#$FF
	dc.b	#<Spelunker4Track1
	dc.b	#>Spelunker4Track1

  ENDIF ; (IF MUTE_TRACK1)

;================
Spelunker4Track2
;================
; Uses pokey_notes column H (brown)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK2
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker4Track2
	dc.b	#>Spelunker4Track2
  ELSE

        ; Uses pokey_notes column H (brown)
        dc.b    #$77, #12, #VOL06REST02 ; C
        dc.b    #$3B, #12, #VOL06REST02 ; C
        dc.b    #$5E, #12, #VOL06REST02 ; E
        dc.b    #$2F, #12, #VOL06REST02 ; E
        dc.b    #$59, #12, #VOL06REST02 ; F
        dc.b    #$2C, #12, #VOL06REST02 ; F
        dc.b    #$4F, #12, #VOL06REST02 ; G
        dc.b    #$27, #12, #VOL06REST02 ; G

        ; Uses pokey_notes column H (brown)
        dc.b    #$9F, #12, #VOL04REST02 ; G ; make this one a hair softer so it doesn't collide with track 1 too noisily
        dc.b    #$4F, #12, #VOL04REST02 ; G ; make this one a hair softer so it doesn't collide with track 1 too noisily
        dc.b    #$7E, #12, #VOL06REST02 ; B
        dc.b    #$3F, #12, #VOL06REST02 ; B
        dc.b    #$77, #12, #VOL06REST02 ; C
        dc.b    #$3B, #12, #VOL06REST02 ; C
        dc.b    #$6A, #12, #VOL06REST02 ; D
        dc.b    #$34, #12, #VOL06REST02 ; D

        ; Uses pokey_notes column H (brown)
        dc.b    #$B3, #12, #VOL06REST02 ; F
        dc.b    #$59, #12, #VOL06REST02 ; F
        dc.b    #$8E, #12, #VOL06REST02 ; A
        dc.b    #$46, #12, #VOL06REST02 ; A
        dc.b    #$7E, #12, #VOL06REST02 ; B
        dc.b    #$3F, #12, #VOL06REST02 ; B
        dc.b    #$77, #12, #VOL06REST02 ; C
        dc.b    #$3B, #12, #VOL06REST02 ; C

        ; Uses pokey_notes column H (brown)
        dc.b    #$77, #12, #VOL06REST02 ; C
        dc.b    #$3B, #12, #VOL06REST02 ; C
        dc.b    #$5E, #12, #VOL06REST02 ; E
        dc.b    #$2F, #12, #VOL06REST02 ; E
        dc.b    #$59, #12, #VOL06REST02 ; F
        dc.b    #$2C, #12, #VOL06REST02 ; F
        dc.b    #$4F, #12, #VOL06REST02 ; G
        dc.b    #$27, #12, #VOL06REST02 ; G

	dc.b	#$FF
	dc.b	#<Spelunker4Track2
	dc.b	#>Spelunker4Track2

  ENDIF ; (IF MUTE_TRACK2)

;================
Spelunker4Track3
;================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK3
        ; HACK - turn these lines to shut off music for this track
        dc.b   #$00, #96, #RESTDEFAULT ; rest
        dc.b   #$FF
        dc.b   #<Spelunker4Track4
        dc.b   #>Spelunker4Track4
  ELSE

        ; This track has no music
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker4Track3
	dc.b	#>Spelunker4Track3
  ENDIF ; (IF MUTE_TRACK3)

;================
Spelunker4Track4
;================
	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK4
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker4Track4
	dc.b	#>Spelunker4Track4
  ELSE

	; This track has no music
        dc.b    #$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker4Track4
	dc.b	#>Spelunker4Track4

  ENDIF ; (IF MUTE_TRACK4)

