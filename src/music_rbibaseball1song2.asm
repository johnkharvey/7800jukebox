RBIBASEBALL1SONG2_PLAY_PHRASE1  set     1
RBIBASEBALL1SONG2_PLAY_PHRASE2  set     1

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
RBIBaseball1Song2Track1
;=================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK1
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<RBIBaseball1Song2Track1
	dc.b	#>RBIBaseball1Song2Track1
  ELSE

  IF RBIBASEBALL1SONG2_PLAY_PHRASE1
        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_G,  #24, #ARCH48_24FD ; G
        dc.b    #MAIN_OCT4_G,  #18, #ARCH24_16FD ; G
        dc.b    #MAIN_OCT4_G,  #6,  #ARCH12_16EX ; G
        dc.b    #MAIN_OCT4_B,  #12, #ARCH12_16EX ; B
        dc.b    #MAIN_OCT4_G,  #24, #ARCH48_24FD ; G
        dc.b    #MAIN_OCT4_D,  #12, #ARCH12_16EX ; D

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_G,  #24, #ARCH48_24FD ; G
        dc.b    #MAIN_OCT4_G,  #18, #ARCH24_16FD ; G
        dc.b    #MAIN_OCT4_G,  #6,  #ARCH12_16EX ; G
        dc.b    #MAIN_OCT4_B,  #12, #ARCH12_16EX ; B
        dc.b    #MAIN_OCT4_G,  #24, #ARCH48_24FD ; G
        dc.b    #MAIN_OCT4_D,  #12, #ARCH12_16EX ; D

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_G,  #24, #ARCH48_24FD ; G
        dc.b    #MAIN_OCT4_G,  #18, #ARCH24_16FD ; G
        dc.b    #MAIN_OCT4_G,  #6,  #ARCH12_16EX ; G
        dc.b    #MAIN_OCT4_B,  #12, #ARCH12_16EX ; B
        dc.b    #MAIN_OCT4_G,  #24, #ARCH48_24FD ; G
        dc.b    #MAIN_OCT4_B,  #12, #ARCH12_16EX ; B

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_D,  #72, #ARCH96_72FD ; D
        dc.b    #MAIN_OCT5_DS, #24, #ARCH24_16FD ; D#
  ENDIF

  IF RBIBASEBALL1SONG2_PLAY_PHRASE2
        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_E,  #18, #ARCH24_16FD ; E
        dc.b    #MAIN_OCT5_E,  #6,  #ARCH12_16EX ; E
        dc.b    #MAIN_OCT5_E,  #12, #ARCH12_16EX ; E
        dc.b    #MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
        dc.b    #MAIN_OCT5_E,  #24, #ARCH24_16FD ; E
        dc.b    #RESTNOSOUND,  #24, #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_D,  #18, #ARCH24_16FD ; D
        dc.b    #MAIN_OCT5_D,  #6,  #ARCH12_16EX ; D
        dc.b    #MAIN_OCT5_D,  #12, #ARCH12_16EX ; D
        dc.b    #MAIN_OCT4_B,  #12, #ARCH12_16EX ; B
        dc.b    #MAIN_OCT5_D,  #24, #ARCH24_16FD ; D
        dc.b    #RESTNOSOUND,  #24, #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
        dc.b    #MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
        dc.b    #MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
        dc.b    #RESTNOSOUND,  #12, #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_B,  #12, #ARCH12_16EX ; B
        dc.b    #MAIN_OCT4_B,  #12, #ARCH12_16EX ; B
        dc.b    #MAIN_OCT4_B,  #12, #ARCH12_16EX ; B
        dc.b    #RESTNOSOUND,  #12, #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_A,  #24, #ARCH24_16FD ; A
        dc.b    #MAIN_OCT4_A,  #18, #ARCH24_16FD ; A
        dc.b    #MAIN_OCT4_A,  #6,  #ARCH12_16EX ; A
        dc.b    #MAIN_OCT5_D,  #24, #ARCH24_16FD ; D
        dc.b    #RESTNOSOUND,  #24, #RESTDEFAULT ; rest
  ENDIF

	dc.b	#$FF
	dc.b	#<RBIBaseball1Song2Track1
	dc.b	#>RBIBaseball1Song2Track1

  ENDIF ; (IF MUTE_TRACK1)

;================
RBIBaseball1Song2Track2
;================
; Uses pokey_notes column H (brown)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK2
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<RBIBaseball1Song2Track2
	dc.b	#>RBIBaseball1Song2Track2
  ELSE

  IF RBIBASEBALL1SONG2_PLAY_PHRASE1
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_G,  #6,  #VOL04REST02 ; G
        dc.b    #RESTNOSOUND,  #18, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_D,  #6,  #VOL04REST02 ; D
        dc.b    #RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_D,  #6,  #VOL04REST02 ; D
	dc.b	#BASS_OCT2_G,  #6,  #VOL04REST02 ; G
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_D,  #6,  #VOL04REST02 ; D
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_E,  #6,  #VOL04REST02 ; E
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_FS, #6,  #VOL04REST02 ; F#
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT2_G,  #6,  #VOL04REST02 ; G
        dc.b    #RESTNOSOUND,  #18, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_D,  #6,  #VOL04REST02 ; D
        dc.b    #RESTNOSOUND,  #12, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_D,  #6,  #VOL04REST02 ; D
        dc.b    #BASS_OCT2_G,  #6,  #VOL04REST02 ; G
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_D,  #6,  #VOL04REST02 ; D
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_E,  #6,  #VOL04REST02 ; E
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_FS, #6,  #VOL04REST02 ; F#
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT2_G,  #6,  #VOL04REST02 ; G
        dc.b    #RESTNOSOUND,  #18, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_D,  #6,  #VOL04REST02 ; D
        dc.b    #RESTNOSOUND,  #12, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_D,  #6,  #VOL04REST02 ; D
        dc.b    #BASS_OCT2_G,  #6,  #VOL04REST02 ; G
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_D,  #6,  #VOL04REST02 ; D
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_E,  #6,  #VOL04REST02 ; E
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_FS, #6,  #VOL04REST02 ; F#
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT2_G,  #6,  #VOL04REST02 ; G
        dc.b    #RESTNOSOUND,  #18, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_D,  #6,  #VOL04REST02 ; D
        dc.b    #RESTNOSOUND,  #12, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_D,  #6,  #VOL04REST02 ; D
        dc.b    #BASS_OCT2_G,  #6,  #VOL04REST02 ; G
        dc.b    #RESTNOSOUND,  #18, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_B,  #18, #VOL04REST02 ; B
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
  ENDIF

  IF RBIBASEBALL1SONG2_PLAY_PHRASE2
        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT3_C,  #6,  #VOL04REST02 ; C
        dc.b    #RESTNOSOUND,  #12, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT3_C,  #6,  #VOL04REST02 ; C
        dc.b    #BASS_OCT3_C,  #6,  #VOL04REST02 ; C
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_G,  #6,  #VOL04REST02 ; G
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT3_C,  #6,  #VOL04REST02 ; C
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_G,  #6,  #VOL04REST02 ; G
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_E,  #6,  #VOL04REST02 ; E
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_G,  #6,  #VOL04REST02 ; G
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT2_B,  #6,  #VOL04REST02 ; B
        dc.b    #RESTNOSOUND,  #12, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_B,  #6,  #VOL04REST02 ; B
        dc.b    #BASS_OCT2_B,  #6,  #VOL04REST02 ; B
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_G,  #6,  #VOL04REST02 ; G
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_B,  #6,  #VOL04REST02 ; B
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_G,  #6,  #VOL04REST02 ; G
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_D,  #6,  #VOL04REST02 ; D
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_G,  #6,  #VOL04REST02 ; G
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT2_A,  #6,  #VOL04REST02 ; A
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_A,  #6,  #VOL04REST02 ; A
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_D,  #6,  #VOL04REST02 ; D
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_B,  #6,  #VOL04REST02 ; B
        dc.b    #BASS_OCT2_FS, #6,  #VOL04REST02 ; F#
        dc.b    #BASS_OCT2_G,  #6,  #VOL04REST02 ; G
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_G,  #6,  #VOL04REST02 ; G
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_D,  #6,  #VOL04REST02 ; D
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_G,  #6,  #VOL04REST02 ; G
        dc.b    #BASS_OCT2_D,  #6,  #VOL04REST02 ; D

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT2_FS, #6,  #VOL04REST02 ; F#
        dc.b    #RESTNOSOUND,  #18, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_D,  #6,  #VOL04REST02 ; D
        dc.b    #RESTNOSOUND,  #18, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_FS, #6,  #VOL04REST02 ; F#
        dc.b    #RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT2_A,  #6,  #VOL04REST02 ; A
        dc.b    #BASS_OCT2_B,  #6,  #VOL04REST02 ; B
        dc.b    #BASS_OCT3_C,  #6,  #VOL04REST02 ; C
        dc.b    #BASS_OCT3_D,  #6,  #VOL04REST02 ; D
        dc.b    #BASS_OCT3_E,  #6,  #VOL04REST02 ; E
        dc.b    #BASS_OCT3_FS, #6,  #VOL04REST02 ; F#
  ENDIF

	dc.b	#$FF
	dc.b	#<RBIBaseball1Song2Track2
	dc.b	#>RBIBaseball1Song2Track2

  ENDIF ; (IF MUTE_TRACK2)

;================
RBIBaseball1Song2Track3
;================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK3
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<RBIBaseball1Song2Track3
	dc.b	#>RBIBaseball1Song2Track3
  ELSE

	; This track has no music
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<RBIBaseball1Song2Track3
	dc.b	#>RBIBaseball1Song2Track3
  ENDIF ; (IF MUTE_TRACK3)

;================
RBIBaseball1Song2Track4
;================
	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK4
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<RBIBaseball1Song2Track4
	dc.b	#>RBIBaseball1Song2Track4
  ELSE

        ; This track has no music
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<RBIBaseball1Song2Track4
	dc.b	#>RBIBaseball1Song2Track4

  ENDIF ; (IF MUTE_TRACK4)

