MUTE_TRACK1		set	0
MUTE_TRACK2		set	0
MUTE_TRACK3		set	0
MUTE_TRACK4		set	0

; Drum equates
BASSDRUM1		equ	$5C
HIGHSNARE		equ	$07
SNAREDRUM		equ	$0E

;=============
MarbleMadnessSong1Track1
;=============
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK1
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<MarbleMadnessSong1Track1
	dc.b	#>MarbleMadnessSong1Track1
  ELSE

        ; Uses pokey_notes column P (green)
        dc.b    #$4A, #8, #ARCH12_16EX ; F#
        dc.b    #$23, #8, #ARCH12_16EX ; F#
        dc.b    #$2F, #8, #ARCH12_16EX ; C#
        dc.b    #$23, #8, #ARCH12_16EX ; F#
        dc.b    #$64, #8, #ARCH12_16EX ; C#
        dc.b    #$23, #8, #ARCH12_16EX ; F#
        dc.b    #$2F, #8, #ARCH12_16EX ; C#
        dc.b    #$23, #8, #ARCH12_16EX ; F#

	dc.b	#$FF
	dc.b	#<MarbleMadnessSong1Track1
	dc.b	#>MarbleMadnessSong1Track1
  ENDIF ; (IF MUTE_TRACK1)

;=============
MarbleMadnessSong1Track2
;=============
; Uses pokey_notes column H (brown)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

	; Some info from here https://www.poppiano.org/en/sheet/?id=16205

  IF MUTE_TRACK2
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<MarbleMadnessSong1Track2
	dc.b	#>MarbleMadnessSong1Track2
  ELSE

	; Uses pokey_notes column H (brown)
        dc.b    #$00, #8,  #RESTDEFAULT ; rest - delayed
        dc.b    #$54, #192, #VOL04_CONST ; F#
        dc.b    #$38, #64,  #VOL04_CONST ; C#
        dc.b    #$54, #192, #VOL04_CONST ; F#
        dc.b    #$4B, #64,  #VOL04_CONST ; G#
        dc.b    #$54, #192, #VOL04_CONST ; F#
        dc.b    #$38, #64,  #VOL04_CONST ; C#
        dc.b    #$54, #192, #VOL04_CONST ; F#
        dc.b    #$4B, #64,  #VOL04_CONST ; G#
        dc.b    #$54, #184, #VOL04_CONST ; F#

	dc.b	#$FF
	dc.b	#<MarbleMadnessSong1Track2
	dc.b	#>MarbleMadnessSong1Track2
  ENDIF ; (IF MUTE_TRACK2)

;=============
MarbleMadnessSong1Track3
;=============
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK3
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<MarbleMadnessSong1Track3
	dc.b	#>MarbleMadnessSong1Track3
  ELSE

	; Uses pokey_notes column P (green)
        dc.b    #$CD, #192, #VOL02_CONST ; C#
        dc.b    #$98, #64,  #VOL02_CONST ; F#
        dc.b    #$E3, #192, #VOL02_CONST ; B

        dc.b    #$CD, #64,  #VOL02REST02 ; C#
        dc.b    #$CD, #192, #VOL02_CONST ; C#
        dc.b    #$98, #64,  #VOL02_CONST ; F#
        dc.b    #$E3, #192, #VOL02_CONST ; B

        dc.b    #$CD, #64,  #VOL02REST02 ; C#
        dc.b    #$CD, #192, #VOL02_CONST ; C#

	dc.b	#$FF
	dc.b	#<MarbleMadnessSong1Track3
	dc.b	#>MarbleMadnessSong1Track3
  ENDIF ; (IF MUTE_TRACK3)

;=============
MarbleMadnessSong1Track4
;=============
	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK4
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<MarbleMadnessSong1Track4
	dc.b	#>MarbleMadnessSong1Track4
  ELSE

        ; This track has no music
MarbleMadnessSong1Track4Stops
        dc.b    #$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<MarbleMadnessSong1Track4Stops
	dc.b	#>MarbleMadnessSong1Track4Stops
  ENDIF ; (IF MUTE_TRACK4)

