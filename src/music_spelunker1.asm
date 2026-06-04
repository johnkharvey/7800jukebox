SPELUNKER1_PLAY_PHRASE1	set	1
SPELUNKER1_PLAY_PHRASE2	set	1
SPELUNKER1_PLAY_PHRASE3	set	1
SPELUNKER1_PLAY_PHRASE4	set	1
SPELUNKER1_PLAY_PHRASE5	set	1
SPELUNKER1_PLAY_PHRASE6	set	1
MUTE_TRACK1		set	0
MUTE_TRACK2		set	0
MUTE_TRACK3		set	0
MUTE_TRACK4		set	0

; Drum equates
BASSDRUM1		equ	$5C
HIGHSNARE		equ	$07
SNAREDRUM		equ	$0E


;================
Spelunker1Track1
;================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK1
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT	; rest
	dc.b	#$FF
	dc.b	#<Spelunker1Track1
	dc.b	#>Spelunker1Track1
  ELSE

	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT	; rest

	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT	; rest

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_CS, #24, #ARCH24_16FD ; C#
	dc.b	#MAIN_OCT4_FS, #24, #ARCH24_16FD ; F#
	dc.b	#MAIN_OCT4_FS, #24, #ARCH24_16FD ; F#
	dc.b	#MAIN_OCT4_CS, #24, #ARCH24_16FD ; C#

	dc.b	#MAIN_OCT4_CS, #24, #ARCH24_16FD ; C#
	dc.b	#MAIN_OCT4_FS, #24, #ARCH24_16FD ; F#
	dc.b	#MAIN_OCT4_FS, #24, #ARCH24_16FD ; F#
	dc.b	#MAIN_OCT4_CS, #24, #ARCH24_16FD ; C#

	; repeat
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_CS, #24, #ARCH24_16FD ; C#
	dc.b	#MAIN_OCT4_FS, #24, #ARCH24_16FD ; F#
	dc.b	#MAIN_OCT4_FS, #24, #ARCH24_16FD ; F#
	dc.b	#MAIN_OCT4_CS, #24, #ARCH24_16FD ; C#

	dc.b	#MAIN_OCT4_CS, #24, #ARCH24_16FD ; C#
	dc.b	#MAIN_OCT4_FS, #24, #ARCH24_16FD ; F#
	dc.b	#MAIN_OCT4_FS, #24, #ARCH24_16FD ; F#
	dc.b	#MAIN_OCT4_CS, #24, #ARCH24_16FD ; C#

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_GS, #12, #ARCH12_16EX ; G#
	dc.b	#MAIN_OCT4_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT4_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT3_AS, #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT3_AS, #12, #ARCH12_16EX ; A

	; repeat
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_GS, #12, #ARCH12_16EX ; G#
	dc.b	#MAIN_OCT4_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT4_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT3_AS, #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT3_AS, #12, #ARCH12_16EX ; A

	; repeat
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_GS, #12, #ARCH12_16EX ; G#
	dc.b	#MAIN_OCT4_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT4_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT3_AS, #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT3_AS, #12, #ARCH12_16EX ; A

	; repeat
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_GS, #12, #ARCH12_16EX ; G#
	dc.b	#MAIN_OCT4_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT4_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT3_AS, #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT3_AS, #12, #ARCH12_16EX ; A

	; Change-up - move up
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_GS, #12, #ARCH12_16EX ; G#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT3_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_CS, #12, #ARCH12_16EX ; C#

	; Continue change-up
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_GS, #12, #ARCH12_16EX ; G#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_GS, #12, #ARCH12_16EX ; G#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_GS, #12, #ARCH12_16EX ; G#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_GS, #12, #ARCH12_16EX ; G#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_GS, #12, #ARCH12_16EX ; G#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_GS, #12, #ARCH12_16EX ; G#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_GS, #12, #ARCH12_16EX ; G#
	dc.b	#MAIN_OCT4_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT4_E,  #12, #ARCH12_16EX ; E
	dc.b	#MAIN_OCT4_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT4_GS, #12, #ARCH12_16EX ; G#
	dc.b	#MAIN_OCT4_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT4_E,  #12, #ARCH12_16EX ; E
	dc.b	#MAIN_OCT4_CS, #12, #ARCH12_16EX ; C#

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_GS, #24, #ARCH24_16FD ; G#
	dc.b	#MAIN_OCT4_GS, #24, #ARCH24_16FD ; G#
	dc.b	#MAIN_OCT4_GS, #48, #ARCH48_24FD ; G#

	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT	; rest

	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT	; rest

	; change up
	; Uses pokey_notes column P (green)
	; don't use youtube video, use correct notes
	dc.b	#MAIN_OCT4_A,  #24, #ARCH24_16FD ; A
	dc.b	#MAIN_OCT4_FS, #24, #ARCH24_16FD ; F#
	dc.b	#MAIN_OCT4_CS, #24, #ARCH24_16FD ; C#
	dc.b	#MAIN_OCT3_A,  #24, #ARCH24_16FD ; A

	; Uses pokey_notes column P (green)
	; don't use youtube video, use correct notes
	dc.b	#MAIN_OCT4_CS, #24, #ARCH24_16FD ; C#
	dc.b	#MAIN_OCT3_A,  #24, #ARCH24_16FD ; A
	dc.b	#MAIN_OCT4_CS, #24, #ARCH24_16FD ; C#
	dc.b	#MAIN_OCT3_A,  #24, #ARCH24_16FD ; A

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT3_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT5_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT4_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_CS, #24, #ARCH24_16FD ; C#
	dc.b	#MAIN_OCT4_GS, #24, #ARCH24_16FD ; G#
	dc.b	#MAIN_OCT4_GS, #48, #ARCH48_24FD ; G#

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_A,  #48, #ARCH48_24FD ; A
	dc.b	#MAIN_OCT4_GS, #48, #ARCH48_24FD ; G#

	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT	; rest

	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT	; rest

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_A,  #24, #ARCH24_16FD ; A
	dc.b	#MAIN_OCT4_GS, #24, #ARCH24_16FD ; G#
	dc.b	#MAIN_OCT4_GS, #24, #ARCH24_16FD ; G#
	dc.b	#MAIN_OCT4_A,  #24, #ARCH24_16FD ; A

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_GS, #12, #ARCH12_16EX ; G#
	dc.b	#MAIN_OCT4_E,  #12, #ARCH12_16EX ; E
	dc.b	#MAIN_OCT4_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_B,  #12, #ARCH12_16EX ; B

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT3_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT5_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT4_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_GS, #24, #ARCH24_16FD ; G#
	dc.b	#MAIN_OCT4_A,  #24, #ARCH24_16FD ; A
	dc.b	#MAIN_OCT4_GS, #48, #ARCH48_24FD ; G#

	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT	; rest

	; Syncopated sequence
	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND, #24, #RESTDEFAULT	; rest
	dc.b	#MAIN_OCT4_GS, #24, #ARCH24_16FD ; G#
	dc.b	#MAIN_OCT4_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_GS, #24, #ARCH24_16FD ; G#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_GS, #48, #ARCH48_24FD ; G#
	dc.b	#MAIN_OCT4_FS, #48, #ARCH48_24FD ; F#

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_CS, #24, #ARCH24_16FD ; C#
	dc.b	#MAIN_OCT3_B,  #24, #ARCH24_16FD ; B
	dc.b	#MAIN_OCT4_CS, #48, #ARCH48_24FD ; C#

	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT	; rest
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT	; rest

	; next sequence
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_FS, #24, #ARCH24_16FD ; F#
	dc.b	#MAIN_OCT4_E,  #24, #ARCH24_16FD ; E
	dc.b	#MAIN_OCT4_E,  #24, #ARCH24_16FD ; E
	dc.b	#MAIN_OCT4_B,  #24, #ARCH24_16FD ; B

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_FS, #24, #ARCH24_16FD ; F#
	dc.b	#MAIN_OCT4_E,  #24, #ARCH24_16FD ; E
	dc.b	#MAIN_OCT4_E,  #12, #ARCH12_16EX ; E
	dc.b	#MAIN_OCT4_GS, #12, #ARCH12_16EX ; G#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_D,  #12, #ARCH12_16EX ; D

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_D,  #24, #ARCH24_16FD ; D
	dc.b	#MAIN_OCT4_E,  #24, #ARCH24_16FD ; E
	dc.b	#MAIN_OCT4_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_E,  #12, #ARCH12_16EX ; E
	dc.b	#MAIN_OCT4_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT3_B,  #12, #ARCH12_16EX ; B

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT3_B,  #48, #ARCH48_24FD ; B
	dc.b	#RESTNOSOUND, #48, #RESTDEFAULT	; rest

	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT	; rest
	
	; end sequence
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_GS, #24, #ARCH24_16FD ; G#
	dc.b	#MAIN_OCT4_A,  #24, #ARCH24_16FD ; A
	dc.b	#MAIN_OCT4_GS, #24, #ARCH24_16FD ; G#
	dc.b	#MAIN_OCT4_CS, #24, #ARCH24_16FD ; C#

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_GS, #24, #ARCH24_16FD ; G#
	dc.b	#MAIN_OCT4_A,  #24, #ARCH24_16FD ; A
	dc.b	#MAIN_OCT4_GS, #24, #ARCH24_16FD ; G#
	dc.b	#MAIN_OCT4_CS, #24, #ARCH24_16FD ; C#

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_GS, #24, #ARCH24_16FD ; G#
	dc.b	#MAIN_OCT4_A,  #24, #ARCH24_16FD ; A
	dc.b	#MAIN_OCT4_GS, #24, #ARCH24_16FD ; G#
	dc.b	#MAIN_OCT4_CS, #24, #ARCH24_16FD ; C#

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT3_B,  #48, #ARCH48_24FD ; B
	dc.b	#MAIN_OCT4_GS, #48, #ARCH48_24FD ; G#

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_FS, #96, #ARCH96_72FD ; F#

	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT	; rest
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT	; rest

Spelunker1Track1Stops
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker1Track1Stops
	dc.b	#>Spelunker1Track1Stops

  ENDIF ; (IF MUTE_TRACK1)

;================
Spelunker1Track2
;================
; Uses pokey_notes column H (brown)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK2
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT	; rest
	dc.b	#$FF
	dc.b	#<Spelunker1Track2
	dc.b	#>Spelunker1Track2
  ELSE

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_FS, #48, #ARCH48_24FD ; F#
	dc.b	#BASS_OCT2_FS, #24, #ARCH48_24FD ; F#
	dc.b	#BASS_OCT2_FS, #24, #ARCH48_24FD ; F#

	dc.b	#BASS_OCT1_FS, #48, #ARCH48_24FD ; F#
	dc.b	#BASS_OCT2_FS, #24, #ARCH48_24FD ; F#
	dc.b	#BASS_OCT2_FS, #24, #ARCH48_24FD ; F#

	; Continue orig
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_FS, #48, #ARCH48_24FD ; F#
	dc.b	#BASS_OCT2_FS, #48, #ARCH48_24FD ; F#

	dc.b	#BASS_OCT1_FS, #48, #ARCH48_24FD ; F#
	dc.b	#BASS_OCT2_FS, #48, #ARCH48_24FD ; F#

	; Down
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_E,  #48, #ARCH48_24FD ; E
	dc.b	#BASS_OCT2_E,  #48, #ARCH48_24FD ; E

	dc.b	#BASS_OCT1_E,  #48, #ARCH48_24FD ; E
	dc.b	#BASS_OCT2_E,  #48, #ARCH48_24FD ; E

	; Back to orig
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_FS, #48, #ARCH48_24FD ; F#
	dc.b	#BASS_OCT2_FS, #48, #ARCH48_24FD ; F#

	dc.b	#BASS_OCT1_FS, #48, #ARCH48_24FD ; F#
	dc.b	#BASS_OCT2_FS, #48, #ARCH48_24FD ; F#

	; Down
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_E,  #48, #ARCH48_24FD ; E
	dc.b	#BASS_OCT2_E,  #48, #ARCH48_24FD ; E

	dc.b	#BASS_OCT1_E,  #48, #ARCH48_24FD ; E
	dc.b	#BASS_OCT2_E,  #48, #ARCH48_24FD ; E

	; Back to orig
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_FS, #48, #ARCH48_24FD ; F#
	dc.b	#BASS_OCT2_FS, #48, #ARCH48_24FD ; F#

	dc.b	#BASS_OCT1_FS, #48, #ARCH48_24FD ; F#
	dc.b	#BASS_OCT2_FS, #48, #ARCH48_24FD ; F#

	; Change up
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_FS, #48, #ARCH48_24FD ; F#
	dc.b	#BASS_OCT2_FS, #48, #ARCH48_24FD ; F#

	dc.b	#BASS_OCT2_CS, #48, #ARCH48_24FD ; C#
	dc.b	#BASS_OCT1_GS, #48, #ARCH48_24FD ; G#

	dc.b	#BASS_OCT1_GS, #48, #ARCH48_24FD ; G#
	dc.b	#BASS_OCT1_GS, #48, #ARCH48_24FD ; G#

	; Orig
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_FS, #48, #ARCH48_24FD ; F#
	dc.b	#BASS_OCT2_FS, #24, #ARCH48_24FD ; F#
	dc.b	#BASS_OCT2_FS, #24, #ARCH48_24FD ; F#

	dc.b	#BASS_OCT1_FS, #48, #ARCH48_24FD ; F#
	dc.b	#BASS_OCT2_FS, #24, #ARCH48_24FD ; F#
	dc.b	#BASS_OCT2_FS, #24, #ARCH48_24FD ; F#

	; Change up
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_FS, #48, #ARCH48_24FD ; F#
	dc.b	#BASS_OCT2_CS, #24, #ARCH48_24FD ; C#
	dc.b	#BASS_OCT1_A,  #24, #ARCH48_24FD ; A

	dc.b	#BASS_OCT1_FS, #48, #ARCH48_24FD ; F#
	dc.b	#BASS_OCT2_CS, #24, #ARCH48_24FD ; C#
	dc.b	#BASS_OCT1_A,  #24, #ARCH48_24FD ; A

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_FS, #48, #ARCH48_24FD ; F#
	dc.b	#BASS_OCT2_FS, #48, #ARCH48_24FD ; F#

	dc.b	#BASS_OCT2_CS, #48, #ARCH48_24FD ; C#
	dc.b	#BASS_OCT1_GS, #48, #ARCH48_24FD ; G#

	dc.b	#BASS_OCT2_CS, #48, #ARCH48_24FD ; C#
	dc.b	#BASS_OCT2_CS, #48, #ARCH48_24FD ; C#

	; Lower
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_E,  #48, #ARCH48_24FD ; E
	dc.b	#BASS_OCT2_E,  #24, #ARCH48_24FD ; E
	dc.b	#BASS_OCT2_E,  #24, #ARCH48_24FD ; E

	dc.b	#BASS_OCT1_E,  #48, #ARCH48_24FD ; E
	dc.b	#BASS_OCT2_E,  #24, #ARCH48_24FD ; E
	dc.b	#BASS_OCT2_E,  #24, #ARCH48_24FD ; E

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_A,  #48, #ARCH48_24FD ; A
	dc.b	#BASS_OCT1_E,  #48, #ARCH48_24FD ; E

	dc.b	#BASS_OCT1_A,  #48, #ARCH48_24FD ; A
	dc.b	#BASS_OCT1_E,  #48, #ARCH48_24FD ; E

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_FS, #48, #ARCH48_24FD ; F#
	dc.b	#BASS_OCT2_FS, #48, #ARCH48_24FD ; F#

	dc.b	#BASS_OCT2_CS, #48, #ARCH48_24FD ; C#
	dc.b	#BASS_OCT2_CS, #48, #ARCH48_24FD ; C#

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_CS, #48, #ARCH48_24FD ; C#
	dc.b	#BASS_OCT1_B,  #12, #ARCH48_24FD ; B
	dc.b	#BASS_OCT2_CS, #12, #ARCH48_24FD ; C#
	dc.b	#BASS_OCT1_B,  #24, #ARCH48_24FD ; B

	dc.b	#BASS_OCT1_B,  #48, #ARCH48_24FD ; B
	dc.b	#BASS_OCT1_B,  #48, #ARCH48_24FD ; B

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_FS, #48, #ARCH48_24FD ; F#
	dc.b	#BASS_OCT2_FS, #48, #ARCH48_24FD ; F#

	dc.b	#BASS_OCT1_FS, #48, #ARCH48_24FD ; F#
	dc.b	#BASS_OCT1_FS, #48, #ARCH48_24FD ; F#

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_E,  #48, #ARCH48_24FD ; E
	dc.b	#BASS_OCT2_E,  #24, #ARCH48_24FD ; E
	dc.b	#BASS_OCT2_E,  #24, #ARCH48_24FD ; E

	dc.b	#BASS_OCT1_E,  #48, #ARCH48_24FD ; E
	dc.b	#BASS_OCT2_E,  #24, #ARCH48_24FD ; E
	dc.b	#BASS_OCT2_E,  #24, #ARCH48_24FD ; E

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_E,  #48, #ARCH48_24FD ; E
	dc.b	#BASS_OCT2_E,  #48, #ARCH48_24FD ; E

	dc.b	#BASS_OCT1_E,  #48, #ARCH48_24FD ; E
	dc.b	#BASS_OCT2_E,  #48, #ARCH48_24FD ; E

	; Lowest
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_D,  #48, #ARCH48_24FD ; D
	dc.b	#BASS_OCT2_D,  #48, #ARCH48_24FD ; D

	dc.b	#BASS_OCT1_E,  #48, #ARCH48_24FD ; E
	dc.b	#BASS_OCT2_E,  #24, #ARCH48_24FD ; E
	dc.b	#BASS_OCT2_E,  #24, #ARCH48_24FD ; E

	dc.b	#BASS_OCT1_E,  #48, #ARCH48_24FD ; E
	dc.b	#BASS_OCT2_E,  #24, #ARCH48_24FD ; E
	dc.b	#BASS_OCT2_E,  #24, #ARCH48_24FD ; E

	; Finale
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_FS, #48, #ARCH48_24FD ; F#
	dc.b	#BASS_OCT2_FS, #48, #ARCH48_24FD ; F#

	dc.b	#BASS_OCT1_E,  #48, #ARCH48_24FD ; E
	dc.b	#BASS_OCT2_E,  #48, #ARCH48_24FD ; E

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_D,  #48, #ARCH48_24FD ; D
	dc.b	#BASS_OCT2_D,  #48, #ARCH48_24FD ; D

	dc.b	#BASS_OCT1_E,  #48, #ARCH48_24FD ; E
	dc.b	#BASS_OCT2_E,  #48, #ARCH48_24FD ; E

	dc.b	#BASS_OCT1_FS, #96, #ARCH96_72FD ; F#

	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT	; rest

	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT	; rest

Spelunker1Track2Stops
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker1Track2Stops
	dc.b	#>Spelunker1Track2Stops
  ENDIF ; (IF MUTE_TRACK2)

;================
Spelunker1Track3
;================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.
  IF MUTE_TRACK3
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker1Track3
	dc.b	#>Spelunker1Track3
  ELSE
	; This track has no music
Spelunker1Track3Stops
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT	; rest
	dc.b	#$FF
	dc.b	#<Spelunker1Track3Stops
	dc.b	#>Spelunker1Track3Stops
  ENDIF ; (IF MUTE_TRACK3)

;================
Spelunker1Track4
;================
	; Frequency, length, Effect
	; $FF means it's over, loop back.
  IF MUTE_TRACK4
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker1Track4
	dc.b	#>Spelunker1Track4
  ELSE
	; This track has no music
Spelunker1Track4Stops
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT	; rest
	dc.b	#$FF
	dc.b	#<Spelunker1Track4Stops
	dc.b	#>Spelunker1Track4Stops
  ENDIF ; (IF MUTE_TRACK4)
