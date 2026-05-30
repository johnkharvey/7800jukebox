CASTLEVANIA1SONG6_PLAY_PHRASE1 set     1
CASTLEVANIA1SONG6_PLAY_PHRASE2 set     1
CASTLEVANIA1SONG6_PLAY_PHRASE3 set     1
CASTLEVANIA1SONG6_PLAY_PHRASE4 set     1

MUTE_TRACK1		set	1
MUTE_TRACK2		set	0
MUTE_TRACK3		set	1
MUTE_TRACK4		set	1

; Drum equates
BASSDRUM1		equ	$5C
BASSDRUM		equ	$5C
HIGHSNARE		equ	$07
SNAREDRUM		equ	$0E
DRUM4FRAMES		equ	14

;=============
Castlevania1Song6Track1
;=============
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK1
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Castlevania1Song6Track1
	dc.b	#>Castlevania1Song6Track1
  ELSE

  IF CASTLEVANIA1SONG6_PLAY_PHRASE1
	; Uses pokey_notes column P (green)
	dc.b	#$5E, #24, #ARCH24_16FD	; D
	dc.b	#$2D, #12, #ARCH12_16EX ; D
	dc.b	#$5E, #12, #ARCH12_16EX ; D
	dc.b	#$46, #12, #ARCH12_16EX ; G
	dc.b	#$3E, #12, #ARCH12_16EX ; A
	dc.b	#$33, #12, #ARCH12_16EX ; C
	dc.b	#$2D, #12, #ARCH12_16EX ; D
  ENDIF

  IF CASTLEVANIA1SONG6_PLAY_PHRASE2
        ; Uses pokey_notes column P (green)
  ENDIF

  IF CASTLEVANIA1SONG6_PLAY_PHRASE3
        ; Uses pokey_notes column P (green)
  ENDIF

  IF CASTLEVANIA1SONG6_PLAY_PHRASE4
        ; Uses pokey_notes column P (green)
  ENDIF

	dc.b	#$FF
	dc.b	#<Castlevania1Song6Track1
	dc.b	#>Castlevania1Song6Track1
  ENDIF ; (IF MUTE_TRACK1)

;=============
Castlevania1Song6Track2
;=============
; Uses pokey_notes column H (brown)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

	; Some info from here https://www.poppiano.org/en/sheet/?id=16205

  IF MUTE_TRACK2
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Castlevania1Song6Track2
	dc.b	#>Castlevania1Song6Track2
  ELSE

  IF CASTLEVANIA1SONG6_PLAY_PHRASE1
        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_G,  #7, #VOL06REST02 ; G
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_B,  #7, #VOL06REST02 ; B

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT2_C,  #7, #VOL06REST02 ; C
        dc.b    #BASS_OCT2_C,  #7, #VOL06REST02 ; C
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_G,  #7, #VOL06REST02 ; G
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_B,  #7, #VOL06REST02 ; B

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_G,  #7, #VOL06REST02 ; G
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_B,  #7, #VOL06REST02 ; B

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT2_C,  #7, #VOL06REST02 ; C
        dc.b    #BASS_OCT2_C,  #7, #VOL06REST02 ; C
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_G,  #7, #VOL06REST02 ; G
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_B,  #7, #VOL06REST02 ; B
  ENDIF

  IF CASTLEVANIA1SONG6_PLAY_PHRASE2
        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_DS, #7, #VOL06_CONST ; D#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_F,  #7, #VOL06_CONST ; F
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_DS, #7, #VOL06_CONST ; D#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_F,  #7, #VOL06_CONST ; F
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_DS, #7, #VOL06_CONST ; D#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_F,  #7, #VOL06_CONST ; F
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_DS, #7, #VOL06_CONST ; D#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_F,  #7, #VOL06_CONST ; F
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT1_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_D,  #7, #VOL06_CONST ; D
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_DS, #7, #VOL06_CONST ; D#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_F,  #7, #VOL06_CONST ; F
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_DS, #7, #VOL06_CONST ; D#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_F,  #7, #VOL06_CONST ; F
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_DS, #7, #VOL06_CONST ; D#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_F,  #7, #VOL06_CONST ; F
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_DS, #7, #VOL06_CONST ; D#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_F,  #7, #VOL06_CONST ; F
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT1_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_D,  #7, #VOL06_CONST ; D
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_B,  #7, #VOL06_CONST ; B
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_D,  #7, #VOL06_CONST ; D
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_B,  #7, #VOL06_CONST ; B
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_D,  #7, #VOL06_CONST ; D
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
  ENDIF

  IF CASTLEVANIA1SONG6_PLAY_PHRASE3
        ; Uses pokey_notes column H (brown)
  ENDIF

  IF CASTLEVANIA1SONG6_PLAY_PHRASE4
        ; Uses pokey_notes column H (brown)
  ENDIF

	dc.b	#$FF
	dc.b	#<Castlevania1Song6Track2
	dc.b	#>Castlevania1Song6Track2
  ENDIF ; (IF MUTE_TRACK2)

;=============
Castlevania1Song6Track3
;=============
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK3
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Castlevania1Song6Track3
	dc.b	#>Castlevania1Song6Track3
  ELSE

  IF CASTLEVANIA1SONG6_PLAY_PHRASE1
        ; Uses pokey_notes column P (green)
        dc.b    #$00, #14, #RESTDEFAULT ; rest
        dc.b    #$5E, #14, #VOL04REST02 ; D
        dc.b    #$5E, #14, #VOL04REST02 ; D
        dc.b    #$5E, #14, #VOL04REST02 ; D
        dc.b    #$53, #14, #VOL04REST02 ; E
        dc.b    #$4F, #14, #VOL04REST02 ; F
        dc.b    #$46, #14, #VOL04REST02 ; G
        dc.b    #$4F, #14, #VOL04REST02 ; F
  ENDIF

  IF CASTLEVANIA1SONG6_PLAY_PHRASE2
        ; Uses pokey_notes column P (green)
  ENDIF

  IF CASTLEVANIA1SONG6_PLAY_PHRASE3
        ; Uses pokey_notes column P (green)
  ENDIF

  IF CASTLEVANIA1SONG6_PLAY_PHRASE4
        ; Uses pokey_notes column P (green)
  ENDIF

	dc.b	#$FF
	dc.b	#<Castlevania1Song6Track3
	dc.b	#>Castlevania1Song6Track3
  ENDIF ; (IF MUTE_TRACK3)

;=============
Castlevania1Song6Track4
;=============
	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK4
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Castlevania1Song6Track4
	dc.b	#>Castlevania1Song6Track4
  ELSE

  IF CASTLEVANIA1SONG6_PLAY_PHRASE1
        dc.b    #BASSDRUM, #4, #DRUM4FRAMES     ; bass drum
        dc.b    #$00, #8, #RESTDEFAULT ; rest
        dc.b    #BASSDRUM, #4, #DRUM4FRAMES     ; bass drum
        dc.b    #$00, #8, #RESTDEFAULT ; rest
        dc.b    #BASSDRUM, #4, #DRUM4FRAMES     ; bass drum
        dc.b    #$00, #8, #RESTDEFAULT ; rest
        dc.b    #BASSDRUM, #4, #DRUM4FRAMES     ; bass drum
        dc.b    #$00, #8, #RESTDEFAULT ; rest
        dc.b    #BASSDRUM, #4, #DRUM4FRAMES     ; bass drum
        dc.b    #$00, #8, #RESTDEFAULT ; rest
        dc.b    #BASSDRUM, #4, #DRUM4FRAMES     ; bass drum
        dc.b    #$00, #8, #RESTDEFAULT ; rest
        dc.b    #BASSDRUM, #4, #DRUM4FRAMES     ; bass drum
        dc.b    #$00, #8, #RESTDEFAULT ; rest
        dc.b    #BASSDRUM, #4, #DRUM4FRAMES     ; bass drum
        dc.b    #$00, #8, #RESTDEFAULT ; rest
  ENDIF

  IF CASTLEVANIA1SONG6_PLAY_PHRASE2
  ENDIF

  IF CASTLEVANIA1SONG6_PLAY_PHRASE3
  ENDIF

  IF CASTLEVANIA1SONG6_PLAY_PHRASE4
  ENDIF

	dc.b	#$FF
	dc.b	#<Castlevania1Song6Track4
	dc.b	#>Castlevania1Song6Track4
  ENDIF ; (IF MUTE_TRACK4)

