---
title: 'Tasker: Location Without Tears'
---

Location Without Tears ![](icon_tasker.png)
-------------------------------------------

This is an overview guide to choosing a method for fixing your location
with Tasker. At the end are some [advanced power-saving
strategies](#adv).

Power / Accuracy Comparison
---------------------------

  Method                             Power Usage   Acc             Network   Wifi   BT
  ---------------------------------- ------------- --------------- --------- ------ ----
  [State: Cell Near](#cell)          \*            \*                               
  [State: BT Near](#btnear)          \*\*          \*\*\*\*\*                       Y
  [State: Wifi Near](#near)          \*\*          \*\*\*\*\*                Y      
  [Location: Net](#net)              \*\*          \*\*            Y                
  [Location: Net & Wifi](#netwifi)   \*\*\*        \*/\*\*\*\*\*   Y         Y      
  [Location: GPS](#gps)              \*\*\*\*\*    \*\*\*\*\*      Y                

More stars mean higher power usage or higher accuracy (Acc).

Detail Comparison
-----------------

[]{#cell}

### State: Cell Near

##### Setup

Create a **state context**, select **Phone** then **Cell Near**. Click
Update and walk around a bit to scan for cell towers nearby.

##### About

Uses information about the cell towers the phone uses for telephony to
record and match a location.

When the display is off, frequency of checks is controlled by
`Prefs / Monitor / Display Off All Checks`.

If your profile keeps deactivating, go back to the Cell Near state and
click the magnifying glass icon to check for cells you may have missed
in your scan.

##### Plus / Minus

-   (+) virtually no extra power on top of power needed for normal phone
    service
-   (+) when the display is on, context updates as soon as the tower is
    visible
-   (+) when the display is off, only one check period is needed to
    determine context exit
-   (-) highly inaccurate
-   (-) must be physically at the location in order to record it

##### Other Settings

-   `Monitor / General Monitoring / Use New Cell API`: if you\'re not
    seeing any cells at all when scanning on a modern device, try
    checking this
-   `Monitor / Display Off Monitoring / Cell Workaround`: if things
    aren\'t working when the display is off
-   `Monitor / Display Off Monitoring / Cell Wake Screen`: second
    possible workaround when the display is off

[]{#btnear}

### State: BT Near

##### Setup

Create a **State context**, click **BT Near** (in the Net category),
fill in the name or address of a bluetooth device near the location you
want to identify.

##### About

BT Near does regular bluetooth Scans and will activate when it
recognizes a device you have configured is nearby. Note: you don\'t have
to connect to the device, so it doesn\'t have to be a device you own.

Frequency of checks is controlled by `Prefs / Monitor / BT Scan Seconds`
(screen on) and `Prefs / Monitor / Display Off All Checks` (screen off).

Check the **BT Toggle** box if you don\'t want bluetooth enabled all the
time. It will then be toggled when Tasker needs to do a scan.

If your target device is a low-energy device, deselect **Standard
Devices** to reduce energy usage. If you can pair with the target
device, you can have a major reduction in power usage and scan times by
not selecting **Non-Paired Devices**.

##### Plus / Minus

-   (+) very good accuracy, reliability
-   (+) modest power usage, especially for paired devices
-   (+) works indoors too
-   (-) need a known device nearby

##### Other Settings

-   `Prefs / Monitor / Display Off Monitoring / Motion Detection`: if
    available on your device, will need to be disabled if you wish to
    detect a nearby BT device that may move or turn off or on

[]{#net}

### Location: Net

##### Setup

Create a location context, and deselect GPS.

##### About

Net location accuracy varies greatly. It\'s **very important** that you
create a **large radius** around the spot you wish to detect.

Frequency of checks is controlled by
`Prefs / Monitor / Network Location Check` (screen on) and
`Prefs / Monitor / Display Off All Checks`.

[More Info](loccontext.html).

##### Plus / Minus

-   (+) extremely low (extra) power (IF network is available anyway)
-   (-) requires network and phone service
-   (-) highly inaccurate and variable fixes

[]{#netwifi}

### Location: Net & Wifi

##### Setup

Create a location context and deselect GPS. Make sure your device\'s
Wifi is turned on when you want a more accurate location fix.

##### About

Net location can be assisted by nearby access points when Wifi is turned
on (Google has a map of APs for many areas).

Turn Wifi off when not needed to conserve power e.g. use a Time context
to turn wifi off at night.

##### Plus / Minus

-   (+) very good accuracy in built-up areas for relatively low power
    usage
-   (-) must be physically at the location in order to record it

[]{#near}

### State: Wifi Near

##### Setup

Create a **State context**, click **Wifi Near** (in the Net category),
fill in the SSID of an Access Point (AP) with the best signal near where
you want to identify.

##### About

Wifi Near does regular Wifi Scans and will activate when it recognizes
an AP you have configured is nearby. Note: you don\'t have to connect to
the AP. You could configure e.g. the neighbours AP if the signal is
strong enough.

Frequency of checks is controlled by
`Prefs / Monitor / Wifi Scan Seconds` (screen on) and
`Prefs / Monitor / Display Off All Checks` (screen off).

Check the **Wifi Toggle** box if you don\'t want wifi on all the time.
It will then be toggled when Tasker needs to do a scan. This isn\'t
needed in In Android 4.4+ if you select `Scanning Always Available` in
Advanced Wifi Settings and will save power.

##### Plus / Minus

-   (+) very good accuracy and reliability
-   (+) less power than GPS
-   (+) works indoors too
-   (-) need an AP nearby

##### Other Settings

-   `Prefs / Monitor / Display Off Monitoring / Motion Detection`: if
    available on your device, will need to be disabled if you wish to
    detect an AP that may turn off and on.
-   Android location settings: basic location needs to be enabled for
    Android 8.1+.

[]{#gps}

##### Location: GPS

##### Setup

Create a location context, and deselect Net.

##### About

Frequency of GPS checks is controlled by `Prefs / Monitor / GPS Check`
(screen on) and `Prefs / Monitor / Display Off All Checks`. Higher
frequencies mean more battery usage but that location changes will be
noticed more quickly.

When indoors, GPS will try a long time to get a signal, using a lot of
battery. Adjust it at `Prefs / Monitor / GPS Timeout`. Make the timeout
as low as you can until you start losing effectiveness.

[More Info](loccontext.html).

##### Plus / Minus

-   (+) highly accurate in the open air
-   (-) functions very poorly or not at all indoors. A bad side effect
    is that if you enter a building e.g. office while between the check
    times, it may never detect your new location until you leave.
-   (-) extreme power usage
-   (-) needs network to get a first fix

##### Other Settings

-   `Prefs / Monitor / Display Off Monitoring / Motion Detection`: if
    available on your device, will need to be disabled if you wish to
    detect changes of location on the order of a few meters.

[]{#adv}

### Advanced Strategies

##### Motion Detection

Some devices have a low-power accelerometer that can be active while the
rest of the device is sleeping.

For such devices, Tasker will not do location checks with the display
off unless it detects that significant movement has taken place since
the last check, resulting in lower power usage and faster response times
when the device does eventually move.

##### Multiple Contexts

Tasker does not check high-power contexts until all lower-power contexts
in the same profile are active. You can use this to reduce power
consumption. For instance, if you use the Wifi Near state to detect
coming home, you could add a Location: Net context to the same profile,
so that wifi scanning will only take place when you are in the right
neighbourhood.

##### Location Control

Disable GPS/Net location when they\'re not needed by creating a separate
profile with e.g. a Time context which disables GPS during the night.

This works because Location contexts assume you are in the same location
until there is a fix which says otherwise.
