RBIBASEBALL1SONG1_PLAY_PHRASE1	set	1
RBIBASEBALL1SONG1_PLAY_PHRASE2	set	1

MUTE_TRACK1		set	0
MUTE_TRACK2		set	0
MUTE_TRACK3		set	0
MUTE_TRACK4		set	0

; Drum equates
BASSDRUM1		equ	$5C
HIGHSNARE		equ	$07
HIGHERSNARE		equ	$01
SNAREDRUM		equ	$0E

;=================
RBIBaseball1Song1Track1
;=================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK1
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<RBIBaseball1Song1Track1
	dc.b	#>RBIBaseball1Song1Track1
  ELSE

  IF RBIBASEBALL1SONG1_PLAY_PHRASE1
	; 84 (7*12)
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_A,  #7,  #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_A,  #7,  #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_A,  #7,  #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_A,  #7,  #ARCH12_16EX ; A
	dc.b	#RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_G,  #7,  #ARCH12_16EX ; G
	dc.b	#MAIN_OCT4_A,  #7,  #ARCH12_16EX ; A
	dc.b	#RESTNOSOUND,  #35, #RESTDEFAULT ; rest

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT5_A,  #7,  #ARCH12_16EX ; A
	dc.b	#MAIN_OCT5_A,  #7,  #ARCH12_16EX ; A
	dc.b	#MAIN_OCT5_A,  #7,  #ARCH12_16EX ; A
	dc.b	#MAIN_OCT5_A,  #7,  #ARCH12_16EX ; A
	dc.b	#RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT5_G,  #7,  #ARCH12_16EX ; G
	dc.b	#MAIN_OCT5_A,  #7,  #ARCH12_16EX ; A
	dc.b	#RESTNOSOUND,  #35, #RESTDEFAULT ; rest

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_A,  #7,  #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_A,  #7,  #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_A,  #7,  #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_A,  #7,  #ARCH12_16EX ; A
	dc.b	#RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_G,  #7,  #ARCH12_16EX ; G
	dc.b	#MAIN_OCT4_FS, #7,  #ARCH12_16EX ; F#
	dc.b	#RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_G,  #7,  #ARCH12_16EX ; G
	dc.b	#MAIN_OCT4_A,  #7,  #ARCH12_16EX ; A
	dc.b	#RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_B,  #7,  #ARCH12_16EX ; B

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_A,  #7,  #ARCH12_16EX ; A
	dc.b	#RESTNOSOUND,  #14, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_A,  #7,  #ARCH12_16EX ; A
	dc.b	#RESTNOSOUND,  #35, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_A,  #7,  #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_B,  #7,  #ARCH12_16EX ; B
	dc.b	#MAIN_OCT5_CS, #7,  #ARCH12_16EX ; C#
  ENDIF

  IF RBIBASEBALL1SONG1_PLAY_PHRASE2
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT5_D,  #21,  #ARCH24_16FD ; D
	dc.b	#MAIN_OCT4_A,  #21,  #ARCH24_16FD ; A
	dc.b	#MAIN_OCT4_FS, #21,  #ARCH24_16FD ; F#
	dc.b	#MAIN_OCT4_D,  #21,  #ARCH24_16FD ; D

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_B,  #48, #ARCH48_24FD ; B
	dc.b	#RESTNOSOUND,  #15, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_B,  #7,  #ARCH12_16EX ; B
	dc.b	#MAIN_OCT5_CS, #7,  #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT4_B,  #7,  #ARCH12_16EX ; B

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_A,  #7,  #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_GS, #7,  #ARCH12_16EX ; G#
	dc.b	#MAIN_OCT4_A,  #7,  #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_B,  #7,  #ARCH12_16EX ; B
	dc.b	#MAIN_OCT4_A,  #7,  #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_B,  #7,  #ARCH12_16EX ; B
	dc.b	#MAIN_OCT5_CS, #21, #ARCH24_16FD ; C#
	dc.b	#MAIN_OCT5_E,  #21, #ARCH24_16FD ; E

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT5_D,  #48, #ARCH48_24FD ; D
	dc.b	#RESTNOSOUND,  #36, #RESTDEFAULT ; rest
  ENDIF

RBIBaseball1Song1Track1Stops
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<RBIBaseball1Song1Track1Stops
	dc.b	#>RBIBaseball1Song1Track1Stops

  ENDIF ; (IF MUTE_TRACK1)

;================
RBIBaseball1Song1Track2
;================
; Uses pokey_notes column H (brown)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK2
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<RBIBaseball1Song1Track2
	dc.b	#>RBIBaseball1Song1Track2
  ELSE

  IF RBIBASEBALL1SONG1_PLAY_PHRASE1
	; Uses pokey_notes column H (brown)
	dc.b	#RESTNOSOUND,  #63, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_A,  #7,  #VOL04REST02 ; A
	dc.b	#RESTNOSOUND,  #14, #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#RESTNOSOUND,  #63, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_A,  #7,  #VOL04REST02 ; A
	dc.b	#RESTNOSOUND,  #14, #RESTDEFAULT ; rest

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_A,  #7,  #VOL04REST02 ; A
	dc.b	#BASS_OCT2_A,  #7,  #VOL04REST02 ; A
	dc.b	#BASS_OCT2_A,  #7,  #VOL04REST02 ; A
	dc.b	#BASS_OCT2_A,  #7,  #VOL04REST02 ; A
	dc.b	#RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_A,  #7,  #VOL04REST02 ; A
	dc.b	#BASS_OCT3_A,  #7,  #VOL04REST02 ; A
	dc.b	#BASS_OCT3_A,  #7,  #VOL04REST02 ; A
	dc.b	#BASS_OCT3_A,  #7,  #VOL04REST02 ; A
	dc.b	#BASS_OCT3_A,  #7,  #VOL04REST02 ; A
	dc.b	#RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_A,  #7,  #VOL04REST02 ; A

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_A,  #7,  #VOL04REST02 ; A
	dc.b	#RESTNOSOUND,  #14, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_A,  #7,  #VOL04REST02 ; A
	dc.b	#RESTNOSOUND,  #35, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_A,  #7,  #VOL04REST02 ; A
	dc.b	#BASS_OCT3_FS, #7,  #VOL04REST02 ; F#
	dc.b	#BASS_OCT3_E,  #7,  #VOL04REST02 ; E
  ENDIF

  IF RBIBASEBALL1SONG1_PLAY_PHRASE2
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT3_D,  #7,  #VOL04REST02 ; D
	dc.b	#RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT4_D,  #7,  #VOL04REST02 ; D
	dc.b	#BASS_OCT3_D,  #7,  #VOL04REST02 ; D
	dc.b	#RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT4_D,  #7,  #VOL04REST02 ; D
	dc.b	#BASS_OCT3_D,  #7,  #VOL04REST02 ; D
	dc.b	#RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT4_D,  #7,  #VOL04REST02 ; D
	dc.b	#BASS_OCT4_CS, #7,  #VOL04REST02 ; C#
	dc.b	#BASS_OCT3_B,  #7,  #VOL04REST02 ; B
	dc.b	#BASS_OCT3_A,  #7,  #VOL04REST02 ; A

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT3_G,  #7,  #VOL04REST02 ; G
	dc.b	#RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT4_G,  #7,  #VOL04REST02 ; G
	dc.b	#BASS_OCT3_G,  #7,  #VOL04REST02 ; G
	dc.b	#RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT4_G,  #7,  #VOL04REST02 ; G
	dc.b	#BASS_OCT3_G,  #7,  #VOL04REST02 ; G
	dc.b	#RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT4_G,  #7,  #VOL04REST02 ; G
	dc.b	#BASS_OCT4_G,  #7,  #VOL04REST02 ; G
	dc.b	#BASS_OCT4_D,  #7,  #VOL04REST02 ; D
	dc.b	#BASS_OCT4_G,  #7,  #VOL04REST02 ; G

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_A,  #7,  #VOL04REST02 ; A - low
	dc.b	#RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_A,  #7,  #VOL04REST02 ; A
	dc.b	#BASS_OCT3_G,  #7,  #VOL04REST02 ; G
	dc.b	#RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT4_G,  #7,  #VOL04REST02 ; G
	dc.b	#BASS_OCT3_FS, #7,  #VOL04REST02 ; F#
	dc.b	#RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT4_FS, #7,  #VOL04REST02 ; F# - sounds a little out of tune
	dc.b	#BASS_OCT3_E,  #7,  #VOL04REST02 ; E
	dc.b	#RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT4_E,  #7,  #VOL04REST02 ; E

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT3_D,  #7,  #VOL04REST02 ; D
	dc.b	#RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_A,  #7,  #VOL04REST02 ; A
	dc.b	#BASS_OCT2_B,  #7,  #VOL04REST02 ; B
	dc.b	#BASS_OCT2_B,  #7,  #VOL04REST02 ; B
	dc.b	#BASS_OCT2_B,  #7,  #VOL04REST02 ; B
	dc.b	#BASS_OCT3_D,  #7,  #VOL04REST02 ; D
	dc.b	#RESTNOSOUND,  #14, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_D,  #7,  #VOL04REST02 ; D
	dc.b	#RESTNOSOUND,  #14, #RESTDEFAULT ; rest
  ENDIF

RBIBaseball1Song1Track2Stops
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<RBIBaseball1Song1Track2Stops
	dc.b	#>RBIBaseball1Song1Track2Stops

  ENDIF ; (IF MUTE_TRACK2)

;================
RBIBaseball1Song1Track3
;================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK3
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<RBIBaseball1Song1Track3
	dc.b	#>RBIBaseball1Song1Track3
  ELSE

  IF RBIBASEBALL1SONG1_PLAY_PHRASE1
	; 84 (7*12)
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT3_A,  #7,  #ARCH12_16EX ; A
	dc.b	#MAIN_OCT3_A,  #7,  #ARCH12_16EX ; A
	dc.b	#MAIN_OCT3_A,  #7,  #ARCH12_16EX ; A
	dc.b	#MAIN_OCT3_A,  #7,  #ARCH12_16EX ; A
	dc.b	#RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT3_G,  #7,  #ARCH12_16EX ; A
	dc.b	#MAIN_OCT3_A,  #7,  #ARCH12_16EX ; A
	dc.b	#RESTNOSOUND,  #35, #RESTDEFAULT ; rest

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT3_A,  #7,  #ARCH12_16EX ; A
	dc.b	#MAIN_OCT3_A,  #7,  #ARCH12_16EX ; A
	dc.b	#MAIN_OCT3_A,  #7,  #ARCH12_16EX ; A
	dc.b	#MAIN_OCT3_A,  #7,  #ARCH12_16EX ; A
	dc.b	#RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT3_G,  #7,  #ARCH12_16EX ; A
	dc.b	#MAIN_OCT3_A,  #7,  #ARCH12_16EX ; A
	dc.b	#RESTNOSOUND,  #35, #RESTDEFAULT ; rest

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_CS, #7,  #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT4_CS, #7,  #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT4_CS, #7,  #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT4_CS, #7,  #ARCH12_16EX ; C#
	dc.b	#RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT3_B,  #7,  #ARCH12_16EX ; B
	dc.b	#MAIN_OCT3_A,  #7,  #ARCH12_16EX ; A
	dc.b	#RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT3_B,  #7,  #ARCH12_16EX ; B
	dc.b	#MAIN_OCT4_CS, #7,  #ARCH12_16EX ; C#
	dc.b	#RESTNOSOUND,  #7,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_D,  #7,  #ARCH12_16EX ; D

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_CS, #7,  #ARCH12_16EX ; C#
	dc.b	#RESTNOSOUND,  #14, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_CS, #7,  #ARCH12_16EX ; C#
	dc.b	#RESTNOSOUND,  #35, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_A,  #7,  #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_A,  #7,  #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_A,  #7,  #ARCH12_16EX ; A

  ENDIF

  IF RBIBASEBALL1SONG1_PLAY_PHRASE2
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_FS, #21, #ARCH24_16FD ; F#
	dc.b	#MAIN_OCT4_FS, #21, #ARCH24_16FD ; F#
	dc.b	#MAIN_OCT3_A,  #21, #ARCH24_16FD ; A
	dc.b	#MAIN_OCT3_A,  #21, #ARCH24_16FD ; A

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_D,  #21, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_G,  #7,  #VOL04_CONST ; G
	dc.b	#MAIN_OCT4_B,  #7,  #VOL04_CONST ; B
	dc.b	#MAIN_OCT5_D,  #7,  #VOL04_CONST ; D
	dc.b	#MAIN_OCT5_G,  #7,  #VOL04_CONST ; G
	dc.b	#RESTNOSOUND,  #14, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_D,  #7,  #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_E,  #7,  #ARCH12_16EX ; E
	dc.b	#MAIN_OCT4_D,  #7,  #ARCH12_16EX ; D

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_A,  #21, #ARCH24_16FD ; A
	dc.b	#MAIN_OCT4_A,  #21, #ARCH24_16FD ; A
	dc.b	#MAIN_OCT4_A,  #21, #ARCH24_16FD ; A
	dc.b	#MAIN_OCT4_A,  #21, #ARCH24_16FD ; A

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_FS, #48, #ARCH48_24FD ; F#
	dc.b	#RESTNOSOUND,  #36, #RESTDEFAULT ; rest
  ENDIF

RBIBaseball1Song1Track3Stops
	; This track has no music
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<RBIBaseball1Song1Track3Stops
	dc.b	#>RBIBaseball1Song1Track3Stops
  ENDIF ; (IF MUTE_TRACK3)

;================
RBIBaseball1Song1Track4
;================
	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK4
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<RBIBaseball1Song1Track4
	dc.b	#>RBIBaseball1Song1Track4
  ELSE

  IF RBIBASEBALL1SONG1_PLAY_PHRASE1
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #10, #RESTDEFAULT ; rest

	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #17, #RESTDEFAULT ; rest

	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST

	;===============

	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #10, #RESTDEFAULT ; rest

	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #17, #RESTDEFAULT ; rest

	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest

	;==============

	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #10, #RESTDEFAULT ; rest

	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #10, #RESTDEFAULT ; rest

	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest

	;============

	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #17, #RESTDEFAULT ; rest

	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #38, #RESTDEFAULT ; rest

	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
  ENDIF

  IF RBIBASEBALL1SONG1_PLAY_PHRASE2
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #10, #RESTDEFAULT ; rest

	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #10, #RESTDEFAULT ; rest

	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #10, #RESTDEFAULT ; rest

	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest

	;===========

	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #10, #RESTDEFAULT ; rest

	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #10, #RESTDEFAULT ; rest

	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #10, #RESTDEFAULT ; rest

	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest

	;============

	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #10, #RESTDEFAULT ; rest

	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #10, #RESTDEFAULT ; rest

	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #10, #RESTDEFAULT ; rest

	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest

	;============

	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #10, #RESTDEFAULT ; rest

	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #3, #RESTDEFAULT ; rest
	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #17, #RESTDEFAULT ; rest

	dc.b	#HIGHERSNARE, #4, #VOL02_CONST
	dc.b	#$00, #17, #RESTDEFAULT ; rest

	;===========
  ENDIF

RBIBaseball1Song1Track4Stops
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<RBIBaseball1Song1Track4Stops
	dc.b	#>RBIBaseball1Song1Track4Stops

  ENDIF ; (IF MUTE_TRACK4)

