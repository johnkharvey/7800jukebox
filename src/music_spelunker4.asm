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
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker4Track1
	dc.b	#>Spelunker4Track1
  ELSE

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_C,  #36, #ARCH48_24FD ; C
	dc.b	#MAIN_OCT3_G,  #12, #VOL06_CONST ; G
	dc.b	#MAIN_OCT3_AS, #12, #VOL06_CONST ; A#
	dc.b	#MAIN_OCT3_A,  #12, #VOL06_CONST ; A
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT3_G,  #48, #ARCH48_24FD ; G
	dc.b	#RESTNOSOUND,  #60, #RESTDEFAULT ; rest

	dc.b	#MAIN_OCT3_F,  #12, #VOL06_CONST ; F
	dc.b	#MAIN_OCT3_E,  #12, #VOL06_CONST ; E
	dc.b	#MAIN_OCT3_F,  #12, #VOL06_CONST ; F
	dc.b	#MAIN_OCT3_E,  #12, #VOL06_CONST ; E
	dc.b	#MAIN_OCT3_F,  #12, #VOL06_CONST ; F
	dc.b	#MAIN_OCT3_G,  #12, #VOL06_CONST ; G
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT3_E,  #48, #ARCH48_24FD ; E
	dc.b	#RESTNOSOUND,  #60, #RESTDEFAULT ; rest

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
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker4Track2
	dc.b	#>Spelunker4Track2
  ELSE

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_E,  #12, #VOL06REST02 ; E
	dc.b	#BASS_OCT3_E,  #12, #VOL06REST02 ; E
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT3_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_G,  #12, #VOL06REST02 ; G
	dc.b	#BASS_OCT3_G,  #12, #VOL06REST02 ; G

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_G,  #12, #VOL06REST02 ; G
	dc.b	#BASS_OCT2_G,  #12, #VOL06REST02 ; G
	dc.b	#BASS_OCT1_B,  #12, #VOL06REST02 ; B
	dc.b	#BASS_OCT2_B,  #12, #VOL06REST02 ; B
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT3_D,  #12, #VOL06REST02 ; D

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT1_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT1_B,  #12, #VOL06REST02 ; B
	dc.b	#BASS_OCT2_B,  #12, #VOL06REST02 ; B
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_E,  #12, #VOL06REST02 ; E
	dc.b	#BASS_OCT3_E,  #12, #VOL06REST02 ; E
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT3_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_G,  #12, #VOL06REST02 ; G
	dc.b	#BASS_OCT3_G,  #12, #VOL06REST02 ; G

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
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker4Track3
	dc.b	#>Spelunker4Track3
  ELSE

	; This track has no music
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
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
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker4Track4
	dc.b	#>Spelunker4Track4
  ELSE

	; This track has no music
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker4Track4
	dc.b	#>Spelunker4Track4

  ENDIF ; (IF MUTE_TRACK4)

