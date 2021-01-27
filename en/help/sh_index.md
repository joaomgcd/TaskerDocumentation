---
title: 'Tasker: State A-Z'
---

### Tasker: State A-Z

#### Active User

Whether the user with the specified ID is active or not.\
\
When a different user is selected, this state will become inactive.\
\
When returning to the specified user, the state will become active
again.\
\
Note that each user account has it\'s own set of apps, so to detecting
each user becoming active would require Tasker to be installed under
each account.\
\
In other words, it only makes sense to specify the user ID of the user
under which the current Tasker install is running.\
\
The administrator (first user) ID is usually 0, the action Test System
can be used to determine other user IDs.\
\
This state requires Android 4.2+.

#### Airplane Mode

Airplane Mode is enabled.

#### BT Connected

The device is connected to another device via Bluetooth. If either of
Name or Address are specified, they must match a connected device.\
\
Connections to non-paired devices (e.g. while pairing is taking place)
are ignored.\
\
Warning: Tasker can\'t directly detect when a BT device is connected,
only when a connection or disconnection is made.\
\
Only usable with Android 2.0+.

#### BT Near

A matching bluetooth device is nearby.\
\
If any of the parameters are specified the device must match that
parameter, otherwise any device will match.\
\
Standard/Low-Energy Devices: if you\'re only interested in a particular
type of device, select only one of these to reduce power usage.\
\
Non-Paired Devices: selecting this will use much more power and take
longer to scan.\
\
Toggle BT: if BT on the device is disabled, enable it for the period of
the scan, probably around 5-15 seconds.\
\
A seen device which is no longer visible for approximately two times the
scan period is forgetten. This is to help prevent the profile bouncing
on and off at the edge of the signal reception area.\
\
The period for BT scanning is specified in Menu / Preferences / Monitor
/ BT Scan Time.

#### BT Status

Whether the Bluetooth adapter is enabled or not.

#### Battery Level

The device\'s battery level is within the specified range.\
\
The values are inclusive i.e. 37-38 specifies a range with 2 values.

#### Calendar Entry

An Android Calendar entry with the specified parameters is currently
active.\
\
Any unspecified parameters are ignored i.e. any calendar entry will be
matched.\
\
The *Calendar* field is a pattern match, but the name of the calendar
provider befoe the : (probably Google) is **not** e.g.
Google:\*\@test.com is valid, G\*gle:one\@test.com is not.\
\
See Also: action Misc / Test, variables %CALTITLE, %CALDESCR, %CALLOC

#### Call

There is a call in progress, optionally from or to the specified Number
(see *Pattern Matching* in the Userguide).

#### Cell Near

One of the specified cell towers is visible to the phone.\
\
Press **Scan** to start collecting cell (tower) information. Leave Scan
on for at least 10 minutes and move around the location because many
places are covered by several cells and the phone will often swap
between them even if you\'re standing still.\
\
Tasker will keep the device on while scanning because cell detection is
more reliable then. If you turn the device off manually or change to a
different activity, scanning will stop.\
\
The first part of each line in the text box indicates the cell tower ID.
The number afterwards is the \*last seen\* signal strength to that cell.
The currently connected cell is marked with a less-than sign.\
\
This state is a very inaccurate way of determining if you are in a
particular location, but uses very little power.\
\
If active when there is no signal (e.g. during Airplane Mode) this
context will \*stay active\*.\
\
Cells specified in *Ignore Cells* can never cause the context state to
change, which can be useful if e.g. a particular cell is present in more
than one desired area.\
\
See Also: Prefs / Monitor / Use New Cell API, Prefs / Monitor / Net/Cell
Wake Screen

#### Device Idle

The device has been sitting unused and unmoving for a sufficiently long
period of time that it has decided to go into a lower power-use state.\
\
May not function for manufacturer-specific power-saving systems. The
device\'s battery temperature is within the specified range of degrees
celsius.\
\
The values are inclusive i.e. 37-38 specifies a range with 2 values.

#### Display Orientation

Whether the screen is in portrait or landscape mode.

#### Display State

Whether the device display is currently off or on.

#### Docked

A car or desk docking station is connected.\
\
If you wish to launch an alternative docking application, clear your
default app for docking and select Tasker when you are presented with
the choice which app to launch next time you dock.\
\
You can then launch an app via a Load App action in Tasker (or not, if
no docking app is desired).

#### Dreaming

This state is active when the display is in Android Daydream mode.

#### Ethernet Connect

The device is connected to a network via an ethernet interface (probably
through a USB adapter).\
\
The Active parameter specifies whether or not the ethernet network must
be the network currently in use in order to match.

#### Headset Plugged

A headset is plugged in.

#### Heart Rate

Whether the current measured heart rate is in the specified range of
beats per minute (BPM).\
\
See also: variable %HEART.

#### Humidity

The relative ambient air humidity in percent.\
\
See also: variable %TEMP.

#### Keyboard Out

The physical keyboard is showing.

#### Light Level

The current light level as a (massaged) percentage of the minumum and
maximum light levels ever seen.\
\
After setting this state up, you should calibrate it by covering up the
device for a few seconds and exposing it to bright light.\
\
Warning: on at least some devices, 0% is the level of a dimly lit room,
rather than that of total darkness.\
\
See Also: Menu / Prefs / Monitor / Display Off Monitoring / Light Sensor

#### Magnetic Field

The absolute magnetic field strength at the current location in
micro-Tesla.\
\
Magnetic fields will be detected better on some axis than on others e.g.
the base of the device may be more sensitive than the edge.\
\
See Also: variable %MFIELD.

#### Media Button

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

#### Missed Call

The Android call log has one or missed calls.\
\
If a Caller is specified, only missed calls from that number are
relevant (see Pattern Matching in the Userguide).\
\
If you want something to happen every time there is a \*new\* missed
call, use the event Missed Call instead.

#### Mobile Network

The device has mobile data connectivity of one of the checked types.\
\
The Active parameter specifies whether or not the mobile network must be
the network currently in use in order to match.

#### NFC Status

Whether the default NFC adapter on the device is enabled or not.\
\
Requires Android 4.3.3+.

#### Orientation

The device is in the specified orientation.\
\
Note that on some devices the actual orientation may be the reverse of
those shown.\
\
See Also: Menu / Prefs / Monitor / Display Off Monitoring /
Accelerometer

#### Pen Menu

The menu associated with the hardware pen is showing.\
\
Currently only Samsung SPen is supported.

#### Pen Out

The hardware pen is not in its port.\
\
Currently only Samsung SPen is supported.

#### Plugin

Listens for the conditions of the specified Locale-compatible
\'condition\' plugin being satisfied.\
\
Locale does not need to be installed on the device.\
\
WARNING: data you enter in the plugin configuration screen is collected
by the \*plugin\*, not by Tasker. If the plugin has Internet permissions
it could e.g. transmit your data to third-parties.

#### Power

The device is connected to a power source.

#### Power Save Mode

Whether Power Save Mode (also known as Battery Saver) is enabled or
not.\
\
Requires Android 5.0+.

#### Pressure

The (probably atmospheric) pressure at the current location in
millibars.\
\
At 30,000km altitude it will be virtually 0mb. At sea-level it will be
approximately 1013mb.\
\
See Also: Menu / Prefs / Monitor / Display Off Monitoring / Pressure
Sensor

#### Profile Active

A Tasker profile with the specified name is running.\
\
Name is a simple match, see Pattern Matching in the Userguide.

#### Proximity Sensor

Active when the proximity sensor of the device reports than an object is
nearby.\
\
After setting this state up, you should calibrate it by covering and
then uncovering proximity sensor a couple of times.\
\
This state may be unreliable in a profile mixed with other contexts. If
the purpose is to save power, some people have had more luck toggling
the Monitor preference instead.\
\
See Also: Menu / Prefs / Monitor / Display Off Monitoring / Proximity

#### Signal Strength

The phone radio\'s reported signal level is within the specified range.\
\
If the phone has no service or the signal strength is unknown this state
will never be active.\
\
See also: variable %CELLSIG.

#### Task Running

A Tasker task with the specified name is running.\
\
Name is a simple match, see Pattern Matching in the Userguide.\
\
*Running* means that the task is in the queue for it\'s actions to be
executed but it\'s not necessarily the case that one of its actions is
currently being carried out.

#### Temperature

Whether the current ambient temperature is in the specified range of
degrees (Celsius).\
\
See also: variable %TEMP.

#### USB Connected

Whether a device of the specified class is currently connected.\
\
Due to limitations of the Android USB interface, successful detection of
USB connections is extremely dependent on the hardware of both the host
and USB device.\
\
Note: The *Any* class does **not** include USB Hubs.

#### Unread Text

There is an SMS or MMS which has not been read and matches the specified
parameters.\
\
Content is the Body of an SMS, or the Subject or an MMS.\
\
Occasionally this state will be active when there are no apparent unread
texts because sometimes texts get stuck in an unexpected state in the
messaging app. The app \'Reset Unread SMS\' can fix this problem.

#### VPN Connected

A VPN network is connected.\
\
The Active parameter specifies whether or not the VPN must be the
network currently being used in order to match.

#### Variable Value

The named user-defined variable matches the specified operator and
value.\
\
See the userguide document on Flow Control for details of how the
operator/value comparison functions.\
\
This state can also trigger on some \'dynamic\' built-in variables: see
the *Variables* section of the Userguide for details.\
\
Warning: if you want to trigger on a variable and then take some action
which sets the thing the variable represents you should use the Variable
Set event instead. A Variable Value state will cause complications when
the state exits and tries to restore the value again.

#### Wifi Connected

The device is connected to a Wifi Access Point (AP).\
\
If any of the parameters are specified, the AP must match that
parameter, otherwise any AP will match.\
\
SSID: the SSID of the AP e.g. SKY34312\
\
MAC: the MAC address of the AP e.g. 00:1f:35:34:43:4a\
\
IP: the IP address of the AP e.g. 192.156.98.4\
\
You can use the variable Wifi Info to see information about the current
AP (when connected).\
\
The Active parameter specifies whether or not the wifi network must be
the network currently in use in order to match.

#### Wifi Near

The device is near a Wifi Access Point (AP).\
\
If any of the parameters are specified, the AP must match that
parameter, otherwise any AP will match.\
\
SSID: the SSID of the AP e.g. SKY34312\
\
MAC: the MAC address of the AP e.g. 00:1f:35:34:43:4a\
\
Capabilities: e.g. \[WPA-PSK-TKIP\]\
\
Min Activate Signal Level: the minimum signal strength to activate the
context. It\'s ignored once the context is active.\
\
Channel: the frequency channel.\
\
Toggle Wifi: if Wifi on the device is disabled, enable it for the period
of the scan, probably around 15 seconds. Toggling cannot take place when
the Wifi Tether (Hotspot) is enabled on the device. On Android 4.3+
devices, consider enabling *Scanning Always Available* in Android
advanced wifi settings, instead of toggling.\
\
A seen AP which is no longer visible for approximately two times the
scan period is forgetten. This is to help prevent the profile bouncing
on and off at the edge of the signal reception area.\
\
The period for Wifi scanning is specified in
Menu-\>Preferences-\>Monitor-\>Wifi Scan Time.\
\
You can use the variable Wifi Info to see information about nearby APs
(when not connected).\
\
When any profile has a Wifi Near state context, it will do regular scans
for nearby APs (see Menu-\>Preferences-\>Monitor-\>Wifi Scan Period.
This requires the device\'s Wifi radio to be enabled.
