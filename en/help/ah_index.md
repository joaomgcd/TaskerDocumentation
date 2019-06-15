---
title: 'Tasker: Action A-Z'
---

### Tasker: Action A-Z

#### APN Droid

Enable or disable mobile data by changing APN data.\
\
This action requires that the application APNDroid is installed on your
device.\
\
It apparently does \*not\* work for CDMA phones e.g. Motorola Droid, try
the Mobile Data action instead.\
\
If you have trouble reconnecting after using this action, use the
\'Reset to Default\' menu item in the APNs screen of Android Settings.\
\
Warning: APNDroid v2.5+: the Tasker action seems \*not\* to affect the
new APNDroid data toggle. If you use Tasker with APNDroid 2.5+, it\'s
recommended that you \*disable\* the \'Use system toggle\' option in
system settings to prevent confusion.

#### Airplane Mode

Whether airplane mode is enabled (all wireless devices off) or enabled
(each wireless device is enabled if it is individually enabled).\
\
See also: action Airplane Radios.

#### Airplane Radios

Specify which radios should be **disabled** when entering Airplane
Mode.\
\
This can be useful for e.g. turning off the phone radio when it is not
required; first set Airplane Radios to only Phone, then use the Airplane
Mode action to enter Airplane Mode.\
\
Important: for some radios the setting may not take effect until the
device has been restarted.\
\
See also: variable %AIRR.

#### Alarm Volume

Alarm volume level.\
\
Setting to 0 will mute alarms.\
\
When Display is enabled, a popup will show the new level.\
\
When Sound is enabled, a tone will sound at the new volume level.

#### Anchor

Provides a fixed, named point in a task.\
\
This is most useful as the top action in a loop with a Goto action at
the end; it allows new actions to easily be inserted at the top of the
loop (under the Anchor).

#### Android Notifier

Android Notifier is a service for contacting your desktop via your
mobile phone.\
\
Info:\
\
http://code.google.com/p/android-notifier/

#### Array Clear

Remove all the elements of an array variable.

#### Array Pop

Remove an element from an array and shuffle all the higher array
elements down to fill the gap.\
If Position is higher than the last index in the array, the last element
is removed.\
\
If To Var is set, the \'popped\' value is assigned to that variable.\
\
Note: a variable clear or set broadcast is only done for the specified
array index.\
\
See Also: the Variables section of the Userguide.

#### Array Process

Perform an operation on the elements of an array as a group.\
\
Rotate shifts all the elements to left or right, and puts the end one
back at the other side.\
\
Squash removes array indices for which no value is assigned e.g. if
%var1=one and %var3=three, squash will result in %var1=one and
%var2=three.\
\
The numeric sorts use the first number they find in each entry e.g. a3c,
b5, 1x becomes 1x, a3c, b5.

#### Array Push

Add a new element to a variable array, pushing existing elements upwards
to make space if necessary.\
\
If Position is higher than the last index in the array, the new element
is added at the end of the array.\
\
If Fill Spaces is specified, higher elements will only be pushed up
until a non-defined element is found (which will be filled).\
\
Note: a variable set broadcast is only done for the specified array
element even if the action also causes changes in other elements.\
\
See Also: the Variables section of the Userguide.

#### Array Set

Set the values of an array from a preset list of Values.\
\
The values are split by Splitter, or whitespace if none is specified,
and each value is then placed in a successive array index of the new
array.\
\
If the array already existed, it is first cleared.\
\
See Also: action Variable Split.

#### Astrid

Info:\
\
http://weloveastrid.com

#### Auto Brightness

Enable or disable automatic screen brightness adjustment by the system
(dependent on ambient light).\
\
Not available on all devices and OS versions.\
\
In some cases, though the setting is restored, the screen will not react
until the settings screen is visited. It may be therefore useful to put
Wait 500ms and Screen Brightness XXX actions in your exit task.

#### Auto-Sync

Whether auto-syncing of data is enabled.\
\
Note: the Android power manager widget does not update correctly after
this action. Also: actual sync will only take place if the Android
Background Data setting is enabled.

#### BT Voice Volume

In-call volume when using bluetooth.\
\
When Display is enabled, a popup will show the new level.\
\
When Sound is enabled, a tone will sound at the new volume level.

#### Battery Info

This setting screen is not supported by Samsung ROMs

#### Beep

Generate a fixed-frequency audio tone.\
\
Amplitude is the percentage of maximum amplitude. The system volume
setting for the selected output stream will also affect the perceived
volume.\
\
Note: Frequency is not on a Hertz scale.

#### BeyondPod

Info:\
\
http://beyondpod.mobi

#### Bluetooth

Whether the Bluetooth radio is enabled or disabled.\
\
This action is ignored when Airplane Mode is on.\
\
Note: when enabling, it will probably be some seconds before the
Bluetooth service is actually usable.

#### Bluetooth ID

Sets the name of the local bluetooth device (the one seen by other
devices).

#### Bluetooth Voice

Switch to or from using a Bluetooth headset for voice communications.\
\
Probably only works in-call, and may not be reflected visually by the
Phone application.

#### Browse Files

Runs File Magic, the Tasker-integrated file manager available
separately.\
\
If Dir is specified, the File Magic starts in that directory.\
\
If Match is specified, only files containing that sequence are shown
(e.g. .jpg)\
\
If Show Hidden is selected, files starting with \'.\' are also shown
(this option overrides File Magic\'s user preference).

#### Browse URL

Open the specified URL in the default browser.

#### Button

Simulate pressing of a hardware button.\
\
Only available on a rooted device.\
\
USB Debugging probably needs to be enabled in Android\'s Developer
Settings.

#### Calendar Insert

Insert an entry into the specified calendar.\
\
In / For: the number of minutes from now at which the calendar entry
should start. Optionally, For how many minutes the calendar entry should
last.\
\
The default for In / For is 0 / 0.\
\
Available: if not clicked, the calendar entry is marked as \'Busy\' (see
Menu / Show Extra Options in the Calendar app).\
\
Tip: if you want to use variables with In / For, be sure to leave spaces
otherwise the variables won\'t be recognized.

#### Call

Bring up the dialer screen with the specified phone number filled in.\
\
Commas and Semi-Colons terminate the number currently, this is filed as
an Android bug.

#### Call Block

Block outgoing calls to the specified matched number(s).\
\
If no Number is specified, all calls will be blocked.\
\
If Info is checked, all diversions and blocks will be displayed after
the action.\
\
To stop blocking, use Call Revert.\
\
Note: you can\'t block \*and\* divert a particular pattern.\
\
Matching occurs in the same way as for event contexts, see the Event
Edit Activity help page.\
\
Examples:\
\
*0193\** - any number starting with **0193**\
\
*12345/56789* - either of the numbers **12345** or **56789**

#### Call Divert

Divert outgoing calls from the specified number (pattern), to the
specified (full) phone number.\
\
From: the number (pattern) to divert. If any part of the outgoing number
matches From the diversion will take place. If no From is specified, all
calls will be diverted.\
\
To: the number which will be called instead.\
\
If Info is checked, all diversions and blocks will be displayed after
the action.\
\
To stop diverting, use Call Revert.\
\
Note: you can\'t block \*and\* divert a particular pattern.

#### Call Log

Show the Call Log tab of the standard Android contacts application.

#### Call Revert

Stop blocking or diverting calls to to the specified number.\
\
If no number is specified, all blocks and diversions will be cancelled.\
\
If Info is checked, all diversions and blocks will be displayed after
the action.\
\
See also: Block Calls, Divert Calls

#### Cancel Alarm

Cancel a currently active or future system alarm.\
\
If there are two or more matching alarms, or on some devices always,
Android will show a UI allowing the user to select the desired alarm.
Therefore, for best results when automating, it\'s recommended to give
each alarm a unique label and then use that for cancellation.\
\
If the specified alarm is a repeating alarm, then only the next instance
is cancelled (the alarm remains enabled)\
\
Some modes are poorly implemented by many Android devices. For instance,
snooze time may be ignored.

#### Car Mode

Enable or disable Android\'s Car Mode.\
\
If Go Home is checked, the relevant home screen will be launched
dependent on whether Car Mode is being entered or exited.\
\
Requires Android 2.2+

#### Change Icon Set

Change Widget Task icons in the home screen.\
\
Only Widgets that have a downloaded icon can have it switched to a new
set.\
\
The New field specifies the new icon set.\
\
If no Old set is specified, all icons are changed to the New set,
otherwise only icons that currently have an icon of the Old set are
changed.\
\
Warning: for Tasker icon sets, each icon is guaranteed to exist in each
set. For user-installed icons, that may not be the case.

#### Clear Key

Clear an encryption key. Next time you try to encrypt or decrypt with
that key, you will be asked for the passphrase.\
\
See *Encryption* in the Userguide for details.

#### Close System Dialogs

Close (some of the) system dialogs like Recent Apps or the
Long-Home-Key-Press dialog.\
\
Tip: you can detect some such dialogs opening with the New Window event.

#### Compose Email

Launch an application to compose an email from optional predefined
elements.\
\
Recipient(s) is a comma-separated list of receivers of the email.

#### Compose MMS

Launch an application to compose an MMS from optional predefined
elements.

#### Compose SMS

Launch an application to compose an SMS from optional predefined
elements.\
\
To send an SMS directly, see Send SMS.\
\
On Android 4.4+, only one of Recipient or Message can be specified.

#### Contacts

Show a selected list of contacts from the standard Android contacts
application.\
\
Note: to show all contacts, you can use the Apps/Load App action and
select the Contacts application.

#### Copy Dir

Recursively copy a directory to a new one.\
\
If To specifies an existing directory, the copy will be placed
**inside** it, otherwise the copy will have that name.

#### Copy File

Copy an SD card file to a new directory.\
\
If To specifies an existing file, it will be overwritten.\
\
The paths start in the root directory of the SD card.\
\
Root users: note that the \"Mount namespace separation\" option of
SuperSu can cause problems.

#### Create Directory

Create an SD card directory.\
\
If Create All is specified, all of the directories above the specified
one will be created if necessary.\
\
The path starts in the root directory of the SD card.

#### Create Scene

Create a scene without displaying it.\
\
This might be useful if needs to be prepared in some way before
displaying.\
\
See also: Scenes in the Userguide.

#### Crop Image

Crop the image currently in the image store.\
\
The parameters specify what percentage of the image to remove from each
side of the image.\
\
See also: Load Image.

#### [Data Backup](ah_data_backup.html)

#### DTMF Volume

The function is a bit of a mystery\...\
\
When Display is enabled, a popup will show the new level.\
\
When Sound is enabled, a tone will sound at the new volume level.

#### DailyRoads Voyager

Info:\
\
http://www.dailyroads.com/voyager.php

#### Decrypt File

Decrypt the specified SD card file which was previously encrypted with
Tasker\'s *Encrypt File* action.\
\
The path starts in the root directory of the SD card e.g. secret.txt,
secret/recording.mp3.\
\
Key Name is the name of the encryption key to use.\
\
The key is not deleted unless Clear Key is set, since you will usually
want to use the same key to encrypt the file again at some point.\
\
There must be space left on the SD card at least equal to the size of
the file before starting decryption.\
\
See *Encryption* in the Userguide for details.

#### Default Ringtone

Sets the default ringtone for alarms, notifications or the ringer.\
\
Music files you place in /sdcard/media/ringtones/ will be included in
the selection list for the Ringer ringtone, similarly for Notification
and Alarm ringtones. You may have to create the folders first.\
\
An easier way to use SD card audio files as ringtones is to install a
tone picker application e.g. Tone Picker.\
\
You can also just put the title of the track in the box if it matches
the title of an audio track you have on SD.

#### Delete Directory

Delete an SD card directory.\
\
The path starts in the root directory of the SD card.\
\
If it is not empty, it will not be deleted unless you specify Recurse.
\*Warning\*: you can delete the whole SD card contents if you are not
careful with this option.

#### Delete File

Delete an SD card file.\
\
The path starts in the root directory of the SD card.\
\
If Shred Level is more than 0, the contents of the file are overwritten
with random bytes the specified number of times before it is deleted.\
\
The intention is to make it (much) harder to recover the contents than
if the file was simply deleted.\
\
Security note: shredding will only provide basic protection on
\'journalling\' filesystems, but most external storage uses FAT32 at the
time of writing.

#### Deprecated

Please see Menu / Info / Release Notes for more information.

#### Destroy Scene

Destroy a previously created scene, hiding it first if necessary.

#### Disable

Permanently turn off Tasker\'s monitor and stop running tasks.\
\
Tasker will not do anything further until enabled via the On/Off button
in the Profile List screen.

#### Display AutoRotate

Whether rotating the device also rotates the screen (between portrait
and landscape).

#### Display Brightness

Brightness setting of the screen (0-255).\
\
If the safeguard is enabled, levels less than 20 will be set to 20 to
prevent accidental black screens.\
\
Ignore Current Level: if it looks like it\'s already at the required
level, go ahead and set it again anyway.\
\
Immediate Effect: ensure the change takes effect immediately. If not
selected, it may not take effect till Android registers the new value,
which may require a display on-off.You may that find Immediate Effect
disrupts some applications.\
Immediate Effect is only needed on Android versions up till 4.4.\
\
If you have auto-brightness controls on your device, it\'s advisable to
disable them before attempting to set the brightness manually. See
system settings or Tasker action Auto-Brightness.

#### Display Timeout

The length of time with no user action before the screen powers off.\
\
Setting all sliders to the maximum value means \'Never\'.\
\
Note: this setting may be overruled by the Stay On action when the
device is plugged into a power source.\
\
Note: if you go to Android settings after running this action, Android
will change the value to one it \'knows about\' e.g. if you have set it
to 9 minutes, Android Settings may change it to 10 minutes.\
Some have reported the same thing occuring after a reboot.

#### Dpad

Simulate use of the Dpad or trackball. Useful for moving around and
clicking controls in an application.\
\
Only available on a rooted device.\
\
USB Debugging probably needs to be enabled in Android\'s Developer
Settings.

#### Due Today

Info:\
\
http://www.lakeridgesoftware.com/products/android/DueToday/

#### Edit Scene

Open the Scene Edit screen in the Tasker UI to edit the named scene.
Optionally, the specified element will be edited immediately.\
\
This action will fail if the Tasker UI is already open or the given
scene is normally locked in the UI.

#### Edit Task

Open the Task Edit screen in the Tasker UI to edit the named task.
Optionally, the specified action (being a number, partial label, action
name or parameter match) will be edited immediately.\
\
This action will fail if the Tasker UI is already open or the given task
is normally locked in the UI.

#### Element Add GeoMarker

Add a marker to a scene Map element.\
\
Spot Radius specifies the size of circle to place at the base of the
market.\
\
The scene must have been created first.\
\
See also: Element Delete GeoMarker.

#### Element Back Colour

Set the background colour(s) of a scene element.\
\
Applies to Text, TextEdit, Image, Menu, Oval and Rectangle elements.\
\
End Colour is only relevant if the element\'s background has a Shader
specified.\
\
The scene must have been created first.

#### Element Border

Set the width and colour of an element\'s border.\
\
Applies to Text, TextEdit, Image, Menu, Oval and Rectangle elements.\
\
The scene must have been created first.

#### Element Create

Create a new scene element dynamically and add it to an existing
(created) scene.\
\
If you wish to animate the appearance of the element, deselect the
Visible parameter and use the Element Visibility action afterwards.\
\
Note: unfortunately it\'s not yet possible to link event tasks to
dynamically-created elements.

#### Element Delete GeoMarker

Delete a marker from a scene Map element.\
\
The scene must have been created first.\
\
See also: Element Add GeoMarker.

#### Element Depth

Set the depth of the specified element in the scene relative to all the
other elements.

#### Element Destroy

Dynamically destroy and remove an element from an existing (created)
scene.\
\
The element need not necessarily have been dynamically created.

#### Element Focus

Give input focus to, or remove input focus from, the specified element.

#### Element Image

Set the image of an Image scene element or the icon of a Button or
Slider element.\
\
The scene must have been created first.

#### Element Map Control

Manipulate a Map scene element e.g. to zoom in or out\
\
The scene must have been created first.\
\
Note: Enable Compass: the compass is only shown when the map is tilted
or rotated.

#### Element Position

Move a scene element within it\'s scene.\
\
The scene must have been created first.

#### Element Size

Change the size of an element.\
\
The scene must have been created first.

#### Element Text

Set the text of a scene element.\
\
Applies to Button, Text and TextEdit elements only.\
\
The scene must have been created first.\
\
For TextEdit elements, the parameter Selection specifies a part of the
text to select after it has been set.\
The specification is either a range (e.g. 1:4 for characters 1 to 4
inclusive, or 3: to select everything from character 3 onwards) or a
simple match e.g. v\*e to select everything between a v and an e. Use :
or \* to select the whole text.

#### Element Text Colour

Set the text colour of a scene element\
\
Applies only to Button, Text and TextEdit elements.\
\
The scene must have been created first.

#### Element Value

Set the value of a scene element.\
\
Applies only to CheckBox, Number Picker, Slider, Spinner and Toggle
elements.\
\
For a CheckBox, value should be 0 (off) or 1 (on).\
\
For a Spinner, the value is the index of the item to set.\
\
The scene must have been created first.\
\
The action can only trigger a possible event associated with the element
value if the scene is currently showing.\
\
To set the value of a Text, EditText or Button element, use the Element
Text action.

#### Element Video Control

Manipulate a Video element in a scene.\
\
Not all actions are possible at all times. For instance, Play is not
possible until the video has loaded.\
\
Tip: to simplify a manual load-and-start-video, specify in the element a
variable as the source of the video and check Start Automatically. Then
instead of using a Video Control action with Load Source, just set the
variable.

#### Element Visibility

Hide or show a scene element.\
\
The scene must have been created first.

#### Element Web Control

Manipulate a WebView scene element e.g. to page up or down\
\
This action will not work until the scene has ben **displayed** at least
once.

#### Else

Used after an If action to specify actions which should take place if
the If condition didn\'t match.\
\
See Flow Control in the Userguide for more info.

#### Encrypt File

Encrypt the specified SD card file.\
\
The path starts in the root directory of the SD card e.g. secret.txt,
secret/recording.mp3\
\
Key Name is the name of the encryption key to use.\
\
Usually the key is deleted after encryption, set Leave Key if you have
more files to encrypt.\
\
There must be space left on the SD card at least equal to the size of
the file before starting encryption.\
\
See *Encryption* in the Userguide for details.\
\
You can also access Tasker\'s encryption features via File Magic, a
Tasker-integrated file manager.

#### Enter Key

Enter an encryption key in preparation for encrypting at a later time.\
\
If Confirm is set, the key will be requested twice in order to be sure
it was entered correctly.\
\
See *Encryption* in the Userguide for details.

#### Filter Image

Apply a filter to the image currently in the image store.\
\
See also: Load Image.

#### Flash

Flash a message up.\
\
If Long is selected, the message will flash up for longer.\
\
A Flash is less intrusive than a popup: it is still possible to interact
with the application below while the message is showing.\
\
On some devices, disabling Notifications for Tasker in Android settings
will also prevent flash messages.

#### Flip Image

Flip the image currently in the image store.\
\
See also: Load Image.

#### For

Do a set of actions to process each of a set of values.\
\
Values is a comma-separated list of items to iterate through\
\
A For loop should be ended with a matching End For action (if one is not
present, one is automatically added to the end of the task)\
\
Example Items:\
\
apple, 0, 2:4, 3:9:3, %ARR(1:2), pear\
\
This would set Variable one at a time to:\
\
apple, 0, 2, 3, 4, 3, 6, 9, %ARR1, %ARR2, pear\
\
See Flow Control in the Userguide for more info.

#### [Google Drive Download](ah_google_drive_download.html)

#### [Google Drive List](ah_google_drive_list.html)

#### [Google Drive Sign-In](ah_google_drive_sign_in.html)

#### [Google Drive Trash](ah_google_drive_trash.html)

#### [Google Drive Upload](ah_google_drive_upload_file.html)

#### GPS

Whether the GPS receiver is enabled or not.

#### GUnzip

Decompress the specified gzip archive file on the SD card.\
\
You do not need to add .gz on the end of the filename.\
\
Specify Delete Zip to delete the gzip file if the compression succeeds.

#### GZip

Compress the specified file on the SD card to a gzip archive of the same
name with a .gz extension.\
\
Specify Delete Orig to delete the original file if the compression
succeeds.

#### Gentle Alarm

Enable/Disable a Gentle Alarm alarm, or all alarms (Power) if no Name is
specified.\
\
Requires v3.1.0+

#### Get Location

Get a location fix.\
\
GPS: a value will be set when the accuracy stops improving. \'Use GPS
Satellites\' must be enabled in Android Location Settings.\
\
Net: a value will returned upon the first fix.\'Use Wireless Networks\'
must be enabled in Android Location Settings.\
\
Continue Task Immediately: move on to the next action in the task as
soon as the fixing has started.\
\
Keep Tracking: don\'t stop tracking the location source(s) when a value
is returned This will use more power but enables faster fixes after the
first one. When using this option, tracking can be stopped by the action
Stop Location or doing Get Location without the option checked.\
\
It will stop automatically if at any time no tasks are left to execute
or the Get Location times out.\
\
Note: the fix data are stored in the relevant %LOC variables, see the
Variables section of the userguide.

#### Get Voice

Use a speech recognizer to convert speech into text.\
\
A comma-separated list of results are stored in the variable %VOICE.
It\'s possible there may be several results because of deficiencies in
the speech-recognition or e.g. environmental noise. To get e.g. the
first result, use the Variable Split action and then access %VOICE1.\
\
If the recognition fails or the specified Timeout is exceeded, %VOICE is
cleared (detect this condition with the Is Set operator).\
\
Language Model is a hint to the speech-recognizer for fine-tuning the
results.\
\
The default Android speech recognizer requires a network connection and
therefore has a high-latency. Other recognizers are available e.g. on
Play Store.\
\
Tip: it may be necessary to install the Google Search app in order to
access this action on some devices.

#### Go Home

Go to the current system Home Screen.\
\
If the Page parameter is greater than 0, the home screen is requested to
start on that page.\
\
Some of the supporting home screens are Holo Launcher, Launcher Pro,
Nova Launcher and Car Dock Home (v3). If your Home Screen app doesn\'t
support it, you could contact the developer and refer them to Tasker\'s
developer page: tasker.dinglisch.net/developer.html for info on how to
include it.

#### Goto

Go to a different place in the current task.\
\
Number: specify an action number to jump to.\
\
Label: specify an action label to jump to. This is almost always better
than specifying a number.\
\
Top of Loop: jump to the first For action above the current action
(\'continue\')\
\
End of Loop: jump to the action **after** the next End For action
(\'break\')End of If: jump to the next End If action\
\
See the section on Flow Control in the Userguide for more info.

#### HTML Popup

Show a popup with the content defined by the user in HTML.\
\
Most Tasker actions are available via JavaScript, see the JavaScript
section of the Userguide.

#### HTTP Get

Send an HTTP GET request to a webserver.\
\
The response code is stored in %HTTPR. A response code of -1 indicates a
problem making the request. Any returned data is stored in the variable
%HTTPD if the content type is text-based (max 4K).\
\
Returned header fields are stored in the local variable array %header
(%header1, %header2 etc)\
\
Example: running a script\
\
Server:Port: www.big.com \[no port specified, use port 80\]\
Path: cgi-bin/palpable.pl\
Attributes: \[must be separated by newlines, no spaces please\]\
colour=pink\
scent=rosy\
Timeout: 30 \[read timeout after 30 seconds\]\
Content-Type: \[if nothing specified, use server-specified value\]\
File: results.html \[optional: store returned data in
/sdcard/results.html\]\
\
Attribute keys and values are url-encoded automatically.\
\
Server:Port can be preceeded by a) https:// to require a secure, trusted
connection b) a username:password@ to add a Basic Authorization header
field to the request.\
\
The Cookies parameter is of the form:\
\
name1=valuu1;name2=value2\
\
Ignore SSL Anchor Errors: only for https connections, ignoring such
errors leaves the connection open to man-in-the-middle attacks.

#### HTTP Head

Identical to the HTTP Get action except the HEAD request method is used
so no data is returned from the server.

#### HTTP Post

Send an HTTP POST request to a webserver.\
\
The response code is stored in %HTTPR. A response code of -1 indicates a
problem making the request. Any returned data is stored in the variable
%HTTPD if the content type is text-based (max 4K).\
\
Returned header fields are stored in the local variable array %header
(%header1, %header2 etc)\
\
Example: sending a script some data\
\
Server:Port www.small.com \[no port specified, use port 80\]\
Path: cgi-bin/grinder.pl\
Data:\
name=Fred\
hair=Blond\
Timeout: 30 \[read timeout after 30 seconds\]\
Content-Type: \[default is: x-www-form-urlencoded, if not specified
server value is used\]\
File: results.html \[optional: store returned data in
/sdcard/results.html\]\
\
If Content-Type is x-www-form-urlencoded, the data must be formatted as
in the example and the keys and values will be encoded automatically.\
\
Server:Port can be preceeded by a) https:// to require a secure, trusted
connection b) username:password@ which will add a Basic Authorization
header field to the request.\
\
The Cookies parameter is of the form:\
\
name1=valuu1;name2=value2\
\
Ignore SSL Anchor Errors: only for https connections, ignoring such
errors leaves the connection open to man-in-the-middle attacks.

#### Haptic Feedback

Change the global system haptic feedback setting (found in Android Sound
settings).

#### Hide Scene

Hide a scene currently being displayed.\
\
The scene is **not** destroyed. If you are finished with the scene you
should use Destroy Scene instead to release it\'s resources.\
\
Animation is only relevant for non-overlay scenes and when animations
are enabled in Android settings.\
\
See also: Scenes in the Userguide.

#### If

If the action condition does not match, skip all actions until a
matching Else or Endif is found or until the end of the task is
reached.\
\
See Flow Control in the Userguide for more info.

#### Import Data

Dynamically load a task into the active configuration or replace the
whole active configuration.\
\
Usually the data to be loaded is first read into a variable via the Read
File action.\
\
When a new configuration is successfully loaded, the task (and all
others) will be stopped and the monitor service also restarted.\
\
Tip: the action Variable Convert / To MD5 Sum, can be used to validate
the loaded data after Read File.

#### In-Call Volume

Volume level of speech during calls.\
\
Setting to 0 will make phone calls difficult.\
\
When Display is enabled, a popup will show the new level.\
\
When Sound is enabled, a tone will sound at the new volume level.

#### Input Method Select

Show the Android Input Method picker dialog.\
\
If some methods you have installed are not shown, make sure they are
enabled in Android settings.\
\
Note: unfortunately Android does not allow changing of the input method
without user iteraction.

#### Interrupt Mode

Sets the interruption mode for the device i.e. whether notifications,
alarms etc should interrupt the current activity.\
\
This action requires that Tasker\'s notification access service is
running, see Android\'s Sound And Notification settings.\
\
Note that changes to Ringer, DTMF, Notification or System volume may
knock the system out of mode \'none\'.\
\
Android 5.0+ only.\
\
See Also: variable %INTERRUPT.

#### Java Function

Execute a native Java function.\
\
See Java in the userguide.

#### Java Object

Manipulate in some way a Java object previously created by the action
Java Function.\
\
See Java in the userguide.

#### JavaScript

Run JavaScript from a file and wait till it finishes.\
\
Most Tasker actions are available via function calls.\
\
Warning: code in the file will have access to local device files, data
stores etc\
\
See the JavaScript section of the Userguide for more information.

#### JavaScriptlet

Run a piece of JavaScript and wait till it finishes.\
\
Most Tasker actions are available via function calls.\
\
See the JavaScript section of the Userguide for more information.

#### Juice Defender Data

Use the Juice Defender app to change Mobile Data APNs (in order to
change mobile data connectivity).\
\
Juice Defender Control: Juice Defender decides whether to turn the APNs
on or off.

#### Juice Defender Status

Turn the Juice Defender app on or off. Requires JD version 3.3.2 or
higher.

#### [Keyboard](ah_keyboard.html)

#### Keyguard

Whether the keyguard is enabled or disabled.\
\
The keyguard is the dialog requiring some sort of unlock action when the
device is turned on.\
\
Note: while keyguard is disabled, your SIM pin unlock screen may
disappear after a few seconds after a reboot.\
\
WARNING: while keyguard is disabled, the \'lock pattern\' mechanism is
also disabled, so your phone is unprotected if it is lost. There is also
the possibility of interference with other applications that manipulate
the keyguard.\
\
On Android 2.2+, this action should probably only be used when the
device is on and unlocked, unless the unlock method in Android settings
is set to None.\
\
Side-effect: coming out of Airplane Mode with Keyguard disabled may
leave the SIM unrecognized until Keyguard is toggled again.\
\
See also: action Keyguard Pattern.

#### Keyguard Pattern

Control the lock pattern displayed by the Android keyguard. If the
keyguard is disabled, no pattern is displayed even if the pattern is
enabled.\
\
WARNING: behaviour is unknown if you enable the lock pattern without
having first entered a pattern in Android settings.\
\
See also: action Keyguard.

#### Kill App

Stop the specified application.\
\
Android 2.2+: restarts an application\'s background services only.\
\
For other Android versions or if Use Root is selected: kills a running
application and all its background services, notifications, alarms etc
Note that Use Root can cause future malfunctioning of the target app if
it e.g. is killed while writing data.\
\
Tip: may be more effective if the target app is not in the foreground,
try using action Go Home first.

#### Launch App

Launch the specified application.\
\
If Data is specified, it is passed to the application when launched. Not
all applications examine the data field, however.\
\
If *Exclude From Recent Apps* is checked, the application will not
appear in the recent apps list (usually accessed by long-clicking home
in the Android launcher), unless it was already in the list.\
\
If Always Use New Copy is not checked, any existing copy of the app to
be launched instead of a new copy.\
\
To change the application once you\'ve selected one, tap on the
application icon.\
\
When selecting an app, you can long-click to select a sub-activity of
the app. Note that often the app is not expecting a sub-activity to be
launched directly and may crash.

#### List Apps

List installed packages, apps and components in the specified array
variable.\
\
Packages correspond to APK files.\
\
Each package can contain multiple apps (though usually there is only
one) and multiple components of each of the four types.\
\
Only **enabled** and **exported** apps and components are listed.\
\
Apps and components are listed in the format PkgName:ClassName.

#### List Files

List the files contained in a specified directory in alphabetical
order.\
\
If a Match is specified, only filename which match that pattern are
included.\
\
The results are stored in the specified variable. The first file path is
stored in %VAR1, the second in %VAR2 etc\
\
Note: when Use Root is selected, it may be necessary to specify an
absolute path (starts with /) for Dir.

#### Load Image

Load an image into the image store, overwriting any image there
previously.\
\
The image store is an image held in the device memory on which all
actions from the Image category act.\
\
Once finished manipulating an image, it can be saved to a file with the
Save Image action.\
\
However, it could also be used to e.g. directly set an image element in
a scene.\
\
Max Width Or Height: if specified, the image is scaled as it is loaded
so that no dimension is more than the specified number of pixels. Useful
when memory is an issue.\
\
Respect EXIF Orientation: if the specified image is JPG format, it will
be automatically adjusted after loading dependent on the EXIF meta-data
tag, if present.

#### Load Last App

Launch the previous foreground application.

#### Lock

Show a lock screen.\
\
To continue, the specified code must be entered. Allow Cancel determines
whether a Cancel button will be shown or not. If Cancel is pressed the
user is taken back to the home screen.\
\
If Remember Till Off is selected, a correctly entered password will be
remembered and reused until the device enters sleep mode.\
\
A common use is to lock particular applications.\
\
Consider locking this profile. That will prevent circumvention of this
action\'s lock by changes within Tasker.\
\
Also consider attaching a Lock action to any application on your system
which would allow removal of Tasker e.g. system Settings.\
\
In any case, this action should not considered as a replacement for the
system Keyguard lock, as it is less secure. A reboot will remove the
lock screen, for instance.

#### MIDI Play

Play notes on a MIDI instrument attached by USB.\
\
For details, see MIDI in the userguide.

#### Media Button Events

After grabbing the Media Button via this action all presses will be sent
to Tasker.\
\
It only makes sense to do this if you configure Tasker to do something
with them (via state Media Button) or you want to block them from going
to another app.\
\
Note: any app can grab the Media Button at any time, Tasker cannot
\'keep hold\' of it. For example, the system media player seems to grab
the button at the start of each track.

#### Media Control

Send a command to a media playback application.\
\
A target app need only be specified when multiple apps are interpreting
the command.\
\
Note: the Toggle Pause function may not work unless playback has already
been started manually.\
\
Note: Tasker\'s Music XXX actions are not controlled by this action.

#### Media Volume

Volume level during media playback.\
\
Setting to 0 will mute music.\
\
When Display is enabled, a popup will show the new level.\
\
When Sound is enabled, a tone will sound at the new volume level.

#### Menu

Show a selection dialog and perform a different action depending on
which item the user selects.\
\
The Layout parameter specifies the look of all the items. Click to edit
it.\
\
The Items parameter specifies the content of each item.\
\
The selected item label and index are available in the resulting task in
%tap\_label and %tap\_index respectively.\
\
If the user does not explicity select an item then when the specified
Timeout is reached the item with a checkmark will be automatically
selected.\
\
More info: Menu element in the Userguide.

#### Mic Mute

Mute the device\'s microphone.

#### Mobile Data

Set mobile data status without affecting incoming calls.\
\
This action has the disadvantage that Android may manipulate it
internally when certain things happen e.g. wifi disconnected.\
\
Note: this action requires that Mobile Data is intitially turned \*on\*
in Android System Settings.\
\
When Mobile Data is \*off\* in System Settings, this action will have no
effect.\
\
It has been reported that many Google apps reenable the setting.

#### Mobile Data 2G/3G

Setting the mode to 2G only will save power at the cost of speed.\
\
This action is not possible on a standard Android ROM.

#### Morse

Play morse code representing the given Text.\
\
Amplitude is the percentage of maximum amplitude. The system volume
setting for the selected output stream will also affect the perceived
volume.\
\
Non-latin characters are not supported.\
\
Note: Frequency is not on a Hertz scale.

#### Move

Move an SD card file or directory to a new directory.\
\
If To specifies an existing file, it will be overwritten.\
\
The paths start in the root directory of the SD card.\
\
Note: files cannot be moved from one file system to another e.g.
internal memory to SD. A workaround is to Copy and then Delete.

#### Music Back

Jump backwards in a sound file which was previously started with Play
Music.\
\
Jump value is in seconds.

#### Music Play

Play a sound file from the SD card.\
\
File is the path to the file on the SD card e.g. Music/wow.mp3\
\
If Loop is selected, the playback will restart when it reaches the end
of the file.\
\
Start specifies how many seconds into the track to begin playing.\
\
You can stop the playback before it is finished with the Stop Music
action.\
\
You can start playback from the start by repeating the action\
\
Playback has been tested with 3gp, mp3 and wma formats.\
\
See also: variable Music Track

#### Music Play Dir

Play music files from the specified SD card directory.\
\
If Audio Only is selected, only files with the following extensions will
be played: 3gp, mp3, wma, au, mid, midi, mp2, ogg, wav.\
\
If Random is selected, files will be played in random order.\
\
You can stop the playback before it is finished with the Stop Music
action.\
\
Doing the same action on the same directory will move playback to the
next file. If you want to start afresh, use Music Stop first.\
\
See also: variable Music Track.

#### Music Skip

Jump forward in a sound file which was previously started with Play
Music.\
\
Jump value is in seconds.

#### Music Stop

Stop playback of a sound file or directory which was previously started
with Play Music.\
\
If Clear Dir is specified and a directory was being played, next time
Music Play is used the playback will start from the first file.

#### [Navigation Bar](ah_navigation_bar.html)

#### Network Access

Deny network access to all or selected apps.\
\
When mode Deny is selected, all apps have network access except for
those specified.\
\
When mode Allow is selected, only the specified apps have access.\
\
Use of this action overrides and replaces the effects of any previous
use.\
\
Notes:\
\* this action is implemented via a VPN local to the device and cannot
be used in combination with other VPNs.\
\* some devices will clear the users confirmation of Tasker\'s
permission to setup a VPN after every boot\
\* the icon which Android shows in the status bar cannot be avoided\
\* Tasker does not examine the contents of any network packet

#### NewsRob

Info:\
\
http://newsrob.com

#### [NFC Tag](ah_nfc_tag.html)

#### Night Mode

Change Android\'s Night Mode setting.\
\
Only effective when Android\'s UI Mode is Car or Desk.\
\
Requires Android 2.2+

#### Notification Pulse

Android system setting, whether to pulse the notification light for new
notifications.

#### Notification Volume

Volume level of notification alert.\
\
Setting to 0 will mute the notification sound.\
\
When Display is enabled, a popup will show the new level.\
\
When Sound is enabled, a tone will sound at the new volume level.\
\
Note: on some devices Notification and Ringer volume are linked,
changing one will change the other. There may be an Android setting for
controlling that behaviour.

#### Notify

Show a notification on the top bar.\
\
The specified Title will appear on the bar initially with the Icon.\
\
Notifications with a particular (non-empty) title replace existing ones
with that title.\
\
When the notification area is pulled down, the specified Text will be
visible.\
\
If Permanent is checked, the notification will not be removed by
clicking on it or pressing the Clear button. It \*can\* be removed using
the Notify Cancel action.\
\
A common use of creating a permanent notification is to allow permanent
quick access to e.g. a Menu Task through the Notification Bar. Specify a
task to run when the notification is clicked by creating a profile with
a Notification Click event.\
\
Up to 3 Actions can be specified which will appear in the notification
area. In some cases it may be necessary to slide down to reveal the
actions. Actions do not run as part of the notifying task.

#### Notify Cancel

Cancel a notification (created by Tasker) currently in the System
Notification bar.\
\
Title is the title of the notification to cancel. If Title is not
specified, all notifications will be cancelled (including \'permanent\')
ones.\
\
If more than one notification with the specified Title is currently
being displayed, only the last one displayed will be cancelled, the
otherwise will need to be cancelled manually.\
\
Warn Not Exist: if set, a warning will be flashed if there is no
matching notification.

#### Notify LED

Show a notification on the top bar and flash an LED.\
\
The specified title will appear on the bar initially. Notifications with
a particular (non-empty) title replace existing ones with that title.\
\
When the notification area is pulled down, the specified text will be
visible.\
\
A Number other than 0 causes that number to be included in the
notification area.\
\
Rate is the number of milliseconds the LED will flash on and then again
be off. It must be at least 1.\
\
Not all devices support all colours. Many devices will only support red
and green. In general, colours near the top of the list are more likely
to be supported.\
\
Some devices will only flash the LED when the device is off at the time
the notification is received.\
\
Up to 3 Actions can be specified which will appear in the notification
area. In some cases it may be necessary to slide down to reveal the
actions. Actions do not run as part of the notifying task.

#### Notify Sound

Show a notification on the top bar and play a sound.\
\
The specified Title will appear on the bar initially. Notifications with
a particular (non-empty) title replace existing ones with that title.\
\
When the notification area is pulled down, the specified Text will be
visible.\
\
A Number other than 0 causes that number to be superimposed on the
notification icon.\
\
Music File specifies a file location on the sdcard e.g. music/hello.mp3.
If it\'s blank, the default notification sound will play.\
\
Up to 3 Actions can be specified which will appear in the notification
area. In some cases it may be necessary to slide down to reveal the
actions.

#### Notify Vibrate

Show a notification on the top bar and vibrate.\
\
The specified Title will appear on the bar initially. Notifications with
a particular (non-empty) title replace existing ones with that title.\
\
When the notification area is pulled down, the specified Text will be
visible.\
\
A Number other than 0 causes that number to be included in the
notification area.\
\
Pattern: enter a comma-separated list of numbers. The 1st one is how
long to be silent for, the 2nd one how long to vibrate for and then
alternating.\
\
Specify no pattern to use the default pattern.\
\
Up to 3 Actions can be specified which will appear in the notification
area. In some cases it may be necessary to slide down to reveal the
actions Actions do not run as part of the notifying task..

#### Open File

Open the specified file on the SD card.\
\
The file type is determined by the extension, unless a specific Mime
Type is specified.\
\
The viewer/listener used depends on that registered by the system for
the file type.

#### Open Map

Launches Google Maps with a particular mode and location/destination.\
\
Exactly one of Address or Lat/Long must be specified. Address is not
valid for StreetView mode.\
\
Address is in the format X+Y+Z e.g. Littleton+Delaware\
\
Zoom is only possible with Point / StreetView and a Lat/Long
specification.\
\
Label is only possible with Point mode, it will show a marker with the
specified label.\
\
Google Maps version 3.2.1 or higher is (probably) required for
Navigation.

#### Perform Task

Run the selected Tasker task.\
\
You can \'nest\' as many tasks as you wish.\
\
When this action is used as part of an Enter task, the settings it
contains are \*not\* restored when the profile exits.\
\
When a task is started from an existing task, the existing task
continues unless the Stop parameter is set.\
\
If you set the priority lower than the current task, the current task
will finish before the new one starts.\
\
If you set the priority the same or higher than the current task (a good
way to do this is to specify \'%priority+1\'), the new task will
completely execute before the current one resumes.\
\
Values assigned to %par1 and %par2 are available in the child task as
normal variables.\
\
If the child does a Return action, the Return Value Variable in the
parent task is set to the Value specified in that Return action, however
note that the value will not be returned if the Perform Task is the last
action of the parent.\
\
See Flow Control in the Userguide for more info.

#### Play Ringtone

Play an alarm, notification or ringer ringtone throught the specified
audio stream.\
\
If no Sound is specified, the current default tone of the specified Type
will be played.\
\
Note: the task will not wait for the ringtone to complete before
continuing.\
\
Note: in some Android versions ringtones will endlessly loop due to an
Android bug.

#### Plugin

Runs the specified action plugin.\
\
Timeout specifies how long Tasker should wait for the plugin to finish.
**None** indicates that Tasker will proceed immediately to the next
action in the task.\
\
Warning: data you enter in the plugin configuration screen is collected
by the \*plugin\*, not by Tasker. If the plugin has Internet permissions
it could e.g. transmit your data to third-parties.

#### Popup

Show a popup box with a message.\
\
The popup will dissappear after the specified number of seconds or if
its text is tapped.

#### Popup Task Buttons

Show a popup box with a message and 1-3 buttons with Task names, icons
or both.\
\
If one of the buttons is clicked, the popup exits and the relevant task
is performed.

#### Power Mode

Set the system power mode.\
\
Requires a rooted device.

#### Profile Status

Enable or disable the named profile.\
\
If the state is already the desired one, there will be no effect.

#### Query Action

Get details of an action to run, then run it.\
\
If Action is specified, only the parameters will be queried. This is a
very useful action to assign to a home screen widget, since it allows
you to easily execute any of Tasker\'s actions without having to set up
a profile etc first.\
\
Wait and Wait Until actions cannot be queried. As a workaround, you
could query for a variable and then then Wait in the next action of the
task using the variable value.

#### Quick Setting Add

Add a custom tile to the system Quick Settings panel.\
\
If Items are specified, then when the icon is clicked they will be shown
in a menu.\
\
If **no** Items are specified, a click on the tile can be detected via
the event Quick Setting Clicked.\
\
Only usable on Cyanogen 5.1.1+ ROMs with Custom Tile support.

#### Quick Setting Remove

Remove a custom tile previously added to the system Quick Settings panel
with action Quick Setting Add.\
\
It is not classified as an error if the tile did not previously exist.\
\
Only usable on Cyanogen 5.1.1+ ROMs with Custom Tile support.

#### Radio

Set the status of the phone radio.\
\
Warning: turning off the phone radio will prevent outgoing/incoming
calls and mobile data transfer.

#### Read Binary

Read binary data (e.g. image data) from the specified file into a
variable in base 64 format.\
\
Base 64 is a textual format meaning it is safe for use where pure binary
data may not be.\
\
Base 64 can have various formats: that used by Tasker has regular line
terminators and potentially ends with padding characters (=).\
\
See Also: actions Write Binary, Variable Convert

#### Read File

Read a text file into a variable.\
\
Don\'t try to read a non-text file with this, the results will probably
be disastrous

#### Read Line / Read Paragraph

Read a record (a line or paragraph) from a text file.\
\
Line/Paragraph is the name of a variable containing the record number to
read. If unspecified, the record after the previously read one \*in that
file\* is read. A variable is used in place of a number here to permit
e.g. reading a random record via the Variable Randomize action.\
\
If the end of the file was reached before the specified record number
was found, it will contain the value EOF. The next line number then
resets to 1.\
\
Blank lines and any newline character at the end of a file are always
ignored.\
\
Don\'t try to read a non-text file with this, the results will probably
be disastrous.\
\
The action is not very efficient for reading all the records in a file,
since it starts from the beginning each time.

#### Reboot

Reboot (or just shutdown) the device.\
\
Unfortunately, this is not a \'clean\' shutdown. Neither Android nor
running applications are informed that the device is rebooting, so be
prepared for possible data corruption.\
\
On the other hand, every other app that allows reboot does it the same
way.

#### Record Audio

Record from the microphone to an SD card file.\
\
File is the path to the file on the SD card. It will have extension .3gp
added.\
\
Source is where to record from. Not all sources are available on all
hardware, for instance the Call source is not available on the G1.\
\
The Max Filesize is the maximum size of the resulting audio file in K.\
\
A zero value for Filesize places no limit, in which case the recording
will not stop until the SD card is full or the Tasker action Record
Audio Stop is performed.\
\
Note: playback of the resulting files can be done with Tasker\'s Play
Music action, amongst others.\
\
Warning: in many countries, recording of individuals\' speech without
their consent is illegal.

#### Record Audio Stop

Stop a sound recording previously started with Record Audio.

#### Remount

Remount a file system read-write or read-only.\
\
Warning: it\'s inadvisable to\
\
\* use this action unless you know what you are doing\
\* leave /system writeable for long periods

#### Resize Image

Resize and scale the image currently in the image store.\
\
Specifying a value of 0 for one of Width or Height will cause that
dimension to be scaled proportionally with the other dimension so as to
keep the original aspect ratio of the image.\
\
See also: Load Image.

#### Return

Return a value to the parent of this task i.e. the one that started it
via Perform Task.\
\
The parent task must have started it\'s child at equal or higher
priority and have specified a Return Value Variable in it\'s Perform
Task action, which will then be set to the Value specified in this
Return action.\
\
If Stop is checked, this task (the child) will terminate after returning
the Value to the parent.\
\
See Flow Control in the Userguide for more info.

#### Ringer Volume

Volume level of phone ringer.\
\
When Display is enabled, a popup will show the new level.\
\
When Sound is enabled, a tone will sound at the new volume level.\
\
If you want to put your phone in vibrate or silent mode, use action
Audio / Silent Mode, not this.\
\
Note: on some devices Notification and Ringer volume are linked,
changing one will change the other. There may be an Android setting for
controlling that behaviour.

#### Rotate Image

Rotate the image currently in the image store.\
\
See also: Load Image.

#### Run SL4A Script

Run the named Scripting Layer for Android (SL4A) script.\
\
Every file in /sdcard/sl4a/scripts is expected to be a script.\
\
More information: http://code.google.com/p/android-scripting/.\
\
Passed Variables is a comma-separated list of variables to pass in the
intent which starts the script. Their values \*at time of launch\* can
be accessed from the script by looking at the received intent.

#### Run Shell

Run a system shell command under linux.\
\
If Timeout is 0, the command will never time-out.\
\
Store Output In is a variable name for the output (stdout) of the
command.\
\
Similarly, Store Errors In is for error output (stderr).\
\
A result code of 256 indicates a technical failure executing the
command, 257 indicates that the specified Timeout value was exceeded,
258 indicates the process was interrupted.\
\
Any non-zero result code will cause the task to stop, unless Continue On
Error is checked, otherwise the result code will be stored in %err.

#### SMS Backup+

Info: https://github.com/jberkel/sms-backup-plus\
\
Minimal version 1.3.4.

#### SQL Query

Query an SQL database in a file or URI.\
\
In Raw mode, the Query must be entered as a full SQL statement.\
\
In Table URI mode the URI refers to a specific table rather than a DB;
an example is content://com.android.contacts/groups.\
\
In both Formatted modes, SQL directives (SELECT, WHERE etc) should be
ommitted.\
\
Selection refers to the WHERE directive (\'column \> 5\', \'column =
?\')\
\
Selection Args specifies content that fills each ? in Selection in the
order they appear.\
\
The result rows of the query are stored in the specified array with a
row at each index. The columns within each row are separated by the
Output Column Divider.\
\
Null DB values are represented as , BLOBs as , problems with \<???\>\
\
When making several transactions on a DB on external storage or which
needs root to access, it will be much more efficient to first move the
DB file to internal storage (Move File action) and operate on it there.\
\
In Raw mode, only the following directives requiring writeable DB access
are supported: INSERT INTO, UPDATE, CREATE TABLE, DELETE FROM, ALTER
TABLE.

#### Save Image

Write the image currently in the image store to a file.\
\
The file extension will only be respected for JPEG and WEBP (if
available on the device); all other extensions will result in PNG
output.\
\
Higher Image Quality values will also result in greater file size and
more chance of running out of memory. Image Quality is not relevant for
PNG.\
\
See also: Load Image.

#### Say

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

#### [Say WaveNet](ah_say_wavenet.html)

#### Scan Media

Force the system to scan the SD card for new/deleted media. This can
save a lot of time removing and reinserting the physical card.\
\
If a file is specified, only that file is scanned.\
If a directory is specified, all of its contents will be scanned
recursively.\
\
Note: repeatedly scanning the same file will not update the thumbnail in
Gallery.\
\
On Android 4.4+, scanning the whole card or a directory only picks up
\*new\* files and the task waits till the scan is finished.

#### Search

Perform a search for the specified text.

#### Send Data SMS

Send a binary data SMS without user interaction. The maximum length is
133 bytes.\
\
Multiple numbers can be specified by comma-separating them.\
\
The Data field must consist of a Base 64 encoded string.\
\
A Tasker variable contents can be encoded to Base 64 with the Variable
Convert action, or binary data loaded from a file with the File / Read
Binary action.

#### Send Intent

Broadcast an ordered Intent.\
\
This action is intended for advanced users.\
\
See *Intents* in the Userguide for more info.

#### Send SMS

Send an SMS without user interaction.\
\
Multiple numbers can be specified by comma-separating them.\
\
Email addresses are not supported.\
\
Store in Messaging App: whether a record will be kept of the sent SMS in
the standard messaging app (only available prior to Android 4.4).\
\
Success or failure can be caught by creating an Event context SMS
Success/Failure.\
\
Maximum length of an SMS is 140 characters. In some character encodings
that translates to 140 characters, in others to only 70 characters.

#### Set Alarm

Set a new alarm in the default alarm clock application.\
\
If Confirm is not checked no user interaction will be required.\
\
Note that on some devices, setting the alarm too close to the current
time may result in the alarm being set for the next day.\
\
Also, some devices require that a Message be stipulated.

#### Set Clipboard

Copy the specified text to the system clipboard.\
\
If Add is set, the text will be added on the end of the clipboard,
otherwise it will replace the existing clipboard text.\
\
This is probably most useful for storing some data from an event (e.g.
the text of an arriving SMS). Note that you can also place the clipboard
contents in an action.

#### Set Key

Preset the passphrase for an encryption key.\
\
This allows subsequent en/decryptions to take place automatically
without user interaction.\
\
Important: it is less secure than the Enter Key action; read the
userguide section on Encryption before use.

#### Set Light

Change the brightness of a light.\
\
Available lights will vary per-device but typically include things like
keyboard backlights, LEDs, camera flashlights, display and button
backlights.\
\
Despite the maximum being given as 255, many lights will only be on or
off, in which case 0 specifies off and any other number specifies on.\
\
Note that turning a light off is not permanent, Android may turn it on
at a later time in response to various events on the device.\
\
If you accidentally reduce the display backlight to 0, a reboot should
solve the problem.

#### Set SMS App

Set the app which is the system-default SMS app.\
\
A dialog will be shown to confirm the change.\
\
Will have no effect unless a valid app is chosen.

#### Set Tasker Icon

Set the icon for Tasker\'s permanent notification in the status bar.\
\
Lasts until the monitor service is stopped e.g. due to disabling
Tasker.\
\
To permanently change the icon, see Menu / Prefs / Monitor /
Notification Icon

#### Set Tasker Pref

Dynamically set a preference value normally configured via Menu / Prefs
in the Tasker UI.\
\
The changed values will have immediate effect unless the related
operation is already in progress.\
\
The Use Reliable Alarms preference will not cause existing alarms to be
recreated.

#### Set Wallpaper

Set the system (home screen) wallpaper from an SD card image file.\
\
JPG and PNG are supported.\
\
If no image is specified, the default system image is set.\
\
Scale: if the image is smaller in width or height than the
launcher-specified values, scale it up to those values while keeping the
aspect ratio.\
\
Crop: if the image dimensions (possibly after scaling) are greater than
the launcher-specified values crop it down to those dimensions. This can
be necessary to prevent Android-internal problems.\
\
Note that it can take more than 20 seconds for this action to take
effect.

#### Set Widget Icon

Change the label of the specified (existing) Task Widget on the home
screen.\
\
Name is the name of the Task which the widget performs (which appears on
the homescreen, unless a label has been set with Set Widget Label.\
\
Icon is the new icon to set.

#### Set Widget Label

Change the icon of the specified (existing) Task Widget on the home
screen.\
\
Name is the name of the Task which the widget performs (set when it was
initially created and initially used as the label).\
\
Label is the new home screen label for the widget.\
\
Note: if you want to change the label several times, you refer to the
\*original\* Task name each time, which does not change.

#### Setup App Shortcuts

Dynamically configure the list of app shortcuts which will show when the
Tasker icon is long-clicked in the launcher.\
\
If no task is specified, that slot will receive the default appearance
and functionality.\
\
This action is mainly of use for child apps created with Tasker.\
\
See also: Prefs / Action / App Shortcut Tasks.

#### Setup Quick Setting

Dynamically change one of Tasker\'s quick settings tiles.\
\
If no task name is specified, the tile will receive the default
appearance and functionality.\
\
The status affects the appearance of the tile in a way defined by the
system. In addition, if it is set to Disabled, the tile will not respond
to clicks.\
\
The effects of this action will only be visible when the tile is
manually added to the set of used tiles via the Android UI.\
\
See Also: Prefs / Action / Quick Settings Tasks.

#### Share File

Share a file with another application or device.\
\
If Mime Type is not specified, Tasker will attempt to deduce it.\
\
If Show Chooser is specified, Android will display a selection of
possible ways of sharing the file, in a dialog.\
\
If not specified, the chooser may be shown anyway if there is no known
default way of handling that Mime Type.\
\
Some Android versions may ignore Chooser Title.

#### Show Alarms

Bring up a screen showing the configured system alarms.

#### Show Scene

Display a scene, creating it first if necessary.\
\
All Overlays are displayed over the current application and persist
until hidden or destroyed.\
\
Blocking overlays only block touches on the part of the screen they
cover.\
\
Non-blocking Overlays are also displayed over the Keyguard.\
\
Dialogs are little popup windows which take all user input while they
are displayed and can be dismissed with the Back key.\
\
Activities are standard Android app views.\
\
Offsets are percentages of the screen size with in the range 0-200,
(0=100% left, 100=centre, 200=100% right).\
\
Animation is only relevant for non-overlay scenes and when animations
are enabled in Android settings.\
\
See also: Scenes in the Userguide.

#### Shut Up

Stop speech initiated from a previous Say or Say To File action.\
\
Note: you must select Continue Task Immediately in the Say action to be
able to use Shut Up, otherwise Tasker will not get to the Shut Up action
until the speech has finished anyway.

#### Silence Ringer

During an incoming call, immediately stop the ringsound and/or
vibration.\
\
This is temporary; the ringer will still sound on the next incoming
call.

#### Silent Mode

Android 5.0: toggles vibrate mode on or off.\
\
Prior Android versions: in silent mode, all sounds except media and
alarm are surpressed by the system (without having their volume settings
changed). With Vibrate, the phone will vibrate on an incoming call.\
\
This setting overrides the Ringer Vibrate setting.

#### SleepBot

Info:\
\
http://wiki.mysleepbot.com

#### Sound Effects

Whether to enable or disable system sounds like clicks on icons.\
\
See also: Sound/System Volume setting.

#### Speakerphone

Whether the speakerphone is on or off.\
\
Note: this will only have any effect when a call has already started,
but you could use it with e.g. a Phone Offhook event if you want every
incoming call on speakerphone.

#### Start System Timer

Start a system or 3rd party countdown timer.\
\
When Show UI is selected the UI of the timer app will be displayed,
otherwise probably only a notification will be shown.\
\
Only available from Android 4.3.\
\
This action has no relation to Tasker\'s countdown timer widgets.

#### Status Bar

Expand or collapse the system status bar.\
\
On some devices Tasker\'s Accessibility Service will need to be enabled
in Android settings.

#### Stay On

Whether to prevent the screen going off while a power supply is
present.\
\
The screen will still dim a few seconds before Screen Timeout is
reached.

#### Stop

Stop execution of one or more tasks after any currently running action
has finished.\
\
If a task is specified, then **all** tasks with the same name currently
executing are stopped.\
\
If no task is specified, the current task is stopped (but **not** other
tasks with the same name).\
\
If With Error is checked, the task(s) are marked as finished due to an
error.\
\
Note: to stop a different task will often require that it has a lower
priority than the task with the Stop action, since otherwise the Stop
action will perhaps never be executed.\
\
Currently running actions in a different task will not be interupted by
a Stop action, with the exception of Play Ringtone and a non-root Run
Shell.

#### Stop Location

Stop tracking a location source which was previously initiated by Get
Location.\
\
This is only necessary if the Keep Tracking parameter is checked in Get
Location.

#### System Lock

Turn off the display and engage the keyguard.

#### System Volume

Volume level of system sounds.\
\
Setting to 0 will mute system sounds.\
\
When Display is enabled, a popup will show the new level.\
\
When Sound is enabled, a tone will sound at the new volume level.\
\
Note: System Sounds must also be enabled if required.

#### Take Call

Silence the ringer and pick up the phone, if it\'s ringing.

#### Take Photo

Take a photo. The current activity will be interrupted for a couple of
seconds.\
\
If Discreet is checked, there will be no visible or audible sign of the
picture being taken, and the device will not turn on if it is already
off (except on Eclair devices).\
\
Without Discreet, a small delay allows time for aiming.\
\
Insert in Gallery: immediately insert a thumbnail in the Gallery
application, otherwise it will not appear until the next time the SD
card is scanned.\
\
Naming Sequence: Series: photo names have an index number attached which
increases with each one taken. Chronological: the date and time is
attached to the filename.\
\
Photos are in JPG format and stored in /sdcard/dcim/Tasker/. You should
not attach the .jpg affix when specifying the filename prefix.\
\
See also: Menu / Prefs / Action / Camera Delay.

#### Take Screenshot

Take a screenshot of the phones current display.\
\
Writing to external storage is not supported.

#### TeslaLED

Use the camera flash as a torch.\
\
More info:\
\
http://teslacoilsw.com/teslaled\
\
Please reward the developer by choosing the Donate version!\
\
See Also: Alert / Torch.

#### Test App

Test some aspect of an application.\
\
A failed test will result in the specified result variable being
cleared.\
\
Calendar tests: require the time in seconds since the epoch as Data
(e.g. use %TIMES, or use the Variable Convert action to convert a
date/time into seconds first) and are entered in an array (%var1, %var2
etc), not a plain value, because there may be multiple events at the
time specified.

#### Test Display

Test an attribute of the display.\
\
AutoRotate: on or off\
\
Orientation: portrait or landscape.\
\
Resolution/DPI: depends on current orientation of display.

#### Test Element

Test some property of the specified scene element e.g. it\'s position
within the scene.\
\
The scene must have been created first and in some cases already be
displayed.\
\
Not all tests apply to all elements.

#### Test File

Test an attribute of a file and put the result in a variable.\
\
A failed test will result in the specified result variable being
cleared.\
\
Parent Dir: the parent directory of the given file, note that it may not
actually exist.\
Size: file size in bytes, or for directories number of children.\
Modification time: the modification time of a directory is the time a
file was last added or deleted from them.\
Type: either **file** or **dir**.

#### Test Media

Test some aspect of a media carrier or player.\
\
Music Playing Position: applies only to tracks started by Tasker via the
Music Play action.\
\
Note: a failed test will result in the specified result variable being
cleared.

#### Test Net

Test a network attribute.\
\
Possible Connection Types are **none, mobile, wifi, mms, supl, dun,
hipri, wimax, bluetooth, dummy, ethernet**, and **vpn**.\
Mobile Data and Wifi Hidden are **yes** or **no**.\
\
BT Paired Addresses is a comma-separated list of the bluetooth devices
this device is paired with. The other BT tests need a name or address to
test.\
\
BT Device Connected may require Tasker to be enabled when the device
connects (for some device types).\
Bluetooth must be enabled for all BT tests.

#### Test Phone

Test something phone related.\
\
\
\
A failed test will result in the specified result variable being
cleared.\
\
All tests require the phone number of the contact as Data.

#### Test Scene

Test an attribute of the specified scene and store the result in the
specified variable.\
\
Possible status values are\
\
uncreated, hidden, visible, background (shown but currently not on
screen)\
\
Offsets are percentages from -100 to 100, with 0 being display centre.\
\
If the scene does not exist the specified variable will be cleared.

#### Test System

Test an attribute of the operating system.\
\
Android ID: 64 bit hex value which should be constant for the life of
the device.\
\
UserID: the user ID of the current active (foreground) user, only
available on Android 4.2+.

#### Test Tasker

Test some aspect of Tasker\'s configuration.\
\
The Global Var, Local Var, Profile, Scene and Task test types store
their results as an array (%var1, %var2 etc).\
\
The Global Var type doesn\'t include built-in variables.\
\
The Profile and Task test types only list **named** profiles or tasks.

#### Test Variable

Test a variable attribute.

#### Timer Widget Control

Control the operation of a previously-created Task Timer widget.\
\
End: cause the timer to finish. The associated task will execute if the
timer was previously running.\
\
Resume: resume (or start, if not paused)) the countdown.\
\
Reset: stop the countdown and set it to it\'s initial value.\
\
Update: refresh the display of the remaining time, not usually
necessary.

#### Timer Widget Set

Set the period of a previously-created Task Timer widget.\
\
The elapsed time is set to 0.\
\
If the timer was already running, it will continue to do so.

#### Toggle Split Screen

Toggle whether the current app is in split screen mode or not.

#### Torch

Hold the camera flashlight on.\
\
May not work on all devices.\
\
If it gets stuck on, just turn the device off.\
\
See Also: 3rd Party / TeslaLED.

#### Turn On

Restart the system display timeout timer. If the display is off, it will
be turned on.

#### Type

Simulate typing of text.\
\
Only available on a rooted device.\
\
Accented characters currently do not work.\
\
USB Debugging probably needs to be enabled in Android\'s Developer
Settings.

#### USB Tether

Turn on sharing of the device\'ss Internet connection via USB cable.\
\
On some devices, you may need to enable the USB tether once in Android
settings before Tasker will be able to do it.

#### UnZip

Decompress the specified zip archive file on the SD card.\
\
You do not need to add .zip on the end of the filename.\
\
Specify Delete Zip to delete the zip file if the compression succeeds.

#### Variable Add

Increase the value of the variable Name.\
\
The value is increased by the integer Value.\
\
If the variable does not contain a numeric value (e.g. 3) this action
has no effect and a warning will be flashed.\
\
If the variable does not exist, it will first be created with a value of
0.\
\
If a Wrap Around is not zero, then when the final result is equal to or
greater than the Wrap Around value, it will wrap back to 0 e.g. with
Wrap Around 5, 2 + 4 = 1.\
\
See the section on Conditions and Loops in the Userguide for more
information.\
\
Use action Variable Set for non-integer addition.

#### Variable Clear

Remove the stored value for the user-variable Name.\
\
If no Name is specified, all user-variables are cleared.\
\
If Pattern Matching is specified, all variables which match the pattern
are cleared (see Pattern Matching in the Userguide).

#### Variable Convert

Convert the specified variable\'s value from one unit to another.\
\
If a variable is specified for Store Result In, the new value is stored
there and the original variable will not be changed.\
\
If the conversion fails, no values will be unchanged.\
\
Notes on particular conversions:\
\
Date Time to Seconds\
\* date and time must be separated by whitespace e.g. 20110304 11.32\
\* date can be in YYYYMMDD format or xx-yy-zz, in which case the
positions of day, month and year are determined by Android preferences\
\* if time is ommitted it is assumed to be 00:00\
\* time must be in 24hr format\
\* individual components of date and time can also be separated by a
colon, slash etc.\
\
Bytes\
\*Megabyte and Gigabyte conversions are human-readable rather than
precise.

#### Variable Join

Join all the values in the array %ARR into a single simple variable with
the given Joiner.\
\
Example: if %VAR1=\"I\", %VAR2=\"like\" and %VAR3=\"humus\", then after
the action Join/%VAR/;/Yes there will be a single variable %VAR with the
value \"I;like;humus\".\
\
Any missing indices in the array will be completely skipped.

#### Variable Query

Ask the user for a value via a popup dialog and assign it to the
specified variable.\
\
Tip: if you specify the same variable for the Default parameter, your
last input will be automatically filled in.

#### Variable Randomize

Set the variable Name to a random integer value between Min and Max
(inclusive; the number could be Min or Max).

#### Variable Search Replace

Find parts of a variable which match a regular expression (regex) and
optionally replace them with something else.\
\
Store Matches In specifies an array variable in which each successive
part of the Variable contents which matches the **whole** Search
parameter is stored.\
\
Replace With specifies what each matching part of the variable should be
replaced with.\
\
See Pattern Matching in the Userguide for more info.

#### Variable Section

Select a particular section of a variable and throw away the rest.\
\
If Adapt To Fit is checked, the specified Length is changed, if it is
too long, so that the selected section ends at the end of the original
variable contents.

#### Variable Set

Set the variable Name to the value To.\
\
Name can be any desired string, however it\'s advisable to make it a
sequence that does not commonly occur in text otherwise it will match at
unexpected times.\
\
Names all in lower-case are *local* variables which are only visible in
the current task.\
\
If Recurse Variables is checked, all variables mentioned in the To
parameter will be repeatedly replaced until there are no variable names
left, otherwise only one round of variable replacement will take place.\
\
If Append is checked, To is added to the existing value of the
variable.\
\
If Do Maths is checked then at the time of assignment the value of To
will be evaluated as a mathematical expression.\
\
e.g.\
\
Name: %FROG\
\
To: %VOLC + 1\
\
Assuming %VOLC is 8, if Do Maths is checked, %FROG will get the value
\'9\', otherwise it will get the value \'8 + 1\'.\
\
If To cannot be numerically evaluated (e.g. it is \'cat + 3\') then the
current task will terminate.\
\
See Also: Variables section in the Userguide.

#### Variable Split

Split the value of the given variable into several sub-variables.\
\
Each time Splitter is encountered in the variable value, a new variable
is made with name %VARX.\
\
If Delete Base is selected, the original variable is removed after the
split.\
\
Example: %VAR contains \"I;like;humus\". After the action
Split/%VAR/;/Yes %VAR is replaced with 3 variables %VAR1, %VAR2 and
%VAR3 containtin \"I\", \"like\" and \"humus\".

#### Variable Subtract

Decrease the value of the variable Name.\
\
The value is decreased by the integer By.\
\
If the variable does not contain a numeric value (e.g. 3) this action
has no effect and a warning will be flashed.\
\
If the variable does not exist, it will first be created with a value of
0.\
\
If the Wrap Around parameter is set and the result is below zero, it
will wrap back to the Wrap Around value.\
\
See the section on Conditions and Loops in the Userguide for more
information.\
\
Use action Variable Set for non-integer subtraction.

#### Vibrate

Activate the device\'s vibrator.\
\
The specified time is in milliseconds i.e. to vibrate for one second
enter 1000, to vibrate for half a second enter 500.

#### Vibrate On Notify

Whether to vibrate with a system notification.\
\
Note: if you are going to use Tasker for this, it\'s probably best not
to mix it with other methods of controlling the setting.\
\
See also: Notification Volume.

#### Vibrate On Ringer

Whether to vibrate on an incoming call.\
\
You\'re probably really looking for the action Audio / Silent Mode if
you want to put your phone in vibrate or silent mode.\
\
Note: if silent/vibrate mode is engaged, this setting is overridden.\
\
Note: if you are going to use Tasker for this, it\'s probably best not
to mix it with other methods of controlling the setting.\
\
See also: Ringer Volume.

#### Vibrate Pattern

Activate the device\'s vibrator in a pattern.\
\
Enter a comma-separated list of numbers. The 1st one is how long to be
silent for, the 2nd one is how long to vibrate for and then
alternating.\
\
Times are in milliseconds i.e. to vibrate for one second enter 1000, to
vibrate for half a second enter 500.\
\
0 values are disallowed, excepting for the first value.

#### Voice Command

Run the system-default application for processing voice commands.\
\
Note: unlike the Get Voice action, the calling task will not wait for
the voice command to be processed.

#### Wait

Stop executing the current Task for the specified amount of time.\
\
If another task becomes queued during the wait, the wait could end up
being much longer than expected, depending on the other task\'s priority
and actions.

#### Wait Until

Stop executing the current Task until the condition is met. Wait
\*maximally\* the specified time between checks. The actual time between
checks will vary because Tasker will opportunistically retest the
condition at times when battery life will be unaffected.\
\
Note: a very small wait period might have battery life implications, in
general it should be as large as is acceptable.

#### WiFi

Whether the WiFi radio is enabled or disabled.\
\
This action is ignored when Airplane Mode is on prior to Android 2.0. It
also has no effect when a Wifi Tether (Hotspot) is enabled.\
\
Note: it\'s not usually advisable to use the Toggle setting when also
using a Wifi Near state with Enable Wifi checked, since the action will
then have different effects dependent on whether wifi has already been
auto-enabled for a wifi scan or not.

#### WiFi Net

Change the wifi network connection status.\
\
Reassociate: reconnect even if already connected.\
\
Force: try to carry out the action even if the network status that
Android reports is incompatible e.g. disconnect even if Android reports
already disconnected.\
\
Report Failure: flash a short error message if the action fails. Note
that Android might not e.g. report a disconnect failure if there is
currently no connection.

#### WiFi Sleep

The policy for deciding when Wifi should go to sleep. When Wifi goes to
sleep, the device will switch to using the mobile data connection.\
\
\\*Default*: depends on the Android version. Will be something like
\'When the screen goes off\' or \'After 15 Minutes\'.\
\
*Never While Plugged*: When Screen Off if on battery power.

#### WiFi Tether

Turn on sharing of the device\'s Internet connection via wifi.\
\
If Wifi was on, it will be turned off, you will need to enable it
manually after the tether.

#### WiMax

Whether the Wimax radio is enabled or disabled.

#### WidgetLocker

Info:\
\
http://teslacoilsw.com/widgetlocker\
\
Suspend: Keep WidgetLocker enabled/running, but prevent it from
activating on screen off.

#### Write Binary

Write base 64 data from a variable to binary format in a file.\
\
See Also: actions Read Binary, Variable Convert

#### Write File

Write the specified text to the specified SD card file.\
\
If Append is checked, the text is added to the end of the file without
changing the existing contents.\
\
A newline character is always appended to the text.

#### Zip

Compress the specified file(s) (or directory(ies), recursively) on the
SD card to a zip archive,\
\
Multiple Files can be specified by separating them with a newline.\
\
If only a single file is specified and no Output Path is give, the
Output Path will be the same file with a .zip extension.\
\
Level is the compression level to use. Higher values will take longer to
compress but use less space.\
\
Specify Delete Orig to delete the original file if the compression
succeeds.

#### Zoom Alpha

Set the alpha level of the specified Zoom image element.\
\
0 is invisible, 255 is fully visible.

#### Zoom Colour

Set the Colour and End Colour of the specified Zoom oval or rectangle
element.\
\
End Colour is only used if a shading has been specified for the element
in Zoom.

#### Zoom Image

Set the image source of the specified Zoom image element.

#### Zoom Position

Set the X and Y coordinates of the specified Zoom element, relative to
the top-left corner of its widget.

#### Zoom Size

Set the width and height of the specified Zoom element.

#### Zoom State

Set the state of the specified Zoom element, which must be a Switcher or
(more unusually) an AutoSwitcher.

#### Zoom Text

Set the text or label of the specified Zoom text or button element.

#### Zoom Text Colour

Set the text or label colour of the specified Zoom text or button
element.

#### Zoom Text Size

Set the text or label size of the specified Zoom text or button element.

#### Zoom Visibility

Show or hide the specified Zoom element.
