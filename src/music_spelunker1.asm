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
	dc.b	#$00, #96, #RESTDEFAULT	; rest
	dc.b	#$FF
	dc.b	#<Spelunker1Track1
	dc.b	#>Spelunker1Track1
  ELSE

	; Uses pokey_notes column P (green)
	dc.b	#$00, #96, #RESTDEFAULT	; rest

	dc.b	#$00, #96, #RESTDEFAULT	; rest

	; Uses pokey_notes column P (green)
	dc.b	#$64, #24, #ARCH24_16FD ; C#
	dc.b	#$4A, #24, #ARCH24_16FD ; F#
	dc.b	#$4A, #24, #ARCH24_16FD ; F#
	dc.b	#$64, #24, #ARCH24_16FD ; C#

	dc.b	#$64, #24, #ARCH24_16FD ; C#
	dc.b	#$4A, #24, #ARCH24_16FD ; F#
	dc.b	#$4A, #24, #ARCH24_16FD ; F#
	dc.b	#$64, #24, #ARCH24_16FD ; C#

	; repeat
	; Uses pokey_notes column P (green)
	dc.b	#$64, #24, #ARCH24_16FD ; C#
	dc.b	#$4A, #24, #ARCH24_16FD ; F#
	dc.b	#$4A, #24, #ARCH24_16FD ; F#
	dc.b	#$64, #24, #ARCH24_16FD ; C#

	dc.b	#$64, #24, #ARCH24_16FD ; C#
	dc.b	#$4A, #24, #ARCH24_16FD ; F#
	dc.b	#$4A, #24, #ARCH24_16FD ; F#
	dc.b	#$64, #24, #ARCH24_16FD ; C#

	; Uses pokey_notes column P (green)
	dc.b	#$41, #12, #ARCH12_16EX	; G#
	dc.b	#$64, #12, #ARCH12_16EX	; C#
	dc.b	#$64, #12, #ARCH12_16EX	; C#
	dc.b	#$4A, #12, #ARCH12_16EX	; F#
	dc.b	#$4A, #12, #ARCH12_16EX	; F#
	dc.b	#$79, #12, #ARCH12_16EX	; A
	dc.b	#$64, #12, #ARCH12_16EX	; C#
	dc.b	#$79, #12, #ARCH12_16EX	; A

	; repeat
	; Uses pokey_notes column P (green)
	dc.b	#$41, #12, #ARCH12_16EX	; G#
	dc.b	#$64, #12, #ARCH12_16EX	; C#
	dc.b	#$64, #12, #ARCH12_16EX	; C#
	dc.b	#$4A, #12, #ARCH12_16EX	; F#
	dc.b	#$4A, #12, #ARCH12_16EX	; F#
	dc.b	#$79, #12, #ARCH12_16EX	; A
	dc.b	#$64, #12, #ARCH12_16EX	; C#
	dc.b	#$79, #12, #ARCH12_16EX	; A

	; repeat
	; Uses pokey_notes column P (green)
	dc.b	#$41, #12, #ARCH12_16EX	; G#
	dc.b	#$64, #12, #ARCH12_16EX	; C#
	dc.b	#$64, #12, #ARCH12_16EX	; C#
	dc.b	#$4A, #12, #ARCH12_16EX	; F#
	dc.b	#$4A, #12, #ARCH12_16EX	; F#
	dc.b	#$79, #12, #ARCH12_16EX	; A
	dc.b	#$64, #12, #ARCH12_16EX	; C#
	dc.b	#$79, #12, #ARCH12_16EX	; A

	; repeat
	; Uses pokey_notes column P (green)
	dc.b	#$41, #12, #ARCH12_16EX	; G#
	dc.b	#$64, #12, #ARCH12_16EX	; C#
	dc.b	#$64, #12, #ARCH12_16EX	; C#
	dc.b	#$4A, #12, #ARCH12_16EX	; F#
	dc.b	#$4A, #12, #ARCH12_16EX	; F#
	dc.b	#$79, #12, #ARCH12_16EX	; A
	dc.b	#$64, #12, #ARCH12_16EX	; C#
	dc.b	#$79, #12, #ARCH12_16EX	; A

	; Change-up - move up
	; Uses pokey_notes column P (green)
	dc.b	#$64, #12, #ARCH12_16EX	; C#
	dc.b	#$4A, #12, #ARCH12_16EX	; F#
	dc.b	#$3E, #12, #ARCH12_16EX	; A
	dc.b	#$41, #12, #ARCH12_16EX	; G#
	dc.b	#$4A, #12, #ARCH12_16EX	; F#
	dc.b	#$64, #12, #ARCH12_16EX	; C#
	dc.b	#$7F, #12, #ARCH12_16EX	; A
	dc.b	#$64, #12, #ARCH12_16EX	; C#

	; Continue change-up
	; Uses pokey_notes column P (green)
	dc.b	#$41, #12, #ARCH12_16EX	; G#
	dc.b	#$4A, #12, #ARCH12_16EX	; F#
	dc.b	#$3E, #12, #ARCH12_16EX	; A
	dc.b	#$4A, #12, #ARCH12_16EX	; F#
	dc.b	#$41, #12, #ARCH12_16EX	; G#
	dc.b	#$4A, #12, #ARCH12_16EX	; F#
	dc.b	#$41, #12, #ARCH12_16EX	; G#
	dc.b	#$4A, #12, #ARCH12_16EX	; F#

	; Uses pokey_notes column P (green)
	dc.b	#$41, #12, #ARCH12_16EX	; G#
	dc.b	#$4A, #12, #ARCH12_16EX	; F#
	dc.b	#$3E, #12, #ARCH12_16EX	; A
	dc.b	#$4A, #12, #ARCH12_16EX	; F#
	dc.b	#$41, #12, #ARCH12_16EX	; G#
	dc.b	#$4A, #12, #ARCH12_16EX	; F#
	dc.b	#$41, #12, #ARCH12_16EX	; G#
	dc.b	#$4A, #12, #ARCH12_16EX	; F#

	; Uses pokey_notes column P (green)
	dc.b	#$41, #12, #ARCH12_16EX	; G#
	dc.b	#$64, #12, #ARCH12_16EX	; C#
	dc.b	#$53, #12, #ARCH12_16EX	; E
	dc.b	#$64, #12, #ARCH12_16EX	; C#
	dc.b	#$41, #12, #ARCH12_16EX	; G#
	dc.b	#$64, #12, #ARCH12_16EX	; C#
	dc.b	#$53, #12, #ARCH12_16EX	; E
	dc.b	#$64, #12, #ARCH12_16EX	; C#

	; Uses pokey_notes column P (green)
	dc.b	#$41, #24, #ARCH24_16FD	; G#
	dc.b	#$41, #24, #ARCH24_16FD	; G#
	dc.b	#$41, #48, #ARCH48_24FD	; G#

	; Uses pokey_notes column P (green)
	dc.b	#$00, #96, #RESTDEFAULT	; rest

	; Uses pokey_notes column P (green)
	dc.b	#$00, #96, #RESTDEFAULT	; rest

	; change up
	; Uses pokey_notes column P (green)
	; don't use youtube video, use correct notes
	dc.b	#$3E, #24, #ARCH24_16FD	; A
	dc.b	#$4A, #24, #ARCH24_16FD	; F#
	dc.b	#$64, #24, #ARCH24_16FD	; C#
	dc.b	#$7F, #24, #ARCH24_16FD	; A

	; Uses pokey_notes column P (green)
	; don't use youtube video, use correct notes
	dc.b	#$64, #24, #ARCH24_16FD	; C#
	dc.b	#$7F, #24, #ARCH24_16FD	; A
	dc.b	#$64, #24, #ARCH24_16FD	; C#
	dc.b	#$7F, #24, #ARCH24_16FD	; A

	; Uses pokey_notes column P (green)
	dc.b	#$64, #12, #ARCH12_16EX	; C#
	dc.b	#$7F, #12, #ARCH12_16EX	; A
	dc.b	#$64, #12, #ARCH12_16EX	; C#
	dc.b	#$4A, #12, #ARCH12_16EX	; F#
	dc.b	#$3E, #12, #ARCH12_16EX	; A
	dc.b	#$2F, #12, #ARCH12_16EX	; C#
	dc.b	#$3E, #12, #ARCH12_16EX	; A
	dc.b	#$4A, #12, #ARCH12_16EX	; F#

	; Uses pokey_notes column P (green)
	dc.b	#$64, #24, #ARCH24_16FD	; C#
	dc.b	#$41, #24, #ARCH24_16FD	; G#
	dc.b	#$41, #48, #ARCH48_24FD	; G#

	; Uses pokey_notes column P (green)
	dc.b	#$3E, #48, #ARCH48_24FD	; A
	dc.b	#$41, #48, #ARCH48_24FD	; G#

	; Uses pokey_notes column P (green)
	dc.b	#$00, #96, #RESTDEFAULT	; rest

	; Uses pokey_notes column P (green)
	dc.b	#$00, #96, #RESTDEFAULT	; rest

	; Uses pokey_notes column P (green)
	dc.b	#$3E, #24, #ARCH24_16FD	; A
	dc.b	#$41, #24, #ARCH24_16FD	; G#
	dc.b	#$41, #24, #ARCH24_16FD	; G#
	dc.b	#$3E, #24, #ARCH24_16FD	; A

	; Uses pokey_notes column P (green)
	dc.b	#$3E, #12, #ARCH12_16EX	; A
	dc.b	#$4A, #12, #ARCH12_16EX	; F#
	dc.b	#$41, #12, #ARCH12_16EX	; G#
	dc.b	#$53, #12, #ARCH12_16EX	; E
	dc.b	#$3E, #12, #ARCH12_16EX	; A
	dc.b	#$4A, #12, #ARCH12_16EX	; F#
	dc.b	#$3E, #12, #ARCH12_16EX	; A
	dc.b	#$37, #12, #ARCH12_16EX	; B

	; Uses pokey_notes column P (green)
	dc.b	#$64, #12, #ARCH12_16EX	; C#
	dc.b	#$7F, #12, #ARCH12_16EX	; A
	dc.b	#$64, #12, #ARCH12_16EX	; C#
	dc.b	#$4A, #12, #ARCH12_16EX	; F#
	dc.b	#$4A, #12, #ARCH12_16EX	; F#
	dc.b	#$2F, #12, #ARCH12_16EX	; C#
	dc.b	#$3E, #12, #ARCH12_16EX	; A
	dc.b	#$4A, #12, #ARCH12_16EX	; F#

	; Uses pokey_notes column P (green)
	dc.b	#$41, #24, #ARCH24_16FD	; G#
	dc.b	#$3E, #24, #ARCH24_16FD	; A
	dc.b	#$41, #48, #ARCH48_24FD	; G#

	; Uses pokey_notes column P (green)
	dc.b	#$00, #96, #RESTDEFAULT	; rest

	; Syncopated sequence
	; Uses pokey_notes column P (green)
	dc.b	#$00, #24, #RESTDEFAULT	; rest
	dc.b	#$41, #24, #ARCH24_16FD	; G#
	dc.b	#$3E, #12, #ARCH12_16EX	; A
	dc.b	#$41, #24, #ARCH24_16FD	; G#
	dc.b	#$4A, #12, #ARCH12_16EX	; F#

	; Uses pokey_notes column P (green)
	dc.b	#$41, #48, #ARCH48_24FD	; G#
	dc.b	#$4A, #48, #ARCH48_24FD	; F#

	; Uses pokey_notes column P (green)
	dc.b	#$64, #24, #ARCH24_16FD	; C#
	dc.b	#$71, #24, #ARCH24_16FD	; B
	dc.b	#$64, #48, #ARCH48_24FD	; C#

	; Uses pokey_notes column P (green)
	dc.b	#$00, #96, #RESTDEFAULT	; rest
	dc.b	#$00, #96, #RESTDEFAULT	; rest

	; next sequence
	; Uses pokey_notes column P (green)
	dc.b	#$4A, #24, #ARCH24_16FD	; F#
	dc.b	#$53, #24, #ARCH24_16FD	; E
	dc.b	#$53, #24, #ARCH24_16FD	; E
	dc.b	#$37, #24, #ARCH24_16FD	; B

	; Uses pokey_notes column P (green)
	dc.b	#$4A, #24, #ARCH24_16FD	; F#
	dc.b	#$53, #24, #ARCH24_16FD	; E
	dc.b	#$53, #12, #ARCH12_16EX	; E
	dc.b	#$41, #12, #ARCH12_16EX	; G#
	dc.b	#$4A, #12, #ARCH12_16EX	; F#
	dc.b	#$5E, #12, #ARCH12_16EX	; D

	; Uses pokey_notes column P (green)
	dc.b	#$5E, #24, #ARCH24_16FD	; D
	dc.b	#$53, #24, #ARCH24_16FD	; E
	dc.b	#$5E, #12, #ARCH12_16EX	; D
	dc.b	#$53, #12, #ARCH12_16EX	; E
	dc.b	#$5E, #12, #ARCH12_16EX	; D
	dc.b	#$71, #12, #ARCH12_16EX	; B

	; Uses pokey_notes column P (green)
	dc.b	#$71, #48, #ARCH48_24FD	; B
	dc.b	#$00, #48, #RESTDEFAULT	; rest

	; Uses pokey_notes column P (green)
	dc.b	#$00, #96, #RESTDEFAULT	; rest
	
	; end sequence
	; Uses pokey_notes column P (green)
	dc.b	#$41, #24, #ARCH24_16FD	; G#
	dc.b	#$3E, #24, #ARCH24_16FD	; A
	dc.b	#$41, #24, #ARCH24_16FD	; G#
	dc.b	#$64, #24, #ARCH24_16FD	; C#

	; Uses pokey_notes column P (green)
	dc.b	#$41, #24, #ARCH24_16FD	; G#
	dc.b	#$3E, #24, #ARCH24_16FD	; A
	dc.b	#$41, #24, #ARCH24_16FD	; G#
	dc.b	#$64, #24, #ARCH24_16FD	; C#

	; Uses pokey_notes column P (green)
	dc.b	#$41, #24, #ARCH24_16FD	; G#
	dc.b	#$3E, #24, #ARCH24_16FD	; A
	dc.b	#$41, #24, #ARCH24_16FD	; G#
	dc.b	#$64, #24, #ARCH24_16FD	; C#

	; Uses pokey_notes column P (green)
	dc.b	#$71, #48, #ARCH48_24FD	; B
	dc.b	#$41, #48, #ARCH48_24FD	; G#

	; Uses pokey_notes column P (green)
	dc.b	#$4A, #96, #ARCH96_72FD	; F#

	; Uses pokey_notes column P (green)
	dc.b	#$00, #96, #RESTDEFAULT	; rest
	dc.b	#$00, #96, #RESTDEFAULT	; rest

Spelunker1Track1Stops
	dc.b	#$00, #96, #RESTDEFAULT ; rest
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
	dc.b	#$00, #96, #RESTDEFAULT	; rest
	dc.b	#$FF
	dc.b	#<Spelunker1Track2
	dc.b	#>Spelunker1Track2
  ELSE

	; Uses pokey_notes column H (brown)
	dc.b	#$A9, #48, #ARCH48_24FD	; F#
	dc.b	#$54, #24, #ARCH48_24FD	; F#
	dc.b	#$54, #24, #ARCH48_24FD	; F#

	dc.b	#$A9, #48, #ARCH48_24FD	; F#
	dc.b	#$54, #24, #ARCH48_24FD	; F#
	dc.b	#$54, #24, #ARCH48_24FD	; F#

	; Continue orig
	; Uses pokey_notes column H (brown)
	dc.b	#$A9, #48, #ARCH48_24FD	; F#
	dc.b	#$54, #48, #ARCH48_24FD	; F#

	dc.b	#$A9, #48, #ARCH48_24FD	; F#
	dc.b	#$54, #48, #ARCH48_24FD	; F#

	; Down
	; Uses pokey_notes column H (brown)
	dc.b	#$BE, #48, #ARCH48_24FD	; E
	dc.b	#$5E, #48, #ARCH48_24FD	; E

	dc.b	#$BE, #48, #ARCH48_24FD	; E
	dc.b	#$5E, #48, #ARCH48_24FD	; E

	; Back to orig
	; Uses pokey_notes column H (brown)
	dc.b	#$A9, #48, #ARCH48_24FD	; F#
	dc.b	#$54, #48, #ARCH48_24FD	; F#

	dc.b	#$A9, #48, #ARCH48_24FD	; F#
	dc.b	#$54, #48, #ARCH48_24FD	; F#

	; Down
	; Uses pokey_notes column H (brown)
	dc.b	#$BE, #48, #ARCH48_24FD	; E
	dc.b	#$5E, #48, #ARCH48_24FD	; E

	dc.b	#$BE, #48, #ARCH48_24FD	; E
	dc.b	#$5E, #48, #ARCH48_24FD	; E

	; Back to orig
	; Uses pokey_notes column H (brown)
	dc.b	#$A9, #48, #ARCH48_24FD	; F#
	dc.b	#$54, #48, #ARCH48_24FD	; F#

	dc.b	#$A9, #48, #ARCH48_24FD	; F#
	dc.b	#$54, #48, #ARCH48_24FD	; F#

	; Change up
	; Uses pokey_notes column H (brown)
	dc.b	#$A9, #48, #ARCH48_24FD	; F#
	dc.b	#$54, #48, #ARCH48_24FD	; F#

	dc.b	#$70, #48, #ARCH48_24FD	; C#
	dc.b	#$96, #48, #ARCH48_24FD	; G#

	dc.b	#$96, #48, #ARCH48_24FD	; G#
	dc.b	#$96, #48, #ARCH48_24FD	; G#

	; Orig
	; Uses pokey_notes column H (brown)
	dc.b	#$A9, #48, #ARCH48_24FD	; F#
	dc.b	#$54, #24, #ARCH48_24FD	; F#
	dc.b	#$54, #24, #ARCH48_24FD	; F#

	dc.b	#$A9, #48, #ARCH48_24FD	; F#
	dc.b	#$54, #24, #ARCH48_24FD	; F#
	dc.b	#$54, #24, #ARCH48_24FD	; F#

	; Change up
	; Uses pokey_notes column H (brown)
	dc.b	#$A9, #48, #ARCH48_24FD	; F#
	dc.b	#$70, #24, #ARCH48_24FD	; C#
	dc.b	#$8E, #24, #ARCH48_24FD	; A

	dc.b	#$A9, #48, #ARCH48_24FD	; F#
	dc.b	#$70, #24, #ARCH48_24FD	; C#
	dc.b	#$8E, #24, #ARCH48_24FD	; A

	; Uses pokey_notes column H (brown)
	dc.b	#$A9, #48, #ARCH48_24FD	; F#
	dc.b	#$54, #48, #ARCH48_24FD	; F#

	dc.b	#$70, #48, #ARCH48_24FD	; C#
	dc.b	#$96, #48, #ARCH48_24FD	; G#

	dc.b	#$70, #48, #ARCH48_24FD	; C#
	dc.b	#$70, #48, #ARCH48_24FD	; C#

	; Lower
	; Uses pokey_notes column H (brown)
	dc.b	#$BE, #48, #ARCH48_24FD	; E
	dc.b	#$5E, #24, #ARCH48_24FD	; E
	dc.b	#$5E, #24, #ARCH48_24FD	; E

	dc.b	#$BE, #48, #ARCH48_24FD	; E
	dc.b	#$5E, #24, #ARCH48_24FD	; E
	dc.b	#$5E, #24, #ARCH48_24FD	; E

	; Uses pokey_notes column H (brown)
	dc.b	#$8E, #48, #ARCH48_24FD	; A
	dc.b	#$BE, #48, #ARCH48_24FD	; E

	dc.b	#$8E, #48, #ARCH48_24FD	; A
	dc.b	#$BE, #48, #ARCH48_24FD	; E

	; Uses pokey_notes column H (brown)
	dc.b	#$A9, #48, #ARCH48_24FD	; F#
	dc.b	#$54, #48, #ARCH48_24FD	; F#

	dc.b	#$70, #48, #ARCH48_24FD	; C#
	dc.b	#$70, #48, #ARCH48_24FD	; C#

	; Uses pokey_notes column H (brown)
	dc.b	#$70, #48, #ARCH48_24FD	; C#
	dc.b	#$7E, #12, #ARCH48_24FD	; B
	dc.b	#$70, #12, #ARCH48_24FD	; C#
	dc.b	#$7E, #24, #ARCH48_24FD	; B

	dc.b	#$7E, #48, #ARCH48_24FD	; B
	dc.b	#$7E, #48, #ARCH48_24FD	; B

	; Uses pokey_notes column H (brown)
	dc.b	#$A9, #48, #ARCH48_24FD	; F#
	dc.b	#$54, #48, #ARCH48_24FD	; F#

	dc.b	#$A9, #48, #ARCH48_24FD	; F#
	dc.b	#$A9, #48, #ARCH48_24FD	; F#

	; Uses pokey_notes column H (brown)
	dc.b	#$BE, #48, #ARCH48_24FD	; E
	dc.b	#$5E, #24, #ARCH48_24FD	; E
	dc.b	#$5E, #24, #ARCH48_24FD	; E

	dc.b	#$BE, #48, #ARCH48_24FD	; E
	dc.b	#$5E, #24, #ARCH48_24FD	; E
	dc.b	#$5E, #24, #ARCH48_24FD	; E

	; Uses pokey_notes column H (brown)
	dc.b	#$BE, #48, #ARCH48_24FD	; E
	dc.b	#$5E, #48, #ARCH48_24FD	; E

	dc.b	#$BE, #48, #ARCH48_24FD	; E
	dc.b	#$5E, #48, #ARCH48_24FD	; E

	; Lowest
	; Uses pokey_notes column H (brown)
	dc.b	#$D5, #48, #ARCH48_24FD	; D
	dc.b	#$6A, #48, #ARCH48_24FD	; D

	dc.b	#$BE, #48, #ARCH48_24FD	; E
	dc.b	#$5E, #24, #ARCH48_24FD	; E
	dc.b	#$5E, #24, #ARCH48_24FD	; E

	dc.b	#$BE, #48, #ARCH48_24FD	; E
	dc.b	#$5E, #24, #ARCH48_24FD	; E
	dc.b	#$5E, #24, #ARCH48_24FD	; E

	; Finale
	; Uses pokey_notes column H (brown)
	dc.b	#$A9, #48, #ARCH48_24FD	; F#
	dc.b	#$54, #48, #ARCH48_24FD	; F#

	dc.b	#$BE, #48, #ARCH48_24FD	; E
	dc.b	#$5E, #48, #ARCH48_24FD	; E

	; Uses pokey_notes column H (brown)
	dc.b	#$D5, #48, #ARCH48_24FD	; D
	dc.b	#$6A, #48, #ARCH48_24FD	; D

	dc.b	#$BE, #48, #ARCH48_24FD	; E
	dc.b	#$5E, #48, #ARCH48_24FD	; E

	dc.b	#$A9, #96, #ARCH96_72FD	; F#

	dc.b	#$00, #96, #RESTDEFAULT	; rest

	dc.b	#$00, #96, #RESTDEFAULT	; rest

Spelunker1Track2Stops
	dc.b	#$00, #96, #RESTDEFAULT ; rest
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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker1Track3
	dc.b	#>Spelunker1Track3
  ELSE
	; This track has no music
Spelunker1Track3Stops
	dc.b	#$00, #96, #RESTDEFAULT	; rest
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
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Spelunker1Track4
	dc.b	#>Spelunker1Track4
  ELSE
	; This track has no music
Spelunker1Track4Stops
	dc.b	#$00, #96, #RESTDEFAULT	; rest
	dc.b	#$FF
	dc.b	#<Spelunker1Track4Stops
	dc.b	#>Spelunker1Track4Stops
  ENDIF ; (IF MUTE_TRACK4)
