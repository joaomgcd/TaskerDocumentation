---
title: 'Tasker: MIDI'
---

MIDI ![](icon_tasker.png)
-------------------------

Tasker includes basic support for interacting with a (single) musical
instrument which support the MIDI protocol.

You don\'t need to know anything about MIDI in order to play complex
tunes on an instrument via Tasker.

### Requirements and Setup

The Android ROM on the Android device must support the USB Host
protocol.

A USB OTG (*On The Go*) adapter is required for the Android device.

If the MIDI device has a USB-To-Host connecter, a normal USB lead can
then be used from the OTG adapter to the MIDI device.

If the MIDI device has only MIDI inputs, a USB-To-MIDI adapter must be
used from the OTG adapter to the MIDI device.

When a connection has been established with the MIDI device, Android
should ask whether permission should be granted to Tasker to use the
device. In order to make things easier and allow automation without
user-interaction, it\'s recommended that **Always** be selected.

### Action: MIDI Play

Tasker supports playing of notes in various voices and on multiple
channels via the *MIDI Play* action in the *Media* category.

The *Score* parameter in the *MIDI Play* action uses a Tasker-specific
format to hopefully allow even non-musicians to easily \'code\' some
music.

#### Examples:

-   `C`\
    plays a single C note and stops
-   `D D`\
    plays a D twice
-   `D . . C`\
    plays a D, wait 2 beats, then plays a C
-   `CDA#` ***or*** `C,D,A#`\
    plays a C, D and A\# simultaneously
-   `D!10`\
    plays a D very softly
-   `D!10 !100,C C C`\
    plays a D very softly then a few loud Cs
-   `C2 C3 C4`\
    Plays three Cs of increasing octaves (higher pitch)
-   `D*4`\
    plays a D for 4 beats
-   `C#/4`\
    plays a C for a quarter beat
-   `C#/4D`\
    plays a C for a quarter beat and simultaneously a D for a full beat
-   `@1 C C C`\
    Selects voice 1 then plays 3 Cs
-   `C@1,D@2` ***or*** `C@1D@2`\
    Plays a C with voice 1 and a D with voice 2
-   `@1 C@2 E*4`\
    Plays a C on the first channel with voice 1, while playing and
    holding an E on the second channel with voice 2.
-   `C AB D`\
    Plays C A B D on channel zero. Note that just starting a new line
    would mean creating a new channel.
-   `C AA BB DC D`\
    Plays C A B D on channel 0 while playing simultauously A B C D on
    channel 1.

#### Note Specification

A note specification can be made up of several parts indicating
different things about what and how to play. The note itself must be the
first part, all other parts are optional.

###### The Note

Possible notes for the English locale are
`C, C#, D, D#, E, F, F#, G, G#, A, A#, B`. These represent the notes
starting at *middle C* on a piano, which are in the 4th octave. Flat
notes are also possible e.g. `D_`.

Deeper notes can be achieved by specifying a lower octave e.g. `E2` or
`A#3` and higher notes a higher octave e.g. `C6`.

For convenience, lower case versions of the notes are an octave deeper
than the upper case versions e.g. `c` is equivalent to `C3`.

Other locales may have different note naming conventions.

###### Note Duration (Optional)

A note is by default held for one beat. A `*` indicates the note should
be held longer e.g. `C*6` holds a C for 6 beats. A `/` indicates the
note should be shorter e.g. `C/2` indicates that the note should be
played for half a beat.

###### Note Velocity

*Velocity* usually indicates to a MIDI instrument how hard to play the
note. It\'s represented in Tasker via an exclamation mark e.g. `!6`
means \'play this note with velocity 6\'.

The lowest value is 0 and the highest 127.

###### Note Voice

*Voice* specifies which instrument to play a note with. It\'s
represented in Tasker by an @ sign e.g. `C@1` \'play a C using voice
1\'.

The voice can be from 0 to 127.

Most MIDI instruments don\'t have more than 128 voices and so you
probably don\'t need to read any further in this section.

However, if your instrument has more voices you will probably need to
specify them using the values *MSB* and/or *LSB* which you will need to
find in the instrument\'s user manual.

Tasker allows specificaton of LSB and Program (the name of the basic
parameter) together e.g: `B@3.1` specifies LSB 3 and Program 1.

To specify an MSB also, add it on the left e.g. `D@6.5.3` specifies MSB
6, LSB 5 and Program 3.

#### Chords

Several notes can be played at the same time by grouping them together
(no whitespace) or separating them with commas e.g. C,D and `CD` both
play a C and a D.

#### Channels and Beats

A specification of a single note or chord is called a beat.

A channel consists of a set of beats separated by whitespace which are
dealt with one-by-one at the same time as the corresponding beats on
other channels. In that way, it\'s possible to see which notes are going
to be played simultaneously.

Beats usually consist purely of a few notes, but they can also specify
default values of velocity and voice for the channel.

For example, `!10,C D E!100 F` will play a quiet C, a quiet D, a loud E
then a quiet F. `@2 C D E@3 F` plays a C then a D in voice 2, an E in
voice 3, then an F in voice 2 again.

When you reach the end of a line with a channel, do **not** go further
on the next line. If you do so, the next line will be treated as a new
channel. Instead, leave a blank line.\
See the last two examples above.

A dash character `-` as the **whole** beat means \'do nothing this
beat\'.

A dash followed by a number will rest for that number of beats. This
will mess up the channel alignment, but can be useful for channel which
isn\'t used very often.

#### Bars

A bar is a character that divides music into pieces of equal length.
Tasker totally ignores `|` characters so they do not count as a beat.

#### Comments

The remainder of a line can be ignored by inserting a single quotation
character \'. The line before the quotation mark, and subsequent lines,
are unaffected.

The rest of a whole channel can be ignored by inserting a double
quotation mark \". The line before the quotation marks are unaffected.

Comments can be useful for testing specific parts of a score
independently.

#### Variable Support

The `Score` parameter supports variable just like most other places in
Tasker.

That means you can e.g. specify a voice specification with Variable Set
and then use the name to make it easier to read the music e.g.
`@%piano,C @%guitar,D` (play a C with piano then a D with guitar:
assuming you\'ve first set the variables to a voice which matches their
name on your MIDI instrument)

You can also define variables with sequences of notes and then define a
song as being repeating names e.g. `%intro %verse %chorus %verse %end`.

#### Music \'Programming\'

MIDI Play actions can of course be interspersed with other Tasker
actions so that you can do things like loops which play a piece of music
at different pitch levels, loudness, speed etc Here\'s a task which
plays a long chord with 10 different instrument and each instrument at 5
different velocities (loudness levels).

    For, %loudness, 20:100:20
    For, %voice, 1:10
    MIDI Play, @%voice,!%loudness C,E,G

### Tested Devices

Tasker has been tested with the following devices:

-   Yamaha Clavinova 480

Please let the developer know if you can confirm it working on other
devices.
