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
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker3Track1
	dc.b	#>Spelunker3Track1
  ELSE

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
	dc.b	#MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
	dc.b	#RESTNOSOUND,  #36, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_DS, #6,  #VOL06_CONST ; D#
	dc.b	#MAIN_OCT4_E,  #6,  #VOL06_CONST ; E
	dc.b	#MAIN_OCT4_G,  #12, #ARCH12_16EX ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
	dc.b	#MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
	dc.b	#RESTNOSOUND,  #36, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_DS, #6,  #VOL06_CONST ; D#
	dc.b	#MAIN_OCT4_E,  #6,  #VOL06_CONST ; E
	dc.b	#MAIN_OCT4_G,  #12, #ARCH12_16EX ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
	dc.b	#MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT5_DS, #12, #ARCH12_16EX ; D#
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
	dc.b	#MAIN_OCT4_A,  #12, #ARCH12_16EX ; A

	dc.b	#MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_G,  #36, #ARCH48_24FD ; G
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest

	;=========================================

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
	dc.b	#MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
	dc.b	#RESTNOSOUND,  #36, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_DS, #6,  #VOL06_CONST ; D#
	dc.b	#MAIN_OCT4_E,  #6,  #VOL06_CONST ; E
	dc.b	#MAIN_OCT4_G,  #12, #ARCH12_16EX ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
	dc.b	#MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
	dc.b	#RESTNOSOUND,  #36, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_DS, #6,  #VOL06_CONST ; D#
	dc.b	#MAIN_OCT4_E,  #6,  #VOL06_CONST ; E
	dc.b	#MAIN_OCT4_G,  #12, #ARCH12_16EX ; G

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
	dc.b	#MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT5_DS, #12, #ARCH12_16EX ; D#
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
	dc.b	#MAIN_OCT4_A,  #12, #ARCH12_16EX ; A

	dc.b	#MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_G,  #36, #ARCH48_24FD ; G
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest

	;=========================================

        ; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT5_DS, #24, #ARCH48_24FD ; D#
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT5_DS, #24, #ARCH48_24FD ; D#
	dc.b	#MAIN_OCT5_F,  #24, #ARCH48_24FD ; F
	dc.b	#MAIN_OCT5_G,  #24, #ARCH48_24FD ; G

	dc.b	#MAIN_OCT5_F,  #36, #ARCH48_24FD ; F
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_G,  #12, #ARCH12_16EX ; G (low)

	dc.b	#MAIN_OCT5_G,  #36, #ARCH48_24FD ; G
	dc.b	#RESTNOSOUND,  #72, #RESTDEFAULT ; rest

	dc.b	#MAIN_OCT5_G,  #12, #ARCH12_16EX ; G
	dc.b	#MAIN_OCT5_G,  #12, #ARCH12_16EX ; G
	dc.b	#MAIN_OCT5_G,  #12, #ARCH12_16EX ; G
	dc.b	#MAIN_OCT5_G,  #12, #ARCH12_16EX ; G
	dc.b	#MAIN_OCT5_G,  #12, #ARCH12_16EX ; G
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest

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
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker3Track2
	dc.b	#>Spelunker3Track2
  ELSE

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT1_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; A#
	dc.b	#BASS_OCT2_AS, #12, #VOL06REST02 ; A#
	dc.b	#BASS_OCT1_B,  #12, #VOL06REST02 ; B
	dc.b	#BASS_OCT2_B,  #12, #VOL06REST02 ; B

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT1_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; A#
	dc.b	#BASS_OCT2_AS, #12, #VOL06REST02 ; A#
	dc.b	#BASS_OCT1_B,  #12, #VOL06REST02 ; B
	dc.b	#BASS_OCT2_B,  #12, #VOL06REST02 ; B

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT1_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; A#
	dc.b	#BASS_OCT2_AS, #12, #VOL06REST02 ; A#
	dc.b	#BASS_OCT1_B,  #12, #VOL06REST02 ; B
	dc.b	#BASS_OCT2_B,  #12, #VOL06REST02 ; B

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT1_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; A#
	dc.b	#BASS_OCT2_AS, #12, #VOL06REST02 ; A#
	dc.b	#BASS_OCT1_B,  #12, #VOL06REST02 ; B
	dc.b	#BASS_OCT2_B,  #12, #VOL06REST02 ; B

	;===================================

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT1_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; A#
	dc.b	#BASS_OCT2_AS, #12, #VOL06REST02 ; A#
	dc.b	#BASS_OCT1_B,  #12, #VOL06REST02 ; B
	dc.b	#BASS_OCT2_B,  #12, #VOL06REST02 ; B

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT1_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; A#
	dc.b	#BASS_OCT2_AS, #12, #VOL06REST02 ; A#
	dc.b	#BASS_OCT1_B,  #12, #VOL06REST02 ; B
	dc.b	#BASS_OCT2_B,  #12, #VOL06REST02 ; B

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT1_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; A#
	dc.b	#BASS_OCT2_AS, #12, #VOL06REST02 ; A#
	dc.b	#BASS_OCT1_B,  #12, #VOL06REST02 ; B
	dc.b	#BASS_OCT2_B,  #12, #VOL06REST02 ; B

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT1_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; A#
	dc.b	#BASS_OCT2_AS, #12, #VOL06REST02 ; A#
	dc.b	#BASS_OCT1_B,  #12, #VOL06REST02 ; B
	dc.b	#BASS_OCT2_B,  #12, #VOL06REST02 ; B

	;===================================

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_DS, #12, #VOL06REST02 ; D#
	dc.b	#BASS_OCT3_DS, #12, #VOL06REST02 ; D#
	dc.b	#BASS_OCT2_G,  #12, #VOL06REST02 ; G
	dc.b	#BASS_OCT3_G,  #12, #VOL06REST02 ; G
	dc.b	#BASS_OCT2_GS, #12, #VOL06REST02 ; G#
	dc.b	#BASS_OCT3_GS, #12, #VOL06REST02 ; G#
	dc.b	#BASS_OCT2_AS, #12, #VOL06REST02 ; A#
	dc.b	#BASS_OCT3_AS, #12, #VOL06REST02 ; A#

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT3_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT3_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_AS, #12, #VOL06REST02 ; A#
	dc.b	#BASS_OCT3_AS, #12, #VOL06REST02 ; A#
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT4_C,  #12, #VOL06REST02 ; C

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_G,  #12, #VOL06REST02 ; G
	dc.b	#BASS_OCT3_G,  #12, #VOL06REST02 ; G
	dc.b	#BASS_OCT2_G,  #12, #VOL06REST02 ; G
	dc.b	#BASS_OCT3_G,  #12, #VOL06REST02 ; G
	dc.b	#BASS_OCT2_G,  #12, #VOL06REST02 ; G
	dc.b	#BASS_OCT3_G,  #12, #VOL06REST02 ; G
	dc.b	#BASS_OCT2_G,  #12, #VOL06REST02 ; G
	dc.b	#BASS_OCT3_G,  #12, #VOL06REST02 ; G

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_G,  #12, #VOL06REST02 ; G
	dc.b	#BASS_OCT2_G,  #12, #VOL06REST02 ; G
	dc.b	#BASS_OCT2_G,  #12, #VOL06REST02 ; G
	dc.b	#BASS_OCT2_G,  #12, #VOL06REST02 ; G
	dc.b	#BASS_OCT2_G,  #12, #VOL06REST02 ; G
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest

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
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker3Track3
	dc.b	#>Spelunker3Track3
  ELSE

	; This track has no music
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
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
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker3Track4
	dc.b	#>Spelunker3Track4
  ELSE

	; This track has no music
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker3Track4
	dc.b	#>Spelunker3Track4

  ENDIF ; (IF MUTE_TRACK4)

