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
RBIBaseball1Song3Track1
;=================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK1
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<RBIBaseball1Song3Track1
	dc.b	#>RBIBaseball1Song3Track1
  ELSE
	; Uses pokey_notes column P (green)
	dc.b	#MAIN_OCT3_A,  #16, #ARCH48_24FD ; A
        dc.b    #RESTNOSOUND,  #8,  #RESTDEFAULT ; rest
	dc.b	#MAIN_OCT3_A,  #16, #ARCH48_24FD ; A
	dc.b	#MAIN_OCT3_A,  #8,  #ARCH12_16EX ; A
        dc.b    #MAIN_OCT3_A,  #16, #ARCH48_24FD ; A
        dc.b    #RESTNOSOUND,  #32, #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_CS, #16, #ARCH48_24FD ; C#
        dc.b    #RESTNOSOUND,  #8,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_CS, #16, #ARCH48_24FD ; C#
        dc.b    #MAIN_OCT4_CS, #8,  #ARCH12_16EX ; C#
        dc.b    #MAIN_OCT4_CS, #16, #ARCH48_24FD ; C#
        dc.b    #RESTNOSOUND,  #32, #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_E,  #16, #ARCH48_24FD ; E
        dc.b    #RESTNOSOUND,  #8,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_E,  #16, #ARCH48_24FD ; E
        dc.b    #MAIN_OCT4_E,  #8,  #ARCH12_16EX ; E
        dc.b    #MAIN_OCT4_E,  #16, #ARCH48_24FD ; E
        dc.b    #RESTNOSOUND,  #32, #RESTDEFAULT ; rest

        ; Uses pokey_notes column P (green)
        dc.b    #MAIN_OCT4_A,  #16, #ARCH48_24FD ; A
        dc.b    #RESTNOSOUND,  #8,  #RESTDEFAULT ; rest
        dc.b    #MAIN_OCT4_A,  #16, #ARCH48_24FD ; A
        dc.b    #MAIN_OCT4_A,  #8,  #ARCH12_16EX ; A
        dc.b    #MAIN_OCT4_A,  #16, #ARCH48_24FD ; A
        dc.b    #RESTNOSOUND,  #32, #RESTDEFAULT ; rest
  ENDIF

	dc.b	#$FF
	dc.b	#<RBIBaseball1Song3Track1
	dc.b	#>RBIBaseball1Song3Track1

  ENDIF ; (IF MUTE_TRACK1)

;================
RBIBaseball1Song3Track2
;================
; Uses pokey_notes column H (brown)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK2
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<RBIBaseball1Song3Track2
	dc.b	#>RBIBaseball1Song3Track2
  ELSE
	; Uses pokey_notes column H (brown)
	dc.b	#BASS_OCT3_A,  #8,  #VOL02REST02 ; A
        dc.b    #RESTNOSOUND,  #16, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_A,  #8,  #VOL02REST02 ; A
        dc.b    #RESTNOSOUND,  #8,  #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_A,  #8,  #VOL02REST02 ; A
	dc.b	#BASS_OCT3_A,  #8,  #VOL02REST02 ; A
	dc.b	#RESTNOSOUND,  #16, #RESTDEFAULT ; rest
	dc.b	#BASS_OCT3_CS, #8,  #VOL02REST02 ; C#
	dc.b	#BASS_OCT3_E,  #8,  #VOL02REST02 ; E
        dc.b    #BASS_OCT3_A,  #8,  #VOL02REST02 ; A

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT3_A,  #8,  #VOL02REST02 ; A
        dc.b    #RESTNOSOUND,  #16, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT3_A,  #8,  #VOL02REST02 ; A
        dc.b    #RESTNOSOUND,  #8,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT3_A,  #8,  #VOL02REST02 ; A
        dc.b    #BASS_OCT3_A,  #8,  #VOL02REST02 ; A
        dc.b    #RESTNOSOUND,  #16, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT3_CS, #8,  #VOL02REST02 ; C#
        dc.b    #BASS_OCT3_E,  #8,  #VOL02REST02 ; E
        dc.b    #BASS_OCT3_A,  #8,  #VOL02REST02 ; A

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT3_A,  #8,  #VOL02REST02 ; A
        dc.b    #RESTNOSOUND,  #16, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT3_A,  #8,  #VOL02REST02 ; A
        dc.b    #RESTNOSOUND,  #8,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT3_A,  #8,  #VOL02REST02 ; A
        dc.b    #BASS_OCT3_A,  #8,  #VOL02REST02 ; A
        dc.b    #RESTNOSOUND,  #16, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT3_CS, #8,  #VOL02REST02 ; C#
        dc.b    #BASS_OCT3_E,  #8,  #VOL02REST02 ; E
        dc.b    #BASS_OCT3_A,  #8,  #VOL02REST02 ; A

        ; Uses pokey_notes column H (brown)
        dc.b    #BASS_OCT3_A,  #8,  #VOL02REST02 ; A
        dc.b    #RESTNOSOUND,  #16, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT3_A,  #8,  #VOL02REST02 ; A
        dc.b    #RESTNOSOUND,  #8,  #RESTDEFAULT ; rest
        dc.b    #BASS_OCT3_A,  #8,  #VOL02REST02 ; A
        dc.b    #BASS_OCT3_A,  #8,  #VOL02REST02 ; A
        dc.b    #RESTNOSOUND,  #16, #RESTDEFAULT ; rest
        dc.b    #BASS_OCT3_CS, #8,  #VOL02REST02 ; C#
        dc.b    #BASS_OCT3_E,  #8,  #VOL02REST02 ; E
        dc.b    #BASS_OCT3_A,  #8,  #VOL02REST02 ; A
  ENDIF

	dc.b	#$FF
	dc.b	#<RBIBaseball1Song3Track2
	dc.b	#>RBIBaseball1Song3Track2

  ENDIF ; (IF MUTE_TRACK2)

;================
RBIBaseball1Song3Track3
;================
; Uses pokey_notes column P (green)

	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK3
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<RBIBaseball1Song3Track3
	dc.b	#>RBIBaseball1Song3Track3
  ELSE

	; This track has no music
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<RBIBaseball1Song3Track3
	dc.b	#>RBIBaseball1Song3Track3
  ENDIF ; (IF MUTE_TRACK3)

;================
RBIBaseball1Song3Track4
;================
	; Frequency, length, Effect
	; $FF means it's over, loop back.

  IF MUTE_TRACK4
	; HACK - turn these lines to shut off music for this track
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<RBIBaseball1Song3Track4
	dc.b	#>RBIBaseball1Song3Track4
  ELSE

        ; This track has no music
	dc.b	#RESTNOSOUND, #96, #RESTDEFAULT ; rest
	dc.b	#$FF
	dc.b	#<RBIBaseball1Song3Track4
	dc.b	#>RBIBaseball1Song3Track4

  ENDIF ; (IF MUTE_TRACK4)

