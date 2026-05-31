CASTLEVANIA1SONG6_PLAY_PHRASE1 set     1
CASTLEVANIA1SONG6_PLAY_PHRASE2 set     1
CASTLEVANIA1SONG6_PLAY_PHRASE3 set     1
CASTLEVANIA1SONG6_PLAY_PHRASE4 set     1
CASTLEVANIA1SONG6_PLAY_PHRASE5 set     1

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
  ENDIF

Castlevania1Song6Track1Restart

  IF CASTLEVANIA1SONG6_PLAY_PHRASE2
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

  IF CASTLEVANIA1SONG6_PLAY_PHRASE3
        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_C,  #10, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_G,  #10, #VOL02_CONST ; G
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #10, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_G,  #7,  #VOL02_CONST ; G
        dc.b    #MAIN_OCT5_C,  #17, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_G,  #10, #VOL02_CONST ; G
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_B,  #10, #VOL02_CONST ; B
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_G,  #10, #VOL02_CONST ; G
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_C,  #7,  #VOL02_CONST ; C
        dc.b    #MAIN_OCT3_D,  #7,  #VOL02_CONST ; D
        dc.b    #MAIN_OCT3_DS, #7,  #VOL02_CONST ; D#
        dc.b    #MAIN_OCT3_D,  #10, #VOL02_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_C,  #7,  #VOL02_CONST ; C
        dc.b    #MAIN_OCT3_DS, #17, #VOL02_CONST ; D#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_C,  #10, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_D,  #10, #VOL02_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_C,  #10, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_C,  #10, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_G,  #10, #VOL02_CONST ; G
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #10, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_G,  #7,  #VOL02_CONST ; G
        dc.b    #MAIN_OCT5_C,  #17, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_G,  #10, #VOL02_CONST ; G
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_B,  #10, #VOL02_CONST ; B
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_G,  #10, #VOL02_CONST ; G
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_C,  #7,  #VOL02_CONST ; C
        dc.b    #MAIN_OCT3_D,  #7,  #VOL02_CONST ; D
        dc.b    #MAIN_OCT3_DS, #7,  #VOL02_CONST ; D#
        dc.b    #MAIN_OCT3_D,  #10, #VOL02_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_C,  #7,  #VOL02_CONST ; C
        dc.b    #MAIN_OCT3_DS, #17, #VOL02_CONST ; D#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_C,  #10, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_D,  #10, #VOL02_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_C,  #10, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_DS, #17, #VOL02_CONST ; D#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_GS, #7,  #VOL02_CONST ; G#
        dc.b    #RESTNOSOUND,  #14, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #24, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_DS, #10, #VOL02_CONST ; D#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_GS, #10, #VOL02_CONST ; G#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C, #10,  #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_F,  #17, #VOL02_CONST ; F
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_AS, #7,  #VOL02_CONST ; A#
        dc.b    #RESTNOSOUND,  #14, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_D,  #24, #VOL02_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_F,  #10, #VOL02_CONST ; F
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_AS, #10, #VOL02_CONST ; A#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_D,  #10, #VOL02_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_C,  #10, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_G,  #10, #VOL02_CONST ; G
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #10, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_G,  #7,  #VOL02_CONST ; G
        dc.b    #MAIN_OCT5_C,  #17, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_G,  #10, #VOL02_CONST ; G
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_B,  #10, #VOL02_CONST ; B
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_G,  #10, #VOL02_CONST ; G
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_C,  #7,  #VOL02_CONST ; C
        dc.b    #MAIN_OCT3_D,  #7,  #VOL02_CONST ; D
        dc.b    #MAIN_OCT3_DS, #7,  #VOL02_CONST ; D#
        dc.b    #MAIN_OCT3_D,  #10, #VOL02_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_C,  #7,  #VOL02_CONST ; C
        dc.b    #MAIN_OCT3_DS, #17, #VOL02_CONST ; D#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_C,  #10, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_D,  #10, #VOL02_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_C,  #10, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_C,  #10, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_G,  #10, #VOL02_CONST ; G
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #10, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_G,  #7,  #VOL02_CONST ; G
        dc.b    #MAIN_OCT5_C,  #17, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_G,  #10, #VOL02_CONST ; G
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_B,  #10, #VOL02_CONST ; B
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_G,  #10, #VOL02_CONST ; G
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_C,  #7,  #VOL02_CONST ; C
        dc.b    #MAIN_OCT3_D,  #7,  #VOL02_CONST ; D
        dc.b    #MAIN_OCT3_DS, #7,  #VOL02_CONST ; D#
        dc.b    #MAIN_OCT3_D,  #10, #VOL02_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_C,  #7,  #VOL02_CONST ; C
        dc.b    #MAIN_OCT3_DS, #17, #VOL02_CONST ; D#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_C,  #10, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_D,  #10, #VOL02_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_C,  #10, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_DS, #17, #VOL02_CONST ; D#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_GS, #7,  #VOL02_CONST ; G#
        dc.b    #RESTNOSOUND,  #14, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #24, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_DS, #10, #VOL02_CONST ; D#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_GS, #10, #VOL02_CONST ; G#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C, #10,  #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_F,  #17, #VOL02_CONST ; F
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_AS, #7,  #VOL02_CONST ; A#
        dc.b    #RESTNOSOUND,  #14, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_D,  #24, #VOL02_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_F,  #10, #VOL02_CONST ; F
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_AS, #10, #VOL02_CONST ; A#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_D,  #10, #VOL02_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_D,  #17, #VOL02_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_G,  #7,  #VOL02_CONST ; G
        dc.b    #RESTNOSOUND,  #14, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_G,  #66, #VOL02_CONST ; G
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_G,  #17, #VOL02_CONST ; G
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_D,  #7,  #VOL02_CONST ; D
        dc.b    #RESTNOSOUND,  #14, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_D,  #45, #VOL02_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_D,  #7,  #VOL02REST02 ; D
        dc.b    #MAIN_OCT5_D,  #7,  #VOL02REST02 ; D
        dc.b    #MAIN_OCT5_D,  #7,  #VOL02_CONST ; D
  ENDIF

  IF CASTLEVANIA1SONG6_PLAY_PHRASE4
        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_F,  #7, #VOL02_CONST ; F
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_DS, #7, #VOL02_CONST ; D#
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_D,  #7, #VOL02_CONST ; D
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT3_B,  #7, #VOL02_CONST ; B
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_D,  #7, #VOL02_CONST ; D
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_F,  #7, #VOL02_CONST ; F
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_DS, #7, #VOL02_CONST ; D#
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_D,  #7, #VOL02_CONST ; D
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT3_B,  #7, #VOL02_CONST ; B
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_D,  #7, #VOL02_CONST ; D
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_F,  #7, #VOL02_CONST ; F
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_DS, #7, #VOL02_CONST ; D#
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_D,  #7, #VOL02_CONST ; D
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT3_B,  #7, #VOL02_CONST ; B
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_D,  #7, #VOL02_CONST ; D
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_G,  #7,  #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_B,  #7,  #VOL02REST02 ; B
        dc.b    #MAIN_OCT4_B,  #7,  #VOL02_CONST ; B
        dc.b    #MAIN_OCT5_D,  #14, #VOL02REST02 ; D
        dc.b    #MAIN_OCT5_D,  #7,  #VOL02REST02 ; D
        dc.b    #MAIN_OCT5_D,  #14, #VOL02REST02 ; D
        dc.b    #MAIN_OCT5_D,  #14, #VOL02REST02 ; D
        dc.b    #MAIN_OCT5_D,  #7,  #VOL02REST02 ; D
        dc.b    #MAIN_OCT5_D,  #14, #VOL02REST02 ; D
        dc.b    #MAIN_OCT5_D,  #14, #VOL02_CONST ; D

       ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_F,  #7, #VOL02_CONST ; F
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_DS, #7, #VOL02_CONST ; D#
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_D,  #7, #VOL02_CONST ; D
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT3_B,  #7, #VOL02_CONST ; B
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_D,  #7, #VOL02_CONST ; D
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G

       ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_F,  #7, #VOL02_CONST ; F
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_DS, #7, #VOL02_CONST ; D#
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_D,  #7, #VOL02_CONST ; D
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT3_B,  #7, #VOL02_CONST ; B
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_D,  #7, #VOL02_CONST ; D
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G

       ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_F,  #7, #VOL02_CONST ; F
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_DS, #7, #VOL02_CONST ; D#
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_D,  #7, #VOL02_CONST ; D
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT3_B,  #7, #VOL02_CONST ; B
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_D,  #7, #VOL02_CONST ; D
        dc.b    #MAIN_OCT4_G,  #7, #VOL02_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_G,  #7,  #VOL02_CONST ; G
        dc.b    #MAIN_OCT4_B,  #7,  #VOL02REST02 ; B
        dc.b    #MAIN_OCT4_B,  #7,  #VOL02_CONST ; B
        dc.b    #MAIN_OCT5_D,  #14, #VOL02REST02 ; D
        dc.b    #MAIN_OCT5_D,  #7,  #VOL02REST02 ; D
        dc.b    #MAIN_OCT5_D,  #14, #VOL02REST02 ; D
        dc.b    #MAIN_OCT5_D,  #14, #VOL02REST02 ; D
        dc.b    #MAIN_OCT5_D,  #7,  #VOL02REST02 ; D
        dc.b    #MAIN_OCT5_D,  #14, #VOL02REST02 ; D
        dc.b    #MAIN_OCT5_D,  #14, #VOL02_CONST ; D
  ENDIF

  IF CASTLEVANIA1SONG6_PLAY_PHRASE5
        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_C,  #98, #VOL02_CONST ; C
        dc.b    #MAIN_OCT3_AS, #14, #VOL02_CONST ; A#

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT3_GS, #98, #VOL02_CONST ; G#
        dc.b    #MAIN_OCT3_G,  #14, #VOL02_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT3_F,  #56, #VOL02_CONST ; F
        dc.b    #MAIN_OCT3_G,  #56, #VOL02_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT3_GS, #56, #VOL02_CONST ; G#
        dc.b    #MAIN_OCT3_AS, #56, #VOL02_CONST ; A#

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_G,  #112, #VOL02_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #RESTNOSOUND,  #112,  #RESTDEFAULT ; rest
  ENDIF

	dc.b	#$FF
	dc.b	#<Castlevania1Song6Track1Restart
	dc.b	#>Castlevania1Song6Track1Restart
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

  ENDIF

Castlevania1Song6Track2Restart

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

  IF CASTLEVANIA1SONG6_PLAY_PHRASE3
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

  IF CASTLEVANIA1SONG6_PLAY_PHRASE4
        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT3_C,  #7, #VOL06REST02 ; C
        dc.b    #BASS_OCT3_C,  #7, #VOL06_CONST ; C
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT3_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT3_C,  #7, #VOL06REST02 ; C
        dc.b    #BASS_OCT3_C,  #7, #VOL06_CONST ; C
        dc.b    #BASS_OCT2_C,  #7, #VOL06REST02 ; C
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #BASS_OCT3_C,  #7, #VOL06REST02 ; C
        dc.b    #BASS_OCT3_C,  #7, #VOL06_CONST ; C

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_AS, #7, #VOL06REST02 ; A#
        dc.b    #BASS_OCT2_AS, #7, #VOL06_CONST ; A#
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_AS, #7, #VOL06REST02 ; A#
        dc.b    #BASS_OCT2_AS, #7, #VOL06_CONST ; A#
        dc.b    #BASS_OCT1_AS, #7, #VOL06REST02 ; A#
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #BASS_OCT2_AS, #7, #VOL06REST02 ; A#
        dc.b    #BASS_OCT2_AS, #7, #VOL06_CONST ; A#

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT1_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_GS, #7, #VOL06REST02 ; G#
        dc.b    #BASS_OCT2_GS, #7, #VOL06_CONST ; G#
        dc.b    #BASS_OCT1_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_GS, #7, #VOL06REST02 ; G#
        dc.b    #BASS_OCT2_GS, #7, #VOL06_CONST ; G#
        dc.b    #BASS_OCT1_GS, #7, #VOL06REST02 ; G#
        dc.b    #BASS_OCT1_GS, #7, #VOL06_CONST ; G#
        dc.b    #BASS_OCT2_GS, #7, #VOL06REST02 ; G#
        dc.b    #BASS_OCT2_GS, #7, #VOL06_CONST ; G#

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_G,  #7, #VOL06REST02 ; G
        dc.b    #BASS_OCT2_G,  #7, #VOL06_CONST ; G
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_G,  #7, #VOL06REST02 ; G
        dc.b    #BASS_OCT2_G,  #7, #VOL06_CONST ; G
        dc.b    #BASS_OCT1_G,  #7, #VOL06REST02 ; G
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #BASS_OCT2_G,  #7, #VOL06REST02 ; G
        dc.b    #BASS_OCT2_G,  #7, #VOL06_CONST ; G


        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT3_C,  #7, #VOL06REST02 ; C
        dc.b    #BASS_OCT3_C,  #7, #VOL06_CONST ; C
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT3_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT3_C,  #7, #VOL06REST02 ; C
        dc.b    #BASS_OCT3_C,  #7, #VOL06_CONST ; C
        dc.b    #BASS_OCT2_C,  #7, #VOL06REST02 ; C
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #BASS_OCT3_C,  #7, #VOL06REST02 ; C
        dc.b    #BASS_OCT3_C,  #7, #VOL06_CONST ; C

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_AS, #7, #VOL06REST02 ; A#
        dc.b    #BASS_OCT2_AS, #7, #VOL06_CONST ; A#
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_AS, #7, #VOL06REST02 ; A#
        dc.b    #BASS_OCT2_AS, #7, #VOL06_CONST ; A#
        dc.b    #BASS_OCT1_AS, #7, #VOL06REST02 ; A#
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #BASS_OCT2_AS, #7, #VOL06REST02 ; A#
        dc.b    #BASS_OCT2_AS, #7, #VOL06_CONST ; A#

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT1_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_GS, #7, #VOL06REST02 ; G#
        dc.b    #BASS_OCT2_GS, #7, #VOL06_CONST ; G#
        dc.b    #BASS_OCT1_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_GS, #7, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_GS, #7, #VOL06REST02 ; G#
        dc.b    #BASS_OCT2_GS, #7, #VOL06_CONST ; G#
        dc.b    #BASS_OCT1_GS, #7, #VOL06REST02 ; G#
        dc.b    #BASS_OCT1_GS, #7, #VOL06_CONST ; G#
        dc.b    #BASS_OCT2_GS, #7, #VOL06REST02 ; G#
        dc.b    #BASS_OCT2_GS, #7, #VOL06_CONST ; G#

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_G,  #7, #VOL06REST02 ; G
        dc.b    #BASS_OCT2_G,  #7, #VOL06_CONST ; G
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_G,  #7, #VOL06REST02 ; G
        dc.b    #BASS_OCT2_G,  #7, #VOL06_CONST ; G
        dc.b    #BASS_OCT1_G,  #7, #VOL06REST02 ; G
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #BASS_OCT2_G,  #7, #VOL06REST02 ; G
        dc.b    #BASS_OCT2_G,  #7, #VOL06_CONST ; G
  ENDIF

  IF CASTLEVANIA1SONG6_PLAY_PHRASE5
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
        dc.b    #BASS_OCT2_C,  #7, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
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
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT1_F,  #7, #VOL06_CONST ; F
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_F,  #7, #VOL06_CONST ; F
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_F,  #7, #VOL06_CONST ; F
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_F,  #7, #VOL06_CONST ; F
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_G,  #7, #VOL06_CONST ; G
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
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT1_AS, #7, #VOL06_CONST ; A#
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

	dc.b	#$FF
	dc.b	#<Castlevania1Song6Track2Restart
	dc.b	#>Castlevania1Song6Track2Restart
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
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_G,  #7, #VOL02REST02 ; G
        dc.b    #MAIN_OCT3_G,  #7, #VOL02_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_GS, #7, #VOL02_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_B,  #7, #VOL02REST02 ; B

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_C,  #7, #VOL02REST02 ; C
        dc.b    #MAIN_OCT4_C,  #7, #VOL02REST02 ; C
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #7, #VOL02_CONST ; C
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_G,  #7, #VOL02REST02 ; G
        dc.b    #MAIN_OCT3_G,  #7, #VOL02_CONST ; G
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_GS, #7, #VOL02_CONST ; G#
        dc.b    #RESTNOSOUND,  #7, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT3_B,  #7, #VOL02REST02 ; B
  ENDIF

Castlevania1Song6Track3Restart

  IF CASTLEVANIA1SONG6_PLAY_PHRASE2
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

  IF CASTLEVANIA1SONG6_PLAY_PHRASE3
        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_G,  #10, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #10, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_F,  #10, #VOL06_CONST ; F
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #7,  #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_DS, #17, #VOL06_CONST ; D#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #10, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_D,  #10, #VOL06_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #10, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #7,  #VOL04_CONST ; C
        dc.b    #MAIN_OCT4_D,  #7,  #VOL04_CONST ; D
        dc.b    #MAIN_OCT4_DS, #7,  #VOL04_CONST ; D#
        dc.b    #MAIN_OCT4_D,  #10, #VOL04_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #7,  #VOL04_CONST ; C
        dc.b    #MAIN_OCT4_DS, #17, #VOL04_CONST ; D#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #10, #VOL04_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_D,  #10, #VOL04_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #10, #VOL04_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_G,  #10, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #10, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_F,  #10, #VOL06_CONST ; F
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #7,  #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_DS, #17, #VOL06_CONST ; D#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #10, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_D,  #10, #VOL06_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #10, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #7,  #VOL04_CONST ; C
        dc.b    #MAIN_OCT4_D,  #7,  #VOL04_CONST ; D
        dc.b    #MAIN_OCT4_DS, #7,  #VOL04_CONST ; D#
        dc.b    #MAIN_OCT4_D,  #10, #VOL04_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #7,  #VOL04_CONST ; C
        dc.b    #MAIN_OCT4_DS, #17, #VOL04_CONST ; D#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #10, #VOL04_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_D,  #10, #VOL04_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #10, #VOL04_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_GS, #17, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #7,  #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #14, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_DS, #24, #VOL06_CONST ; D#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_GS, #10, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #10, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_DS, #10, #VOL06_CONST ; D#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_AS, #17, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_D,  #7,  #VOL06_CONST ; D
        dc.b    #RESTNOSOUND,  #14, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_F,  #24, #VOL06_CONST ; F
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_AS, #10, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_D,  #10, #VOL06_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_F,  #10, #VOL06_CONST ; F
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_G,  #10, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #10, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_F,  #10, #VOL06_CONST ; F
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #7,  #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_DS, #17, #VOL06_CONST ; D#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #10, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_D,  #10, #VOL06_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #10, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #7,  #VOL04_CONST ; C
        dc.b    #MAIN_OCT4_D,  #7,  #VOL04_CONST ; D
        dc.b    #MAIN_OCT4_DS, #7,  #VOL04_CONST ; D#
        dc.b    #MAIN_OCT4_D,  #10, #VOL04_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #7,  #VOL04_CONST ; C
        dc.b    #MAIN_OCT4_DS, #17, #VOL04_CONST ; D#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #10, #VOL04_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_D,  #10, #VOL04_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #10, #VOL04_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_G,  #10, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #10, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_F,  #10, #VOL06_CONST ; F
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #7,  #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_DS, #17, #VOL06_CONST ; D#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #10, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_D,  #10, #VOL06_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #10, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #7,  #VOL04_CONST ; C
        dc.b    #MAIN_OCT4_D,  #7,  #VOL04_CONST ; D
        dc.b    #MAIN_OCT4_DS, #7,  #VOL04_CONST ; D#
        dc.b    #MAIN_OCT4_D,  #10, #VOL04_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #7,  #VOL04_CONST ; C
        dc.b    #MAIN_OCT4_DS, #17, #VOL04_CONST ; D#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #10, #VOL04_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_D,  #10, #VOL04_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_C,  #10, #VOL04_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_GS, #17, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #7,  #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #14, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_DS, #24, #VOL06_CONST ; D#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_GS, #10, #VOL06_CONST ; G#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_C,  #10, #VOL06_CONST ; C
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_DS, #10, #VOL06_CONST ; D#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_AS, #17, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_D,  #7,  #VOL06_CONST ; D
        dc.b    #RESTNOSOUND,  #14, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_F,  #24, #VOL06_CONST ; F
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_AS, #10, #VOL06_CONST ; A#
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_D,  #10, #VOL06_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_F,  #10, #VOL06_CONST ; F
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_G,  #17, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_B,  #7,  #VOL06_CONST ; B
        dc.b    #RESTNOSOUND,  #14, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_D,  #66, #VOL06_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_D,  #17, #VOL06_CONST ; D
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_F,  #7,  #VOL06_CONST ; F
        dc.b    #RESTNOSOUND,  #14, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_G,  #45, #VOL06_CONST ; G
        dc.b    #RESTNOSOUND,  #4,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_G,  #7,  #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_A,  #7,  #VOL06_CONST ; A
        dc.b    #MAIN_OCT5_B,  #7,  #VOL06_CONST ; B
  ENDIF

  IF CASTLEVANIA1SONG6_PLAY_PHRASE4
        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_C,  #7, #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_F,  #7, #VOL06_CONST ; F
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_DS, #7, #VOL06_CONST ; D#
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_D,  #7, #VOL06_CONST ; D
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_C,  #7, #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT4_B,  #7, #VOL06_CONST ; B
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_C,  #7, #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_D,  #7, #VOL06_CONST ; D
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_C,  #7, #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_F,  #7, #VOL06_CONST ; F
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_DS, #7, #VOL06_CONST ; D#
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_D,  #7, #VOL06_CONST ; D
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_C,  #7, #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT4_B,  #7, #VOL06_CONST ; B
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_C,  #7, #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_D,  #7, #VOL06_CONST ; D
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_C,  #7, #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_F,  #7, #VOL06_CONST ; F
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_DS, #7, #VOL06_CONST ; D#
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_D,  #7, #VOL06_CONST ; D
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_C,  #7, #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT4_B,  #7, #VOL06_CONST ; B
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_C,  #7, #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_D,  #7, #VOL06_CONST ; D
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_D,  #7,  #VOL06_CONST ; D
        dc.b    #MAIN_OCT5_DS, #7,  #VOL06_CONST ; D#
        dc.b    #MAIN_OCT5_F,  #7,  #VOL06_CONST ; F
        dc.b    #MAIN_OCT5_G,  #14, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_F,  #7,  #VOL06_CONST ; F
        dc.b    #MAIN_OCT5_G,  #14, #VOL06REST02 ; G
        dc.b    #MAIN_OCT5_G,  #14, #VOL06REST02 ; G
        dc.b    #MAIN_OCT5_G,  #7,  #VOL06REST02 ; G
        dc.b    #MAIN_OCT5_G,  #14, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_B,  #14, #VOL06_CONST ; B


        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_C,  #7, #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_F,  #7, #VOL06_CONST ; F
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_DS, #7, #VOL06_CONST ; D#
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_D,  #7, #VOL06_CONST ; D
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_C,  #7, #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT4_B,  #7, #VOL06_CONST ; B
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_C,  #7, #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_D,  #7, #VOL06_CONST ; D
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_C,  #7, #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_F,  #7, #VOL06_CONST ; F
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_DS, #7, #VOL06_CONST ; D#
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_D,  #7, #VOL06_CONST ; D
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_C,  #7, #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT4_B,  #7, #VOL06_CONST ; B
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_C,  #7, #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_D,  #7, #VOL06_CONST ; D
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_C,  #7, #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_F,  #7, #VOL06_CONST ; F
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_DS, #7, #VOL06_CONST ; D#
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_D,  #7, #VOL06_CONST ; D
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_C,  #7, #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT4_B,  #7, #VOL06_CONST ; B
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_C,  #7, #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_D,  #7, #VOL06_CONST ; D
        dc.b    #MAIN_OCT5_G,  #7, #VOL06_CONST ; G

        ; Uses pokey_notes column P (green)
        dc.b    #RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT5_D,  #7,  #VOL06_CONST ; D
        dc.b    #MAIN_OCT5_DS, #7,  #VOL06_CONST ; D#
        dc.b    #MAIN_OCT5_F,  #7,  #VOL06_CONST ; F
        dc.b    #MAIN_OCT5_G,  #14, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_F,  #7,  #VOL06_CONST ; F
        dc.b    #MAIN_OCT5_G,  #14, #VOL06REST02 ; G
        dc.b    #MAIN_OCT5_G,  #14, #VOL06REST02 ; G
        dc.b    #MAIN_OCT5_G,  #7,  #VOL06REST02 ; G
        dc.b    #MAIN_OCT5_G,  #14, #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_B,  #14, #VOL06_CONST ; B
  ENDIF

  IF CASTLEVANIA1SONG6_PLAY_PHRASE5
        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_DS, #7,  #VOL06_CONST ; D#
        dc.b    #MAIN_OCT5_D,  #7,  #VOL06_CONST ; D
        dc.b    #MAIN_OCT5_DS, #7,  #VOL06_CONST ; D#
        dc.b    #MAIN_OCT5_D,  #7,  #VOL06_CONST ; D
        dc.b    #MAIN_OCT5_DS, #14, #VOL06_CONST ; D#
        dc.b    #MAIN_OCT5_C,  #7,  #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_DS, #21,  #VOL06_CONST ; D#
        dc.b    #MAIN_OCT5_C,  #14,  #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_D,  #14,  #VOL06_CONST ; D
        dc.b    #MAIN_OCT5_C,  #14,  #VOL06_CONST ; C

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_DS, #7,  #VOL06_CONST ; D#
        dc.b    #MAIN_OCT5_D,  #7,  #VOL06_CONST ; D
        dc.b    #MAIN_OCT5_DS, #7,  #VOL06_CONST ; D#
        dc.b    #MAIN_OCT5_D,  #7,  #VOL06_CONST ; D
        dc.b    #MAIN_OCT5_DS, #14, #VOL06_CONST ; D#
        dc.b    #MAIN_OCT5_C,  #7,  #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_DS, #21,  #VOL06_CONST ; D#
        dc.b    #MAIN_OCT5_C,  #14,  #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_D,  #14,  #VOL06_CONST ; D
        dc.b    #MAIN_OCT5_C,  #14,  #VOL06_CONST ; C

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_DS, #21,  #VOL06_CONST ; D#
        dc.b    #MAIN_OCT5_C,  #21,  #VOL06_CONST ; C
        dc.b    #MAIN_OCT5_DS, #14,  #VOL06_CONST ; D#
        dc.b    #MAIN_OCT5_F,  #21,  #VOL06_CONST ; F
        dc.b    #MAIN_OCT5_D,  #21,  #VOL06_CONST ; D
        dc.b    #MAIN_OCT5_F,  #14,  #VOL06_CONST ; F

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_G,  #21,  #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_F,  #21,  #VOL06_CONST ; F
        dc.b    #MAIN_OCT5_G,  #14,  #VOL06_CONST ; G
        dc.b    #MAIN_OCT5_AS, #21,  #VOL06_CONST ; A# - a little out of tune
        dc.b    #MAIN_OCT5_GS, #21,  #VOL06_CONST ; G#
        dc.b    #MAIN_OCT5_AS, #14,  #VOL06_CONST ; A# - a little out of tune

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT6_C,  #112,  #VOL06_CONST ; C

        ; Uses pokey_notes column P (green)
        dc.b    #RESTNOSOUND,  #112,  #RESTDEFAULT ; rest
  ENDIF

	dc.b	#$FF
	dc.b	#<Castlevania1Song6Track3Restart
	dc.b	#>Castlevania1Song6Track3Restart
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
        dc.b    #SNAREDRUM, #4, #DRUM4FRAMES
        dc.b    #$00, #10, #RESTDEFAULT ; rest
        dc.b    #SNAREDRUM, #4, #DRUM4FRAMES
        dc.b    #$00, #10, #RESTDEFAULT ; rest
        dc.b    #HIGHSNARE, #8, #DRUM8FRAMES
        dc.b    #$00, #6,  #RESTDEFAULT ; rest
        dc.b    #SNAREDRUM, #4, #DRUM4FRAMES
        dc.b    #$00, #10, #RESTDEFAULT ; rest
        dc.b    #SNAREDRUM, #4, #DRUM4FRAMES
        dc.b    #$00, #10, #RESTDEFAULT ; rest
        dc.b    #HIGHSNARE, #4, #DRUM4FRAMES
        dc.b    #$00, #3, #RESTDEFAULT ; rest
        dc.b    #HIGHSNARE, #8, #DRUM8FRAMES
        dc.b    #$00, #6,  #RESTDEFAULT ; rest
        dc.b    #HIGHSNARE, #8, #DRUM8FRAMES
        dc.b    #$00, #6,  #RESTDEFAULT ; rest
        dc.b    #SNAREDRUM, #4, #DRUM4FRAMES
        dc.b    #$00, #3, #RESTDEFAULT ; rest

        dc.b    #SNAREDRUM, #4, #DRUM4FRAMES
        dc.b    #$00, #3, #RESTDEFAULT ; rest
        dc.b    #SNAREDRUM, #4, #DRUM4FRAMES
        dc.b    #$00, #3, #RESTDEFAULT ; rest
        dc.b    #SNAREDRUM, #4, #DRUM4FRAMES
        dc.b    #$00, #10, #RESTDEFAULT ; rest
        dc.b    #HIGHSNARE, #8, #DRUM8FRAMES
        dc.b    #$00, #6,  #RESTDEFAULT ; rest
        dc.b    #SNAREDRUM, #4, #DRUM4FRAMES
        dc.b    #$00, #10, #RESTDEFAULT ; rest
        dc.b    #SNAREDRUM, #4, #DRUM4FRAMES
        dc.b    #$00, #10, #RESTDEFAULT ; rest
        dc.b    #HIGHSNARE, #4, #DRUM4FRAMES
        dc.b    #$00, #3, #RESTDEFAULT ; rest
        dc.b    #HIGHSNARE, #8, #DRUM8FRAMES
        dc.b    #$00, #6,  #RESTDEFAULT ; rest
        dc.b    #HIGHSNARE, #8, #DRUM8FRAMES
        dc.b    #$00, #6,  #RESTDEFAULT ; rest
        dc.b    #HIGHSNARE, #4, #DRUM4FRAMES
        dc.b    #$00, #3, #RESTDEFAULT ; rest
  ENDIF

Castlevania1Song6Track4Restart

  IF CASTLEVANIA1SONG6_PLAY_PHRASE2
  ENDIF

  IF CASTLEVANIA1SONG6_PLAY_PHRASE3
  ENDIF

  IF CASTLEVANIA1SONG6_PLAY_PHRASE4
  ENDIF

  IF CASTLEVANIA1SONG6_PLAY_PHRASE5
  ENDIF

	dc.b	#$FF
	dc.b	#<Castlevania1Song6Track4Restart
	dc.b	#>Castlevania1Song6Track4Restart
  ENDIF ; (IF MUTE_TRACK4)

