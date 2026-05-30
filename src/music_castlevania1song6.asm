CASTLEVANIA1SONG6_PLAY_PHRASE1 set     1
CASTLEVANIA1SONG6_PLAY_PHRASE2 set     0
CASTLEVANIA1SONG6_PLAY_PHRASE3 set     0
CASTLEVANIA1SONG6_PLAY_PHRASE4 set     0

MUTE_TRACK1		set	0
MUTE_TRACK2		set	0
MUTE_TRACK3		set	0
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
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Castlevania1Song6Track1
	dc.b	#>Castlevania1Song6Track1
  ELSE

  IF CASTLEVANIA1SONG6_PLAY_PHRASE1
	; Uses pokey_notes column P (green)
        dc.b    #RESTNOSOUND, #112, #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #RESTNOSOUND, #112, #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_G,  #98, #VOL06REST02 ; G - $46
        ; Note: for Glissando effects on this track, the following are BAD values
        ; (popping and loud screeches) so we skip over them in the sequence:
        ;  - $F4
        ;  - $D5
        ;  - $B6
        ;  - $97
        ;  - $78
        ;  - $59
        ;  - $3A
        ;  - $1B
        dc.b    #$42,  #1, #VOL06_CONST ; glissando
        dc.b    #$3E,  #1, #VOL06_CONST ; glissando
        dc.b    #$3B,  #1, #VOL06_CONST ; glissando ; definitely avoid $3A as it has bad value
        dc.b    #$38,  #1, #VOL06_CONST ; glissando
        dc.b    #$35,  #1, #VOL06_CONST ; glissando
        dc.b    #$32,  #1, #VOL06_CONST ; glissando
        dc.b    #$2F,  #1, #VOL06_CONST ; glissando
        dc.b    #$2C,  #1, #VOL06_CONST ; glissando
        dc.b    #$2A,  #1, #VOL06_CONST ; glissando
        dc.b    #$28,  #1, #VOL06_CONST ; glissando
        dc.b    #$26,  #1, #VOL06_CONST ; glissando
        dc.b    #$24,  #1, #VOL06_CONST ; glissando
        dc.b    #$23,  #1, #VOL06_CONST ; glissando
        dc.b    #$22,  #1, #VOL06_CONST ; glissando
        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_G,  #112, #VOL06REST02 ; G - $21
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
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
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
        dc.b    #MAIN_OCT4_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_G,  #7, #VOL06REST02 ; G
        dc.b    #MAIN_OCT3_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_B,  #7, #VOL06REST02 ; B

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_C,  #7, #VOL06REST02 ; C
        dc.b    #MAIN_OCT4_C,  #7, #VOL06REST02 ; C
        dc.b    #MAIN_OCT4_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_G,  #7, #VOL06REST02 ; G
        dc.b    #MAIN_OCT3_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_B,  #7, #VOL06REST02 ; B

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_C,  #98, #VOL06REST02 ; C - $33.
        ; Note: for Glissando effects on this track, the following are BAD values
        ; (popping and loud screeches) so we skip over them in the sequence:
        ;  - $F4
        ;  - $D5
        ;  - $B6
        ;  - $97
        ;  - $78
        ;  - $59
        ;  - $3A
        ;  - $1B
        dc.b    #$31,  #1, #VOL06_CONST ; glissando
        dc.b    #$2F,  #1, #VOL06_CONST ; glissando
        dc.b    #$2D,  #1, #VOL06_CONST ; glissando
        dc.b    #$2B,  #1, #VOL06_CONST ; glissando
        dc.b    #$29,  #1, #VOL06_CONST ; glissando
        dc.b    #$27,  #1, #VOL06_CONST ; glissando
        dc.b    #$25,  #1, #VOL06_CONST ; glissando
        dc.b    #$23,  #1, #VOL06_CONST ; glissando
        dc.b    #$21,  #1, #VOL06_CONST ; glissando
        dc.b    #$1F,  #1, #VOL06_CONST ; glissando
        dc.b    #$1D,  #1, #VOL06_CONST ; glissando
        dc.b    #$1C,  #1, #VOL06_CONST ; glissando; skip over bad 1B value
        dc.b    #$1A,  #1, #VOL06_CONST ; glissando
        dc.b    #$19,  #1, #VOL06_CONST ; glissando

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT6_C,  #112, #VOL06REST02 ; C - $17
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

