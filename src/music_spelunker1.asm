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
	dc.b	#$00, #96, #0	; rest
	dc.b	#$FF
	dc.b	#<Spelunker1Track1
	dc.b	#>Spelunker1Track1
  ELSE

	; Uses pokey_notes column P (green)
	dc.b	#$00, #96, #0	; rest

	dc.b	#$00, #96, #0	; rest

	; Uses pokey_notes column P (green)
	dc.b	#$64, #24, #11	; C#
	dc.b	#$4A, #24, #11	; F#
	dc.b	#$4A, #24, #11	; F#
	dc.b	#$64, #24, #11	; C#

	dc.b	#$64, #24, #11	; C#
	dc.b	#$4A, #24, #11	; F#
	dc.b	#$4A, #24, #11	; F#
	dc.b	#$64, #24, #11	; C#

	; repeat
	; Uses pokey_notes column P (green)
	dc.b	#$64, #24, #11	; C#
	dc.b	#$4A, #24, #11	; F#
	dc.b	#$4A, #24, #11	; F#
	dc.b	#$64, #24, #11	; C#

	dc.b	#$64, #24, #11	; C#
	dc.b	#$4A, #24, #11	; F#
	dc.b	#$4A, #24, #11	; F#
	dc.b	#$64, #24, #11	; C#

	; Uses pokey_notes column P (green)
	dc.b	#$41, #12, #10	; G#
	dc.b	#$64, #12, #10	; C#
	dc.b	#$64, #12, #10	; C#
	dc.b	#$4A, #12, #10	; F#
	dc.b	#$4A, #12, #10	; F#
	dc.b	#$79, #12, #10	; A
	dc.b	#$64, #12, #10	; C#
	dc.b	#$79, #12, #10	; A

	; repeat
	; Uses pokey_notes column P (green)
	dc.b	#$41, #12, #10	; G#
	dc.b	#$64, #12, #10	; C#
	dc.b	#$64, #12, #10	; C#
	dc.b	#$4A, #12, #10	; F#
	dc.b	#$4A, #12, #10	; F#
	dc.b	#$79, #12, #10	; A
	dc.b	#$64, #12, #10	; C#
	dc.b	#$79, #12, #10	; A

	; repeat
	; Uses pokey_notes column P (green)
	dc.b	#$41, #12, #10	; G#
	dc.b	#$64, #12, #10	; C#
	dc.b	#$64, #12, #10	; C#
	dc.b	#$4A, #12, #10	; F#
	dc.b	#$4A, #12, #10	; F#
	dc.b	#$79, #12, #10	; A
	dc.b	#$64, #12, #10	; C#
	dc.b	#$79, #12, #10	; A

	; repeat
	; Uses pokey_notes column P (green)
	dc.b	#$41, #12, #10	; G#
	dc.b	#$64, #12, #10	; C#
	dc.b	#$64, #12, #10	; C#
	dc.b	#$4A, #12, #10	; F#
	dc.b	#$4A, #12, #10	; F#
	dc.b	#$79, #12, #10	; A
	dc.b	#$64, #12, #10	; C#
	dc.b	#$79, #12, #10	; A

	; Change-up - move up
	; Uses pokey_notes column P (green)
	dc.b	#$64, #12, #10	; C#
	dc.b	#$4A, #12, #10	; F#
	dc.b	#$3E, #12, #10	; A
	dc.b	#$41, #12, #10	; G#
	dc.b	#$4A, #12, #10	; F#
	dc.b	#$64, #12, #10	; C#
	dc.b	#$7F, #12, #10	; A
	dc.b	#$64, #12, #10	; C#

	; Continue change-up
	; Uses pokey_notes column P (green)
	dc.b	#$41, #12, #10	; G#
	dc.b	#$4A, #12, #10	; F#
	dc.b	#$3E, #12, #10	; A
	dc.b	#$4A, #12, #10	; F#
	dc.b	#$41, #12, #10	; G#
	dc.b	#$4A, #12, #10	; F#
	dc.b	#$41, #12, #10	; G#
	dc.b	#$4A, #12, #10	; F#

	; Uses pokey_notes column P (green)
	dc.b	#$41, #12, #10	; G#
	dc.b	#$4A, #12, #10	; F#
	dc.b	#$3E, #12, #10	; A
	dc.b	#$4A, #12, #10	; F#
	dc.b	#$41, #12, #10	; G#
	dc.b	#$4A, #12, #10	; F#
	dc.b	#$41, #12, #10	; G#
	dc.b	#$4A, #12, #10	; F#

	; Uses pokey_notes column P (green)
	dc.b	#$41, #12, #10	; G#
	dc.b	#$64, #12, #10	; C#
	dc.b	#$53, #12, #10	; E
	dc.b	#$64, #12, #10	; C#
	dc.b	#$41, #12, #10	; G#
	dc.b	#$64, #12, #10	; C#
	dc.b	#$53, #12, #10	; E
	dc.b	#$64, #12, #10	; C#

	; Uses pokey_notes column P (green)
	dc.b	#$41, #24, #11	; G#
	dc.b	#$41, #24, #11	; G#
	dc.b	#$41, #48, #8	; G#

	; Uses pokey_notes column P (green)
	dc.b	#$00, #96, #0	; rest

	; Uses pokey_notes column P (green)
	dc.b	#$00, #96, #0	; rest

	; change up
	; Uses pokey_notes column P (green)
	; don't use youtube video, use correct notes
	dc.b	#$3E, #24, #11	; A
	dc.b	#$4A, #24, #11	; F#
	dc.b	#$64, #24, #11	; C#
	dc.b	#$7F, #24, #11	; A

	; Uses pokey_notes column P (green)
	; don't use youtube video, use correct notes
	dc.b	#$64, #24, #11	; C#
	dc.b	#$7F, #24, #11	; A
	dc.b	#$64, #24, #11	; C#
	dc.b	#$7F, #24, #11	; A

	; Uses pokey_notes column P (green)
	dc.b	#$64, #12, #10	; C#
	dc.b	#$7F, #12, #10	; A
	dc.b	#$64, #12, #10	; C#
	dc.b	#$4A, #12, #10	; F#
	dc.b	#$3E, #12, #10	; A
	dc.b	#$2F, #12, #10	; C#
	dc.b	#$3E, #12, #10	; A
	dc.b	#$4A, #12, #10	; F#

	; Uses pokey_notes column P (green)
	dc.b	#$64, #24, #11	; C#
	dc.b	#$41, #24, #11	; G#
	dc.b	#$41, #48, #8	; G#

	; Uses pokey_notes column P (green)
	dc.b	#$3E, #48, #8	; A
	dc.b	#$41, #48, #8	; G#

	; Uses pokey_notes column P (green)
	dc.b	#$00, #96, #0	; rest

	; Uses pokey_notes column P (green)
	dc.b	#$00, #96, #0	; rest

	; Uses pokey_notes column P (green)
	dc.b	#$3E, #24, #11	; A
	dc.b	#$41, #24, #11	; G#
	dc.b	#$41, #24, #11	; G#
	dc.b	#$3E, #24, #11	; A

	; Uses pokey_notes column P (green)
	dc.b	#$3E, #12, #10	; A
	dc.b	#$4A, #12, #10	; F#
	dc.b	#$41, #12, #10	; G#
	dc.b	#$53, #12, #10	; E
	dc.b	#$3E, #12, #10	; A
	dc.b	#$4A, #12, #10	; F#
	dc.b	#$3E, #12, #10	; A
	dc.b	#$37, #12, #10	; B

	; Uses pokey_notes column P (green)
	dc.b	#$64, #12, #10	; C#
	dc.b	#$7F, #12, #10	; A
	dc.b	#$64, #12, #10	; C#
	dc.b	#$4A, #12, #10	; F#
	dc.b	#$4A, #12, #10	; F#
	dc.b	#$2F, #12, #10	; C#
	dc.b	#$3E, #12, #10	; A
	dc.b	#$4A, #12, #10	; F#

	; Uses pokey_notes column P (green)
	dc.b	#$41, #24, #11	; G#
	dc.b	#$3E, #24, #11	; A
	dc.b	#$41, #48, #8	; G#

	; Uses pokey_notes column P (green)
	dc.b	#$00, #96, #0	; rest

	; Syncopated sequence
	; Uses pokey_notes column P (green)
	dc.b	#$00, #24, #0	; rest
	dc.b	#$41, #24, #11	; G#
	dc.b	#$3E, #12, #10	; A
	dc.b	#$41, #24, #11	; G#
	dc.b	#$4A, #12, #10	; F#

	; Uses pokey_notes column P (green)
	dc.b	#$41, #48, #8	; G#
	dc.b	#$4A, #48, #8	; F#

	; Uses pokey_notes column P (green)
	dc.b	#$64, #24, #11	; C#
	dc.b	#$71, #24, #11	; B
	dc.b	#$64, #48, #8	; C#

	; Uses pokey_notes column P (green)
	dc.b	#$00, #96, #0	; rest
	dc.b	#$00, #96, #0	; rest

	; next sequence
	; Uses pokey_notes column P (green)
	dc.b	#$4A, #24, #11	; F#
	dc.b	#$53, #24, #11	; E
	dc.b	#$53, #24, #11	; E
	dc.b	#$37, #24, #11	; B

	; Uses pokey_notes column P (green)
	dc.b	#$4A, #24, #11	; F#
	dc.b	#$53, #24, #11	; E
	dc.b	#$53, #12, #10	; E
	dc.b	#$41, #12, #10	; G#
	dc.b	#$4A, #12, #10	; F#
	dc.b	#$5E, #12, #10	; D

	; Uses pokey_notes column P (green)
	dc.b	#$5E, #24, #11	; D
	dc.b	#$53, #24, #11	; E
	dc.b	#$5E, #12, #10	; D
	dc.b	#$53, #12, #10	; E
	dc.b	#$5E, #12, #10	; D
	dc.b	#$71, #12, #10	; B

	; Uses pokey_notes column P (green)
	dc.b	#$71, #48, #8	; B
	dc.b	#$00, #48, #0	; rest

	; Uses pokey_notes column P (green)
	dc.b	#$00, #96, #0	; rest
	
	; end sequence
	; Uses pokey_notes column P (green)
	dc.b	#$41, #24, #11	; G#
	dc.b	#$3E, #24, #11	; A
	dc.b	#$41, #24, #11	; G#
	dc.b	#$64, #24, #11	; C#

	; Uses pokey_notes column P (green)
	dc.b	#$41, #24, #11	; G#
	dc.b	#$3E, #24, #11	; A
	dc.b	#$41, #24, #11	; G#
	dc.b	#$64, #24, #11	; C#

	; Uses pokey_notes column P (green)
	dc.b	#$41, #24, #11	; G#
	dc.b	#$3E, #24, #11	; A
	dc.b	#$41, #24, #11	; G#
	dc.b	#$64, #24, #11	; C#

	; Uses pokey_notes column P (green)
	dc.b	#$71, #48, #8	; B
	dc.b	#$41, #48, #8	; G#

	; Uses pokey_notes column P (green)
	dc.b	#$4A, #96, #9	; F#

	; Uses pokey_notes column P (green)
	dc.b	#$00, #96, #0	; rest
	dc.b	#$00, #96, #0	; rest

	dc.b	#$FF
	dc.b	#<Spelunker1Track1
	dc.b	#>Spelunker1Track1

  ENDIF ; (IF MUTE_TRACK1)

;================
Spelunker1Track2
;================
; Uses pokey_notes column H (brown)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK2
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #0	; rest
	dc.b	#$FF
	dc.b	#<Spelunker1Track2
	dc.b	#>Spelunker1Track2
  ELSE

	; Uses pokey_notes column H (brown)
	dc.b	#$A9, #48, #8	; F#
	dc.b	#$54, #24, #8	; F#
	dc.b	#$54, #24, #8	; F#

	dc.b	#$A9, #48, #8	; F#
	dc.b	#$54, #24, #8	; F#
	dc.b	#$54, #24, #8	; F#

	; Continue orig
	; Uses pokey_notes column H (brown)
	dc.b	#$A9, #48, #8	; F#
	dc.b	#$54, #48, #8	; F#

	dc.b	#$A9, #48, #8	; F#
	dc.b	#$54, #48, #8	; F#

	; Down
	; Uses pokey_notes column H (brown)
	dc.b	#$BE, #48, #8	; E
	dc.b	#$5E, #48, #8	; E

	dc.b	#$BE, #48, #8	; E
	dc.b	#$5E, #48, #8	; E

	; Back to orig
	; Uses pokey_notes column H (brown)
	dc.b	#$A9, #48, #8	; F#
	dc.b	#$54, #48, #8	; F#

	dc.b	#$A9, #48, #8	; F#
	dc.b	#$54, #48, #8	; F#

	; Down
	; Uses pokey_notes column H (brown)
	dc.b	#$BE, #48, #8	; E
	dc.b	#$5E, #48, #8	; E

	dc.b	#$BE, #48, #8	; E
	dc.b	#$5E, #48, #8	; E

	; Back to orig
	; Uses pokey_notes column H (brown)
	dc.b	#$A9, #48, #8	; F#
	dc.b	#$54, #48, #8	; F#

	dc.b	#$A9, #48, #8	; F#
	dc.b	#$54, #48, #8	; F#

	; Change up
	; Uses pokey_notes column H (brown)
	dc.b	#$A9, #48, #8	; F#
	dc.b	#$54, #48, #8	; F#

	dc.b	#$70, #48, #8	; C#
	dc.b	#$96, #48, #8	; G#

	dc.b	#$96, #48, #8	; G#
	dc.b	#$96, #48, #8	; G#

	; Orig
	; Uses pokey_notes column H (brown)
	dc.b	#$A9, #48, #8	; F#
	dc.b	#$54, #24, #8	; F#
	dc.b	#$54, #24, #8	; F#

	dc.b	#$A9, #48, #8	; F#
	dc.b	#$54, #24, #8	; F#
	dc.b	#$54, #24, #8	; F#

	; Change up
	; Uses pokey_notes column H (brown)
	dc.b	#$A9, #48, #8	; F#
	dc.b	#$70, #24, #8	; C#
	dc.b	#$8E, #24, #8	; A

	dc.b	#$A9, #48, #8	; F#
	dc.b	#$70, #24, #8	; C#
	dc.b	#$8E, #24, #8	; A

	; Uses pokey_notes column H (brown)
	dc.b	#$A9, #48, #8	; F#
	dc.b	#$54, #48, #8	; F#

	dc.b	#$70, #48, #8	; C#
	dc.b	#$96, #48, #8	; G#

	dc.b	#$70, #48, #8	; C#
	dc.b	#$70, #48, #8	; C#

	; Lower
	; Uses pokey_notes column H (brown)
	dc.b	#$BE, #48, #8	; E
	dc.b	#$5E, #24, #8	; E
	dc.b	#$5E, #24, #8	; E

	dc.b	#$BE, #48, #8	; E
	dc.b	#$5E, #24, #8	; E
	dc.b	#$5E, #24, #8	; E

	; Uses pokey_notes column H (brown)
	dc.b	#$8E, #48, #8	; A
	dc.b	#$BE, #48, #8	; E

	dc.b	#$8E, #48, #8	; A
	dc.b	#$BE, #48, #8	; E

	; Uses pokey_notes column H (brown)
	dc.b	#$A9, #48, #8	; F#
	dc.b	#$54, #48, #8	; F#

	dc.b	#$70, #48, #8	; C#
	dc.b	#$70, #48, #8	; C#

	; Uses pokey_notes column H (brown)
	dc.b	#$70, #48, #8	; C#
	dc.b	#$7E, #12, #8	; B
	dc.b	#$70, #12, #8	; C#
	dc.b	#$7E, #24, #8	; B

	dc.b	#$7E, #48, #8	; B
	dc.b	#$7E, #48, #8	; B

	; Uses pokey_notes column H (brown)
	dc.b	#$A9, #48, #8	; F#
	dc.b	#$54, #48, #8	; F#

	dc.b	#$A9, #48, #8	; F#
	dc.b	#$A9, #48, #8	; F#

	; Uses pokey_notes column H (brown)
	dc.b	#$BE, #48, #8	; E
	dc.b	#$5E, #24, #8	; E
	dc.b	#$5E, #24, #8	; E

	dc.b	#$BE, #48, #8	; E
	dc.b	#$5E, #24, #8	; E
	dc.b	#$5E, #24, #8	; E

	; Uses pokey_notes column H (brown)
	dc.b	#$BE, #48, #8	; E
	dc.b	#$5E, #48, #8	; E

	dc.b	#$BE, #48, #8	; E
	dc.b	#$5E, #48, #8	; E

	; Lowest
	; Uses pokey_notes column H (brown)
	dc.b	#$D5, #48, #8	; D
	dc.b	#$6A, #48, #8	; D

	dc.b	#$BE, #48, #8	; E
	dc.b	#$5E, #24, #8	; E
	dc.b	#$5E, #24, #8	; E

	dc.b	#$BE, #48, #8	; E
	dc.b	#$5E, #24, #8	; E
	dc.b	#$5E, #24, #8	; E

	; Finale
	; Uses pokey_notes column H (brown)
	dc.b	#$A9, #48, #8	; F#
	dc.b	#$54, #48, #8	; F#

	dc.b	#$BE, #48, #8	; E
	dc.b	#$5E, #48, #8	; E

	; Uses pokey_notes column H (brown)
	dc.b	#$D5, #48, #8	; D
	dc.b	#$6A, #48, #8	; D

	dc.b	#$BE, #48, #8	; E
	dc.b	#$5E, #48, #8	; E

	dc.b	#$A9, #96, #9	; F#

	dc.b	#$00, #96, #0	; rest

	dc.b	#$00, #96, #0	; rest

	dc.b	#$FF
	dc.b	#<Spelunker1Track2
	dc.b	#>Spelunker1Track2
  ENDIF ; (IF MUTE_TRACK2)

;================
Spelunker1Track3
;================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.
  IF MUTE_TRACK3
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #0 ; rest
	dc.b	#$FF
	dc.b	#<Spelunker1Track4
	dc.b	#>Spelunker1Track4
  ELSE
	; This track has no music
	dc.b	#$00, #96, #0	; rest
	dc.b	#$FF
	dc.b	#<Spelunker1Track3
	dc.b	#>Spelunker1Track3
  ENDIF ; (IF MUTE_TRACK3)

;================
Spelunker1Track4
;================
	; Frequency, length, Effect
	; $FF means it's over, loop back.
  IF MUTE_TRACK4
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #0 ; rest
	dc.b	#$FF
	dc.b	#<Spelunker1Track4
	dc.b	#>Spelunker1Track4
  ELSE
	; This track has no music
	dc.b	#$00, #96, #0	; rest
	dc.b	#$FF
	dc.b	#<Spelunker1Track4
	dc.b	#>Spelunker1Track4
  ENDIF ; (IF MUTE_TRACK4)
