# Atari 7800 POKEY Jukebox

An open-source alternative for creating Pokey music.

## Introduction

The Atari 7800 is one of the most versatile classic video game systems with active homebrew development.
When the Atari 7800 shipped, it was released with the very limited TIA (Television Interface Adapter) sound chip.
Its abilities were simple: 2 sound channels where you could select channel (type), frequency (pitch), and volume.
It had a major disadavantage-- it could only support 32 frequency pitches.  This led to an unwanted consequence; out of tune notes.

The Atari 7800 had the ability to potentially add better sound chips via its cartridge hardware, but only officially leveraged this twice:
 * once for Ballblazer
 * once for Commando

Both games leveraged the arcade / 8-bit sound chip known as POKEY.  This program allows you to play with the POKEY chip on the Atari 7800.
And, it attempts to de-mistify things.

A lot of programmers prefer using RMT (Raster Music Tracker) as a way to create their sound files for POKEY.  This approach is a little different.

While RMT is a great option that allows for a lot of flexibility in actual MIDI tools, it does come with some drawbacks:
 * lots of CPU usage
 * sometimes it sounds a little funny / too digital
 * hard to understand
 * takes up a lot of space

This tool is different.  It uses only 16 bytes of RAM.  And, it attempts to keep ROM space limited as well.

It also tries to keep things simple.  The 4 tracks are hardcoded, but more advanced musicians can make changes as they see fit.

The 4 tracks are:

 * track 1 - square wave (melody 1)
 * track 2 - triangle wave (bass)
 * track 3 - square wave (melody 2) - note, this is the exact same frequency as track 1, so be careful of overlaps
 * track 4 - percussion / white noise

## File breakdown

### Main files:

 * ./README.md - this file
 * ./Makefile - allows a user to type `make` commands
 * ./hdr/maria.h - equates for the Atari 7800
 * ./hdr/pokey_0450.h - equates that identify POKEY addresses if it lived at $0450.  We are using $0450 for this demo.
 * ./hdr/pokey_4000.h - equates that identify POKEY addresses if it lived at $4000.  For reference only.
 * ./src/pokeymusic.asm - a library that you just "include" in your "main" file.
 * ./src/jukebox.asm - the "main" file.  Include a few equates, some "Seed" functions, and ./src/pokeymusic.asm, and you can get up and running.
 * ./src/music*.asm - all the music files

### Meta files:

You can look at these if you want, but they just sort of "work" and are less important to review if you're a beginner:

 * ./src/macros_pokey.asm - this includes a single macro used by src/jukebox.asm to make adding new songs easy (e.g. SeedPokeyForSpelunker3)
 * ./src/cartridge_header_jukebox.asm - this includes the 128-byte header for this cartridge to designate it as POKEY and 48K. Used by the Makefile.

### Reference files:

 * ./doc/pokey_notes_green_column_p.txt - used for "track 1" and "track 3" (tracks are numbered 1-4)
 * ./doc/pokey_notes_brown_column_h.txt - used for "track 2" (tracks are numbered 1-4)

### After running "make":

 * ./bin/ - this directory will be created and includes tools such as the `a7800` emulator and `7800sign` ROM signing utility.
 * ./out/jukebox.a78 - the output file after compiling, signed, and with the header attached, ready to go.

## Compile environment

I typically code on a Mac.  All you should need to do is run the following commands:

 * `make`
 * `make run`
 * There's also a `make clean` target if you need to start over.

## Where to begin

### Step 1:

Try to get things to compile running "make".  If you're a Windows user, I'm sorry - I haven't set up the toolchain for that just yet.

### Step 2:

Open up any ./src/music*.asm file.  Take a look at them.  They all use a very simple format for their tracks.
I call them "triplets".  They are divided in this manner:

1) frequency (see the "./doc" folder for note values.  A value of $00 will make it a rest.  $FF is special (see further below)
2) number of frames to play the note
3) effects added to the note

For the effects, open up ./src/pokeymusic.asm and look at the CONST's defined under TOTAL_NUM_EFFECTS.  These are all the effects you can use for any note.

If you start a "triplet" with $FF that is a signal that the soundtrack is over and needs to jump somewhere else.

Here is an example of such an $FF signal that goes back to the start of the music:

```
        dc.b    #$FF
        dc.b    #<Spelunker2Track4
        dc.b    #>Spelunker2Track4
```

whereas here is an example of an $FF signal that will terminate

```
Spelunker7Track2Stops
        dc.b    #$00, #96, #RESTDEFAULT ; rest
        dc.b    #$FF
        dc.b    #<Spelunker7Track2Stops
        dc.b    #>Spelunker7Track2Stops
```

Feel free to change any value and play.  All you need to do is type `make` and `make run` to test things out.

If you want to disable any track for any reason, use the macros at the top of the music files.

Every music file has the following at the top of it:

```
MUTE_TRACK1             set     0
MUTE_TRACK2             set     0
MUTE_TRACK3             set     0
MUTE_TRACK4             set     0
```

Simply set any of those "0" values to 1 and that track will mute.

### Example songs included

 * There are 2 NES games I have arranged into POKEY format: Spelunker (10 Tracks) and the Goonies (1 track).
 * If you want to compare against the NES original, you can use a tool like "Audio Overload" to run the corresponding game's NSF (Nintendo Sound Format) files which allows you to enable / disable different NES music tracks.  NSF files not provided by this author for copyright reasons.

### Adding your own tracks

There are 2 ways to proceed:

 * Feel free to change any of the example tracks for your own project.
 * Alternatively, check out commit aca0ce5.  It demonstrates how to add a new file to the Jukebox.

### Integrating with your own code

 * Look at how ./src/jukebox.asm calls the other files.  You'll need to port those "hooks" over to your own file.

### Special thanks

 * I owe a great deal of thanks to Atari Age user "Synthpopalooza" for providing the tools and support for me to learn POKEY sound programming.
 * https://midi.city for a really easy interface for playing with notes on a keyboard
 * Audio Overload, a great tool for listening to NSF (Nintendo Sound Files)

### Errata and Contributions

If you find any issues with this code, feel free to help by contributing!  Or, raise a github issue and I will do my best to fix things.

Also, if you made it this far, thank you for reading this.  And, happy music making!

 - Atari Age user "Propane13"
