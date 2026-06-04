SPELUNKER2_PLAY_PHRASE1	set	1
SPELUNKER2_PLAY_PHRASE2	set	1
SPELUNKER2_PLAY_PHRASE3	set	1
SPELUNKER2_PLAY_PHRASE4	set	1
SPELUNKER2_PLAY_PHRASE5	set	1
SPELUNKER2_PLAY_PHRASE6	set	1
MUTE_TRACK1		set	0
MUTE_TRACK2		set	0
MUTE_TRACK3		set	0
MUTE_TRACK4		set	0

; Drum equates
BASSDRUM1		equ	$5C
HIGHSNARE		equ	$07
SNAREDRUM		equ	$0E

;================
Spelunker2Track1
;================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK1
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker2Track1
	dc.b	#>Spelunker2Track1
  ELSE

  IF SPELUNKER2_PLAY_PHRASE1
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_B,  #18, #VOL06REST02 ; B
	dc.b	#MAIN_OCT4_B,  #6,  #VOL06REST02 ; B
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_GS, #12, #ARCH12_16EX ; G#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_E,  #12, #ARCH12_16EX ; E

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_DS, #18, #ARCH48_24FD ; D#
	dc.b	#MAIN_OCT4_E,  #6,  #ARCH48_24FD ; E
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_DS, #12, #ARCH12_16EX ; D#
	dc.b	#MAIN_OCT3_B,  #24, #ARCH48_24FD ; B
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE2
	; repeat
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_B,  #18, #VOL06REST02 ; B
	dc.b	#MAIN_OCT4_B,  #6,  #VOL06REST02 ; B
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_GS, #12, #ARCH12_16EX ; G#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_E,  #12, #ARCH12_16EX ; E

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_DS, #18, #ARCH48_24FD ; D#
	dc.b	#MAIN_OCT4_E,  #6,  #ARCH48_24FD ; E
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_DS, #12, #ARCH12_16EX ; D#
	dc.b	#MAIN_OCT3_B,  #24, #ARCH48_24FD ; B
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE3
	; change up
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_B,  #18, #ARCH48_24FD ; B
	dc.b	#MAIN_OCT4_B,  #6,  #ARCH48_24FD ; B
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT5_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT5_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT4_B,  #24, #ARCH48_24FD ; B

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT5_D,  #6,  #ARCH48_24FD ; D
	dc.b	#MAIN_OCT5_CS, #6,  #ARCH48_24FD ; C#
	dc.b	#MAIN_OCT4_B,  #12, #ARCH12_16EX ; B
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT5_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT4_B,  #24, #ARCH48_24FD ; B
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE4
	; and repeat again
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_B,  #18, #VOL06REST02 ; B
	dc.b	#MAIN_OCT4_B,  #6,  #VOL06REST02 ; B
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_GS, #12, #ARCH12_16EX ; G#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_E,  #12, #ARCH12_16EX ; E

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_DS, #18, #ARCH48_24FD ; D#
	dc.b	#MAIN_OCT4_E,  #6,  #ARCH48_24FD ; E
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_DS, #12, #ARCH12_16EX ; D#
	dc.b	#MAIN_OCT3_B,  #24, #ARCH48_24FD ; B
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE5
	; change up 2
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #72, #TREMOLOLONG ; G - tremolo
	dc.b	#MAIN_OCT4_B,  #12, #ARCH12_16EX ; B
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT5_CS, #18, #ARCH48_24FD ; C#
	dc.b	#MAIN_OCT4_B,  #9,  #ARCH12_16EX ; B
	dc.b	#RESTNOSOUND,  #9,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_A,  #60, #TREMOLOLONG ; A - tremolo
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE6
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_B,  #48, #TREMOLOLONG ; B - tremolo
	dc.b	#MAIN_OCT5_DS, #12, #ARCH12_16EX ; D#
	dc.b	#MAIN_OCT5_CS, #12, #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT4_B,  #12, #ARCH12_16EX ; B
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT4_GS, #12, #ARCH12_16EX ; G#
	dc.b	#MAIN_OCT4_FS, #12, #ARCH12_16EX ; F#
	dc.b	#MAIN_OCT4_GS, #12, #ARCH12_16EX ; G#
	dc.b	#MAIN_OCT4_FS, #24, #ARCH48_24FD ; F#
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest
  ENDIF

	dc.b	#$FF
	dc.b	#<Spelunker2Track1
	dc.b	#>Spelunker2Track1

  ENDIF ; (IF MUTE_TRACK1)

;================
Spelunker2Track2
;================
; Uses pokey_notes column H (brown)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK2
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker2Track2
	dc.b	#>Spelunker2Track2
  ELSE

  IF SPELUNKER2_PLAY_PHRASE1
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_B,  #18, #VOL06REST02 ; B
	dc.b	#BASS_OCT1_B,  #6,  #VOL06REST02 ; B
	dc.b	#BASS_OCT2_B,  #12, #VOL06REST02 ; B
	dc.b	#BASS_OCT2_FS, #12, #VOL06REST02 ; F#
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_GS, #12, #VOL06REST02 ; G#
	dc.b	#BASS_OCT2_FS, #12, #VOL06REST02 ; F#
	dc.b	#BASS_OCT2_GS, #12, #VOL06REST02 ; G#

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_B,  #18, #VOL06REST02 ; B
	dc.b	#BASS_OCT1_B,  #6,  #VOL06REST02 ; B
	dc.b	#BASS_OCT2_B,  #12, #VOL06REST02 ; B
	dc.b	#BASS_OCT2_FS, #12, #VOL06REST02 ; F#
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_GS, #12, #VOL06REST02 ; G#
	dc.b	#BASS_OCT2_A,  #24, #VOL06REST02 ; A
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE2
	; repeat original track
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_B,  #18, #VOL06REST02 ; B
	dc.b	#BASS_OCT1_B,  #6,  #VOL06REST02 ; B
	dc.b	#BASS_OCT2_B,  #12, #VOL06REST02 ; B
	dc.b	#BASS_OCT2_FS, #12, #VOL06REST02 ; F#
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_GS, #12, #VOL06REST02 ; G#
	dc.b	#BASS_OCT2_FS, #12, #VOL06REST02 ; F#
	dc.b	#BASS_OCT2_GS, #12, #VOL06REST02 ; G#

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_B,  #18, #VOL06REST02 ; B
	dc.b	#BASS_OCT1_B,  #6,  #VOL06REST02 ; B
	dc.b	#BASS_OCT2_B,  #12, #VOL06REST02 ; B
	dc.b	#BASS_OCT2_FS, #12, #VOL06REST02 ; F#
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_GS, #12, #VOL06REST02 ; G#
	dc.b	#BASS_OCT2_A,  #24, #VOL06REST02 ; A
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE3
	; change up
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_E,  #18, #VOL06REST02 ; E 
	dc.b	#BASS_OCT2_E,  #6,  #VOL06REST02 ; E
	dc.b	#BASS_OCT2_B,  #12, #VOL06REST02 ; B
	dc.b	#BASS_OCT2_E,  #12, #VOL06REST02 ; E
	dc.b	#BASS_OCT2_G,  #12, #VOL06REST02 ; G (F double-sharp)
	dc.b	#BASS_OCT2_GS, #12, #VOL06REST02 ; G#
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A (G double-sharp)
	dc.b	#BASS_OCT2_AS, #12, #VOL06REST02 ; A#

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_E,  #18, #VOL06REST02 ; E
	dc.b	#BASS_OCT2_E,  #6,  #VOL06REST02 ; E
	dc.b	#BASS_OCT2_B,  #12, #VOL06REST02 ; B
	dc.b	#BASS_OCT2_E,  #12, #VOL06REST02 ; E
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_GS, #12, #VOL06REST02 ; G#
	dc.b	#BASS_OCT2_FS, #12, #VOL06REST02 ; F#
	dc.b	#BASS_OCT2_GS, #12, #VOL06REST02 ; G#
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE4
	; repeat original track
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_B,  #18, #VOL06REST02 ; B
	dc.b	#BASS_OCT1_B,  #6,  #VOL06REST02 ; B
	dc.b	#BASS_OCT2_B,  #12, #VOL06REST02 ; B
	dc.b	#BASS_OCT2_FS, #12, #VOL06REST02 ; F#
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_GS, #12, #VOL06REST02 ; G#
	dc.b	#BASS_OCT2_FS, #12, #VOL06REST02 ; F#
	dc.b	#BASS_OCT2_GS, #12, #VOL06REST02 ; G#

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_B,  #18, #VOL06REST02 ; B
	dc.b	#BASS_OCT1_B,  #6,  #VOL06REST02 ; B
	dc.b	#BASS_OCT2_B,  #12, #VOL06REST02 ; B
	dc.b	#BASS_OCT2_FS, #12, #VOL06REST02 ; F#
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_GS, #12, #VOL06REST02 ; G#
	dc.b	#BASS_OCT2_A,  #24, #VOL06REST02 ; A
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE5
	; CODA
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_G,  #18, #VOL06REST02 ; G
	dc.b	#BASS_OCT2_D,  #6,  #VOL06REST02 ; D
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_G,  #24, #VOL06REST02 ; G
	dc.b	#BASS_OCT1_B,  #12, #VOL06REST02 ; B
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_G,  #12, #VOL06REST02 ; G

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_A,  #18, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_E,  #6,  #VOL06REST02 ; E
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_A,  #24, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_CS, #12, #VOL06REST02 ; C#
	dc.b	#BASS_OCT2_E,  #12, #VOL06REST02 ; E
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE6
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_B,  #18, #VOL06REST02 ; B
	dc.b	#BASS_OCT2_FS, #6,  #VOL06REST02 ; F#
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_B,  #24, #VOL06REST02 ; B
	dc.b	#BASS_OCT2_DS, #12, #VOL06REST02 ; D#
	dc.b	#BASS_OCT2_FS, #12, #VOL06REST02 ; F#
	dc.b	#BASS_OCT2_B,  #12, #VOL06REST02 ; B

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_GS, #12, #VOL06REST02 ; G#
	dc.b	#BASS_OCT2_FS, #12, #VOL06REST02 ; F#
	dc.b	#BASS_OCT2_GS, #12, #VOL06REST02 ; G#
	dc.b	#BASS_OCT2_FS, #24, #VOL06REST02 ; F#
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest
  ENDIF

	dc.b	#$FF
	dc.b	#<Spelunker2Track2
	dc.b	#>Spelunker2Track2

  ENDIF ; (IF MUTE_TRACK2)

;================
Spelunker2Track3
;================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK3
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker2Track3
	dc.b	#>Spelunker2Track3
  ELSE
	; This track has no music
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker2Track3
	dc.b	#>Spelunker2Track3
  ENDIF ; (IF MUTE_TRACK3)

;================
Spelunker2Track4
;================
	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK4
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker2Track4
	dc.b	#>Spelunker2Track4
  ELSE

  IF SPELUNKER2_PLAY_PHRASE1
	; Note: Try $03, $05, $07 for frequency
	dc.b	#RESTNOSOUND, #24, #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #21, #RESTDEFAULT ; rest
	dc.b	#RESTNOSOUND, #24, #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #21, #RESTDEFAULT ; rest

	dc.b	#RESTNOSOUND, #24, #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #21, #RESTDEFAULT ; rest
	dc.b	#RESTNOSOUND, #24, #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #21, #RESTDEFAULT ; rest
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE2
	dc.b	#RESTNOSOUND, #24, #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #21, #RESTDEFAULT ; rest
	dc.b	#RESTNOSOUND, #24, #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #21, #RESTDEFAULT ; rest
	
	dc.b	#RESTNOSOUND, #24, #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #21, #RESTDEFAULT ; rest
	dc.b	#RESTNOSOUND, #24, #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #21, #RESTDEFAULT ; rest
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE3
	dc.b	#RESTNOSOUND, #24, #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #21, #RESTDEFAULT ; rest
	dc.b	#RESTNOSOUND, #24, #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #21, #RESTDEFAULT ; rest

	dc.b	#RESTNOSOUND, #24, #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #21, #RESTDEFAULT ; rest
	dc.b	#RESTNOSOUND, #24, #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #21, #RESTDEFAULT ; rest
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE4
	dc.b	#RESTNOSOUND, #24, #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #21, #RESTDEFAULT ; rest
	dc.b	#RESTNOSOUND, #24, #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #21, #RESTDEFAULT ; rest

	dc.b	#RESTNOSOUND, #24, #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #21, #RESTDEFAULT ; rest
	dc.b	#RESTNOSOUND, #24, #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #21, #RESTDEFAULT ; rest
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE5
	dc.b	#RESTNOSOUND, #24, #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #21, #RESTDEFAULT ; rest
	dc.b	#RESTNOSOUND, #24, #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #21, #RESTDEFAULT ; rest

	dc.b	#RESTNOSOUND, #24, #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #21, #RESTDEFAULT ; rest
	dc.b	#RESTNOSOUND, #24, #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #21, #RESTDEFAULT ; rest
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE6
	dc.b	#RESTNOSOUND, #24, #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #21, #RESTDEFAULT ; rest
	dc.b	#RESTNOSOUND, #24, #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #21, #RESTDEFAULT ; rest

	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #9,  #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #9,  #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #9,  #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #9,  #RESTDEFAULT ; rest
	dc.b	#$01,  #3,  #0	; short snare-like sound
	dc.b	#RESTNOSOUND, #9,  #RESTDEFAULT ; rest
	dc.b	#RESTNOSOUND, #36, #RESTDEFAULT ; rest
  ENDIF

	; Loop back
	dc.b	#$FF
	dc.b	#<Spelunker2Track4
	dc.b	#>Spelunker2Track4

  ENDIF ; (IF MUTE_TRACK4)

