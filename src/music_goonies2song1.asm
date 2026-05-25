GOONIES2SONG1_PLAY_PHRASE1	set	1
GOONIES2SONG1_PLAY_PHRASE2	set	1
GOONIES2SONG1_PLAY_PHRASE3	set	1
GOONIES2SONG1_PLAY_PHRASE4	set	1
GOONIES2SONG1_PLAY_PHRASE5	set	1
GOONIES2SONG1_PLAY_PHRASE6	set	1
MUTE_TRACK1		set	0
MUTE_TRACK2		set	0
MUTE_TRACK3		set	0
MUTE_TRACK4		set	0

; Drum equates
BASSDRUM1		equ	$5C
HIGHSNARE		equ	$07
SNAREDRUM		equ	$0E

;=============
Goonies2Song1Track1
;=============
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK1
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song1Track1
	dc.b	#>Goonies2Song1Track1
  ELSE
	; Uses pokey_notes column P (green)
	dc.b	#$5E, #24, #ARCH24_16FD	; D
	dc.b	#$2D, #12, #ARCH12_16EX ; D
	dc.b	#$5E, #12, #ARCH12_16EX ; D
	dc.b	#$46, #12, #ARCH12_16EX ; G
	dc.b	#$3E, #12, #ARCH12_16EX ; A
	dc.b	#$33, #12, #ARCH12_16EX ; C
	dc.b	#$2D, #12, #ARCH12_16EX ; D

	; Uses pokey_notes column P (green)
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$5E, #6,  #ARCH12_16EX ; D
	dc.b	#$5E, #6,  #ARCH12_16EX ; D
	dc.b	#$2D, #12, #ARCH12_16EX ; D
	dc.b	#$5E, #12, #ARCH12_16EX ; D
	dc.b	#$46, #12, #ARCH12_16EX ; G
	dc.b	#$3E, #12, #ARCH12_16EX ; A
	dc.b	#$33, #12, #ARCH12_16EX ; C
	dc.b	#$2D, #12, #ARCH12_16EX ; D

	; Uses pokey_notes column P (green)
	dc.b	#$5E, #24, #ARCH24_16FD	; D
	dc.b	#$2D, #12, #ARCH12_16EX ; D
	dc.b	#$5E, #12, #ARCH12_16EX ; D
	dc.b	#$46, #12, #ARCH12_16EX ; G
	dc.b	#$3E, #12, #ARCH12_16EX ; A
	dc.b	#$33, #12, #ARCH12_16EX ; C
	dc.b	#$2D, #12, #ARCH12_16EX ; D

	; Uses pokey_notes column P (green)
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$5E, #6,  #ARCH12_16EX ; D
	dc.b	#$5E, #6,  #ARCH12_16EX ; D
	dc.b	#$2D, #12, #ARCH12_16EX ; D
	dc.b	#$5E, #12, #ARCH12_16EX ; D
	dc.b	#$46, #12, #ARCH12_16EX ; G
	dc.b	#$3E, #12, #ARCH12_16EX ; A
	dc.b	#$21, #12, #ARCH12_16EX ; G
	dc.b	#$25, #12, #ARCH12_16EX ; F

Goonies2Song1Track1Restart
	; Uses pokey_notes column P (green)
	dc.b	#$1D, #36,  #ARCH12_16EX ; A
	dc.b	#$19, #6,   #ARCH12_16EX ; B
	dc.b	#$16, #6,   #ARCH12_16EX ; C#
	dc.b	#$14, #144, #TREMOLOLONG ; D - tremolo

	; Uses pokey_notes column P (green)
	dc.b	#$23, #36, #TREMOLOLONG ; F# - tremolo
	dc.b	#$28, #36, #TREMOLOLONG ; E - tremolo
	dc.b	#$23, #96, #TREMOLOLONG ; F# - tremolo
	dc.b	#$00, #24, #RESTDEFAULT ; rest

	; Main melody
	; "Here we are hanging"
	; Uses pokey_notes column P (green)
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$3E, #24, #TREMOLOLONG ; A
	dc.b	#$4F, #12, #TREMOLOLONG ; F
	dc.b	#$3E, #24, #TREMOLOLONG ; A
	dc.b	#$4F, #12, #TREMOLOLONG ; F

	; "onto strains of greens and blues"
	; Uses pokey_notes column P (green)
	dc.b	#$39, #24, #VOL04REST02 ; Bb
	dc.b	#$3E, #24, #VOL04REST02 ; A
	dc.b	#$46, #24, #VOL04REST02 ; G
	dc.b	#$4F, #12, #VOL04REST02 ; F
	dc.b	#$46, #6,  #VOL04REST02 ; G
	dc.b	#$3E, #78, #TREMOLOLONG ; A - tremolo
	dc.b	#$6A, #12, #VOL04REST02 ; C
	dc.b	#$5E, #12, #VOL04REST02 ; D

	; (instrumental)
	; Uses pokey_notes column P (green)
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$5E, #12, #VOL04REST02 ; D
	dc.b	#$5E, #12, #VOL04REST02 ; D
	dc.b	#$5E, #12, #VOL04REST02 ; D
	dc.b	#$53, #12, #VOL04REST02 ; E
	dc.b	#$4F, #12, #VOL04REST02 ; F
	dc.b	#$46, #12, #VOL04REST02 ; G
	dc.b	#$4F, #12, #VOL04REST02 ; F

	; "Break the chain and"
	; Uses pokey_notes column P (green)
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$3E, #12, #TREMOLOLONG ; A
	dc.b	#$3E, #12, #TREMOLOLONG ; A
	dc.b	#$3E, #24, #TREMOLOLONG ; A
	dc.b	#$3E, #24, #TREMOLOLONG ; A

	; "we break down"
	; Uses pokey_notes column P (green)
	dc.b	#$39, #24, #VOL04REST02 ; Bb
	dc.b	#$3E, #24, #VOL04REST02 ; A
	dc.b	#$46, #24, #VOL04REST02 ; G
	dc.b	#$4F, #24, #VOL04REST02 ; F

	; "but it's not real if you don't feel it"
	; Uses pokey_notes column P (green)
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$4F, #12, #VOL04REST02 ; F
	dc.b	#$4F, #12, #VOL04REST02 ; F
	dc.b	#$4F, #12, #VOL04REST02 ; F
	dc.b	#$46, #12, #VOL04REST02 ; G
	dc.b	#$3E, #24, #VOL04REST02 ; A
	dc.b	#$53, #24, #VOL04REST02 ; E
	dc.b	#$53, #12, #VOL04REST02 ; E
	dc.b	#$4F, #24, #VOL04REST02 ; F
	dc.b	#$46, #24, #VOL04REST02 ; G
	dc.b	#$3E, #24, #VOL04REST02 ; A

	; "Unspoken"
	; Uses pokey_notes column P (green)
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$33, #12, #VOL04REST02 ; C
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$39, #24, #VOL04REST02 ; Bb
	dc.b	#$3E, #24, #VOL04REST02 ; A

	; "expectations"
	; Uses pokey_notes column P (green)
	dc.b	#$46, #24, #VOL04REST02 ; G
	dc.b	#$4F, #24, #VOL04REST02 ; F
	dc.b	#$53, #24, #VOL04REST02 ; E
	dc.b	#$4F, #24, #VOL04REST02 ; F

	; "Ideas you"
	; page 2 in https://www.youtube.com/watch?v=o3X_mM3Yc_g
	; Uses pokey_notes column P (green)
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$3E, #12, #VOL04REST02 ; A
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$46, #24, #VOL04REST02 ; G
	dc.b	#$4F, #24, #VOL04REST02 ; F

	; Used to play with"
	; Uses pokey_notes column P (green)
	dc.b	#$53, #24, #VOL04REST02 ; E
	dc.b	#$5E, #24, #VOL04REST02 ; D
	dc.b	#$64, #24, #VOL04REST02 ; C#
	dc.b	#$5E, #24, #VOL04REST02 ; D

	; They've finally"
	; Uses pokey_notes column P (green)
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$33, #12, #VOL04REST02 ; C
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$39, #24, #VOL04REST02 ; Bb
	dc.b	#$3E, #24, #VOL04REST02 ; A

	; "taken shape now"
	; Uses pokey_notes column P (green)
	dc.b	#$46, #24, #VOL04REST02 ; G
	dc.b	#$4F, #12, #VOL04REST02 ; F
	dc.b	#$3E, #24, #VOL04REST02 ; A
	dc.b	#$3E, #12, #VOL04REST02 ; A
	dc.b	#$46, #12, #VOL04REST02 ; G
	dc.b	#$4F, #12, #VOL04REST02 ; F

	; "Good enough"
	; Uses pokey_notes column P (green)
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$3E, #18, #VOL06REST02 ; A
	dc.b	#$3E, #6,  #VOL06REST02 ; A
	dc.b	#$3E, #24, #VOL06REST02 ; A
	dc.b	#$4F, #18, #VOL04REST02 ; F
	dc.b	#$4F, #6,  #VOL04REST02 ; F

	; "for you it's"
	; Uses pokey_notes column P (green)
	dc.b	#$4F, #24, #VOL04REST02 ; F
	dc.b	#$3E, #24, #VOL06REST02 ; A
	dc.b	#$3E, #24, #VOL06REST02 ; A
	dc.b	#$3E, #24, #VOL06REST02 ; A

	; "Good enough"
	; Uses pokey_notes column P (green)
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$3E, #18, #VOL06REST02 ; A
	dc.b	#$3E, #6,  #VOL06REST02 ; A
	dc.b	#$3E, #12, #VOL06REST02 ; A
	dc.b	#$46, #12, #VOL06REST02 ; G
	dc.b	#$4F, #12, #VOL06REST02 ; F
	dc.b	#$3E, #6,  #VOL04REST02 ; A
	dc.b	#$46, #6,  #VOL04REST02 ; G

	; "For me it's good enough"
	; Uses pokey_notes column P (green)
	dc.b	#$4F, #24, #VOL04REST02 ; F
	dc.b	#$39, #24, #VOL06REST02 ; Bb
	dc.b	#$39, #36, #VOL06REST02 ; Bb
	dc.b	#$33, #6,  #VOL06REST02 ; C
	dc.b	#$2D, #42, #TREMOLOLONG ; D - tremolo
	dc.b	#$33, #12, #VOL06REST02 ; C
	dc.b	#$33, #48, #TREMOLOLONG ; C - tremolo

	; It's good enough for me"
	; page 3 - https://www.youtube.com/watch?v=o3X_mM3Yc_g
	; Uses pokey_notes column P (green)
	dc.b	#$00, #48, #RESTDEFAULT ; rest
	dc.b	#$3E, #12, #VOL06REST02 ; A
	dc.b	#$33, #12, #VOL06REST02 ; C
	dc.b	#$33, #12, #VOL06REST02 ; C
	dc.b	#$33, #24, #VOL06REST02 ; C
	dc.b	#$33, #24, #VOL06REST02 ; C
	dc.b	#$2D, #12, #VOL06REST02 ; D 
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$4F, #12, #VOL06REST02 ; F
	dc.b	#$3E, #12, #VOL06REST02 ; A
	dc.b	#$2D, #12, #VOL06REST02 ; D

	; "Yeah, yeah, yeah, yeah, yeah"
	; Uses pokey_notes column P (green)
	dc.b	#$25, #18, #VOL06REST02 ; F
	dc.b	#$28, #18, #VOL06REST02 ; E
	dc.b	#$2D, #12, #VOL06REST02 ; D
	dc.b	#$33, #24, #VOL06REST02 ; C
	dc.b	#$33, #6,  #VOL06REST02 ; C
	dc.b	#$2D, #18, #VOL06REST02 ; D

	dc.b	#$FF
	dc.b	#<Goonies2Song1Track1Restart
	dc.b	#>Goonies2Song1Track1Restart
  ENDIF ; (IF MUTE_TRACK1)

;=============
Goonies2Song1Track2
;=============
; Uses pokey_notes column H (brown)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

	; Some info from here https://www.poppiano.org/en/sheet/?id=16205

  IF MUTE_TRACK2
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song1Track2
	dc.b	#>Goonies2Song1Track2
  ELSE
	; Uses pokey_notes column H (brown)
	dc.b	#$34, #12, #VOL06REST02 ; D
	dc.b	#$34, #12, #VOL06REST02 ; D
	dc.b	#$34, #12, #VOL06REST02 ; D
	dc.b	#$34, #12, #VOL06REST02 ; D
	dc.b	#$34, #12, #VOL06REST02 ; D
	dc.b	#$34, #12, #VOL06REST02 ; D
	dc.b	#$34, #12, #VOL06REST02 ; D
	dc.b	#$34, #12, #VOL06REST02 ; D

	; Uses pokey_notes column H (brown)
	dc.b	#$34, #12, #VOL06REST02 ; D
	dc.b	#$34, #12, #VOL06REST02 ; D
	dc.b	#$34, #12, #VOL06REST02 ; D
	dc.b	#$34, #12, #VOL06REST02 ; D
	dc.b	#$34, #12, #VOL06REST02 ; D
	dc.b	#$34, #12, #VOL06REST02 ; D
	dc.b	#$34, #12, #VOL06REST02 ; D
	dc.b	#$34, #12, #VOL06REST02 ; D

	; Uses pokey_notes column H (brown)
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D

	; Uses pokey_notes column H (brown)
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$59, #6,  #VOL06REST02 ; F
	dc.b	#$70, #6,  #VOL06REST02 ; C#
	dc.b	#$9F, #12, #VOL06REST02 ; G

Goonies2Song1Track2Restart
	dc.b	#$6A, #24, #VOL06REST02 ; D
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$6A, #36, #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$00, #48, #RESTDEFAULT ; rest
	dc.b	#$8E, #24, #VOL06REST02 ; A
	dc.b	#$77, #24, #VOL06REST02 ; C

	dc.b	#$6A, #24, #VOL06REST02 ; D
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$6A, #36, #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$00, #48, #RESTDEFAULT ; rest
	dc.b	#$8E, #24, #VOL06REST02 ; A
	dc.b	#$77, #24, #VOL06REST02 ; C

	; Uses pokey_notes column H (brown)
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$3B, #12, #VOL06REST02 ; C
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$3B, #12, #VOL06REST02 ; C
	dc.b	#$59, #12, #VOL06REST02 ; F

	; Uses pokey_notes column H (brown)
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$3B, #12, #VOL06REST02 ; C
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$3B, #12, #VOL06REST02 ; C
	dc.b	#$59, #12, #VOL06REST02 ; F

	; Uses pokey_notes column H (brown)
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$46, #12, #VOL06REST02 ; A
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$46, #12, #VOL06REST02 ; A
	dc.b	#$6A, #12, #VOL06REST02 ; D

	; Uses pokey_notes column H (brown)
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$46, #12, #VOL06REST02 ; A
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$5E, #12, #VOL06REST02 ; E
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$4F, #12, #VOL06REST02 ; G
	dc.b	#$59, #12, #VOL06REST02 ; F

	; Uses pokey_notes column H (brown)
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$3B, #12, #VOL06REST02 ; C
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$3B, #12, #VOL06REST02 ; C
	dc.b	#$59, #12, #VOL06REST02 ; F

	; Uses pokey_notes column H (brown)
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$3B, #12, #VOL06REST02 ; C
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$3B, #12, #VOL06REST02 ; C
	dc.b	#$59, #12, #VOL06REST02 ; F

	; Uses pokey_notes column H (brown)
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$46, #12, #VOL06REST02 ; A
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$46, #12, #VOL06REST02 ; A
	dc.b	#$6A, #12, #VOL06REST02 ; D

	; Uses pokey_notes column H (brown)
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$46, #12, #VOL06REST02 ; A
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D change-up
	dc.b	#$46, #12, #VOL06REST02 ; A
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$3B, #12, #VOL06REST02 ; C

	; Uses pokey_notes column H (brown)
	dc.b	#$86, #12, #VOL06REST02 ; Bb
	dc.b	#$86, #12, #VOL06REST02 ; Bb
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$86, #12, #VOL06REST02 ; Bb
	dc.b	#$86, #12, #VOL06REST02 ; Bb
	dc.b	#$86, #12, #VOL06REST02 ; Bb
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$86, #12, #VOL06REST02 ; Bb

	; Uses pokey_notes column H (brown)
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$4F, #12, #VOL06REST02 ; G
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$4F, #12, #VOL06REST02 ; G
	dc.b	#$77, #12, #VOL06REST02 ; C

	; Uses pokey_notes column H (brown)
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$3B, #12, #VOL06REST02 ; C
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$3B, #12, #VOL06REST02 ; C
	dc.b	#$59, #12, #VOL06REST02 ; F

	; Uses pokey_notes column H (brown)
	dc.b	#$4F, #12, #VOL06REST02 ; G
	dc.b	#$9F, #12, #VOL06REST02 ; G LOWEST
	dc.b	#$9F, #12, #VOL06REST02 ; G
	dc.b	#$9F, #12, #VOL06REST02 ; G
	dc.b	#$8E, #12, #VOL06REST02 ; A
	dc.b	#$8E, #12, #VOL06REST02 ; A
	dc.b	#$86, #12, #VOL06REST02 ; Bb
	dc.b	#$77, #12, #VOL06REST02 ; C

	; Uses pokey_notes column H (brown)
	dc.b	#$86, #12, #VOL06REST02 ; Bb
	dc.b	#$86, #12, #VOL06REST02 ; Bb
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$86, #12, #VOL06REST02 ; Bb
	dc.b	#$86, #12, #VOL06REST02 ; Bb
	dc.b	#$86, #12, #VOL06REST02 ; Bb
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$86, #12, #VOL06REST02 ; Bb

	; Uses pokey_notes column H (brown)
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$4F, #12, #VOL06REST02 ; G
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$5E, #12, #VOL06REST02 ; E

	; Another change up - fast notes
	; Uses pokey_notes column H (brown)
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$2C, #6,  #VOL06REST02 ; F
	dc.b	#$2C, #6,  #VOL06REST02 ; F
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$2C, #6,  #VOL06REST02 ; F
	dc.b	#$2C, #6,  #VOL06REST02 ; F
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$2C, #6,  #VOL06REST02 ; F
	dc.b	#$2C, #6,  #VOL06REST02 ; F
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$2C, #6,  #VOL06REST02 ; F
	dc.b	#$2C, #6,  #VOL06REST02 ; F

	; Uses pokey_notes column H (brown)
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$2C, #6,  #VOL06REST02 ; F
	dc.b	#$2C, #6,  #VOL06REST02 ; F
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$2C, #6,  #VOL06REST02 ; F
	dc.b	#$2C, #6,  #VOL06REST02 ; F
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$2C, #6,  #VOL06REST02 ; F
	dc.b	#$2C, #6,  #VOL06REST02 ; F
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$2C, #6,  #VOL06REST02 ; F
	dc.b	#$2C, #6,  #VOL06REST02 ; F

	; Uses pokey_notes column H (brown)
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$34, #6,  #VOL06REST02 ; D
	dc.b	#$34, #6,  #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$34, #6,  #VOL06REST02 ; D
	dc.b	#$34, #6,  #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$34, #6,  #VOL06REST02 ; D
	dc.b	#$34, #6,  #VOL06REST02 ; D
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$34, #6,  #VOL06REST02 ; D
	dc.b	#$34, #6,  #VOL06REST02 ; D

	; Uses pokey_notes column H (brown)
	dc.b	#$86, #12, #VOL06REST02 ; Bb
	dc.b	#$42, #6,  #VOL06REST02 ; Bb
	dc.b	#$42, #6,  #VOL06REST02 ; Bb
	dc.b	#$86, #12, #VOL06REST02 ; Bb
	dc.b	#$42, #6,  #VOL06REST02 ; Bb
	dc.b	#$42, #6,  #VOL06REST02 ; Bb
	dc.b	#$86, #12, #VOL06REST02 ; Bb
	dc.b	#$42, #6,  #VOL06REST02 ; Bb
	dc.b	#$42, #6,  #VOL06REST02 ; Bb
	dc.b	#$86, #12, #VOL06REST02 ; Bb
	dc.b	#$42, #6,  #VOL06REST02 ; Bb
	dc.b	#$42, #6,  #VOL06REST02 ; Bb

	; Uses pokey_notes column H (brown)
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$3B, #6,  #VOL06REST02 ; C
	dc.b	#$3B, #6,  #VOL06REST02 ; C
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$3B, #6,  #VOL06REST02 ; C
	dc.b	#$3B, #6,  #VOL06REST02 ; C
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$3B, #6,  #VOL06REST02 ; C
	dc.b	#$3B, #6,  #VOL06REST02 ; C
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$3B, #6,  #VOL06REST02 ; C
	dc.b	#$3B, #6,  #VOL06REST02 ; C

	; Uses pokey_notes column H (brown)
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$3B, #6,  #VOL06REST02 ; C
	dc.b	#$3B, #6,  #VOL06REST02 ; C
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$3B, #6,  #VOL06REST02 ; C
	dc.b	#$3B, #6,  #VOL06REST02 ; C
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$3B, #6,  #VOL06REST02 ; C
	dc.b	#$3B, #6,  #VOL06REST02 ; C
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$3B, #6,  #VOL06REST02 ; C
	dc.b	#$3B, #6,  #VOL06REST02 ; C

	; Another change up
	; Uses pokey_notes column H (brown)
	dc.b	#$8E, #18, #VOL06REST02 ; A
	dc.b	#$8E, #6,  #VOL06REST02 ; A
	dc.b	#$5E, #12, #VOL06REST02 ; E
	dc.b	#$46, #12, #VOL06REST02 ; A
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$8E, #12, #VOL06REST02 ; A
	dc.b	#$5E, #12, #VOL06REST02 ; E
	dc.b	#$46, #12, #VOL06REST02 ; A

	; Uses pokey_notes column H (brown)
	dc.b	#$86, #18, #VOL06REST02 ; Bb
	dc.b	#$86, #6,  #VOL06REST02 ; Bb
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$59, #12, #VOL06REST02 ; F
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$77, #12, #VOL06REST02 ; C
	dc.b	#$6A, #12, #VOL06REST02 ; D
	dc.b	#$5E, #12, #VOL06REST02 ; E

	dc.b	#$FF
	dc.b	#<Goonies2Song1Track2Restart
	dc.b	#>Goonies2Song1Track2Restart
  ENDIF ; (IF MUTE_TRACK2)

;=============
Goonies2Song1Track3
;=============
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK3
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song1Track3
	dc.b	#>Goonies2Song1Track3
  ELSE
	; Uses pokey_notes column P (green)
	dc.b	#$2D, #24, #ARCH24_16FD	; D
	dc.b	#$14, #12, #ARCH12_16EX ; D
	dc.b	#$2D, #12, #ARCH12_16EX ; D
	dc.b	#$21, #12, #ARCH12_16EX ; G
	dc.b	#$1D, #12, #ARCH12_16EX ; A
	dc.b	#$17, #12, #ARCH12_16EX ; C
	dc.b	#$14, #12, #ARCH12_16EX ; D

	; Uses pokey_notes column P (green)
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$2D, #6,  #ARCH12_16EX ; D
	dc.b	#$2D, #6,  #ARCH12_16EX ; D
	dc.b	#$14, #12, #ARCH12_16EX ; D
	dc.b	#$2D, #12, #ARCH12_16EX ; D
	dc.b	#$21, #12, #ARCH12_16EX ; G
	dc.b	#$1D, #12, #ARCH12_16EX ; A
	dc.b	#$17, #12, #ARCH12_16EX ; C
	dc.b	#$14, #12, #ARCH12_16EX ; D

	; Uses pokey_notes column P (green)
	dc.b	#$2D, #24, #ARCH24_16FD ; D
	dc.b	#$14, #12, #ARCH12_16EX ; D
	dc.b	#$2D, #12, #ARCH12_16EX ; D
	dc.b	#$21, #12, #ARCH12_16EX ; G
	dc.b	#$1D, #12, #ARCH12_16EX ; A
	dc.b	#$17, #12, #ARCH12_16EX ; C
	dc.b	#$14, #12, #ARCH12_16EX ; D

	; Uses pokey_notes column P (green)
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$2D, #6,  #ARCH12_16EX ; D
	dc.b	#$2D, #6,  #ARCH12_16EX ; D
	dc.b	#$14, #12, #ARCH12_16EX ; D
	dc.b	#$2D, #12, #ARCH12_16EX ; D
	dc.b	#$21, #12, #ARCH12_16EX ; G
	dc.b	#$1D, #12, #ARCH12_16EX ; A
	dc.b	#$17, #12, #ARCH12_16EX ; C
	dc.b	#$14, #12, #ARCH12_16EX ; D

Goonies2Song1Track3Restart

	; Uses pokey_notes column P (green)
	dc.b	#$5E, #24, #ARCH24_16FD ; D
	dc.b	#$2D, #12, #ARCH12_16EX ; D
	dc.b	#$5E, #12, #ARCH12_16EX ; D
	dc.b	#$46, #12, #ARCH12_16EX ; G
	dc.b	#$3E, #12, #ARCH12_16EX ; A
	dc.b	#$33, #12, #ARCH12_16EX ; C
	dc.b	#$2D, #12, #ARCH12_16EX ; D

	; Uses pokey_notes column P (green)
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$5E, #6,  #ARCH12_16EX ; D
	dc.b	#$5E, #6,  #ARCH12_16EX ; D
	dc.b	#$2D, #12, #ARCH12_16EX ; D
	dc.b	#$5E, #12, #ARCH12_16EX ; D
	dc.b	#$46, #12, #ARCH12_16EX ; G
	dc.b	#$3E, #12, #ARCH12_16EX ; A
	dc.b	#$33, #12, #ARCH12_16EX ; C
	dc.b	#$2D, #12, #ARCH12_16EX ; D

	; Uses pokey_notes column P (green)
	dc.b	#$5E, #24, #ARCH24_16FD ; D
	dc.b	#$2D, #12, #ARCH12_16EX ; D
	dc.b	#$5E, #12, #ARCH12_16EX ; D
	dc.b	#$46, #12, #ARCH12_16EX ; G
	dc.b	#$3E, #12, #ARCH12_16EX ; A
	dc.b	#$33, #12, #ARCH12_16EX ; C
	dc.b	#$2D, #12, #ARCH12_16EX ; D

	; Uses pokey_notes column P (green)
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$5E, #6,  #ARCH12_16EX ; D
	dc.b	#$5E, #6,  #ARCH12_16EX ; D
	dc.b	#$2D, #12, #ARCH12_16EX ; D
	dc.b	#$5E, #12, #ARCH12_16EX ; D
	dc.b	#$46, #12, #ARCH12_16EX ; G
	dc.b	#$3E, #12, #ARCH12_16EX ; A
	dc.b	#$33, #12, #ARCH12_16EX ; C
	dc.b	#$2D, #12, #ARCH12_16EX ; D

	; Main melody
	; "Here we are hanging"
	; Uses pokey_notes column P (green)
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$3E, #24, #VOL04REST02 ; A
	dc.b	#$4F, #12, #VOL04REST02 ; F
	dc.b	#$3E, #24, #VOL04REST02 ; A
	dc.b	#$4F, #12, #VOL04REST02 ; F

	; "onto strains of greens and blues"
	; Uses pokey_notes column P (green)
	dc.b	#$00, #06, #RESTDEFAULT ; rest
	dc.b	#$39, #24, #VOL04REST02 ; Bb
	dc.b	#$3E, #24, #VOL04REST02 ; A
	dc.b	#$46, #24, #VOL04REST02 ; G
	dc.b	#$4F, #12, #VOL04REST02 ; F
	dc.b	#$6A, #6,  #VOL04REST02 ; C
	dc.b	#$5E, #72, #TREMOLOLONG ; D - tremolo
	dc.b	#$8F, #12, #VOL04REST02 ; G
	dc.b	#$7F, #12, #VOL04REST02 ; A

	; (instrumental)
	; Uses pokey_notes column P (green)
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$5E, #12, #VOL04REST02 ; D
	dc.b	#$5E, #12, #VOL04REST02 ; D
	dc.b	#$5E, #12, #VOL04REST02 ; D
	dc.b	#$53, #12, #VOL04REST02 ; E
	dc.b	#$4F, #12, #VOL04REST02 ; F
	dc.b	#$46, #12, #VOL04REST02 ; G
	dc.b	#$4F, #12, #VOL04REST02 ; F

	; "Break the chain and"
	; Uses pokey_notes column P (green)
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$3E, #12, #VOL04REST02 ; A
	dc.b	#$3E, #12, #VOL04REST02 ; A
	dc.b	#$3E, #24, #VOL04REST02 ; A
	dc.b	#$3E, #24, #VOL04REST02 ; A

	; "we break down"
	; Uses pokey_notes column P (green)
	dc.b	#$00, #6,  #RESTDEFAULT ; rest
	dc.b	#$39, #24, #VOL04REST02 ; Bb
	dc.b	#$3E, #24, #VOL04REST02 ; A
	dc.b	#$46, #24, #VOL04REST02 ; G
	dc.b	#$4F, #18, #VOL04REST02 ; F

	; "but it's not real if you don't feel it"
	; Uses pokey_notes column P (green)
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$5E, #12, #VOL04REST02 ; D
	dc.b	#$5E, #12, #VOL04REST02 ; D
	dc.b	#$5E, #12, #VOL04REST02 ; D
	dc.b	#$53, #12, #VOL04REST02 ; E
	dc.b	#$4F, #24, #VOL04REST02 ; F
	dc.b	#$6A, #24, #VOL04REST02 ; C
	dc.b	#$6A, #12, #VOL04REST02 ; C
	dc.b	#$5E, #24, #VOL04REST02 ; D
	dc.b	#$53, #24, #VOL04REST02 ; E
	dc.b	#$4F, #24, #VOL04REST02 ; F

	; "Unspoken"
	; Uses pokey_notes column P (green)
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$33, #12, #VOL04REST02 ; C
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$39, #24, #VOL04REST02 ; Bb
	dc.b	#$33, #12, #VOL04REST02 ; C
	dc.b	#$00, #12, #RESTDEFAULT ; rest

	; "expectations"
	; Uses pokey_notes column P (green)
	dc.b	#$39, #24, #VOL04REST02 ; Bb
	dc.b	#$3E, #24, #VOL04REST02 ; A
	dc.b	#$46, #24, #VOL04REST02 ; G
	dc.b	#$3E, #24, #VOL04REST02 ; A

	; "Ideas you"
	; page 2 in https://www.youtube.com/watch?v=o3X_mM3Yc_g
	; Uses pokey_notes column P (green)
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$3E, #12, #VOL04REST02 ; A
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$46, #24, #VOL04REST02 ; G
	dc.b	#$3E, #24, #VOL04REST02 ; A

	; Used to play with"
	; Uses pokey_notes column P (green)
	dc.b	#$46, #24, #VOL04REST02 ; G
	dc.b	#$4F, #24, #VOL04REST02 ; F
	dc.b	#$53, #24, #VOL04REST02 ; E
	dc.b	#$4F, #24, #VOL04REST02 ; F

	; They've finally"
	; Uses pokey_notes column P (green)
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$33, #12, #VOL04REST02 ; C
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$39, #24, #VOL04REST02 ; Bb

	; "taken shape now"
	; Uses pokey_notes column P (green)
	dc.b	#$33, #12, #VOL06REST02 ; C
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$39, #24, #VOL04REST02 ; Bb
	dc.b	#$5E, #12, #VOL04REST02 ; D
	dc.b	#$53, #24, #VOL04REST02 ; E
	dc.b	#$53, #12, #VOL04REST02 ; E
	dc.b	#$5E, #12, #VOL04REST02 ; D
	dc.b	#$6A, #12, #VOL04REST02 ; C

	; "Good enough"
	; Uses pokey_notes column P (green)
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$4F, #18, #VOL06REST02 ; F
	dc.b	#$4F, #6,  #VOL06REST02 ; F
	dc.b	#$4F, #24, #VOL06REST02 ; F
	dc.b	#$6A, #18, #VOL04REST02 ; C
	dc.b	#$6A, #6,  #VOL04REST02 ; C

	; "for you it's"
	; Uses pokey_notes column P (green)
	dc.b	#$6A, #24, #VOL04REST02 ; C
	dc.b	#$4F, #24, #VOL06REST02 ; F
	dc.b	#$4F, #24, #VOL06REST02 ; F
	dc.b	#$4F, #24, #VOL06REST02 ; F

	; "Good enough"
	; Uses pokey_notes column P (green)
	dc.b	#$00, #24, #RESTDEFAULT ; rest
	dc.b	#$5E, #18, #VOL06REST02 ; D
	dc.b	#$5E, #6,  #VOL06REST02 ; D
	dc.b	#$5E, #12, #VOL06REST02 ; D
	dc.b	#$5E, #12, #VOL06REST02 ; D
	dc.b	#$5E, #12, #VOL06REST02 ; D
	dc.b	#$4F, #6,  #VOL04REST02 ; F
	dc.b	#$53, #6,  #VOL04REST02 ; E

	; "For me it's good enough"
	; Uses pokey_notes column P (green)
	dc.b	#$5E, #24, #VOL04REST02 ; D
	dc.b	#$4F, #24, #VOL06REST02 ; F
	dc.b	#$4F, #36, #VOL06REST02 ; F
	dc.b	#$46, #6,  #VOL06REST02 ; G
	dc.b	#$3E, #42, #TREMOLOLONG ; A - tremolo
	dc.b	#$46, #12, #VOL06REST02 ; G
	dc.b	#$46, #48, #TREMOLOLONG ; G - tremolo

	; It's good enough for me"
	; page 3 - https://www.youtube.com/watch?v=o3X_mM3Yc_g
	; Uses pokey_notes column P (green)
	dc.b	#$00, #48, #RESTDEFAULT ; rest
	dc.b	#$53, #12, #VOL06REST02 ; E
	dc.b	#$46, #12, #VOL06REST02 ; G
	dc.b	#$46, #12, #VOL06REST02 ; G
	dc.b	#$46, #24, #VOL06REST02 ; G
	dc.b	#$46, #24, #VOL06REST02 ; G
	dc.b	#$3E, #12, #VOL06REST02 ; A
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$6A, #12, #VOL06REST02 ; C
	dc.b	#$53, #12, #VOL06REST02 ; E
	dc.b	#$3E, #12, #VOL06REST02 ; A

	; "Yeah, yeah, yeah, yeah, yeah"
	; Uses pokey_notes column P (green)
	dc.b	#$25, #18, #VOL06REST02 ; F
	dc.b	#$28, #18, #VOL06REST02 ; E
	dc.b	#$2D, #12, #VOL06REST02 ; D
	dc.b	#$33, #24, #VOL06REST02 ; C
	dc.b	#$33, #6,  #VOL06REST02 ; C
	dc.b	#$2D, #18, #VOL06REST02 ; D

	dc.b	#$FF
	dc.b	#<Goonies2Song1Track3Restart
	dc.b	#>Goonies2Song1Track3Restart
  ENDIF ; (IF MUTE_TRACK3)

;=============
Goonies2Song1Track4
;=============
	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK4
	; HACK - turn these lines to shut off music for this track
	dc.b	#$00, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song1Track4
	dc.b	#>Goonies2Song1Track4
  ELSE

;BASSDRUM	equ	$0F
BASSDRUM	equ	$5C
DRUM4FRAMES	equ	14
;SNAREDRUM	equ	$07
SNAREDRUM	equ	$0E
DRUM4FRAMES	equ	14

	; TODO
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #2, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #2, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

Goonies2Song1Track4Restart
	; change up
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #32, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #32, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #56, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #20, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #20, #RESTDEFAULT ; rest

	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #32, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #32, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #56, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #20, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #20, #RESTDEFAULT ; rest

	; melody 1 - 8 measures: ends with a double snare
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

	; melody 2 - 8 measures repeat, no double-snare at end
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

	; melody 3 - 8 measures, last 2 measures bass only, then 2 snares
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

	; melody 4 - 4 measures, double snare
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

	; melody 5 - 12 measures, no double snare
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

	; melody 6 - 2 measures with a different beat
	; bass, blank, snare, blank
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#$00, #12, #RESTDEFAULT ; rest

	; blank, blank, snare, blank
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#$00, #12, #RESTDEFAULT ; rest

	; bass, blank, snare, blank
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#$00, #12, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#$00, #12, #RESTDEFAULT ; rest

	; bass, bass, bass, bass
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#$00, #8, #RESTDEFAULT ; rest

	dc.b	#$FF
	dc.b	#<Goonies2Song1Track4Restart
	dc.b	#>Goonies2Song1Track4Restart
  ENDIF ; (IF MUTE_TRACK4)

