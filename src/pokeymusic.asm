;===================
;TRACK CHANNELS:
; 1 - 2 -  column P (green)
; 2 - 10 - column H (brown)
; 3 - 2 -  column P (green)
; 4 - 8 -  drums
;===================
; If we ever want to do a Middle C test
;  - Track 1 / 3 :  dc.b  #$6A, #48, #15 ; green (2)
;  - Track 2     :  dc.b  #$3C, #48, #15 ; orange (10)
;  - Compare against: https://www.youtube.com/watch?v=Yjlbq0Qypp0
;===================
; Source music:
; - [NES] Spelunker - OST Cover : Fingerstyle Guitar [Score & TAB] 
; --- https://www.youtube.com/watch?v=ET6K54OKrcI&list=RDET6K54OKrcI
; - Cyndi Lauper - the Goonies are Good Enough
; --- https://www.youtube.com/watch?v=o3X_mM3Yc_g
; --- (partial) https://www.poppiano.org/en/sheet/?id=16205
;===================

;==========================
; NOTE SPREADSHEET COLUMNS
;==========================
; In the spreadsheet, DISTORTION means CHANNEL
; -  these are set in the ChannelTypesPerAUDC function
; --- Track 1 uses Distortion / Channel  2 ; Melody - (triangle wave) - 1.79 MHz - COLUMN P
; --- Track 2 uses Distortion / Channel 10 ; Bass - (square wave) - 15 kHz - COLUMN H
; --- Track 3 uses Distortion / Channel  2 ; Melody - (triangle wave) - 1.79 MHz - COLUMN P
; --- Track 4 uses Distortion / Channel  8 ; Drums (white noise) - 15 kHZ - noise only, no spreadsheet
; - 17 bit poly
; - not 16-bit channels, 8 bits each
; - high pass filters off
; - Channel AUDC 3,5 are 1.79 MHz NTSC
; - Channel AUDC 2,4 are 15kHz
;=========
; Distortion 0 = Pink noise, Rough whooshing
; Distortion 2 = Triangle wave, Bell tones (good for bass at low numbers). $36 good, $3C good
; Distortion 4 = Noise & Tune, Low End Rumble
; Distortion 6 = Triangle wave, Bell tones
; Distortion 8 = White noise, whooshing
; Distortion 10 = Square wave, Pure tones
; Distortion 12 = Sawtooth wave, Maybe Buzzy
; Distrotion 14 = Square wave, Pure tones
;=========================

;==========================
; Register Quick reference
;==========================
; AUDF2-AUDF5
;  -> %11111111 - frequency (0-255)
; AUDC2-AUDC5
;  -> %00001111 - Volume
;  -> %11100000 - noise / distortion (channel, actually)
;  -> %00010000 - Forced volume-only output.  PCM-feature related
; AUDCTL
; RANDOM
; SKCTL
; A list of POKEY note tables can be found here:
;  * https://forums.atariage.com/topic/216807-complete-pokey-note-table-for-all-distortion-settings/
;=========================

;=================
; CONFIGURE FLAGS
;=================
DEBUG_MUSIC_OFF		equ	0	; 1 if true, 0 if false.  Disables music on True


;=========
; CONST's
;=========
TOTAL_NUM_EFFECTS	equ	17
;========
RESTDEFAULT	equ	0 ; Rest uses 0 for effect
;========
VOL02_CONST	equ	0 ; no effect, volume 2/15, continuous
VOL04_CONST	equ	1 ; no effect, volume 4/15, continuous
VOL06_CONST	equ	2 ; no effect, volume 6/15, continuous
VOL08_CONST	equ	3 ; no effect, volume 8/15, continuous
;========
VOL02REST02	equ	4 ; no effect, volume 2/15, last 2 frames rest for note separation
VOL04REST02	equ	5 ; no effect, volume 4/15, last 2 frames rest for note separation
VOL06REST02	equ	6 ; no effect, volume 6/15, last 2 frames rest for note separation
VOL08REST02	equ	7 ; no effect, volume 8/15, last 2 frames rest for note separation
;========
ARCH48_24FD	equ	8 ; Volume "rainbow", fade in, fade out (48 frames). Or 24 frame fade-out.
ARCH96_72FD	equ	9 ; Volume "rainbow", fade in, fade out (96 frames). Or 72 frame fade-out.
ARCH12_16EX	equ	10 ; Volume "rainbow", fade in, fade out (12 frames). Can stretch to 16 frames.
ARCH24_16FD	equ	11 ; Volume "rainbow", fade in, fade out (24 frames). Or 16 frame fade-out.
;========
EXPERIMENT1	equ	12 ; Tremolo experiments that sound terrible. Maxmimum lengh of 64.
TREMOLOLONG	equ	13 ; Good Tremolo. Volume goes up and down a little like tremolo. No length limit.
DRUM4FRAMES	equ	14 ; Drum sound. 4 frames only. Very fast drop in volume over 4 frames.
GLISSANDOUP	equ	15 ; Glissando up.  Be careful with frame timing, avoid
; (On tracks 1 and 3 avoid notes: $F4, $D5, $B6, $97, $78, $59, $3A, $1B as they are pops and screeches)
GLISSANDOWN	equ	16 ; Glissando down.  Be careful with frame timing.
; (On tracks 1 and 3 avoid notes: $F4, $D5, $B6, $97, $78, $59, $3A, $1B as they are pops and screeches)
DRUM8FRAMES	equ	17 ; Drum sound.  8 frames.  4 for fast drop, 4 rest.
;=========

;====================================================
; RAM equates
;  - the PokeyRAM field has 12 zero-page bytes saved.
;  - Since we have 4 channels
;  --- each channel has a Word representing the current TRIPLET
;  --- each channel has a Countdown timer byte
;  - Note that the .ds 12 bytes is defined in src/main.asm
;====================================================
PokeyInstrument1Countdown	equ	PokeyRAM
PokeyInstrument2Countdown	equ	PokeyRAM+1
PokeyInstrument3Countdown	equ	PokeyRAM+2
PokeyInstrument4Countdown	equ	PokeyRAM+3

PokeyCurrentMusicIndexLSB1	equ	PokeyRAM+4
PokeyCurrentMusicIndexMSB1	equ	PokeyRAM+5

PokeyCurrentMusicIndexLSB2	equ	PokeyRAM+6
PokeyCurrentMusicIndexMSB2	equ	PokeyRAM+7

PokeyCurrentMusicIndexLSB3	equ	PokeyRAM+8
PokeyCurrentMusicIndexMSB3	equ	PokeyRAM+9

PokeyCurrentMusicIndexLSB4	equ	PokeyRAM+10
PokeyCurrentMusicIndexMSB4	equ	PokeyRAM+11

AUDF2BAK			equ	PokeyRAM+12
AUDF3BAK			equ	PokeyRAM+13
AUDF4BAK			equ	PokeyRAM+14
AUDF5BAK			equ	PokeyRAM+15
;====================================================

	;==========================================
	; Pokey equates reference
	; See: https://en.wikipedia.org/wiki/POKEY
	;==========================================
	;AUDF2
	;AUDC2
	;AUDF3
	;AUDC3
	;AUDF4
	;AUDC4
	;AUDF5
	;AUDC5
	;AUDCTL
	; LDA #$02 = 16-bit mode on channels 0 and 1, clocked at 1.79 mhz
	; LDA #$70 = 16-bit mode on channels 0 and 1, clocked at 1.79 mhz
	; LDA #$C0 = 9-bit polycounter, 16-bit filter, clock 0 at 1.79 mhz
	; Bit 0 $01: (15 kHz), choice of frequency divider rate "0" - 64 kHz, "1" - 15 kHz
	; Bit 1 $02: (FI2 + 4), high-pass filter for channel 3 rated by frequency of channel 5
	; Bit 2 $04: (FI1 + 3), high-pass filter for channel 2 rated by frequency of channel 4
	; Bit 3 $08: (CH4 + 3), connection of dividers 5+4 to obtain 16-bit accuracy
	; Bit 4 $10: (CH2 + 1), connection of dividers 3+2 to obtain 16-bit accuracy
	; Bit 5 $20: (CH3 1.79), set channel AUDC4 frequency "0" is 64 kHz. "1" is 1.79 MHz NTSC or 1.77 MHz PAL
	; Bit 6 $40: (CH1 1.79), set channel AUDC2 frequency "0" is 64 kHz. "1" is 1.79 MHz NTSC or 1.77 MHz PAL
	; Bit 7 $80: (POLY 9), switch shift register "0" - 17-bit, "1" – 9-bit
	;RANDOM
	;SKCTL
	; LDA #139 / STA SKCTLS ; 2 Tone mode on channels 0 and 1
	;==========================================
	; AUDC
	; +------+------+------+------+------+------+------+------+
	; |NOISE2|NOISE1|NOISE0|USEPCM|VOLUM3|VOLUM2|VOLUM1|VOLUM0|
	; +------+------+------+------+------+------+------+------+
	; NOISES:
	;  - 111 / 101 - square wave, pure tones
	;  - 110 - sawtooth wave, maybe buzzy
	;  - 100 - white noise, whooshing
	;  - 011 / 001 - triangle wave, bell tones
	;  - 010 - noise & tone, low end rumble
	;  - 000 - pink noise, rough whooshing
	; Choose 111 or 101 for [NOISE] for polytones, otherwise tank sounds
	; Choose 0 for USEPCM or it breaks audio
	; Choose 1000 for volume (right in the middle)
	;==========================================

	include "src/macros_pokey.asm"

;=========================
InitializeAndSilencePokey
;=========================
	LDA	#$00
	STA	AUDCTL
	LDA	#$00
	STA	SKCTL
	; Let's clear all the volumes to zero (and set to pure tones), just to be safe
	; IMPORTANT NOTE: The channels all get set properly in the ChannelTypesPerAUDC table
	LDA	#%11100000 ; 111 = pure tones, 00000 = volume 0
	STA	AUDC2
	STA	AUDC3
	STA	AUDC4
	STA	AUDC5
	; Reset POKEY
	; https://forums.atariage.com/topic/337460-cant-get-more-than-a-beep-with-pokey/?do=findComment&comment=5080905
	LDA	#$03
	STA	SKCTL
	RTS

	;==================================
	; Include all the music files here
	;==================================
    SEED_POKEY Spelunker1
	include "src/music_spelunker1.asm"
    SEED_POKEY Spelunker2
	include "src/music_spelunker2.asm"
    SEED_POKEY Spelunker3
	include "src/music_spelunker3.asm"
    SEED_POKEY Spelunker4
	include "src/music_spelunker4.asm"
    SEED_POKEY Spelunker5
	include "src/music_spelunker5.asm"
    SEED_POKEY Spelunker6
	include "src/music_spelunker6.asm"
    SEED_POKEY Spelunker7
	include "src/music_spelunker7.asm"
    SEED_POKEY Spelunker8
	include "src/music_spelunker8.asm"
    SEED_POKEY Spelunker9
	include "src/music_spelunker9.asm"
    SEED_POKEY Spelunker10
	include "src/music_spelunker10.asm"
    SEED_POKEY Goonies2Song1
	include "src/music_goonies2song1.asm"

;==============
PlayPokeyMusic
;==============
  IF DEBUG_MUSIC_OFF
	RTS
  ENDIF

	;==========================================
	; Don't play Music if we're not supposed to
	LDA	SWCHB
	AND	#%01000000
	STA	Temp
	LDA	InitialDifficultySwitches
	AND	#%01000000
	CMP	Temp
	BEQ	DefinitelyPlayMusic
	JSR	InitializeAndSilencePokey
	RTS
DefinitelyPlayMusic
	;==========================================

	;=====================================================================================
	; First, let's start with setting the AUDCTL settings we want
	;=====================================================================================
	; Bit 0 $01: (15 kHz), choice of frequency divider rate "0" - 64 kHz, "1" - 15 kHz
	; Bit 1 $02: (FI2 + 4), high-pass filter for channel 3 rated by frequency of channel 5
	; Bit 2 $04: (FI1 + 3), high-pass filter for channel 2 rated by frequency of channel 4
	; Bit 3 $08: (CH4 + 3), connection of dividers 5+4 to obtain 16-bit accuracy
	; Bit 4 $10: (CH2 + 1), connection of dividers 3+2 to obtain 16-bit accuracy
	; Bit 5 $20: (CH3 1.79), set channel AUDC4 frequency "0" is 64 kHz. "1" is 1.79 MHz NTSC or 1.77 MHz PAL
	; Bit 6 $40: (CH1 1.79), set channel AUDC2 frequency "0" is 64 kHz. "1" is 1.79 MHz NTSC or 1.77 MHz PAL
	; Bit 7 $80: (POLY 9), switch shift register "0" - 17-bit, "1" – 9-bit
	;
	; We want lower frequency tones, so we're going to set Bit Zero to 1
	; Using 15kHz for AUDC3 / AUDC5 and then setting 1.79 mHz on first and third channels (AUDC2 / AUDC4)
	LDA	#%01100001
	STA	AUDCTL
	;=====================================================================================

	;======================================================================================
	; You would think it prudent to next set our Channels. However, this won't work since:
	; - the AUDC registers are write-only, and
	; - the AUDC registers also control our volume.
	; Therefore, we will write our AUDC channel types each time we set the volume
	;======================================================================================

	; Next, we have to handle Music. Note that our values are already seeded to point to the right places
	; We are interested in 3 fields:
	; - PokeyInstrument1Countdown
	; - PokeyCurrentMusicIndexLSB1
	; - PokeyCurrentMusicIndexMSB1

	; Before we do anything, let's decrement the InstrumentCountdowns
	; Note - on an initilization run, this will set us to $FF
	DEC	PokeyInstrument1Countdown
	DEC	PokeyInstrument2Countdown
	DEC	PokeyInstrument3Countdown
	DEC	PokeyInstrument4Countdown

	;======================
	; INSTRUMENT 1 ROUTINE
	;======================
	; PokeyInstrument1Countdown has a number that's currently counting down.
	; Let's deal with PokeyInstrument1Countdown
	LDA	PokeyInstrument1Countdown
	BEQ	LoopToNextMusicTripletInstrument1
	CMP	#$FF
	BEQ	FirstTimePlayingMusicInstrument1
	BNE	HandleWaitingOnCurrentNoteInstrument1

LoopToNextMusicTripletInstrument1
	; this routine moves the Triplets forward, then falls into the "FirstTimePlayingMusic" routine
	LDA	PokeyCurrentMusicIndexLSB1
	CLC
	ADC	#3
	STA	PokeyCurrentMusicIndexLSB1
	; carry will be set if I need to bump the other one
	LDA	PokeyCurrentMusicIndexMSB1
	ADC	#0
	STA	PokeyCurrentMusicIndexMSB1
	; check for a reset condition
	LDY	#0
	LDA	(PokeyCurrentMusicIndexLSB1),Y
	CMP	#$FF ; if we didn't hit an "end of song" marker let's load the music
	BNE	FirstTimePlayingMusicInstrument1
	; Oops, we hit the end of a song; reset the pointers to the beginning (they are the next 2 values in the Triplet)
	INY
	LDA	(PokeyCurrentMusicIndexLSB1),Y
	TAX
	INY
	LDA	(PokeyCurrentMusicIndexLSB1),Y
	STA	PokeyCurrentMusicIndexMSB1
	TXA
	STA	PokeyCurrentMusicIndexLSB1

FirstTimePlayingMusicInstrument1
	; If we got here, this is "Initialization". Remember, we're pointing to the right triplet, but
	; just need to load data, not advance it
	; Also, this routine is special since it sets the PokeyInstrument1Countdown

	; TRIPLET PROCESSING - First Triplet - frequency
	LDY	#0
	LDA	(PokeyCurrentMusicIndexLSB1),Y
	STA	AUDF2
	STA	AUDF2BAK

	; TRIPLET PROCESSING - Second Triplet - sound length
	; Let's handle this first because we do different logic if the sound is a rest or not
	INY
	LDA	(PokeyCurrentMusicIndexLSB1),Y
	STA	PokeyInstrument1Countdown
	
HandleWaitingOnCurrentNoteInstrument1
	; Is it a Rest?
	LDY	#0
	LDA	(PokeyCurrentMusicIndexLSB1),Y
	BNE	NotARestInstrument1
	; It's a rest. Zero out the sound completely
	LDA	#0
	LDY	#0	; value is 0, 1, 2, 3 depending on Instrument
	JSR	AfterEffectsDone
	JMP	Instrument2Routine
NotARestInstrument1
	; NOW is where we handle the effects (THIRD TRIPLET)
	LDY	#2
	LDA	(PokeyCurrentMusicIndexLSB1),Y

	; From here, RAM has the value of the Effects field
	TAX	; temporary store
	LDY	#0	; value is 0, 1, 2, 3 depending on Instrument
	JSR	HandleEffects

	;======================
	; INSTRUMENT 2 ROUTINE
	;======================
Instrument2Routine
	; PokeyInstrument2Countdown has a number that's currently counting down.
	; Let's deal with PokeyInstrument2Countdown
	LDA	PokeyInstrument2Countdown
	BEQ	LoopToNextMusicTripletInstrument2
	CMP	#$FF
	BEQ	FirstTimePlayingMusicInstrument2
	BNE	HandleWaitingOnCurrentNoteInstrument2

LoopToNextMusicTripletInstrument2
	; this routine moves the Triplets forward, then falls into the "FirstTimePlayingMusic" routine
	LDA	PokeyCurrentMusicIndexLSB2
	CLC
	ADC	#3
	STA	PokeyCurrentMusicIndexLSB2
	; carry will be set if I need to bump the other one
	LDA	PokeyCurrentMusicIndexMSB2
	ADC	#0
	STA	PokeyCurrentMusicIndexMSB2
	; check for a reset condition
	LDY	#0
	LDA	(PokeyCurrentMusicIndexLSB2),Y
	CMP	#$FF ; if we didn't hit an "end of song" marker let's load the music
	BNE	FirstTimePlayingMusicInstrument2
	; Oops, we hit the end of a song; reset the pointers to the beginning (they are the next 2 values in the Triplet)
	INY
	LDA	(PokeyCurrentMusicIndexLSB2),Y
	TAX
	INY
	LDA	(PokeyCurrentMusicIndexLSB2),Y
	STA	PokeyCurrentMusicIndexMSB2
	TXA
	STA	PokeyCurrentMusicIndexLSB2

FirstTimePlayingMusicInstrument2
	; If we got here, this is "Initialization". Remember, we're pointing to the right triplet, but
	; just need to load data, not advance it
	; Also, this routine is special since it sets the PokeyInstrument2Countdown

	; TRIPLET PROCESSING - First Triplet - frequency
	LDY	#0
	LDA	(PokeyCurrentMusicIndexLSB2),Y
	STA	AUDF3
	STA	AUDF3BAK

	; TRIPLET PROCESSING - Second Triplet - sound length
	; Let's handle this first because we do different logic if the sound is a rest or not
	INY
	LDA	(PokeyCurrentMusicIndexLSB2),Y
	STA	PokeyInstrument2Countdown

HandleWaitingOnCurrentNoteInstrument2
	; Is it a Rest?
	LDY	#0
	LDA	(PokeyCurrentMusicIndexLSB2),Y
	BNE	NotARestInstrument2
	; It's a rest. Zero out the sound completely
	LDA	#0
	LDY	#1	; value is 0, 1, 2, 3 depending on Instrument
	JSR	AfterEffectsDone
	JMP	Instrument3Routine
NotARestInstrument2
	; NOW is where we handle the effects (THIRD TRIPLET)
	LDY	#2
	LDA	(PokeyCurrentMusicIndexLSB2),Y

	; From here, RAM has the value of the Effects field
	TAX	; temporary store
	LDY	#1	; value is 0, 1, 2, 3 depending on Instrument
	JSR	HandleEffects

	;======================
	; INSTRUMENT 3 ROUTINE
	;======================
Instrument3Routine
	; PokeyInstrument3Countdown has a number that's currently counting down.
	; Let's deal with PokeyInstrument3Countdown
	LDA	PokeyInstrument3Countdown
	BEQ	LoopToNextMusicTripletInstrument3
	CMP	#$FF
	BEQ	FirstTimePlayingMusicInstrument3
	BNE	HandleWaitingOnCurrentNoteInstrument3

LoopToNextMusicTripletInstrument3
	; this routine moves the Triplets forward, then falls into the "FirstTimePlayingMusic" routine
	LDA	PokeyCurrentMusicIndexLSB3
	CLC
	ADC	#3
	STA	PokeyCurrentMusicIndexLSB3
	; carry will be set if I need to bump the other one
	LDA	PokeyCurrentMusicIndexMSB3
	ADC	#0
	STA	PokeyCurrentMusicIndexMSB3
	; check for a reset condition
	LDY	#0
	LDA	(PokeyCurrentMusicIndexLSB3),Y
	CMP	#$FF ; if we didn't hit an "end of song" marker let's load the music
	BNE	FirstTimePlayingMusicInstrument3
	; Oops, we hit the end of a song; reset the pointers to the beginning (they are the next 2 values in the Triplet)
	INY
	LDA	(PokeyCurrentMusicIndexLSB3),Y
	TAX
	INY
	LDA	(PokeyCurrentMusicIndexLSB3),Y
	STA	PokeyCurrentMusicIndexMSB3
	TXA
	STA	PokeyCurrentMusicIndexLSB3

FirstTimePlayingMusicInstrument3
	; If we got here, this is "Initialization". Remember, we're pointing to the right triplet, but
	; just need to load data, not advance it
	; Also, this routine is special since it sets the PokeyInstrument3Countdown

	; TRIPLET PROCESSING - First Triplet - frequency
	LDY	#0
	LDA	(PokeyCurrentMusicIndexLSB3),Y
	STA	AUDF4
	STA	AUDF4BAK

	; TRIPLET PROCESSING - Second Triplet - sound length
	; Let's handle this first because we do different logic if the sound is a rest or not
	INY
	LDA	(PokeyCurrentMusicIndexLSB3),Y
	STA	PokeyInstrument3Countdown

HandleWaitingOnCurrentNoteInstrument3
	; Is it a Rest?
	LDY	#0
	LDA	(PokeyCurrentMusicIndexLSB3),Y
	BNE	NotARestInstrument3
	; It's a rest. Zero out the sound completely
	LDA	#0
	LDY	#2	; value is 0, 1, 2, 3 depending on Instrument
	JSR	AfterEffectsDone
	JMP	Instrument4Routine
NotARestInstrument3
	; NOW is where we handle the effects (THIRD TRIPLET)
	LDY	#2
	LDA	(PokeyCurrentMusicIndexLSB3),Y

	; From here, RAM has the value of the Effects field
	TAX	; temporary store
	LDY	#2	; value is 0, 1, 2, 3 depending on Instrument
	JSR	HandleEffects

	;======================
	; INSTRUMENT 4 ROUTINE
	;======================
Instrument4Routine
	; PokeyInstrument4Countdown has a number that's currently counting down.
	; Let's deal with PokeyInstrument4Countdown
	LDA	PokeyInstrument4Countdown
	BEQ	LoopToNextMusicTripletInstrument4
	CMP	#$FF
	BEQ	FirstTimePlayingMusicInstrument4
	BNE	HandleWaitingOnCurrentNoteInstrument4

LoopToNextMusicTripletInstrument4
	; this routine moves the Triplets forward, then falls into the "FirstTimePlayingMusic" routine
	LDA	PokeyCurrentMusicIndexLSB4
	CLC
	ADC	#3
	STA	PokeyCurrentMusicIndexLSB4
	; carry will be set if I need to bump the other one
	LDA	PokeyCurrentMusicIndexMSB4
	ADC	#0
	STA	PokeyCurrentMusicIndexMSB4
	; check for a reset condition
	LDY	#0
	LDA	(PokeyCurrentMusicIndexLSB4),Y
	CMP	#$FF ; if we didn't hit an "end of song" marker let's load the music
	BNE	FirstTimePlayingMusicInstrument4
	; Oops, we hit the end of a song; reset the pointers to the beginning (they are the next 2 values in the Triplet)
	INY
	LDA	(PokeyCurrentMusicIndexLSB4),Y
	TAX
	INY
	LDA	(PokeyCurrentMusicIndexLSB4),Y
	STA	PokeyCurrentMusicIndexMSB4
	TXA
	STA	PokeyCurrentMusicIndexLSB4

FirstTimePlayingMusicInstrument4
	; If we got here, this is "Initialization". Remember, we're pointing to the right triplet, but
	; just need to load data, not advance it
	; Also, this routine is special since it sets the PokeyInstrument4Countdown

	; TRIPLET PROCESSING - First Triplet - frequency
	LDY	#0
	LDA	(PokeyCurrentMusicIndexLSB4),Y
	STA	AUDF5
	STA	AUDF5BAK

	; TRIPLET PROCESSING - Second Triplet - sound length
	; Let's handle this first because we do different logic if the sound is a rest or not
	INY
	LDA	(PokeyCurrentMusicIndexLSB4),Y
	STA	PokeyInstrument4Countdown

HandleWaitingOnCurrentNoteInstrument4
	; Is it a Rest?
	LDY	#0
	LDA	(PokeyCurrentMusicIndexLSB4),Y
	BNE	NotARestInstrument4
	; It's a rest. Zero out the sound completely
	LDA	#0
	LDY	#3	; value is 0, 1, 2, 3 depending on Instrument
	JSR	AfterEffectsDone
	RTS
NotARestInstrument4
	; NOW is where we handle the effects (THIRD TRIPLET)
	LDY	#2
	LDA	(PokeyCurrentMusicIndexLSB4),Y

	; From here, RAM has the value of the Effects field
	TAX	; temporary store
	LDY	#3	; value is 0, 1, 2, 3 depending on Instrument
	JSR	HandleEffects
	RTS

;##############################`
	;=========================
	; HandleEffects Subroutine
	; Inputs:
	; - X - current Effects number
	; - Y - value is 0,1,2, or 3 (instrument index)
	;=========================
HandleEffects
	CPX	#TOTAL_NUM_EFFECTS+1
	BMI	EffectsAreInRange ; error handling (invalid Effect number)
	JMP	Effect01 ; if we're out of range, just do Effect ONE, which is soft volume
EffectsAreInRange
	LDA	EffectsSubroutinesLSB,X
	STA	IndirPtr
	LDA	EffectsSubroutinesMSB,X
	STA	IndirPtr+1
	JMP	(IndirPtr)

EffectsSubroutinesLSB
	dc.b	#<Effect00
	dc.b	#<Effect01
	dc.b	#<Effect02
	dc.b	#<Effect03
	dc.b	#<Effect04
	dc.b	#<Effect05
	dc.b	#<Effect06
	dc.b	#<Effect07
	dc.b	#<Effect08
	dc.b	#<Effect09
	dc.b	#<Effect10
	dc.b	#<Effect11
	dc.b	#<Effect12
	dc.b	#<Effect13
	dc.b	#<Effect14
	dc.b	#<Effect15
	dc.b	#<Effect16
	dc.b	#<Effect17

EffectsSubroutinesMSB
	dc.b	#>Effect00
	dc.b	#>Effect01
	dc.b	#>Effect02
	dc.b	#>Effect03
	dc.b	#>Effect04
	dc.b	#>Effect05
	dc.b	#>Effect06
	dc.b	#>Effect07
	dc.b	#>Effect08
	dc.b	#>Effect09
	dc.b	#>Effect10
	dc.b	#>Effect11
	dc.b	#>Effect12
	dc.b	#>Effect13
	dc.b	#>Effect14
	dc.b	#>Effect15
	dc.b	#>Effect16
	dc.b	#>Effect17

	;====================================
	; EFFECT 00 GOES HERE - FAINT VOLUME
	;====================================
Effect00
	; Effect 00. Pure tone, no effect, volume 4 out of 15
	; Continuous sound, no volume stop to make a break between notes
	LDA	#$02 ; faint volume, constant
	JMP	AfterEffectsDone

	;====================================
	; EFFECT 01 GOES HERE - SOFT VOLUME
	;====================================
Effect01
	; Effect 01. Pure tone, no effect, volume 8 out of 15
	; Continuous sound, no volume stop to make a break between notes
	LDA	#$04 ; soft volume, constant
	JMP	AfterEffectsDone

	;====================================
	; EFFECT 02 GOES HERE - MEDIUM VOLUME
	;====================================
Effect02
	; Effect 02. Pure tone, no effect, volume 12 out of 15
	; Continuous sound, no volume stop to make a break between notes
	LDA	#$06 ; medium volume, constant
	JMP	AfterEffectsDone

	;====================================
	; EFFECT 03 GOES HERE - HIGH VOLUME
	;====================================
Effect03
	; Effect 03. Pure tone, no effect, volume 15 out of 15
	; Continuous sound, no volume stop to make a break between notes
	LDA	#$08 ; loud volume, constant
	JMP	AfterEffectsDone

	;====================================
	; EFFECT 04 GOES HERE - FAINT VOLUME
	;====================================
Effect04
	; Effect 04. Pure tone, no effect, volume 4 out of 15
	; However, in the last 2 frames, zero out volume so we have separation between notes
	LDA	PokeyInstrument1Countdown,Y
	CMP	#03
	BMI	HandleEffect04
	LDA	#$00
	JMP	AfterEffectsDone
HandleEffect04
	LDA	#$02 ; faint volume, constant
	JMP	AfterEffectsDone

	;====================================
	; EFFECT 05 GOES HERE - SOFT VOLUME
	;====================================
Effect05
	; Effect 05. Pure tone, no effect, volume 8 out of 15
	; However, in the last 2 frames, zero out volume so we have separation between notes
	LDA	PokeyInstrument1Countdown,Y
	CMP	#03
	BPL	HandleEffect05
	LDA	#$00
	JMP	AfterEffectsDone
HandleEffect05
	LDA	#$04 ; soft volume, constant
	JMP	AfterEffectsDone

	;====================================
	; EFFECT 06 GOES HERE - MEDIUM VOLUME
	;====================================
Effect06
	; Effect 06. Pure tone, no effect, volume 12 out of 15
	; However, in the last 2 frames, zero out volume so we have separation between notes
	LDA	PokeyInstrument1Countdown,Y
	CMP	#03
	BPL	HandleEffect06
	LDA	#$00
	JMP	AfterEffectsDone
HandleEffect06
	LDA	#$06 ; medium volume, constant
	JMP	AfterEffectsDone

	;====================================
	; EFFECT 07 GOES HERE - HIGH VOLUME
	;====================================
Effect07
	; Effect 07. Pure tone, no effect, volume 15 out of 15
	; However, in the last 2 frames, zero out volume so we have separation between notes
	LDA	PokeyInstrument1Countdown,Y
	CMP	#03
	BPL	HandleEffect07
	LDA	#$00
	JMP	AfterEffectsDone
HandleEffect07
	LDA	#$08 ; loud volume, constant
	JMP	AfterEffectsDone

	;====================
	; EFFECT 08 GOES HERE
	;====================
Effect08
	; Effect 08 - volume "rainbow", fade in, fade out (48 frames). Can work with 24 frames as a fade-out.
	; PokeyInstrument1Countdown is counting down
	LDA	PokeyInstrument1Countdown,Y
	CLC
	LSR
	LSR
	TAX
	LDA	Effect08VolumeTables,X
	AND	#%00001111 ; don't mess with the channel (D7-D5) nor the PCM bit (D4); just the volume bits
	JMP	AfterEffectsDone


	;====================
	; EFFECT 09 GOES HERE
	;====================
Effect09
	; Effect 09 - volume "rainbow", fade in, fade out (96 frames). Can work with 72 frames as a fade-out.
	; PokeyInstrument1Countdown is counting down
	LDA	PokeyInstrument1Countdown,Y
	CLC
	LSR
	LSR
	TAX
	LDA	Effect09VolumeTables,X
	AND	#%00001111 ; don't mess with the channel (D7-D5) nor the PCM bit (D4); just the volume bits
	JMP	AfterEffectsDone


	;====================
	; EFFECT 10 GOES HERE
	;====================
Effect10
	; Effect 10 - volume "rainbow", fade in, fade out (12 frames). Can stretch to 16 frames.
	; PokeyInstrument1Countdown is counting down
	LDA	PokeyInstrument1Countdown,Y
	CLC
	LSR
	LSR
	TAX
	LDA	Effect10VolumeTables,X
	AND	#%00001111 ; don't mess with the channel (D7-D5) nor the PCM bit (D4); just the volume bits
	JMP	AfterEffectsDone

	;====================
	; EFFECT 11 GOES HERE
	;====================
Effect11
	; Effect 11 - volume "rainbow", fade in, fade out (24 frames). Can work with 16 as a fade-out.
	; PokeyInstrument1Countdown is counting down
	LDA	PokeyInstrument1Countdown,Y
	CLC
	LSR
	LSR
	TAX
	LDA	Effect11VolumeTables,X
	AND	#%00001111 ; don't mess with the channel (D7-D5) nor the PCM bit (D4); just the volume bits
	JMP	AfterEffectsDone

	;====================
	; EFFECT 12 GOES HERE
	;====================
Effect12
	; Effect 12 -Tremolo experiments that sound terrible.  Maxmimum lengh of 64.
	; PokeyInstrument1Countdown is counting down
	LDA	PokeyInstrument1Countdown,Y
	AND	#%00000010
	BEQ	AllQuietEffect12
	LDA	PokeyInstrument1Countdown,Y
	CLC
	LSR
	LSR
	TAX
	LDA	Effect12VolumeTables,X
	AND	#%00001111 ; don't mess with the channel (D7-D5) nor the PCM bit (D4); just the volume bits
	TAX	; store temporarily
	LDA	PokeyInstrument1Countdown,Y
	AND	#%00000001
	BEQ	DoNotModifyVolumeEffect12
	DEX
	DEX
DoNotModifyVolumeEffect12
	TXA
AllQuietEffect12
	AND	#%00001111 ; don't mess with the channel (D7-D5) nor the PCM bit (D4); just the volume bits
	JMP	AfterEffectsDone


	;====================
	; EFFECT 13 GOES HERE
	;====================
Effect13
	; Effect 13 - Volume goes up and down a little like tremolo. No length limit.
	LDA	PokeyInstrument1Countdown,Y
	AND	#%00000111
	TAX
	LDA	Effect13TremoloTable,X ; 0-4
	CLC
	ADC	#%00000010
	AND	#%00001111 ; don't mess with the channel (D7-D5) nor the PCM bit (D4); just the volume bits
	JMP	AfterEffectsDone

	;=======================================
	; EFFECT 14 GOES HERE - DRUM (4 FRAMES)
	;=======================================
Effect14
	; Drum sound.  4 frames only.  Very fast drop in volume over 4 frames.
	; PokeyInstrument1Countdown is counting down.
	LDA	PokeyInstrument1Countdown,Y
	TAX
	LDA	Effect14VolumeTables,X
	AND	#%00001111 ; don't mess with the channel (D7-D5) nor the PCM bit (D4); just the volume bits
	JMP	AfterEffectsDone

        ;====================================
        ; EFFECT 15 GOES HERE - GLISSANDO UP
        ;====================================
Effect15
	; Glissando up.  Each frame goes up one value.  Be very careful with frame timing!
	; PokeyInstrument1Countdown is counting down.
	LDA	AUDF2BAK,Y
	SEC
	SBC	#1
	STA	AUDF2BAK,Y
	TYA
	CLC
	ASL
	TAX
	LDA	AUDF2BAK,Y
	STA	AUDF2,X
	; Continuous sound, no volume stop to make a break between notes
	LDA	#$06 ; medium volume, constant
	JMP	AfterEffectsDone

        ;======================================
        ; EFFECT 16 GOES HERE - GLISSANDO DOWN
        ;======================================
Effect16
	; Glissando down.  Each frame goes up one value.  Be very careful with frame timing!
	; PokeyInstrument1Countdown is counting down.
	LDA	AUDF2BAK,Y
	CLC
	ADC	#1
	STA	AUDF2BAK,Y
	TYA
	CLC
	ASL
	TAX
	LDA	AUDF2BAK,Y
	STA	AUDF2,X
	; Continuous sound, no volume stop to make a break between notes
	LDA	#$06 ; medium volume, constant
	JMP	AfterEffectsDone

        ;=======================================
        ; EFFECT 17 GOES HERE - DRUM (8 FRAMES) - can stretch to 9
        ;=======================================
Effect17
	; Drum sound.  4 frames of fast volume drop, then 4 rests.
	; PokeyInstrument1Countdown is counting down.
	LDA	PokeyInstrument1Countdown,Y
	TAX
	LDA	Effect17VolumeTables,X
	AND	#%00001111 ; don't mess with the channel (D7-D5) nor the PCM bit (D4); just the volume bits
	JMP	AfterEffectsDone

	;===========================================
	; CALL THIS ROUTINE AFTER SETTING AN EFFECT
	;===========================================
AfterEffectsDone
	; INPUTS:
	;  - Accumulator has the volume
	;  - Y has the Index for the Audio channel (0-3)
	; "OR" the volume with the Channel type
	;
	; This is a "just in case" line.
	AND	#%00001111
	ORA	ChannelTypesPerAUDC,Y
	; Y has 0, 1, 2, 3. AUDC channels are every 2. Double it.
	TAX	; temporarily store our channel data
	TYA
	CLC
	ASL
	TAY
	TXA	; restore our channel data
	STA	AUDC2,Y
	RTS
	;===================

ChannelTypesPerAUDC
	;===========================================
	;#%00000000 ; Pink noise, Rough whooshing
	;#%00100000 ; Triangle wave, Bell tones (good for bass at low numbers). $36 good, $3C good
	;#%01000000 ; Noise & Tune, Low End Rumble
	;#%01100000 ; Triangle wave, Bell tones
	;#%10000000 ; White noise, whooshing
	;#%10100000 ; Square wave, Pure tones
	;#%11000000 ; Sawtooth wave, Maybe Buzzy
	;#%11100000 ; Square wave, Pure tones
	;==========================================
	; TODO
	; 1 + 3 (AUDC2 / AUDC4) = melody (1.79 MHz)
	; 2 + 4 (AUDC3 / AUDC5) = bass (15 kHz)
	dc.b	#%00100000	; audio channel 2 type - No: 010,101,110,111      Maybe: 001,011,   Drum=000,100
	dc.b	#%10100000	; audio channel 3 type - No: 010  Maybe: 101,111  Drum: 000,001,011,100???  Some: 110
	dc.b	#%00100000	; audio channel 4 type - No: 010,101,110,111      Maybe: 001,011,   Drum=000,100
; ALIGN
	dc.b	#%10000000	; audio channel 5 type - No: 010  Maybe: 101,111  Drum: 000,001,011,100???  Some: 110
				; %100 = best for drum.  Notes: 01-04 = snare, other numbers interesting


Effect08VolumeTables
	; This routine is best called by a note duration of "48" but can be called by 24 for a fade-out
	dc.b	1	; 0 - 3
	dc.b	2	; 4 - 7
	dc.b	3	; 8 - 11
	dc.b	4	; 12 - 15 ; 12 here
	dc.b	5	; 16 - 19
	dc.b	6	; 20 - 23
	dc.b	7	; 24 - 27 ; 24 here
	dc.b	8	; 28 - 31
	dc.b	8	; 32 - 35
	dc.b	7	; 36 - 39
	dc.b	6	; 40 - 43
	dc.b	5	; 44 - 47
	dc.b	4	; 48 - 51 ; 48 here
	;dc.b	3	; 52 - 55 ; - these are commented out since if we start here, we get the note way too late
	;dc.b	2	; 56 - 59
	;dc.b	1	; 60 - 63

Effect09VolumeTables
	; This routine is best called by note durations of "96", but can be used for "72" for a fade-out
	dc.b	1	; 0 - 3
	dc.b	2	; 4 - 7
	dc.b	2	; 8 - 11
	dc.b	3	; 12 - 15 ; 12 here
	dc.b	3	; 16 - 19
	dc.b	3	; 20 - 23
	dc.b	4	; 24 - 27 ; 24 here
	dc.b	4	; 28 - 31
	dc.b	4	; 32 - 35
	dc.b	5	; 36 - 39 ; 36 here
	dc.b	5	; 40 - 43
	dc.b	5	; 44 - 47
	dc.b	6	; 48 - 51 ; 48 here
	dc.b	6	; 52 - 55
	dc.b	6	; 56 - 59
	dc.b	7	; 60 - 63 ; 60 here
	dc.b	7	; 64 - 67
	dc.b	7	; 68 - 71
	dc.b	8	; 72 - 75 ; 72 here
	dc.b	8	; 76 - 79
	dc.b	7	; 80 - 83
	dc.b	6	; 84 - 87 ; 84 here
	dc.b	5	; 88 - 91
	dc.b	4	; 92 - 95
	dc.b	4	; 96      ; 96 here

Effect10VolumeTables
	; This routine is best called by note durations of "12", but can be stretched to "16"
	; note: 10,12,14,12 sounded good too
	dc.b	2	; 0 - 3
	dc.b	5	; 4 - 7
	dc.b	6	; 8 - 11
	dc.b	4	; 12 - 15 ; 12 here 
	dc.b	4	; 16

Effect11VolumeTables
	; This routine is best called by note durations of "24", but can be used as a fade-out for "16"
	; note: 10,12,14,12 sounded good too
	dc.b	2	; 0 - 3
	dc.b	3	; 4 - 7
	dc.b	4	; 8 - 11
	dc.b	5	; 12 - 15
	dc.b	7	; 16 - 20 ; 16
	dc.b	6	; 24 - 27
	dc.b	5	; 28 - 31
	dc.b	4	; 32 - 35 ; 24 here

Effect12VolumeTables
	dc.b	3	; 0 - 3
	dc.b	3	; 4 - 7
	dc.b	4	; 8 - 11
	dc.b	4	; 12 - 15
	dc.b	5	; 16 - 19
	dc.b	5	; 20 - 23
	dc.b	6	; 24 - 27
	dc.b	7	; 28 - 31
	dc.b	7	; 32 - 35
	dc.b	8	; 36 - 39
	dc.b	8	; 40 - 43
	dc.b	8	; 44 - 47
	dc.b	7	; 48 - 51
	dc.b	6	; 52 - 55
	dc.b	5	; 56 - 59
	dc.b	4	; 60 - 63
	dc.b	4	; 64

Effect13TremoloTable
	dc.b	0
	dc.b	1
	dc.b	2
	dc.b	3
	dc.b	4
	dc.b	3
	dc.b	2
	dc.b	1

Effect14VolumeTables
	dc.b	1
	dc.b	3
	dc.b	5
	dc.b	7

Effect17VolumeTables
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	0
	dc.b	1
	dc.b	3
	dc.b	5
	dc.b	7
	; This is an extra in case our drum beats are 9.
	dc.b	8

