MUTE_TRACK1		set	0
MUTE_TRACK2		set	0
MUTE_TRACK3		set	0
MUTE_TRACK4		set	0

; Drum equates
BASSDRUM1		equ	$5C
BASSDRUM		equ	$5C
HIGHSNARE		equ	$07
SNAREDRUM		equ	$0E
DRUM4FRAMES		equ	14

;=============
Goonies2Song3Track1
;=============
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK1
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song3Track1
	dc.b	#>Goonies2Song3Track1
  ELSE
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_D,  #24, #ARCH24_16FD ; D
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_G,  #12, #ARCH12_16EX ; G
	dc.b	#MAIN_OCT4_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D

	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_D,  #6,  #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_D,  #6,  #ARCH12_16EX ; D
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_G,  #12, #ARCH12_16EX ; G
	dc.b	#MAIN_OCT4_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_D,  #24, #ARCH24_16FD ; D
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_G,  #12, #ARCH12_16EX ; G
	dc.b	#MAIN_OCT4_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D

	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_D,  #6,  #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_D,  #6,  #ARCH12_16EX ; D
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_G,  #12, #ARCH12_16EX ; G
	dc.b	#MAIN_OCT4_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT5_G,  #12, #ARCH12_16EX ; G
	dc.b	#MAIN_OCT5_F,  #12, #ARCH12_16EX ; F

Goonies2Song3Track1Restart
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT5_A,  #36,  #ARCH12_16EX ; A
	dc.b	#MAIN_OCT5_B,  #6,   #ARCH12_16EX ; B
	dc.b	#MAIN_OCT6_CS, #6,   #ARCH12_16EX ; C#
	dc.b	#MAIN_OCT6_D,  #144, #TREMOLOLONG ; D - tremolo

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT5_FS, #36, #TREMOLOLONG ; F# - tremolo
	dc.b	#MAIN_OCT5_E,  #36, #TREMOLOLONG ; E - tremolo
	dc.b	#MAIN_OCT5_FS, #96, #TREMOLOLONG ; F# - tremolo
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest

	; Main melody
	; "Here we are hanging"
	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_A,  #24, #TREMOLOLONG ; A
	dc.b	#MAIN_OCT4_F,  #12, #TREMOLOLONG ; F
	dc.b	#MAIN_OCT4_A,  #24, #TREMOLOLONG ; A
	dc.b	#MAIN_OCT4_F,  #12, #TREMOLOLONG ; F

	; "onto strains of greens and blues"
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_AS, #24, #VOL04REST02 ; Bb
	dc.b	#MAIN_OCT4_A,  #24, #VOL04REST02 ; A
	dc.b	#MAIN_OCT4_G,  #24, #VOL04REST02 ; G
	dc.b	#MAIN_OCT4_F,  #12, #VOL04REST02 ; F
	dc.b	#MAIN_OCT4_G,  #6,  #VOL04REST02 ; G
	dc.b	#MAIN_OCT4_A,  #78, #TREMOLOLONG ; A - tremolo
	dc.b	#MAIN_OCT4_C,  #12, #VOL04REST02 ; C
	dc.b	#MAIN_OCT4_D,  #12, #VOL04REST02 ; D

	; (instrumental)
	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_D,  #12, #VOL04REST02 ; D
	dc.b	#MAIN_OCT4_D,  #12, #VOL04REST02 ; D
	dc.b	#MAIN_OCT4_D,  #12, #VOL04REST02 ; D
	dc.b	#MAIN_OCT4_E,  #12, #VOL04REST02 ; E
	dc.b	#MAIN_OCT4_F,  #12, #VOL04REST02 ; F
	dc.b	#MAIN_OCT4_G,  #12, #VOL04REST02 ; G
	dc.b	#MAIN_OCT4_F,  #12, #VOL04REST02 ; F

	; "Break the chain and"
	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_A,  #12, #TREMOLOLONG ; A
	dc.b	#MAIN_OCT4_A,  #12, #TREMOLOLONG ; A
	dc.b	#MAIN_OCT4_A,  #24, #TREMOLOLONG ; A
	dc.b	#MAIN_OCT4_A,  #24, #TREMOLOLONG ; A

	; "we break down"
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_AS, #24, #VOL04REST02 ; Bb
	dc.b	#MAIN_OCT4_A,  #24, #VOL04REST02 ; A
	dc.b	#MAIN_OCT4_G,  #24, #VOL04REST02 ; G
	dc.b	#MAIN_OCT4_F,  #24, #VOL04REST02 ; F

	; "but it's not real if you don't feel it"
	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_F,  #12, #VOL04REST02 ; F
	dc.b	#MAIN_OCT4_F,  #12, #VOL04REST02 ; F
	dc.b	#MAIN_OCT4_F,  #12, #VOL04REST02 ; F
	dc.b	#MAIN_OCT4_G,  #12, #VOL04REST02 ; G
	dc.b	#MAIN_OCT4_A,  #24, #VOL04REST02 ; A
	dc.b	#MAIN_OCT4_E,  #24, #VOL04REST02 ; E
	dc.b	#MAIN_OCT4_E,  #12, #VOL04REST02 ; E
	dc.b	#MAIN_OCT4_F,  #24, #VOL04REST02 ; F
	dc.b	#MAIN_OCT4_G,  #24, #VOL04REST02 ; G
	dc.b	#MAIN_OCT4_A,  #24, #VOL04REST02 ; A

	; "Unspoken"
	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT5_C,  #12, #VOL04REST02 ; C
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_AS, #24, #VOL04REST02 ; Bb
	dc.b	#MAIN_OCT4_A,  #24, #VOL04REST02 ; A

	; "expectations"
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #24, #VOL04REST02 ; G
	dc.b	#MAIN_OCT4_F,  #24, #VOL04REST02 ; F
	dc.b	#MAIN_OCT4_E,  #24, #VOL04REST02 ; E
	dc.b	#MAIN_OCT4_F,  #24, #VOL04REST02 ; F

	; "Ideas you"
	; page 2 in https://www.youtube.com/watch?v=o3X_mM3Yc_g
	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_A,  #12, #VOL04REST02 ; A
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_G,  #24, #VOL04REST02 ; G
	dc.b	#MAIN_OCT4_F,  #24, #VOL04REST02 ; F

	; Used to play with"
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_E,  #24, #VOL04REST02 ; E
	dc.b	#MAIN_OCT4_D,  #24, #VOL04REST02 ; D
	dc.b	#MAIN_OCT4_CS, #24, #VOL04REST02 ; C#
	dc.b	#MAIN_OCT4_D,  #24, #VOL04REST02 ; D

	; They've finally"
	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT5_C,  #12, #VOL04REST02 ; C
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_AS, #24, #VOL04REST02 ; Bb
	dc.b	#MAIN_OCT4_A,  #24, #VOL04REST02 ; A

	; "taken shape now"
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #24, #VOL04REST02 ; G
	dc.b	#MAIN_OCT4_F,  #12, #VOL04REST02 ; F
	dc.b	#MAIN_OCT4_A,  #24, #VOL04REST02 ; A
	dc.b	#MAIN_OCT4_A,  #12, #VOL04REST02 ; A
	dc.b	#MAIN_OCT4_G,  #12, #VOL04REST02 ; G
	dc.b	#MAIN_OCT4_F,  #12, #VOL04REST02 ; F

	; "Good enough"
	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_A,  #18, #VOL06REST02 ; A
	dc.b	#MAIN_OCT4_A,  #6,  #VOL06REST02 ; A
	dc.b	#MAIN_OCT4_A,  #24, #VOL06REST02 ; A
	dc.b	#MAIN_OCT4_F,  #18, #VOL04REST02 ; F
	dc.b	#MAIN_OCT4_F,  #6,  #VOL04REST02 ; F

	; "for you it's"
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_F,  #24, #VOL04REST02 ; F
	dc.b	#MAIN_OCT4_A,  #24, #VOL06REST02 ; A
	dc.b	#MAIN_OCT4_A,  #24, #VOL06REST02 ; A
	dc.b	#MAIN_OCT4_A,  #24, #VOL06REST02 ; A

	; "Good enough"
	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_A,  #18, #VOL06REST02 ; A
	dc.b	#MAIN_OCT4_A,  #6,  #VOL06REST02 ; A
	dc.b	#MAIN_OCT4_A,  #12, #VOL06REST02 ; A
	dc.b	#MAIN_OCT4_G,  #12, #VOL06REST02 ; G
	dc.b	#MAIN_OCT4_F,  #12, #VOL06REST02 ; F
	dc.b	#MAIN_OCT4_A,  #6,  #VOL04REST02 ; A
	dc.b	#MAIN_OCT4_G,  #6,  #VOL04REST02 ; G

	; "For me it's good enough"
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_F,  #24, #VOL04REST02 ; F
	dc.b	#MAIN_OCT4_AS, #24, #VOL06REST02 ; Bb
	dc.b	#MAIN_OCT4_AS, #36, #VOL06REST02 ; Bb
	dc.b	#MAIN_OCT5_C,  #6,  #VOL06REST02 ; C
	dc.b	#MAIN_OCT5_D,  #42, #TREMOLOLONG ; D - tremolo
	dc.b	#MAIN_OCT5_C,  #12, #VOL06REST02 ; C
	dc.b	#MAIN_OCT5_C,  #48, #TREMOLOLONG ; C - tremolo

	; It's good enough for me"
	; page 3 - https://www.youtube.com/watch?v=o3X_mM3Yc_g
	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #48, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_A,  #12, #VOL06REST02 ; A
	dc.b	#MAIN_OCT5_C,  #12, #VOL06REST02 ; C
	dc.b	#MAIN_OCT5_C,  #12, #VOL06REST02 ; C
	dc.b	#MAIN_OCT5_C,  #24, #VOL06REST02 ; C
	dc.b	#MAIN_OCT5_C,  #24, #VOL06REST02 ; C
	dc.b	#MAIN_OCT5_D,  #12, #VOL06REST02 ; D 
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_F,  #12, #VOL06REST02 ; F
	dc.b	#MAIN_OCT4_A,  #12, #VOL06REST02 ; A
	dc.b	#MAIN_OCT5_D,  #12, #VOL06REST02 ; D

	; "Yeah, yeah, yeah, yeah, yeah"
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT5_F,  #18, #VOL06REST02 ; F
	dc.b	#MAIN_OCT5_E,  #18, #VOL06REST02 ; E
	dc.b	#MAIN_OCT5_D,  #12, #VOL06REST02 ; D
	dc.b	#MAIN_OCT5_C,  #24, #VOL06REST02 ; C
	dc.b	#MAIN_OCT5_C,  #6,  #VOL06REST02 ; C
	dc.b	#MAIN_OCT5_D,  #18, #VOL06REST02 ; D

	dc.b	#$FF
	dc.b	#<Goonies2Song3Track1Restart
	dc.b	#>Goonies2Song3Track1Restart
  ENDIF ; (IF MUTE_TRACK1)

;=============
Goonies2Song3Track2
;=============
; Uses pokey_notes column H (brown)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

	; Some info from here https://www.poppiano.org/en/sheet/?id=16205

  IF MUTE_TRACK2
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song3Track2
	dc.b	#>Goonies2Song3Track2
  ELSE
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT3_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT3_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT3_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT3_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT3_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT3_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT3_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT3_D,  #12, #VOL06REST02 ; D

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT3_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT3_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT3_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT3_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT3_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT3_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT3_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT3_D,  #12, #VOL06REST02 ; D

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_F,  #6,  #VOL06REST02 ; F
	dc.b	#BASS_OCT2_CS, #6,  #VOL06REST02 ; C#
	dc.b	#BASS_OCT1_G,  #12, #VOL06REST02 ; G

Goonies2Song3Track2Restart
	dc.b	#BASS_OCT2_D,  #24, #VOL06REST02 ; D
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_D,  #36, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#RESTNOSOUND,  #48, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT1_A,  #24, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_C,  #24, #VOL06REST02 ; C

	dc.b	#BASS_OCT2_D,  #24, #VOL06REST02 ; D
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT2_D,  #36, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#RESTNOSOUND,  #48, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT1_A,  #24, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_C,  #24, #VOL06REST02 ; C

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_E,  #12, #VOL06REST02 ; E
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_G,  #12, #VOL06REST02 ; G
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D change-up
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; Bb
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; Bb
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; Bb
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; Bb
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; Bb
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; Bb

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_G,  #12, #VOL06REST02 ; G
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_G,  #12, #VOL06REST02 ; G
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT3_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_G,  #12, #VOL06REST02 ; G
	dc.b	#BASS_OCT1_G,  #12, #VOL06REST02 ; G LOWEST
	dc.b	#BASS_OCT1_G,  #12, #VOL06REST02 ; G
	dc.b	#BASS_OCT1_G,  #12, #VOL06REST02 ; G
	dc.b	#BASS_OCT1_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT1_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; Bb
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; Bb
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; Bb
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; Bb
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; Bb
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; Bb
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; Bb

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_G,  #12, #VOL06REST02 ; G
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_E,  #12, #VOL06REST02 ; E

	; Another change up - fast notes
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT3_F,  #6,  #VOL06REST02 ; F
	dc.b	#BASS_OCT3_F,  #6,  #VOL06REST02 ; F
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT3_F,  #6,  #VOL06REST02 ; F
	dc.b	#BASS_OCT3_F,  #6,  #VOL06REST02 ; F
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT3_F,  #6,  #VOL06REST02 ; F
	dc.b	#BASS_OCT3_F,  #6,  #VOL06REST02 ; F
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT3_F,  #6,  #VOL06REST02 ; F
	dc.b	#BASS_OCT3_F,  #6,  #VOL06REST02 ; F

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT3_F,  #6,  #VOL06REST02 ; F
	dc.b	#BASS_OCT3_F,  #6,  #VOL06REST02 ; F
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT3_F,  #6,  #VOL06REST02 ; F
	dc.b	#BASS_OCT3_F,  #6,  #VOL06REST02 ; F
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT3_F,  #6,  #VOL06REST02 ; F
	dc.b	#BASS_OCT3_F,  #6,  #VOL06REST02 ; F
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT3_F,  #6,  #VOL06REST02 ; F
	dc.b	#BASS_OCT3_F,  #6,  #VOL06REST02 ; F

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT3_D,  #6,  #VOL06REST02 ; D
	dc.b	#BASS_OCT3_D,  #6,  #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT3_D,  #6,  #VOL06REST02 ; D
	dc.b	#BASS_OCT3_D,  #6,  #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT3_D,  #6,  #VOL06REST02 ; D
	dc.b	#BASS_OCT3_D,  #6,  #VOL06REST02 ; D
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT3_D,  #6,  #VOL06REST02 ; D
	dc.b	#BASS_OCT3_D,  #6,  #VOL06REST02 ; D

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; Bb
	dc.b	#BASS_OCT2_AS, #6,  #VOL06REST02 ; Bb
	dc.b	#BASS_OCT2_AS, #6,  #VOL06REST02 ; Bb
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; Bb
	dc.b	#BASS_OCT2_AS, #6,  #VOL06REST02 ; Bb
	dc.b	#BASS_OCT2_AS, #6,  #VOL06REST02 ; Bb
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; Bb
	dc.b	#BASS_OCT2_AS, #6,  #VOL06REST02 ; Bb
	dc.b	#BASS_OCT2_AS, #6,  #VOL06REST02 ; Bb
	dc.b	#BASS_OCT1_AS, #12, #VOL06REST02 ; Bb
	dc.b	#BASS_OCT2_AS, #6,  #VOL06REST02 ; Bb
	dc.b	#BASS_OCT2_AS, #6,  #VOL06REST02 ; Bb

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #6,  #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #6,  #VOL06REST02 ; C
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #6,  #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #6,  #VOL06REST02 ; C
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #6,  #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #6,  #VOL06REST02 ; C
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #6,  #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #6,  #VOL06REST02 ; C

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #6,  #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #6,  #VOL06REST02 ; C
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #6,  #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #6,  #VOL06REST02 ; C
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #6,  #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #6,  #VOL06REST02 ; C
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #6,  #VOL06REST02 ; C
	dc.b	#BASS_OCT3_C,  #6,  #VOL06REST02 ; C

	; Another change up
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_A,  #18, #VOL06REST02 ; A
	dc.b	#BASS_OCT1_A,  #6,  #VOL06REST02 ; A
	dc.b	#BASS_OCT2_E,  #12, #VOL06REST02 ; E
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT1_A,  #12, #VOL06REST02 ; A
	dc.b	#BASS_OCT2_E,  #12, #VOL06REST02 ; E
	dc.b	#BASS_OCT2_A,  #12, #VOL06REST02 ; A

	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT1_AS, #18, #VOL06REST02 ; Bb
	dc.b	#BASS_OCT1_AS, #6,  #VOL06REST02 ; Bb
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_F,  #12, #VOL06REST02 ; F
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_C,  #12, #VOL06REST02 ; C
	dc.b	#BASS_OCT2_D,  #12, #VOL06REST02 ; D
	dc.b	#BASS_OCT2_E,  #12, #VOL06REST02 ; E

	dc.b	#$FF
	dc.b	#<Goonies2Song3Track2Restart
	dc.b	#>Goonies2Song3Track2Restart
  ENDIF ; (IF MUTE_TRACK2)

;=============
Goonies2Song3Track3
;=============
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK3
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song3Track3
	dc.b	#>Goonies2Song3Track3
  ELSE
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT5_D,  #24, #ARCH24_16FD ; D
	dc.b	#MAIN_OCT6_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT5_G,  #12, #ARCH12_16EX ; G
	dc.b	#MAIN_OCT5_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT6_C,  #12, #ARCH12_16EX ; C
	dc.b	#MAIN_OCT6_D,  #12, #ARCH12_16EX ; D

	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT5_D,  #6,  #ARCH12_16EX ; D
	dc.b	#MAIN_OCT5_D,  #6,  #ARCH12_16EX ; D
	dc.b	#MAIN_OCT6_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT5_G,  #12, #ARCH12_16EX ; G
	dc.b	#MAIN_OCT5_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT6_C,  #12, #ARCH12_16EX ; C
	dc.b	#MAIN_OCT6_D,  #12, #ARCH12_16EX ; D

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT5_D,  #24, #ARCH24_16FD ; D
	dc.b	#MAIN_OCT6_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT5_G,  #12, #ARCH12_16EX ; G
	dc.b	#MAIN_OCT5_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT6_C,  #12, #ARCH12_16EX ; C
	dc.b	#MAIN_OCT6_D,  #12, #ARCH12_16EX ; D

	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT5_D,  #6,  #ARCH12_16EX ; D
	dc.b	#MAIN_OCT5_D,  #6,  #ARCH12_16EX ; D
	dc.b	#MAIN_OCT6_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT5_G,  #12, #ARCH12_16EX ; G
	dc.b	#MAIN_OCT5_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT6_C,  #12, #ARCH12_16EX ; C
	dc.b	#MAIN_OCT6_D,  #12, #ARCH12_16EX ; D

Goonies2Song3Track3Restart

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_D,  #24, #ARCH24_16FD ; D
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_G,  #12, #ARCH12_16EX ; G
	dc.b	#MAIN_OCT4_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D

	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_D,  #6,  #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_D,  #6,  #ARCH12_16EX ; D
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_G,  #12, #ARCH12_16EX ; G
	dc.b	#MAIN_OCT4_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D

	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_D,  #24, #ARCH24_16FD ; D
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_G,  #12, #ARCH12_16EX ; G
	dc.b	#MAIN_OCT4_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D

	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_D,  #6,  #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_D,  #6,  #ARCH12_16EX ; D
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_D,  #12, #ARCH12_16EX ; D
	dc.b	#MAIN_OCT4_G,  #12, #ARCH12_16EX ; G
	dc.b	#MAIN_OCT4_A,  #12, #ARCH12_16EX ; A
	dc.b	#MAIN_OCT5_C,  #12, #ARCH12_16EX ; C
	dc.b	#MAIN_OCT5_D,  #12, #ARCH12_16EX ; D

	; Main melody
	; "Here we are hanging"
	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_A,  #24, #VOL04REST02 ; A
	dc.b	#MAIN_OCT4_F,  #12, #VOL04REST02 ; F
	dc.b	#MAIN_OCT4_A,  #24, #VOL04REST02 ; A
	dc.b	#MAIN_OCT4_F,  #12, #VOL04REST02 ; F

	; "onto strains of greens and blues"
	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #06, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_AS, #24, #VOL04REST02 ; Bb
	dc.b	#MAIN_OCT4_A,  #24, #VOL04REST02 ; A
	dc.b	#MAIN_OCT4_G,  #24, #VOL04REST02 ; G
	dc.b	#MAIN_OCT4_F,  #12, #VOL04REST02 ; F
	dc.b	#MAIN_OCT4_C,  #6,  #VOL04REST02 ; C
	dc.b	#MAIN_OCT4_D,  #72, #TREMOLOLONG ; D - tremolo
	dc.b	#MAIN_OCT3_G,  #12, #VOL04REST02 ; G
	dc.b	#MAIN_OCT3_A,  #12, #VOL04REST02 ; A

	; (instrumental)
	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_D,  #12, #VOL04REST02 ; D
	dc.b	#MAIN_OCT4_D,  #12, #VOL04REST02 ; D
	dc.b	#MAIN_OCT4_D,  #12, #VOL04REST02 ; D
	dc.b	#MAIN_OCT4_E,  #12, #VOL04REST02 ; E
	dc.b	#MAIN_OCT4_F,  #12, #VOL04REST02 ; F
	dc.b	#MAIN_OCT4_G,  #12, #VOL04REST02 ; G
	dc.b	#MAIN_OCT4_F,  #12, #VOL04REST02 ; F

	; "Break the chain and"
	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_A,  #12, #VOL04REST02 ; A
	dc.b	#MAIN_OCT4_A,  #12, #VOL04REST02 ; A
	dc.b	#MAIN_OCT4_A,  #24, #VOL04REST02 ; A
	dc.b	#MAIN_OCT4_A,  #24, #VOL04REST02 ; A

	; "we break down"
	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #6,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_AS, #24, #VOL04REST02 ; Bb
	dc.b	#MAIN_OCT4_A,  #24, #VOL04REST02 ; A
	dc.b	#MAIN_OCT4_G,  #24, #VOL04REST02 ; G
	dc.b	#MAIN_OCT4_F,  #18, #VOL04REST02 ; F

	; "but it's not real if you don't feel it"
	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_D,  #12, #VOL04REST02 ; D
	dc.b	#MAIN_OCT4_D,  #12, #VOL04REST02 ; D
	dc.b	#MAIN_OCT4_D,  #12, #VOL04REST02 ; D
	dc.b	#MAIN_OCT4_E,  #12, #VOL04REST02 ; E
	dc.b	#MAIN_OCT4_F,  #24, #VOL04REST02 ; F
	dc.b	#MAIN_OCT4_C,  #24, #VOL04REST02 ; C
	dc.b	#MAIN_OCT4_C,  #12, #VOL04REST02 ; C
	dc.b	#MAIN_OCT4_D,  #24, #VOL04REST02 ; D
	dc.b	#MAIN_OCT4_E,  #24, #VOL04REST02 ; E
	dc.b	#MAIN_OCT4_F,  #24, #VOL04REST02 ; F

	; "Unspoken"
	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT5_C,  #12, #VOL04REST02 ; C
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_AS, #24, #VOL04REST02 ; Bb
	dc.b	#MAIN_OCT5_C,  #12, #VOL04REST02 ; C
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest

	; "expectations"
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_AS, #24, #VOL04REST02 ; Bb
	dc.b	#MAIN_OCT4_A,  #24, #VOL04REST02 ; A
	dc.b	#MAIN_OCT4_G,  #24, #VOL04REST02 ; G
	dc.b	#MAIN_OCT4_A,  #24, #VOL04REST02 ; A

	; "Ideas you"
	; page 2 in https://www.youtube.com/watch?v=o3X_mM3Yc_g
	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_A,  #12, #VOL04REST02 ; A
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_G,  #24, #VOL04REST02 ; G
	dc.b	#MAIN_OCT4_A,  #24, #VOL04REST02 ; A

	; Used to play with"
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_G,  #24, #VOL04REST02 ; G
	dc.b	#MAIN_OCT4_F,  #24, #VOL04REST02 ; F
	dc.b	#MAIN_OCT4_E,  #24, #VOL04REST02 ; E
	dc.b	#MAIN_OCT4_F,  #24, #VOL04REST02 ; F

	; They've finally"
	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT5_C,  #12, #VOL04REST02 ; C
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_AS, #24, #VOL04REST02 ; Bb

	; "taken shape now"
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT5_C,  #12, #VOL06REST02 ; C
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_AS, #24, #VOL04REST02 ; Bb
	dc.b	#MAIN_OCT4_D,  #12, #VOL04REST02 ; D
	dc.b	#MAIN_OCT4_E,  #24, #VOL04REST02 ; E
	dc.b	#MAIN_OCT4_E,  #12, #VOL04REST02 ; E
	dc.b	#MAIN_OCT4_D,  #12, #VOL04REST02 ; D
	dc.b	#MAIN_OCT4_C,  #12, #VOL04REST02 ; C

	; "Good enough"
	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_F,  #18, #VOL06REST02 ; F
	dc.b	#MAIN_OCT4_F,  #6,  #VOL06REST02 ; F
	dc.b	#MAIN_OCT4_F,  #24, #VOL06REST02 ; F
	dc.b	#MAIN_OCT4_C,  #18, #VOL04REST02 ; C
	dc.b	#MAIN_OCT4_C,  #6,  #VOL04REST02 ; C

	; "for you it's"
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_C,  #24, #VOL04REST02 ; C
	dc.b	#MAIN_OCT4_F,  #24, #VOL06REST02 ; F
	dc.b	#MAIN_OCT4_F,  #24, #VOL06REST02 ; F
	dc.b	#MAIN_OCT4_F,  #24, #VOL06REST02 ; F

	; "Good enough"
	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #24, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_D,  #18, #VOL06REST02 ; D
	dc.b	#MAIN_OCT4_D,  #6,  #VOL06REST02 ; D
	dc.b	#MAIN_OCT4_D,  #12, #VOL06REST02 ; D
	dc.b	#MAIN_OCT4_D,  #12, #VOL06REST02 ; D
	dc.b	#MAIN_OCT4_D,  #12, #VOL06REST02 ; D
	dc.b	#MAIN_OCT4_F,  #6,  #VOL04REST02 ; F
	dc.b	#MAIN_OCT4_E,  #6,  #VOL04REST02 ; E

	; "For me it's good enough"
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT4_D,  #24, #VOL04REST02 ; D
	dc.b	#MAIN_OCT4_F,  #24, #VOL06REST02 ; F
	dc.b	#MAIN_OCT4_F,  #36, #VOL06REST02 ; F
	dc.b	#MAIN_OCT4_G,  #6,  #VOL06REST02 ; G
	dc.b	#MAIN_OCT4_A,  #42, #TREMOLOLONG ; A - tremolo
	dc.b	#MAIN_OCT4_G,  #12, #VOL06REST02 ; G
	dc.b	#MAIN_OCT4_G,  #48, #TREMOLOLONG ; G - tremolo

	; It's good enough for me"
	; page 3 - https://www.youtube.com/watch?v=o3X_mM3Yc_g
	; Uses pokey_notes column P (green)
	dc.b	#RESTNOSOUND,  #48, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_E,  #12, #VOL06REST02 ; E
	dc.b	#MAIN_OCT4_G,  #12, #VOL06REST02 ; G
	dc.b	#MAIN_OCT4_G,  #12, #VOL06REST02 ; G
	dc.b	#MAIN_OCT4_G,  #24, #VOL06REST02 ; G
	dc.b	#MAIN_OCT4_G,  #24, #VOL06REST02 ; G
	dc.b	#MAIN_OCT4_A,  #12, #VOL06REST02 ; A
	dc.b	#RESTNOSOUND,  #12, #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT4_C,  #12, #VOL06REST02 ; C
	dc.b	#MAIN_OCT4_E,  #12, #VOL06REST02 ; E
	dc.b	#MAIN_OCT4_A,  #12, #VOL06REST02 ; A

	; "Yeah, yeah, yeah, yeah, yeah"
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT5_F,  #18, #VOL06REST02 ; F
	dc.b	#MAIN_OCT5_E,  #18, #VOL06REST02 ; E
	dc.b	#MAIN_OCT5_D,  #12, #VOL06REST02 ; D
	dc.b	#MAIN_OCT5_C,  #24, #VOL06REST02 ; C
	dc.b	#MAIN_OCT5_C,  #6,  #VOL06REST02 ; C
	dc.b	#MAIN_OCT5_D,  #18, #VOL06REST02 ; D

	dc.b	#$FF
	dc.b	#<Goonies2Song3Track3Restart
	dc.b	#>Goonies2Song3Track3Restart
  ENDIF ; (IF MUTE_TRACK3)

;=============
Goonies2Song3Track4
;=============
	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK4
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<Goonies2Song3Track4
	dc.b	#>Goonies2Song3Track4
  ELSE

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #2, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #2, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

Goonies2Song3Track4Restart
	; change up
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #32, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #32, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #56, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #20, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #20, #RESTDEFAULT ; rest

	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #32, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #32, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #56, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #20, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #20, #RESTDEFAULT ; rest

	; melody 1 - 8 measures: ends with a double snare
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

	; melody 2 - 8 measures repeat, no double-snare at end
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

	; melody 3 - 8 measures, last 2 measures bass only, then 2 snares
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

	; melody 4 - 4 measures, double snare
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

	; melody 5 - 12 measures, no double snare
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

	; melody 6 - 2 measures with a different beat
	; bass, blank, snare, blank
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#RESTNOSOUND, #12, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#RESTNOSOUND, #12, #RESTDEFAULT ; rest

	; blank, blank, snare, blank
	dc.b	#RESTNOSOUND, #12, #RESTDEFAULT ; rest
	dc.b	#RESTNOSOUND, #12, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#RESTNOSOUND, #12, #RESTDEFAULT ; rest

	; bass, blank, snare, blank
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#RESTNOSOUND, #12, #RESTDEFAULT ; rest
	dc.b	#SNAREDRUM, #4, #DRUM4FRAMES	; snare drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#RESTNOSOUND, #12, #RESTDEFAULT ; rest

	; bass, bass, bass, bass
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest
	dc.b	#BASSDRUM, #4, #DRUM4FRAMES	; bass drum
	dc.b	#RESTNOSOUND, #8, #RESTDEFAULT ; rest

	dc.b	#$FF
	dc.b	#<Goonies2Song3Track4Restart
	dc.b	#>Goonies2Song3Track4Restart
  ENDIF ; (IF MUTE_TRACK4)

