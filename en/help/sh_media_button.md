### Media Button

One of the media buttons is pressed.\
\
Not all devices have all represented buttons.\
\
If *Held* is checked, the key must have been held down for minimally the
normal key repeat time for this context to become active. Held will not
function on most devices with Google Voice Search.\
\
If *Stop Event* is checked, Tasker will try to prevent the event being
passed on to other apps when it\'s received. This does not have effect
use on Android 2.2+ devices because usually one or more apps will try to
Grab (see below) the event and no others will see it. The changes in
Android 2.2 have made media button handling very complicated\...\
\
*Grab*\
\
*Grab* is only relevant for Android 2.2+ devices, which changed the way
in which the media button is handled. It indicates that Tasker should
become the sole receiver of media button events. If you don\'t do this,
Tasker may not receive the events e.g. because a media player has
requested the events.\
\
Note 1: if you **do** enable *Grab*, you probably want to add another
context to this profile e.g. an application context, so that Tasker
doesn\'t interfere with media control the whole time.\
\
Note 2: Tasker grabs the event control as soon as it\'s necessary and
releases it as soon as possible. Another app may grab control at a later
time and so block events to Tasker.\
\
Note 3: if you enable *Grab* for any media button, it blocks **all**
media button events to other apps.\
\
Note 4: you can regrab the focus with action Media / Media Button Events
