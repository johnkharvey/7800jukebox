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
        ;dc.b    #$7E, #144, #VOL04_CONST ; B

Spelunker3Track1Stops
        dc.b    #$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker3Track1Stops
	dc.b	#>Spelunker3Track1Stops

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
        dc.b    #$77, #12, #VOL06REST02 ; C
        dc.b    #$3B, #12, #VOL06REST02 ; C
        dc.b    #$8E, #12, #VOL06REST02 ; A
        dc.b    #$46, #12, #VOL06REST02 ; A
        dc.b    #$86, #12, #VOL06REST02 ; A#
        dc.b    #$42, #12, #VOL06REST02 ; A#
        dc.b    #$7E, #12, #VOL06REST02 ; B
        dc.b    #$3F, #12, #VOL06REST02 ; B

        ; Uses pokey_notes column H (brown)
        dc.b    #$77, #12, #VOL06REST02 ; C
        dc.b    #$3B, #12, #VOL06REST02 ; C
        dc.b    #$8E, #12, #VOL06REST02 ; A
        dc.b    #$46, #12, #VOL06REST02 ; A
        dc.b    #$86, #12, #VOL06REST02 ; A#
        dc.b    #$42, #12, #VOL06REST02 ; A#
        dc.b    #$7E, #12, #VOL06REST02 ; B
        dc.b    #$3F, #12, #VOL06REST02 ; B

        ; Uses pokey_notes column H (brown)
        dc.b    #$77, #12, #VOL06REST02 ; C
        dc.b    #$3B, #12, #VOL06REST02 ; C
        dc.b    #$8E, #12, #VOL06REST02 ; A
        dc.b    #$46, #12, #VOL06REST02 ; A
        dc.b    #$86, #12, #VOL06REST02 ; A#
        dc.b    #$42, #12, #VOL06REST02 ; A#
        dc.b    #$7E, #12, #VOL06REST02 ; B
        dc.b    #$3F, #12, #VOL06REST02 ; B

        ; Uses pokey_notes column H (brown)
        dc.b    #$77, #12, #VOL06REST02 ; C
        dc.b    #$3B, #12, #VOL06REST02 ; C
        dc.b    #$8E, #12, #VOL06REST02 ; A
        dc.b    #$46, #12, #VOL06REST02 ; A
        dc.b    #$86, #12, #VOL06REST02 ; A#
        dc.b    #$42, #12, #VOL06REST02 ; A#
        dc.b    #$7E, #12, #VOL06REST02 ; B
        dc.b    #$3F, #12, #VOL06REST02 ; B

	;===================================

        ; Uses pokey_notes column H (brown)
        dc.b    #$77, #12, #VOL06REST02 ; C
        dc.b    #$3B, #12, #VOL06REST02 ; C
        dc.b    #$8E, #12, #VOL06REST02 ; A
        dc.b    #$46, #12, #VOL06REST02 ; A
        dc.b    #$86, #12, #VOL06REST02 ; A#
        dc.b    #$42, #12, #VOL06REST02 ; A#
        dc.b    #$7E, #12, #VOL06REST02 ; B
        dc.b    #$3F, #12, #VOL06REST02 ; B

        ; Uses pokey_notes column H (brown)
        dc.b    #$77, #12, #VOL06REST02 ; C
        dc.b    #$3B, #12, #VOL06REST02 ; C
        dc.b    #$8E, #12, #VOL06REST02 ; A
        dc.b    #$46, #12, #VOL06REST02 ; A
        dc.b    #$86, #12, #VOL06REST02 ; A#
        dc.b    #$42, #12, #VOL06REST02 ; A#
        dc.b    #$7E, #12, #VOL06REST02 ; B
        dc.b    #$3F, #12, #VOL06REST02 ; B

        ; Uses pokey_notes column H (brown)
        dc.b    #$77, #12, #VOL06REST02 ; C
        dc.b    #$3B, #12, #VOL06REST02 ; C
        dc.b    #$8E, #12, #VOL06REST02 ; A
        dc.b    #$46, #12, #VOL06REST02 ; A
        dc.b    #$86, #12, #VOL06REST02 ; A#
        dc.b    #$42, #12, #VOL06REST02 ; A#
        dc.b    #$7E, #12, #VOL06REST02 ; B
        dc.b    #$3F, #12, #VOL06REST02 ; B

        ; Uses pokey_notes column H (brown)
        dc.b    #$77, #12, #VOL06REST02 ; C
        dc.b    #$3B, #12, #VOL06REST02 ; C
        dc.b    #$8E, #12, #VOL06REST02 ; A
        dc.b    #$46, #12, #VOL06REST02 ; A
        dc.b    #$86, #12, #VOL06REST02 ; A#
        dc.b    #$42, #12, #VOL06REST02 ; A#
        dc.b    #$7E, #12, #VOL06REST02 ; B
        dc.b    #$3F, #12, #VOL06REST02 ; B

	;===================================

        dc.b    #$59, #12, #VOL06REST02 ; F
        dc.b    #$2C, #12, #VOL06REST02 ; F
        dc.b    #$46, #12, #VOL06REST02 ; A
        dc.b    #$23, #12, #VOL06REST02 ; A
        dc.b    #$42, #12, #VOL06REST02 ; A#
        dc.b    #$21, #12, #VOL06REST02 ; A#
        dc.b    #$3B, #12, #VOL06REST02 ; C
        dc.b    #$1D, #12, #VOL06REST02 ; C

        dc.b    #$4F, #12, #VOL06REST02 ; G
        dc.b    #$27, #12, #VOL06REST02 ; G
        dc.b    #$3F, #12, #VOL06REST02 ; B
        dc.b    #$1F, #12, #VOL06REST02 ; B
        dc.b    #$3B, #12, #VOL06REST02 ; C
        dc.b    #$1D, #12, #VOL06REST02 ; C
        dc.b    #$34, #12, #VOL06REST02 ; D
        dc.b    #$1A, #12, #VOL06REST02 ; D

        dc.b    #$46, #12, #VOL06REST02 ; A
        dc.b    #$23, #12, #VOL06REST02 ; A
        dc.b    #$46, #12, #VOL06REST02 ; A
        dc.b    #$23, #12, #VOL06REST02 ; A
        dc.b    #$46, #12, #VOL06REST02 ; A
        dc.b    #$23, #12, #VOL06REST02 ; A
        dc.b    #$46, #12, #VOL06REST02 ; A
        dc.b    #$23, #12, #VOL06REST02 ; A

        dc.b    #$46, #12, #VOL06REST02 ; A
        dc.b    #$46, #12, #VOL06REST02 ; A
        dc.b    #$46, #12, #VOL06REST02 ; A
        dc.b    #$46, #12, #VOL06REST02 ; A
        dc.b    #$46, #12, #VOL06REST02 ; A
        dc.b    #$00, #12, #RESTDEFAULT ; rest
        dc.b    #$00, #12, #RESTDEFAULT ; rest
        dc.b    #$00, #12, #RESTDEFAULT ; rest

Spelunker3Track2Stops
        dc.b    #$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker3Track2Stops
	dc.b	#>Spelunker3Track2Stops

  ENDIF ; (IF MUTE_TRACK2)

;================
Spelunker3Track3
;================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK3
        ; HACK - turn these lines to shut off music for this track
        dc.b   #$00, #96, #RESTDEFAULT ; rest
        dc.b   #$FF
        dc.b   #<Spelunker3Track4
        dc.b   #>Spelunker3Track4
  ELSE

	; Uses pokey_notes column P (green)
        ;dc.b    #$71, #24, #ARCH24_16FD ; B

Spelunker3Track3Stops
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker3Track3Stops
	dc.b	#>Spelunker3Track3Stops
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
Spelunker3Track4Stops
        dc.b    #$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker3Track4Stops
	dc.b	#>Spelunker3Track4Stops

  ENDIF ; (IF MUTE_TRACK4)

