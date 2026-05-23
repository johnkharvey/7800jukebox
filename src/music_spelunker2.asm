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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker2Track1
	dc.b	#>Spelunker2Track1
  ELSE

  IF SPELUNKER2_PLAY_PHRASE1
	; Uses pokey_notes column P (green)
	dc.b	#$37, #18, #VOL06REST02 ; B
	dc.b	#$37, #6,  #VOL06REST02 ; B
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$4A, #12, #ARCH12_16EX ; F#
	dc.b	#$3E, #12, #ARCH12_16EX ; A
	dc.b	#$41, #12, #ARCH12_16EX ; G#
	dc.b	#$4A, #12, #ARCH12_16EX ; F#
	dc.b	#$53, #12, #ARCH12_16EX ; E

	; Uses pokey_notes column P (green)
	dc.b	#$58, #18, #ARCH48_24FD ; D#
	dc.b	#$53, #6,  #ARCH48_24FD ; E
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$4A, #12, #ARCH12_16EX ; F#
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$58, #12, #ARCH12_16EX ; D#
	dc.b	#$71, #24, #ARCH48_24FD ; B
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE2
	; repeat
	; Uses pokey_notes column P (green)
	dc.b	#$37, #18, #VOL06REST02 ; B
	dc.b	#$37, #6,  #VOL06REST02 ; B
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$4A, #12, #ARCH12_16EX ; F#
	dc.b	#$3E, #12, #ARCH12_16EX ; A
	dc.b	#$41, #12, #ARCH12_16EX ; G#
	dc.b	#$4A, #12, #ARCH12_16EX ; F#
	dc.b	#$53, #12, #ARCH12_16EX ; E

	; Uses pokey_notes column P (green)
	dc.b	#$58, #18, #ARCH48_24FD ; D#
	dc.b	#$53, #6,  #ARCH48_24FD ; E
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$4A, #12, #ARCH12_16EX ; F#
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$58, #12, #ARCH12_16EX ; D#
	dc.b	#$71, #24, #ARCH48_24FD ; B
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE3
	; change up
	; Uses pokey_notes column P (green)
	dc.b	#$37, #18, #ARCH48_24FD ; B
	dc.b	#$37, #6,  #ARCH48_24FD ; B
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$2F, #12, #ARCH12_16EX ; C#
	dc.b	#$2D, #12, #ARCH12_16EX ; D
	dc.b	#$2F, #12, #ARCH12_16EX ; C#
	dc.b	#$37, #24, #ARCH48_24FD ; B

	; Uses pokey_notes column P (green)
	dc.b	#$2D, #6,  #ARCH48_24FD ; D
	dc.b	#$2F, #6,  #ARCH48_24FD ; C#
	dc.b	#$37, #12, #ARCH12_16EX ; B
	dc.b	#$2D, #12, #ARCH12_16EX ; D
	dc.b	#$2F, #12, #ARCH12_16EX ; C#
	dc.b	#$37, #24, #ARCH48_24FD ; B
	dc.b	#$00, #24, #RESTDEFAULT ; rest
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE4
	; and repeat again
	; Uses pokey_notes column P (green)
	dc.b	#$37, #18, #VOL06REST02 ; B
	dc.b	#$37, #6,  #VOL06REST02 ; B
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$4A, #12, #ARCH12_16EX ; F#
	dc.b	#$3E, #12, #ARCH12_16EX ; A
	dc.b	#$41, #12, #ARCH12_16EX ; G#
	dc.b	#$4A, #12, #ARCH12_16EX ; F#
	dc.b	#$53, #12, #ARCH12_16EX ; E

	; Uses pokey_notes column P (green)
	dc.b	#$58, #18, #ARCH48_24FD ; D#
	dc.b	#$53, #6,  #ARCH48_24FD ; E
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$4A, #12, #ARCH12_16EX ; F#
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$58, #12, #ARCH12_16EX ; D#
	dc.b	#$71, #24, #ARCH48_24FD ; B
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE5
	; change up 2
	; Uses pokey_notes column P (green)
	dc.b	#$46, #72, #TREMOLOLONG ; G - tremolo
	dc.b	#$37, #12, #ARCH12_16EX ; B
	dc.b	#$2D, #12, #ARCH12_16EX ; D

	; Uses pokey_notes column P (green)
	dc.b	#$2F, #18, #ARCH48_24FD ; C#
	dc.b	#$37, #9,  #ARCH12_16EX ; B
	dc.b	#$00, #9,  #RESTDEFAULT ; rest
	dc.b	#$3E, #60, #TREMOLOLONG ; A - tremolo
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE6
	; Uses pokey_notes column P (green)
	dc.b	#$37, #48, #TREMOLOLONG ; B - tremolo
	dc.b	#$2A, #12, #ARCH12_16EX ; D#
	dc.b	#$2F, #12, #ARCH12_16EX ; C#
	dc.b	#$37, #12, #ARCH12_16EX ; B
	dc.b	#$4A, #12, #ARCH12_16EX ; F#

	; Uses pokey_notes column P (green)
	dc.b	#$3E, #12, #ARCH12_16EX ; A
	dc.b	#$41, #12, #ARCH12_16EX ; G#
	dc.b	#$4A, #12, #ARCH12_16EX ; F#
	dc.b	#$41, #12, #ARCH12_16EX ; G#
	dc.b	#$4A, #24, #ARCH48_24FD ; F#
	dc.b	#$00, #24, #RESTDEFAULT ; rest
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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker2Track2
	dc.b	#>Spelunker2Track2
  ELSE

  IF SPELUNKER2_PLAY_PHRASE1
	; Uses pokey_notes column H (brown)
	dc.b	#$7E, #18, #VOL06REST02 ; B
	dc.b	#$7E, #6,  #VOL06REST02 ; B
	dc.b	#$3F, #12, #VOL06REST02 ; B
	dc.b	#$54, #12, #VOL06REST02 ; F#
	dc.b	#$46, #12, #VOL06REST02 ; A
	dc.b	#$4B, #12, #VOL06REST02 ; G#
	dc.b	#$54, #12, #VOL06REST02 ; F#
	dc.b	#$4B, #12, #VOL06REST02 ; G#

	; Uses pokey_notes column H (brown)
	dc.b	#$7E, #18, #VOL06REST02 ; B
	dc.b	#$7E, #6,  #VOL06REST02 ; B
	dc.b	#$3F, #12, #VOL06REST02 ; B
	dc.b	#$54, #12, #VOL06REST02 ; F#
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$4B, #12, #VOL06REST02 ; G#
	dc.b	#$46, #24, #VOL06REST02 ; A
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE2
	; repeat original track
	; Uses pokey_notes column H (brown)
	dc.b	#$7E, #18, #VOL06REST02 ; B
	dc.b	#$7E, #6,  #VOL06REST02 ; B
	dc.b	#$3F, #12, #VOL06REST02 ; B
	dc.b	#$54, #12, #VOL06REST02 ; F#
	dc.b	#$46, #12, #VOL06REST02 ; A
	dc.b	#$4B, #12, #VOL06REST02 ; G#
	dc.b	#$54, #12, #VOL06REST02 ; F#
	dc.b	#$4B, #12, #VOL06REST02 ; G#

	; Uses pokey_notes column H (brown)
	dc.b	#$7E, #18, #VOL06REST02 ; B
	dc.b	#$7E, #6,  #VOL06REST02 ; B
	dc.b	#$3F, #12, #VOL06REST02 ; B
	dc.b	#$54, #12, #VOL06REST02 ; F#
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$4B, #12, #VOL06REST02 ; G#
	dc.b	#$46, #24, #VOL06REST02 ; A
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE3
	; change up
	; Uses pokey_notes column H (brown)
	dc.b	#$5E, #18, #VOL06REST02 ; E 
	dc.b	#$5E, #6,  #VOL06REST02 ; E
	dc.b	#$3F, #12, #VOL06REST02 ; B
	dc.b	#$5E, #12, #VOL06REST02 ; E
	dc.b	#$4F, #12, #VOL06REST02 ; G (F double-sharp)
	dc.b	#$4B, #12, #VOL06REST02 ; G#
	dc.b	#$46, #12, #VOL06REST02 ; A (G double-sharp)
	dc.b	#$42, #12, #VOL06REST02 ; A#

	; Uses pokey_notes column H (brown)
	dc.b	#$5E, #18, #VOL06REST02 ; E
	dc.b	#$5E, #6,  #VOL06REST02 ; E
	dc.b	#$3F, #12, #VOL06REST02 ; B
	dc.b	#$5E, #12, #VOL06REST02 ; E
	dc.b	#$46, #12, #VOL06REST02 ; A
	dc.b	#$4B, #12, #VOL06REST02 ; G#
	dc.b	#$54, #12, #VOL06REST02 ; F#
	dc.b	#$4B, #12, #VOL06REST02 ; G#
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE4
	; repeat original track
	; Uses pokey_notes column H (brown)
	dc.b	#$7E, #18, #VOL06REST02 ; B
	dc.b	#$7E, #6,  #VOL06REST02 ; B
	dc.b	#$3F, #12, #VOL06REST02 ; B
	dc.b	#$54, #12, #VOL06REST02 ; F#
	dc.b	#$46, #12, #VOL06REST02 ; A
	dc.b	#$4B, #12, #VOL06REST02 ; G#
	dc.b	#$54, #12, #VOL06REST02 ; F#
	dc.b	#$4B, #12, #VOL06REST02 ; G#

	; Uses pokey_notes column H (brown)
	dc.b	#$7E, #18, #VOL06REST02 ; B
	dc.b	#$7E, #6,  #VOL06REST02 ; B
	dc.b	#$3F, #12, #VOL06REST02 ; B
	dc.b	#$54, #12, #VOL06REST02 ; F#
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$4B, #12, #VOL06REST02 ; G#
	dc.b	#$46, #24, #VOL06REST02 ; A
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE5
	; CODA
	; Uses pokey_notes column H (brown)
	dc.b	#$9F, #18, #VOL06REST02 ; G
	dc.b	#$6A, #6,  #VOL06REST02 ; D
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$4F, #24, #VOL06REST02 ; G
	dc.b	#$7E, #12, #VOL06REST02 ; B
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$4F, #12, #VOL06REST02 ; G

	; Uses pokey_notes column H (brown)
	dc.b	#$8E, #18, #VOL06REST02 ; A
	dc.b	#$5E, #6,  #VOL06REST02 ; E
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$46, #24, #VOL06REST02 ; A
	dc.b	#$70, #12, #VOL06REST02 ; C#
	dc.b	#$5E, #12, #VOL06REST02 ; E
	dc.b	#$46, #12, #VOL06REST02 ; A
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE6
	; Uses pokey_notes column H (brown)
	dc.b	#$7E, #18, #VOL06REST02 ; B
	dc.b	#$54, #6,  #VOL06REST02 ; F#
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$3F, #24, #VOL06REST02 ; B
	dc.b	#$64, #12, #VOL06REST02 ; D#
	dc.b	#$54, #12, #VOL06REST02 ; F#
	dc.b	#$3F, #12, #VOL06REST02 ; B

	; Uses pokey_notes column H (brown)
	dc.b	#$46, #12, #VOL06REST02 ; A
	dc.b	#$4B, #12, #VOL06REST02 ; G#
	dc.b	#$54, #12, #VOL06REST02 ; F#
	dc.b	#$4B, #12, #VOL06REST02 ; G#
	dc.b	#$54, #24, #VOL06REST02 ; F#
	dc.b	#$00, #24, #RESTDEFAULT ; rest
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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker2Track4
	dc.b	#>Spelunker2Track4
  ELSE
	; This track has no music
	dc.b	#$00, #96, #RESTDEFAULT ; rest
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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker2Track4
	dc.b	#>Spelunker2Track4
  ELSE

  IF SPELUNKER2_PLAY_PHRASE1
	; Note: Try $03, $05, $07 for frequency
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #21, #RESTDEFAULT ; rest
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #21, #RESTDEFAULT ; rest

	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #21, #RESTDEFAULT ; rest
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #21, #RESTDEFAULT ; rest
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE2
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #21, #RESTDEFAULT ; rest
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #21, #RESTDEFAULT ; rest
	
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #21, #RESTDEFAULT ; rest
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #21, #RESTDEFAULT ; rest
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE3
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #21, #RESTDEFAULT ; rest
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #21, #RESTDEFAULT ; rest

	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #21, #RESTDEFAULT ; rest
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #21, #RESTDEFAULT ; rest
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE4
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #21, #RESTDEFAULT ; rest
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #21, #RESTDEFAULT ; rest

	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #21, #RESTDEFAULT ; rest
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #21, #RESTDEFAULT ; rest
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE5
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #21, #RESTDEFAULT ; rest
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #21, #RESTDEFAULT ; rest

	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #21, #RESTDEFAULT ; rest
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #21, #RESTDEFAULT ; rest
  ENDIF

  IF SPELUNKER2_PLAY_PHRASE6
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #21, #RESTDEFAULT ; rest
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #21, #RESTDEFAULT ; rest

	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #9,  #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #9,  #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #9,  #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #9,  #RESTDEFAULT ; rest
	dc.b	#$01, #3,  #0	; short snare-like sound
	dc.b	#$00, #9,  #RESTDEFAULT ; rest
	dc.b	#$00, #36, #RESTDEFAULT ; rest
  ENDIF

	; Loop back
	dc.b	#$FF
	dc.b	#<Spelunker2Track4
	dc.b	#>Spelunker2Track4

  ENDIF ; (IF MUTE_TRACK4)

