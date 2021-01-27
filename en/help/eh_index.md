---
title: 'Tasker: Event A-Z'
---

### Tasker: Event A-Z

#### Alarm Clock

The Android alarm clock with the specified label is about to go off.\
\
Stop will prevent the system responding to the alarm in any way. It\'s
unknown if this causes future problems.\
\
If you have a 3rd Party alarm, it may have its own event in the 3rd
Party event category. Not all alarm packages pass along the label of the
alarm.

#### Alarm Done

An Android alarm clock alarm has just been dismissed or snoozed.\
\
If you have a 3rd Party alarm, it may have its own event in the 3rd
Party event category.

#### Assistance Request

The user has just requested assistance within the specified app.\
\
On standard Android devices, this occurs when the user strokes up
through the bottom middle of the display.\
\
Some ROMs do not support specification of an App.

#### Battery Changed

The battery level has changed.\
\
Note that this will occur quite often.

#### Button Widget Clicked

A Button (Normal, Checkbox, Toggle etc) has been clicked.\
\
If Label is specified, the button must have a label which matches it.
Note that e.g. Image buttons don\'t have labels.\
\
Click Length: long clicks will only be registered if the application
containing the button allows long clicks of it.\
\
New Button State is only applicable for Toggle and Checkbox buttons.

#### Button: Camera

The camera hardware button has been pressed and held.\
\
Often, if you respond to this event, you will want to set the Priority
high and also set the Abort flag so that the camera application is not
launched.

#### Button: Long Search

The search button has been long-pressed.\
\
In order for this event to work, Tasker\'s Search Helper should be
selected as the activity to handle the press when Android shows the
relevant dialog.

#### Card Mounted

An inserted card has been registered by the system and is ready for
use.\
\
If you specify a title, only the card with a title containing the
specified characters will match this event context, thus allowing you to
do different things depending on which card is inserted.\
\
You can set the title of a card by creating a file in its base (root)
directory called xxxxx.ttl (replace xxxxx with the desired title).\
\
If you specify a Frequency and it\'s greater than 1, the event will only
match if the card has been mounted a multiple of Frequency times since
the last reboot. For example, a Frequency of 3 will match when the card
has been mounted 3, 6, 9\... times.

#### Card Removed

A card has been physically removed from the device.

#### Card Unmounted

A card has been unregistered by the system in preparation for removal,
or has been physically removed from the device.

#### Date Set

The date or time has been changed.\
\
(it\'s a mystery to the author why Android reports the time has been set
when the date is changed)

#### Device Boot

The phone has just finished turning on (after being shut down, not just
the screen blanking).\
\
It\'s advisable that any tasks linked to this event start with a Wait
action of e.g. 5 seconds, because Android is extremely busy immediately
after a boot. Note also that the SD card may not be yet mounted when
this event is received, which is another reason for delaying the task if
it relies on the SD card being present.

#### Device Shutdown

The phone is about to shutdown (completely turned off, not standby).\
\
Note: this is right before shutdown. You might backup a file or similar,
but UI interactions such as dialogs and anything that takes a
significant amount of time will not work.

#### Display On

The display has just come on.\
\
Note that this can occur automatically on many occasions such as when an
alarm goes off. Most likely you will be better off using the Display
Unlocked event.

#### Display Unlocked

The display has just been unlocked (with or without an unlock pattern).

#### File Events

The named operation was just carried out on the specified SD card file.\
\
There will always be an OPEN event before MODIFY (if the file is
written) then CLOSE events.\
\
The file must exist when Tasker\'s UI is exited or the SD card is
inserted for this event to be active.\
\
Be very careful if you act on a file event by doing an action with the
file. For instance, if you respond to an open event by copying the file
make sure you have Abort New Task set in task properties, since the act
of copying the file will trigger another open event and an endless loop
will occur otherwise.\
\
Limitation: if a file is deleted and recreated, subsequent file events
will not be reported.

#### Gentle Alarm

Info:\
\
\\thttp://m.mobitobi.com/en/android/gentlealarm.php\
\
Requires version 3.1.0+

#### Gesture

The phone has just been waved around in a particular way.\
\
Name is a label to be used for the gesture. To record a pattern, press
the Camera, Call, Menu, Search or Volume buttons.\
To record the final point, press-and-hold one of those buttons.\
\
Be sure to read the Userguide section on Accelerometer Gestures before
trying to use this feature.

#### Intent Received

A broadcast intent with the specified parameters has been received.\
\
This event is intended for advanced users.\
\
See *Intents* in the Userguide for more info.

#### K9 Email Received

An email has been received by the K9 mail agent.\
\
Note: the minimum version of K9 supported is 2.3.

#### Kaloer Clock

Info:\
\
http://www.kaloer.com/kaloer-clock

#### Missed Call

A call has been missed.\
\
This event activates every time there is a new missed call. If you want
something to happen until a call has been notified, it\'s better to use
the state Missed Call.

#### Monitor Start

Tasker\'s Monitor Service has just started.\
\
Tasks triggered from this action are guaranteed to be submitted for
execution before any other and are therefore a good place to perform
preparatory actions like setting the initial values for variables.\
\
If it\'s necessary to ensure that resulting tasks finish before any
other task starts, set the Task Priority in the profile properties to
the highest level.

#### New Package

A new package has just been added to the system.\
\
Name is the name of the new package e.g. \'Analog Compass\'\
\
Package is the package name e.g. com.example.packagename.\
\
This event does not occur when a new version of a package is replacing
an older one.

#### New Window

A new window has appeared e.g. activity, popup.\
\
If Label is specified the label of the new window must match it.\
\
For some windows, the label might be that of the first item in the
window e.g. a menu entry or even a button.\
\
To show all window titles, leave all parameters empty and in the
resulting task add a Flash action of %WIN.

#### Notification

A notification has been sent to the status bar.\
\
If an Owner Application is specified, the notification must have been
sent by the corresponding package.\
\
If the notification is a duplicate of one already in the status bar, it
will still trigger the event (unless New Only is checked, on Android
6+)\
\
Other Text (Android 6+) is a collection of any other texts found in the
notification.\
\
This event is not triggered by Tasker-generated notifications.

#### Notification Click

A notification in the status bar pulldown has been clicked.\
\
If an Owner Application is specified, it must match that of the
notification. Note that some apps are not reliable in this regard.\
\
If a Title is specified, the title of the notification must match it.\
\
If Tasker\'s Accessibility Service is not enabled, only notifications
created by Tasker\'s Notify actions can be detected.

#### Notification Removed

A notification has been removed from the status bar.\
\
If an Owner Application is specified, the notification must have been
sent by the corresponding package.\
\
Other Text (Android 6+) is a collection of any other texts found in the
notification.\
\
This event is not triggered by Tasker-generated notifications.

#### Notify My Android

Info:\
\
http://notifymyandroid.com

#### OpenWatch

Info:\
\
http://www.smartmadsoft.com/

#### Package Removed

A package has just been removed from the system.\
\
Package is the package name e.g. com.example.packagename

#### Package Updated

An existing package has just been updated.\
\
Name is the name of the updated package e.g. \'Analog Compass\'\
\
Package is the package name e.g. com.example.packagename

#### Phone Idle

The phone is not doing anything (likely a call is just finished).

#### Phone Offhook

The phone has just gone off the hook (at least one call exists that is
dialling, active or on hold).

#### Phone Ringing

There is an incoming phone call.\
\
If specified, Caller must match the incoming call (see *Pattern
Matching* in the Userguide).\
\
The caller number will be 0 and the caller name ? if the number is
hidden or unknown.

#### Pomodroido

Info:\
\
\\twww.pomodroido.com

#### Quick Setting Clicked

A custom tile previously added to the system Quick Settings panel has
been clicked.\
\
Only usable on Cyanogen 5.1.1+ ROMs with Custom Tile support.

#### Radardroid

Info:\
\
\\twww.radardroid.com

#### Received Data SMS

A data SMS has been received.\
\
Data SMSs are sent to particular ports. This event will trigger on an
SMS to any port, unless a particular one is specified.\
\
Data is the Base64-encoded binary data which was received, accessible
via %evtprm3 in the resulting task.\
It can be e.g. written to a file with Write Binary or converted decoded
to a string (assuming the binary data represents a string) with the
Variable Convert action.

#### Received Text

A text message has been received.\
\
If the Sender parameter is filled in, only texts from senders that match
the Sender parameter will match.\
\
You can long-click multiple times to match multiple senders.\
\
Content is the Body of an SMS, or the Subject or an MMS.

#### Reddit Notify

The Number parameter refers to the number of unread emails or the new
Karma total.\
\
The Message parameter matches against all of the new messages joined
together.

#### SMS Failure

The SMS sent to the (optional) specified phone number failed.\
\
Only works for an SMS sent by Tasker\'s Send SMS action.

#### SMS Success

The SMS sent to the (optional) specified phone number succeeded.\
\
Only works for an SMS sent by Tasker\'s Send SMS action.

#### Screebl

Info:\
\
http://keyeslabs.com/joomla/screebl\
\
Warning: this event may fire very rapidly on the edge of the orientation
range. It\'s therefore a very good idea to configure a cooldown time in
the Profile Properties of this profile.

#### Shake

The device is being physically shaken.\
\
Note: on some devices the Axis may be incorrect e.g. Left-Right may be
triggered by Up-Down shaking.\
\
See Also: Menu / Prefs / Monitor / Display Off Monitoring /
Accelerometer

#### Steps Taken

The specified number of steps have been taken.\
\
The total number of steps taken since the last reset is available in the
triggered task in %evtprm1.\
\
A restart of the device, disabling the profile, disabling or
reinstalling Tasker causes the count to **reset**.\
\
When other contexts in the same profile are not active, the count is
**paused**.\
\
Requires Android version 4.4+ and that a hardware pedometer be present
on the device.\
\
When the device is sleeping, the step count will continue (without
significant power usage) and the event will be triggered on wakeup an
amount of times appropriate to how many steps were taken while
sleeping.\
\
Note: in order to improve accuracy, the response time can be on the
order of a few seconds.\
\
See Also: Prefs / Monitor / Display Off / Step Sensor.

#### Timer Change

The status of the Task Timer widget with the specified task name has
changed.

#### Variable Cleared

The user variable (not built-in) with the specified name (or any name if
blank) has just been cleared (via action Variable Clear).\
\
Note: if multiple variables are cleared at once, (by giving Variable
Clear an empty argument) this event will only match once, and only if no
Variable name is specified for the event.

#### Variable Set

The user variable with the specified name (or any name if blank) has
just had its value set (via one of Variable Set/Inc/Dec/Randomize).\
\
This event can also trigger on some \'dynamic\' built-in variables: see
the *Variables* section of the Userguide for details.

#### Widget Locker

Info:\
\
http://teslacoilsw.com/widgetlocker

#### Zoom Click

A Zoom element from the specified Widget and/or with the specified name
has been clicked.\
\
Zoom is a unique widget designer allowing you to create widgets that
look and behave however you like.
