### Say

Synthesize the given Text into speech.\
\
Engine:Voice specifies the speech engine and voice/language to use.
*default:en* specifies the default engine and English voice.\
Stream/File specifies where the sound should go. Stream specifies a
sound channel, File specifies a location on the SD card; the synthesized
speech is stored in WAV format.\
\
Network: use network synthesis, if supported by the current
engine/voice. This may result in better quality.\
\
Continue Task Immediately: if selected, Tasker will continue with the
next queued action while the speech is still ongoing. You must select
this in order to do a Shut Up action later.\
\
Android settings may override locale, speed and pitch. Please see the
\'Always use my settings option\' in Android\'s Text-To-Speech settings
section.\
\
If *Reduce Resource Usage* in Tasker Prefs / Misc is checked, the speech
engine will be shutdown after each utterance, meaning the speech will
always begin later for subsequent Say actions.
