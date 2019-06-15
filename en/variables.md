---
title: 'Tasker: Variables'
---

Variables ![](icon_tasker.png)
------------------------------

#### General

A variable is a named value which changes over time e.g. the level of
the battery, the time of day.

When Tasker encounters a variable name in a text, it replaces the name
with the current value of the relevant variable before carrying out the
action.

The main purposes of variables are:

-   *dynamic binding*: doing something with an action with data which
    is unknown when the task is created e.g. respond to an SMS; the
    sender is not known until the SMS is received.
-   allow [flow control](flowcontrol.html) within and between tasks
-   record data for some future use e.g. passing data between tasks

#### Global vs. Local Variables

Variables which have an **all-lower-case** name (e.g. %fruit\_bar) are
*local*, meaning that their value is specific to the task or scene in
which they are used.

Variables which have one or more capital letters in their name (e.g.
%Car, %WIFI) are *global*, meaning that wherever they are accessed from
the same value is returned.

#### Built-In Variables

The values of built-In variables are updated automatically by Tasker.

[]{#localbuiltin}

##### Local Built-In Variables

-   **Action Error**\
    *%err*\
    Is set to an integer if an error occurred when running the last
    action. The actual number can signify the error which occurred, but
    is usually 1 for most Tasker actions (notable exception: `Run Shell`
    and plugins). Every action sets or clears it, so it must be saved
    (e.g. with [Variable
    Set](https://tasker.joaoapps.com/userguide/en/help/ah_set_variable.html))
    if it will be needed later than in the immediate next action.
-   **Action Error Description**\
    *%errmsg*\
    A description of the error which **last resulted in %err being
    set**. Currently never set by Tasker but possibly by some plugin
    actions.
-   **Task Priority**\
    *%priority*\
    The priority of the running task. The priority determines which task
    executes its next action when several tasks are running together.\
    See also: [Task Scheduling](tasks.html#scheduling)
-   **Task Queue Time**\
    *%qtime*\
    How long (seconds) the running task has been running.\
    Note that tasks can be interrupted by higher priority tasks, so this
    number is not necessarily the total run-time of the task.\
-   **Task Caller**\
    *%caller*\
    A variable array tracing the origin of the current running task.
    *%caller1* gives the origin of the current task, *%caller2* the
    origin of *%caller1* etc.

    Example: if task A uses action `Perform Task` to start task B, then
    when task A is run by pressing the Play button in the task edit
    screen, *%caller1* in task B will show **task=A**, *%caller2* will
    show **ui**.

    The format of each entry in the array is
    *callertype*(**=***callername*(**:***subcallername*))

    Caller types ares detailed below:

    -   **profile**\
        a profile (when it\'s state changes). *callername* is either
        **enter** or **exit** depending on whether the profile activated
        or deactivated. *subcallername* is the name of the profile, if
        it has one, otherwise **anon**
    -   **scene**\
        a scene event, with *callername* being the scene name. For
        element events, *subcallername* is the element name. For action
        bar button presses, *subcallername* is the label if one was
        given. For scene-global events (e.g. Key), *subcallername* is
        event type
    -   **ui**\
        the Play button in the task edit screen in the Tasker UI
    -   **launch**\
        clicking a child application icon in the launcher
    -   **nbutton**\
        a notification action button, either from Tasker\'s permanent
        notification or one created with one of the Notify actions.
        *callername* specifies the label of the button if present.
    -   **external**\
        an external application
    -   **qstile**\
        a Quick Settings tile. *callername* specifies the label of the
        tile.
    -   **appshort**\
        an app shortcut (accessed via long-click on the Tasker icon).
        *callername* specifies the label of the tile.
    -   **task**\
        another task, from a Perform Task action. *subcallername* is the
        task name, if it has one, otherwise **anon**

[]{#globalbuiltin}

##### Global Built-In Variables

-   **Airplane Mode Status**`(dynamic)`\
    *%AIR*\
    Whether Airplane Mode is **on** or **off**
-   **Airplane Radios**\
    *%AIRR*\
    A comma-separated list of the radios which will be **disabled** when
    entering Airplane Mode.\
    Common radio names are: *bluetooth, cell, nfc, wifi, wimax*.
-   **Battery Level**\
    *%BATT*\
    Current device battery level from 0-100.
-   **Bluetooth Status** `(dynamic)`\
    *%BLUE* Whether Bluetooth is **on** or in some other state
    (**off**).\
-   **Calendar List**\
    *%CALS*\
    Newline-separated list of calendars available on the device.\
    Each entry is in the format *calendarprovider:calendarname*.\
    Example usage:

           Variable Set, %newline, \n
            Variable Split, %CALS, %newline
            Flash, %CALS(#) calendars, first one is %CALS(1)

    For the sign *\\n*, press carriage-return on the keyboard.

-   **Calendar Event Title / Descr / Location** *%CALTITLE / %CALDESCR /
    %CALLOC*\
    The title, description and location of the **current** calendar
    event, if there is one. If there are multiple current calendar
    events the variables refer to the **shortest**.\
    Tip: find other details about the current event(s) using the
    `Misc / Test` action, specifying %TIMES for the data.
-   **Call Name / Number/ Date / Time (In)** `(dynamic, monitored)`\
    *%CNAME / %CNUM / %CDATE / %CTIME*\
    The caller name, number, date and time of the current (if a call is
    in progress) or last call received.\
    Caller number is **0** if it\'s unknown.\
    Caller name is **?** if it\'s unknown (probably because the caller
    number was blocked) and set to the caller number if the contact
    couldn\'t be looked up. It\'s unavailable on Android versions prior
    to 2.0.
-   **Call Name / Number/ Date / Time / Duration
    (Out)**`(dynamic, monitored)`\
    *%CONAME / %CONUM / %CODATE / %COTIME / %CODUR*\
    The called name, number, date and time of the last (**not** the
    current) outgoing call made.\
    Called Name is set to the called number if the contact couldn\'t be
    looked up. It\'s unavailable on Android versions prior to 2.0.
-   **Cell ID** `(monitored,dynamic)`\
    *%CELLID*\
    The current cell tower ID if known.\
    If you are using a Cell Near state, note that sometimes the Cell
    Near state will stay active even though %CELLID reports that the
    tower ID is unknown or invalid; that is because Cell Near only
    responds to valid IDs to prevent the state becoming inactive e.g.
    due to a service interruption.\
    For backwards compatibility, UMTS cells are reported with a GSM
    prefix.\
    From Android 4.2, Tasker version 4.3+, cells could be found from 2
    different network types simultaneously. In that case, the value is
    reported with preference for the network type leftmost on the list:
    GSM, CDMA, UMTS, LTE.
-   **Cell Signal Strength** `(monitored,dynamic)`\
    *%CELLSIG*\
    The current phone signal level from 0-8 inclusive on a rougly linear
    scale. On some phones, the level will rise in steps of 2
    (0,2,4,6,8). The value is -1 if the value is unknown or there is
    e.g. no service.\
    From Android 4.2, Tasker version 4.3+, cells could be found from 2
    different network types simultaneously. In that case, the value is
    reported with preference for the network type leftmost on the list:
    GSM, CDMA, UMTS, LTE.\
    There is a bug with some Android versions that the reported signal
    strength is not updated until the device is turned off and on.
-   **Cell Service State** `(monitored,dynamic)`\
    *%CELLSRV*\
    The current phone service state. One of *unknown, service,
    noservice, emergency, nopower*.
-   **Clipboard Contents**`(monitored,dynamic)` *%CLIP*\
    The current contents of the system clipboard. Please note that the
    clipboard can\'t be accessed while the device\'s screen is securely
    locked.
-   **CPU Frequency**\
    *%CPUFREQ*\
    The current frequency CPU 0 is running at. See also: [CPU
    Control](cpu.html).
-   **CPU Governor**\
    *%CPUGOV*\
    The current governor controlling the frequency of CPU 0. See also:
    [CPU Control](cpu.html).
-   **Date**\
    *%DATE*\
    Current human-readable date.
-   **Day of the Month**\
    *%DAYM*\
    Current Day of the Month, starting at 1.
-   **Day of the Week**\
    *%DAYW*\
    Current Day of the Week starting with Sunday.
-   **Device ID / Manufacturer / Model / Product**\
    *%DEVID / %DEVMAN / %DEVMOD / %DEVPROD*\
    The ID, manufacturer, model and product name of the device.\
    Note: ID is **not** a unique identifier for the device, but rather
    for the hardware of the device. See also: %DEVTID.
-   **Device Telephony ID**\
    *%DEVTID*\
    Returns the unique telephony-based ID for the device (e.g. for GSM
    the IMEI, for CDMA the MEID or ESN).\
    Not available on all devices.
-   **Display Brightness** *%BRIGHT* Current screen brightness, 0-255.
    On some devices, if the Android setting Auto Brightness is enabled,
    the value will always be 255.
-   **Display Timeout** *%DTOUT* Current system screen timeout
    (seconds).
-   **Email From / Cc / Subject / Date / Time** `(dynamic)`\
    *%EFROM / %ECC / %ESUBJ / %EDATE / %ETIME*\
    The From, Cc, Subject, Received Date and Received Time of the last
    email received by the K9 email agent.
-   **Free Memory**\
    *%MEMF*\
    System free memory remaining in MB.
-   **GPS Status**\
    (monitored,dynamic Gingerbread+) *%GPS*\
    Whether the system GPS receiver is **on** or **off**.
-   **Heart Rate** `(monitored,dynamic)`\
    *%HEART*\
    The current detected heart rate in beats per minute.\
    See also: state *Heart Rate*.\
    The value will be negative for no contact (-1), accuracy unreliable
    (-2) or some other problem (-3)
-   **HTTP Response Code / Data / Content Length**`(dynamic)` *%HTTPR /
    %HTTPD / %HTTPL*\
    Values from the last HTTP POST/GET action.\
    If the server doesn\'t return a content length, %HTTPL will be
    calculated from the returned data where possible.
-   **Humidity** `(monitored,dynamic)`\
    *%HUMIDITY*\
    The relative ambient air humidity in percent.\
    See also: state *Humidity*.
-   **Input Method**\
    *%IMETHOD*\
    The current active input method. Consists of 4 parts separated by
    commas: Method Name, SubType Name, Mode, Locale.\
    To access particular parts, use the *Variable Split* action.
-   **Interrupt Mode** `(dynamic)`\
    *%INTERRUPT*\
    Only available on Android 5.0+, **requires Tasker\'s notification
    access service to be enabled**, see Android\'s Sound & Notification
    settings.\
    \
    Android 5.0+: the current state of interruptions mode on the device:
    **none**, **priority** or **all**\
    See Also: action *Interrupt Mode*\
    \
    Android 6.0+: the current state of Do Not Disturb mode on the
    device: **none**, **priority**, **all** or **alarms**\
    See Also: action *Do Not Disturb*
-   **Keyguard Status**\
    *%KEYG*\
    Whether the Keyguard is **on** or **off**
-   **Last Application**\
    *%LAPP*\
    The name of the application that was in the foreground before the
    current one e.g. Maps.
-   **Last Photo**\
    *%FOTO*\
    The filesystem path to the last photo taken by Tasker or the
    standard system camera application.
-   **Light Level** `(monitored,dynamic)`\
    *%LIGHT*\
    The last recorded light level in lux.\
    Note that Android does not return a value until the light level
    changes, so to test the sensor is working you should put it near a
    bright light initially.\
    May not change when the device display is off, see
    `Menu / Prefs / More / Display Off Monitoring / Light Sensor`.
-   **Location** `(dynamic)`\
    *%LOC*\
    The latitude and longitude of the last GPS fix.\
    [See note](#locnote).
-   **Location Accuracy** `(dynamic)`\
    *%LOCACC*\
    The accuracy in metres of the last GPS fix.\
    [See note](#locnote).
-   **Location Altitude** `(dynamic)`\
    *%LOCALT*\
    The altitude in metres of the last GPS fix, or 0 if unavailable.\
    [See note](#locnote).
-   **Location Speed** `(dynamic)`\
    *%LOCSPD*\
    The speed in metres/second at the last GPS position fix or 0 if
    unavailable.\
    [See note](#locnote).
-   **Location Fix Time Seconds** `(dynamic)`\
    *%LOCTMS*\
    The time in seconds of the last GPS fix. To get age of fix, take
    this away from %TIMES.\
    This value is not set until an offset of the GPS time from the fixed
    time has been calculated (should be after the first GPS fix) because
    the value is meaningless until that point.\
    [See note](#locnote).
-   **Location (Net)** `(dynamic)`\
    *%LOCN*\
    The latitude and longitude of the last network location fix.\
    [See note](#locnote).
-   **Location Accuracy (Net)** `(dynamic)`\
    *%LOCNACC*\
    The accuracy in metres of the last network location fix.\
    [See note](#locnote).
-   **Location Fix Time (Net)** `(dynamic)`\
    *%LOCNTMS*\
    The time in seconds of the last net location fix. To get age of fix,
    take this away from %TIMES.\
    [See note](#locnote).
-   **Magnetic Field Strength** `(monitored,dynamic)`\
    *%MFIELD*\
    The total magnitudes in micro-Teslas of the magnetic fields acting
    on all three axis of the devices sensor.\
    Updated once per second.\
    See Also: state `Magnetic Field`.
-   **Music Track** `(monitored,dynamic)`\
    *%MTRACK*\
    The current playing music track, supported for:
    -   Tasker actions *Music Play* and *Music Play Dir*
    -   Built-in Android music-player, probably not on all devices
        however
    -   Power AMP
    -   BeyondPod (Tasker v1.2.1+)
    -   Phantom Music Control Pro
    -   Media Utilities

    Priority: if both Tasker and one of the other supported apps are
    playing simultaneously, the non-Tasker track will be shown. If more
    than one of the other supported apps is playing simultaneuosly,
    behaviour is unspecified.\
    Notes:
    -   if you don\'t have a supported player, you could try Phantom
        Music Control Pro or Media Utilities, which support a lot of
        players and should pass the info on to Tasker
    -   pausing a track clears the variable, unpausing sets it again
    -   your music player may need an option enabled in order to
        broadcast the track information, or the broadcast may only be
        available in a \'pro\' version

-   **Muted**\
    *%MUTED*\
    Whether the microphone is currently muted (**on**) or not (**off**).
-   **Night Mode**\
    *%NIGHT*\
    The current Android Night Mode.\
    One of **on**, **off** or **auto**.\
    If **auto**, Android will decide whether it should be in Night Mode
    itself.
-   **Notification Title** `(monitored, dynamic)`\
    *%NTITLE*\
    The title of the last notification shown in the status bar. Prior to
    KitKat, requires Tasker\'s accessibility server to be running (see
    Android Accessibility Settings). From KitKat, requires Tasker\'s
    Notification Listener service to be running instead.\
    In a task running as a result of a `Notification` or
    `Notification Removed` event, use variable %evtprm2 instead of
    %NTITLE. This is much more reliable and you have access to other
    parts of the notification (%evtprm3 etc)\
    Notifications generated by Tasker are not shown.
-   **Phone Number**\
    *%PNUM*\
    The current phone number of the device, if it\'s in service.\
    On some phones it doesn\'t work (Android limitation), seems related
    to the type of SIM.
-   **Pressure** `(monitored,dynamic)`\
    *%PRESSURE*\
    The current air pressure on the device in millibars.\
    May not change when the device display is off, see
    `Menu / Prefs / Monitor / Display Off Monitoring / Pressure Sensor`.
-   **Profiles Active** `(dynamic)`\
    *%PACTIVE*\
    A comma-separated list of the currently active, named profiles in
    activation order. Duplicate names will appear on the list only once.
    The list always starts and ends with a comma to make matching
    easier, if it\'s not empty.
-   **Profiles Enabled** `(dynamic)`\
    *%PENABLED*\
    A comma-separated list of the currently enabled, named profiles in
    creation order. Duplicate names will appear on the list only once.
    The list always starts and ends with a comma to make matching
    easier, if it\'s not empty.
-   **Roaming**\
    *%ROAM*\
    **on** if device is roaming on the current telephone network,
    otherwise **off**.
-   **Root Available**\
    *%ROOT*\
    **yes** if root functions are available on this device, otherwise
    **no**.
-   **Screen** `(dynamic)`\
    *%SCREEN*\
    Whether the screen is on (value **on**) or off (value **off**).
-   **SDK Version**\
    *%SDK*\
    The numeric Android [SDK
    version](http://developer.android.com/reference/android/os/Build.VERSION_CODES.html)
    of the device.
-   **Silent Mode** `(dynamic)`\
    *%SILENT*\
    The current state of silent mode: **off**, **vibrate** or **on**.\
    From Android 5.0+ this variable is intended to only reflect whether
    the device is in vibrate mode (**vibrate**) or not (any other
    value), but the **on** value is included for backwards compatibility
    and set when the device is not in vibrate mode and the interrupt
    mode is **none** or **priority**.\
    See Also: variable *%INTERRUPT*, actions *Silent Mode* and
    *Interrupt Mode*.
-   **SIM Serial Number**\
    *%SIMNUM*\
    The serial number of the SIM card, if one is present and
    accessible.\
    If the SIM has not been unlocked it will not be available.
-   **SIM State**\
    *%SIMSTATE*\
    The current state of the SIM card.\
    One of **unknown**, **absent**, **pinrequired**, **pukrequired**,
    **netlocked** or **ready**.
-   **Speakerphone**\
    *%SPHONE*\
    Whether the speakerphone is **on** or **off**
-   **Speech** `(dynamic)`\
    *%SPEECH*\
    The current utterance as a result of a *Say* or *Say File* action,
    if applicable.
-   **Tasks Running** `(dynamic)`\
    *%TRUN*\
    A comma-separated list of any named tasks which are currently
    running. The list always starts and ends with a comma to make
    matching easier, if it\'s not empty.
-   **Telephone Network** `(dynamic, monitored)`\
    *%TNET*\
    The current telephony network operator the device is using.\
    May be unreliable on CDMA networks
-   **Temperature** `(monitored,dynamic)`\
    *%TEMP*\
    The current ambient temperature in degrees Celsius.\
    May not change when the device display is off, see
    `Menu / Prefs / Monitor / Display Off Monitoring / Temp. Sensor`.\
    See also: state *Temperature*.
-   **Text From/Date/Subject/Time** `(monitored)`\
    *%SMSRF / %SMSRN / %SMSRB / %MMSRS / %SMSRD / %SMSRT*\
    The sender address, name, body, subject, date and time of the last
    text (SMS or MMS) received.\
    These variables will be empty until the first time a text is
    received after they have been referenced because Tasker does not
    monitor texts unless it\'s needed.\
    *Name* is set to sender address of no contact could be looked up.
    It\'s unavailable on Android versions prior to 2.0.\
    *Body* (%SMSRB) is only set for SMSs.\
    *Subject* (%MMSRS) is only set for MMSs.
-   **Time**\
    *%TIME*\
    Current human-readable time separated by a period e.g. 10.59
-   **Tether** (dynamic)\
    *%TETHER*\
    A comma-separated list of enabled tethering forms i.e. connections
    over which another device can connect to this one in order to use
    its internet connection.\
    The possible forms are **wifi**, **usb** or **bt**.\
    BT will only be present when an actual client is connected via BT
    for using the devices network connection, whereas the others will be
    present as soon as the functionality is enabled (Android
    bug/limitation).
-   **Time MilliSeconds**\
    *%TIMEMS*\
    The current time in milliseconds.\
    (milliseconds since some time in January, 1970, if you must know).
-   **Time Seconds**\
    *%TIMES*\
    The current time in seconds.\
    (seconds since some time in January, 1970, if you must know).
-   **UI Mode** `(monitored,dynamic)`\
    *%UIMODE*\
    The current Android UI mode.\
    One of **car**, **desk**, **appliance**, **tv** (television),
    **watch**, **undef** (undefined) or **normal**.
-   **Uptime Seconds**\
    *%UPS*\
    The number of seconds since the device last booted.
-   **Volume - Alarm/Call/DTMF/Media/Notification/Ringer/System**
    `(dynamic)`\
    *%VOLA / %VOLC / %VOLD / %VOLM / %VOLN / %VOLR / %VOLS*\
    Current audio channel volume level.\
    On some devices, volume changes are not picked up dynamically, on
    others not when using the phone app.
-   **WiFi Info**\
    *%WIFII*\
    When connected to an Access Point (AP), shows human-readable data
    about the AP. When not connected, show details of the most recent
    Wifi scan results for nearby APs.\
    On Android 8.1+, may require basic location services to be enabled
    in Android settings.
-   **WiFi Status** `(dynamic)`\
    *%WIFI*\
    Whether WiFi is **on** or **off**. Note: if WiFi is enabling or
    disabled, in fact anything but enabled, it\'s classed as off.
-   **Wimax Status**\
    *%WIMAX*\
    Whether Wimax is **on** or **off**. Note: if Wimax is enabling or
    disabled, in fact anything but enabled, it\'s classed as off.
-   **Window Label** `(monitored,dynamic)`\
    *%WIN*\
    The label of the current window, which could be a full-screen
    activity or a dialog.\
    Not set if the label is unknown.\
    For some windows, the label might be that of the first item in the
    window e.g. a menu entry or even a button.

[]{#notes}

##### General Notes

Variables marked `dynamic` in the list above trigger changes in
*Variable Value* states and *Variable Set* events whenever their value
changes.

Variables marked `monitored` will cause the relevant monitor to startup
to track their state when they are used in contexts or tasks which are
used by widgets or **enabled** profiles. For instance, %CELLID used in a
Flash action will cause cell location to be tracked.

Limitation: monitored variables cannot be detected in anonymous
shortcuts.

[]{#locnote}

##### Note On Location Variables

When the relevant provider (Net or GPS) of a location context is active,
these variables report the values from the provider, which may be more
recent than Tasker has seen if other applications are asking for
location.

When the relevant provider is **not** active, these variables report the
last values **seen by Tasker**, which could be the result of a
`Get Location` action or of monitoring for a `Location Context`.

That means the the reported fix times could **go backwards**, if you
turn off the location provider between two uses of the variables.

Location variables can also be manually updated by running the
`Get Location` action.

#### User Variables

The action *Variable Set* (and several others) can be used to create new
variables. Variable names have the following restrictions:

-   they must start with the **%** character
-   they are case-sensitive
-   then must at least a further **3** alphanumeric characters
-   they can also contain the underscore character (\_) but not start or
    end with it

In general, it\'s best to use local variables wherever possible because:

-   you know they won\'t be interfered with by other tasks or scenes
-   they are more efficient in several ways

Note: multiple copies of the same task running at the same time each
have their own separate copy of their local variables.

###### Scene-Local Variables

Each scene has its own set of local variables which it shares with the
task that created it; both the scene and task see changes to the
variables made by either.

Any task which starts as a result of a scene event (e.g. a tap on an
element) also shares the variables of the scene (and thus of the
original task which created the scene).

As a consequence, a task started by a scene event (e.g. Tap on an
element) which shows a new scene e.g. via the *Show Scene* action, will
result in the second scene sharing the variables of the first scene.

When a task shows a scene that was created by a different task (or a
different copy of the same task) and subsequently hidden, the task\'s
variables are **copied** to the scene variables (overriding values of
variables which already exist) but the task does **not share** the scene
variables and cannot see changes to them.

##### Escaping Variable Names

If you want to prevent a variable name being replaced, put a **\\** in
front of it e.g.

> `Variable Set, %new, \%old`

Will set the value of *%new* to *%old*, **not** the **value** of *%old*.

In order to precede a variable name with a **\\** you can escape the
backslash e.g.

> `Variable Set, %new, \\%old`

Will set the value of *%new* to **\\** followed by the **value** of
*%old*.

##### Variable References

It\'s possible to indirectly refer to variables by preceeding one or
more extra **%** signs to the start of the variable name. For example:

> ` Variable Set, %colour, red Variable Set, %varname, colour Flash %%varname`

\... will flash **red**.

Using this notation it\'s possible to assign variables whose name is not
known beforehand:

> ` Read File, variablename.txt, To Var, %varname Variable Set, %%varname, red`

This will set the variable whose name is stored in the file
`variablename.txt` to **red**.

You can nest references as deeply as you like (e.g. `%%%%var`) but
mental stress and bugs are sure to follow.

If any part of the chain has an invalid variable name then the original
reference will be returned. In the first example, if `%varname` is set
to `!!!`, then **%%varname** will be flashed instead of **red**.

##### Variable Lifetime

The value a **global** variable holds lasts until Tasker is uninstalled
if it is not changed by any task.

**Local** variables are lost at the end of the task they were created
in, or when the parent scene is destroyed in the case of tasks called
from scenes.

##### Uninitialized Variables

User-variables which have not had a value assigned do not have
replacements carried out e.g. in the expression *I love %fruit*, if
%fruit is uninitialized, the expression remains as it is, otherwise
%fruit is replaced with the value.

Exception: uninitialized variables used in mathematical expressions are
replaced with 0.

#### Variables In Plugins

Plugin developers can tell Tasker to replace variables it finds in
plugin strings with their current Tasker value. If you have a plugin
which doesn\'t support this, send the developer this URL

> <http://tasker.dinglisch.net/plugins.html>

which has the relevant details.

[]{#arrays}

#### Variable Arrays

Tasker supports pseudo-arrays.

They are especially useful when used with the `For` action, since you
can perform a set of actions on each element in turn e.g. list a set of
files then test each one.

##### Examples

If the four variables **%arr1, %arr2, %arr3, %arr4** hold respectively
**a, b, c** and **d** then we have an array with 4 *elements*. These
variables can be used just like any other, however it is also possible
to access them in special ways. Here are some examples:

-   **%arr(\#)**\
    The number of defined array elements (**4** in this case)
-   **%arr(\#\>)**\
    The index of the first defined array element, or **0** if none are
    defined (**1**).
-   **%arr(\#\<)**\
    The index of the last defined array element, or **0** if none are
    defined (**4**)
-   **%arr(\#?b/c)**\
    A comma-separated list of the array indices (lowest to highest) with
    matching values, or **0** if none match (**2,3** in the example)
-   **%arr(\#?\~Rregex here)**\
    Same as above but with regex matching
-   **%arr(\>)**\
    The contents of the first defined array element (**a**)
-   **%arr(\<)**\
    The contents of the last defined array element (**d**)
-   **%arr()** or **%arr(:)**\
    All of the array elements separated by commas (**a,b,c,d**)
-   **%arr(2)** or just **%arr2**\
    The content of the element with index 2 (**b**)
-   **%arr(2:4)**\
    Contents of defined elements with indices 2 to 4 (**b,c,d**)
-   **%arr(:3)**\
    All the defined elements with indices up to 3 (**a,b,c**)
-   **%arr(3:)**\
    All the defined elements with indices starting from 3 (**c,d**)
-   **%arr(1:2)**\
    All the defined elements with indices from 1 to 2 (**a,b**)

Notes:

-   arrays will virtually always have all their elements defined so e.g.
    %arr(\>) will be the same as %arr(1), %arr(\#) will be the same as
    %arr(\#\<)
-   index specifiers can themselves be variables (e.g. %arr(1:%MAX) or
    %arr(\#?%FINDME)) but **not** variable arrays

##### Creating An Array

1.  using `Array Set`:\
    **Array Set, %arr, a b c d**
2.  using `Variable Split` on an existing (simple) variable:\
    **Variable Set %arr a b c d**\
    **Variable Split %arr**\
3.  by assigning individual elements with `Variable Set`:\
    **Variable Set, %arr3, c**.
4.  using `Array Push` to add an initial element
5.  some other actions also create arrays for their results e.g.
    `List Files`.

##### Inserting Elements

Use the `Array Push` action.

The *Fill Spaces* parameter might need more explanation. It is only
relevant if one or more of the array elements are undefined. As an
example, if we have the array elements %arr1 and %arr3 containing
**apple** and **banana**:

-   **Array Push %arr1, 1, pear**\
    leaves %arr1, %arr2 and %arr4 containing **pear**, **apple** and
    **banana**.\
-   but **Array Push %arr2, 1, pear, Fill Spaces**\
    leaves %arr1, %arr2 and %arr3 containing **pear**, **apple** and
    **banana**.

##### Removing Elements

Use the `Array Pop` action. Note the difference between `Array Pop` and
`Variable Clear`: `Pop` reduces the number of elements in the array,
while `Clear` merely changes elements to undefined.

Example: if we have the array elements %arr1, %arr2, %arr3 containing
**apple**,**pear** and **banana**:

-   **Variable Clear %arr2**\
    leaves %arr1 and %arr3 containing **apple** and **banana**.\
-   but **Array Pop %arr2**\
    leaves %arr1 and %arr2 containing **apple** and **banana**.

##### Deleting An Array

Use `Array Clear`.

In most cases you could also use **Variable Clear %arr\*** with Pattern
Matching checked, but that would also delete variables called e.g.
%arrTOODEETOO so `Array Clear` is safer.

##### Sorting

The `Array Process` action offers various sorting options, amongst other
things.

##### Array Efficiency

Arrays are intended for convenience when processing high-level data, not
for e.g. processing astronomical data. Doing thousands of array actions
will likely take several seconds (although mostly due to the
housekeeping work done by Tasker in-between each action rather than due
to the array operations themselves).

In terms of storage efficiency, they are also fairly hopeless. You
probably do not want to store tens of thousands of items in an array.
