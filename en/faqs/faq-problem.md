FAQ: Usage Problems ![](androidlogo.png) ![](icon_tasker.png)
-------------------------------------------------------------

-   [Why doesn\'t Tasker work in the background on my device?](#00)
-   [Why won\'t Android let me uninstall Tasker ?](#0)
-   [Why isn\'t GPS coming on for my profile with Time And GPS Location
    contexts ?](#c)
-   [Why can\'t I select Tasker for an application context ?](#d)
-   [Why does it take my Wifi Near state so long to exit ?](#e)
-   [Why isn\'t Tasker detecting when my Location Context changes ?](#f)
-   [Why does Tasker mess up the app launching when I have an
    Application Context for it ?](#g)
-   [Why does my profile not do anything ?](#h)
-   [Why aren\'t my settings restored ?](#w)
-   Why does nothing happen when I click a Tasker widget ?
-   [Why does Tasker crash when I try to create a Location Context
    ?](#j)
-   [Why can\'t I see any Tasker widgets in the home screen widget
    selector ?](#k)
-   [Why doesn\'t my repeating Time Context work ?](#l)
-   [Why aren\'t my exit tasks run / settings restored before the device
    shuts down ?](#m)
-   [Why does my location exit task fire multiple times ?](#n)
-   [Why does my Cell Near state keep going inactive ?](#o)
-   [Why doesn\'t Notify LED work ?](#p)
-   [Why do Tasker widgets disappear after a reboot on my Wildfire
    ?](#q)
-   [Why isn\'t my docking station detected ?](#r)
-   [Why aren\'t I getting any cell data for the Cell Near state ?](#s)
-   [Why isn\'t there a green light for the On/Off radio button on the
    main screen ?](#t)
-   [Why does the action Display Brightness cause my keyboard or
    application to close ?](#u)
-   [Why is the date in Tasker\'s notification list completely wrong
    ?](#v)
-   [Why won\'t Tasker install on my custom ROM ?](#w)
-   [Why doesn\'t my `Perform Task` action work when I Test it ?](#x)
-   [Why doesn\'t my App Context work ?](#app)
-   [Why doesn\'t the Keyguard action work properly ?](#keyguard)
-   [Why doesn\'t Tasker think my device is rooted ?](#root)
-   [Why doesn\'t Tasker show my Local Media images anymore ?](#img)

------------------------------------------------------------------------

[]{#00}

#### Why doesn\'t Tasker work in the background on my device?

To make sure Tasker and the AutoApps run in the foreground:

-   make sure Tasker is enabled
-   enable foreground notification in Tasker settings
-   enable the \"Use reliable alarms\" option
-   **Check out
    [dontkillmyapp.com](https://dontkillmyapp.com/?app=Tasker).** This
    website will show, for your specific vendor, the best way to allow
    Tasker to work correctly in the background.
-   Disable battery optimization for the apps
-   Make sure the Android Settings -\> Apps -\> Tasker -\> Battery -\>
    Background activity option is enabled (this setting may be somewhere
    else on different OEMs, but it\'s a very important setting that
    might be disabled by default on some devices)
-   If you want to use features while the screen is off make sure that
    the options in Preferences -\> Monitor -\> Display Off Monitoring
    are enabled for the conditions you want.
-   Make sure that you disable any \"battery saving\" apps like
    Greenify, etc
-   If you want to have Wifi and Cell based profiles work on Android 8+
    make sure that location is enabled on your device. It\'s an Android
    requirement that Tasker can\'t work around.
-   On Sasmung devices go to Android Settings -\> Device Maintenance -\>
    Battery -\> Unmonitored apps -\> add Tasker and all AutoApps
-   On Xiaomi devices enable \"Auto Start\" for the apps and \"Display
    on Lock Screen\" under \"Other Permissions\"
-   On Xiaomi devices disable automatic backup of apps because that
    process kills all running apps, including Tasker.
-   On Huawei devices click the [lock in the recents
    menu](huaweilock.jpg) for all the AutoApps and Tasker
-   On Huawei devices manage battery optimizations manually in [battery
    settings](huaweibatteryoptimizations.jpg) for all the AutoApps and
    Tasker
-   On Huawei devices disable Powergenie which stops apps from running
    in the background. Try going to Settings -\> Battery, then tapping
    on the gear in the upper right corner. Disable \"Close excessively
    power-intensive apps\". Or use ADB:
    -   To disable powergenie use: adb shell pm disable-user
        com.huawei.powergenie

    <!-- -->

    -   To enable powergenie: adb shell pm enable com.huawei.powergenie

-   On Lenovo devices (possibly others) you have to disable the
    [\"Disable Auto Start\"](lenovoapps.png) options for Tasker and all
    AutoApps.
-   If you plan on using plugins, disabling power saver mode may help
    with some issues

[]{#0}

#### Why won\'t Android let me uninstall Tasker ?

It\'s probably because you\'re using an action which needs Tasker\'s
device administrator function (e.g. `Display / System Lock`).

You can disable it by going to
`Android Settings / Location & Security / Device Administration`.

[]{#c}

#### Why isn\'t GPS coming on for my profile with Time And GPS Location contexts ?

In order to save power, Tasker only activates context detection as it is
needed. Therefore it will not attempt to fix your GPS location unless
the Time context is active.

See the [Power Usage](userguide/en/power.html) section of the userguide
for more details.

[]{#d}

#### Why can\'t I select Tasker for an application context ?

This is considered too dangerous. A mistake could easily result in being
unable to enter Tasker and therefore being unable to rectify the
mistake. []{#e}

#### Why does it take my Wifi Near state so long to exit ?

Wifi Near requires **two** check periods to pass without seeing the
Access Point before the profile exits. This is intended to avoid the
context activating and deactivating if the AP is briefly not visible.

Note also that there are different check periods for when the device is
on or off, and by default the off-period is much longer than the
on-period. See Menu / Preferences / Monitor/ Display On/Off Timings.

[]{#f}

#### Why isn\'t Tasker detecting when my Location Context changes ?

Your radius is probably too small.

As an example, if you are not using GPS the accuracy of your fixes is
probably around += 2km, so your radius should be also minimally 2km.

If you \*are\* using GPS, the accuracy may still be only +-400m in
built-up areas.

Here\'s a good way to create a location context:

-   go to the geographical location you want a context for
-   make a new location context
-   deselect GPS if you don\'t want to use it
-   press Grab Fix, and wait till it\'s done

This will set your radius appropriate to the accuracy of the location
providers at that spot.

If there\'s still nothing happening:

-   check GPS is on in Android Settings, if you\'re using GPS.
-   check your device has a view of the sky, if you\'re using GPS
-   network connectivity is often needed to get GPS started, and always
    needed for a Net location context.
-   realize that location is only checked every 10 minutes by default
    when the Display is off (to save power). You can check more often by
    changing `Menu / Prefs / Monitor / Display Off Timings / All Checks`
-   try the [general \'nothing happens\'](#h) tips
-   look at [other possibilities for detecting your
    location](/userguide/en/loctears.html)

[]{#g}

#### Why does Tasker mess up the app launching when I have an Application Context for it ?

Some applications are sensitive like this. Probably all you have to do
is put as the first action in the **Enter** task the action *Wait* and
give as a parameter e.g. 300ms. If that doesn\'t work keep increasing
the value until it does.

That gives the application time to finish initializing before messing
around with the screen brightness etc.

[]{#w}

#### Why aren\'t my settings restored ?

Some possibilities:

-   if your profile sets setting x to *on*, then if x is already *on*
    when the profile goes active, it will be left at *1* when the
    profile exits. Test for this by putting an Alert / Notify action in
    the enter task to see what the original value was.
-   some other apps installed on the system can cause Tasker to be
    killed and therefore the original settings being forgotten e.g. this
    has been reported to be a problem with Titanium Backup.
-   similarly, if the system is rebooted suddenly, some devices aren\'t
    fast enough to save all the settings before the system turns off.

[]{#h}

#### Why does my profile not do anything ?

Firstly, if are you using any of these other apps which have been
reported as interfering try disabling or temporarily uninstalling them:

-   \'Task Killers\'
-   Quick System Info
-   Autostarts

After that:

-   is the profile enabled ? It should have a green tick next to it.
-   have you clicked the *On* button in the [Profile List
    screen](userguide/en/activity_summary.html) before leaving Tasker ?
    It should be showing a **green light**.
-   is the profile shown as active in the status bar pulldown ? If so,
    it\'s probably your task that\'s not working.
-   make sure the Monitor service running in the foreground (see
    `Menu / Prefs / Monitor`)
-   how\'s your available memory, see
    `Android Settings / Application / Running Services / Available Memory`.
    Are you maybe getting Tasker\'s low-memory notifications ?

If your profile is activating but the task doesn\'t seem to do anything:

-   perhaps you are running a pirated version of Tasker ?
-   try enabling **Menu / Prefs / More / Popup Warning/Errors** to see
    if any errors are occuring (they may not be shown till you go back
    to the Tasker UI)
-   look in **Menu / More / Run Log** to see if the task is being
    carried out.
-   try a simple task like *Alert / Vibrate* or *Alert / Flash*
-   perhaps another profile is interfering: do **Menu / Data / Backup**,
    then delete all other profiles except the one that\'s not working

[]{#i}

#### Why does nothing happen when I click a Tasker widget ?

Usually this is due to Tasker not being enabled, see the *On/Off* button
in the first UI screen. []{#j}

#### Why does Tasker crash when I try to create a Location Context ?

The likely cause is that you are running a non-standard Android ROM
which doesn\'t contain the correct (or maybe any) Google Maps library.
[]{#k}

#### Why can\'t I see any Tasker widgets in the home screen widget selector ?

This is almost always because you have Tasker installed on the SD card,
which is just not possible due to several reasons related to how Tasker
works. []{#l}

#### Why doesn\'t my repeating Time Context work ?

It\'s important to understand that a repeating time context is a
**series of instant events**.

Trying to combine a repeating time context with another context that
does active monitoring usually won\'t work e.g.

> `     Time: Repeating Every 5 Minutes      Task: Enable Wifi (no toggle)`

> `     State: Wifi Near      Task: XXX`

Wifi Near is checked on a static schedule. You currently can\'t change
the schedule dynamically, so the above two profiles will only do XXX
when the 5 minute repeat happens to coincide with when Tasker is doing
it\'s Wifi Near check.

[]{#m}

#### Why aren\'t my exit tasks run / settings restored before the device shuts down ?

Android gives an app very little time to perform cleanup during
shutdown, this is especially a problem on slow devices.

Therefore (as of 1.0.9), Tasker only attempts to run *Variable Set,
Clear, Add* and *Subtract* actions when the device shuts down, since
they take relatively little time.

In the future, Tasker will have some concept of default values which
will then be restored when it starts after the device has booted again.

On Android 1.5 devices, Tasker cannot do anything at shutdown because
the system does not send a notification.

[]{#n}

#### Why does my location exit task fire multiple times ?

Probably the location Android reports is *bouncing* between a point
inside your location radius and one outside. This is relatively unusual
because Tasker has some built-in mechanisms to try and prevent it.

A quick fix is to add a *Cooldown* to your profile. Click on a context,
select Profile then Properties and slide the Cooldown Time to 30
minutes.

The profile is then prevented from going active more than once every 30
minutes.

[]{#o}

#### Why does my Cell Near state keep going inactive ?

Even when your phone is motionless, it will probably still often switch
between different cell towers. Going to a different room in your house
may involve a whole different set of cell towers.

When you notice your Cell Near state going inactive at your location
(and assuming you still have a signal), launch Tasker, click on the Cell
Near context and edit it. Click **Scan** and you should immediately see
a new Cell added to the list. Click **Done** and then **Apply** and your
context should go active again.

Sometimes the new cell will only be visible for a few seconds and will
not appear when you press scan. In that case, press the **Recent**
button and select it manually from the list.

[]{#p}

#### Why doesn\'t Notify LED work ?

From the action help (hint hint):

-   not all devices support all colours. Many devices will only support
    red and green. In general, colours near the top of the list are more
    likely to be supported.
-   some devices will only flash the LED when the device is off at the
    time the notification is received.

[]{#q}

#### Why do Tasker widgets disappear after a reboot on my Wildfire ?

This is a bug on some Wildfire firmware version.

It\'s not possible for the Tasker developer to work around, but is
reported as fixed in version 1.25.405.1 of the firmware.

[]{#r}

#### Why isn\'t my docking station detected ?

Some docking stations just aren\'t recognized as such (Android doesn\'t
indicate that a docking station has been connected).

Depending on other things you connect your device to, you might be able
to use one of the following as a workaround:

-   State: USB connected
-   State: Power
-   State: BT Connected (if it\'s a BT dock)

[]{#s}

#### Why aren\'t I getting any cell data for the Cell Near state ?

A user reports being able to fix this issue as follows:

    I was able to fix this issue by going into the EPST menues using
    ##DATA# on the keypad and changing the EVDO Preferred mode from HDR to
    Automatic.

It\'s possible that you will only be able to receive, not make, phone
calls as another symptom of this problem.

[]{#t}

#### Why isn\'t there a green light for the On/Off radio button on the main screen ?

A user discovered that this happens when the DPI value of the Android
build is set to particulart values (e.g. 200,240 is OK, 220 the light
disappears). []{#u}

#### Why does the action Display Brightness cause my keyboard or application to close ?

Normally Android does not effect changes to brightness immediately, so
Tasker has to use a trick to make it happen. That trick can sometimes
have the side effect that e.g. some dialogs like the soft keyboard may
close.

To avoid that, you can deselect the Immediate Effect checkbox in the
Display Brightness action.

[]{#v}

#### Why is the date in Tasker\'s notification list completely wrong ?

This occurs if you select a transparent *Notification Icon* at
`Menu / Prefs / Monitor`, but don\'t specify a *Custom Notification
Layout*.

Changing to a non-transparent icon or a custom layout will fix the
problem.

[]{#w}

#### Why won\'t Tasker install on my custom ROM ?

The most likely reason is that you don\'t have Google Maps installed on
the device. With several custom ROMs that comes as a separate package.
[]{#x}

#### Why doesn\'t my `Perform Task` action work when I Test it ?

When task (a) runs a `Perform Task` action to start task (b), the order
in which the two tasks are executed depends on their relative
priorities.

A feature of the Test button is that the tested task (a) runs at
extremely high priority to ensure that the task runs even if other tasks
are running in the background.

So testing `Perform Task` with the Test button will only work as
expected if in actual usage task (a) will always have higher priority
than task (b) or the `Perform Task` action has **Stop** specified.

[]{#app}

#### Why doesn\'t my App Context work ?

First, we need to find out which method Tasker is using to detect app
changes on your device.

Disable `Menu / Prefs / UI / Beginner Mode` then look in
`Menu / Prefs / Monitor` to see if you have an entry **App Check
Method**. If you don\'t have such an entry, Tasker is using its
*Accessibility Service*.

If Tasker is using Usage Stats for app detection, you need to ask
Android to give Tasker permission to do that, see
`Menu / More / Android Settings / App Usage Stats`. Otherwise, you need
to make sure Tasker\'s Accessibility Service is enabled in Android
Settings, see `Menu / More / Android Settings / Accessibility service`.

Further tips:

-   if Tasker offers you the choice to use different methods, try the
    other methods. Remember to give Tasker permission in Android
    settings for the new method (see above).
-   If you are using Nova Launcher, set
    `Settings / App & Widget Drawer / Advanced / Automatically Close` to
    **off**.
-   Some apps (very few) aren\'t detected by Tasker, usually due to
    their internal structure.
-   Some custom Android ROMs also have special configurations which
    prevent Tasker\'s app detection working.

For the latter problem, there are a few things you can try:

-   look for special settings in your ROM that relate to \'keeping the
    launcher in memory\'. They should be **disabled**.
-   change the build properties file. Look in `/system/build.prop` (or
    possibly `/system/local.prop` or `/data/local.prop`) for a line
    like:

    > ro.HOME\_APP\_ADJ=-17

    Change it in a terminal program to look like this:

    > ro.HOME\_APP\_ADJ=1

    If you didn\'t find an existing line, just add the new line as
    above.

    Note: you will first need to make `/system` writeable. You can do
    that e.g. with Tasker\'s `Remount` action. Remember to make it
    not-writeable again after making the change.

-   try detecting apps with a state using the **%WIN** (*window title*)
    variable; create a new state

    > `Variable Value, %WIN, Matches, TITLE`

    where TITLE is the title of the window of the app you are interested
    in. For this solution to work, you also need to enable Tasker\'s
    *Accessibility Service* in Android Settings.

    You can check what %WIN shows for the app you are interested in with
    this profile:

    > Event: Variable Set, %WIN\
    > Alert / Flash, Win is now %WIN

[]{#keyguard}

#### Why doesn\'t the Keyguard action work properly ?

Android does not officially support toggling of the Keyguard by an app.
The Keyguard action was introduced in an early version of Tasker when a
reliable workaround was possible.

In more recent Android versions, the workaround is no longer so reliable
due to internal changes made within Android. If Keyguard works at all,
there may be disturbing side-effects.

The Keyguard action will likely be most reliablewhen the display is on
and and the Keyguard is already unlocked.

Some people have more luck with the same functionality provided by the
[Secure Settings
plugin](https://play.google.com/store/apps/details?id=com.intangibleobject.securesettings.plugin).
After install, you can find the Secure Settings plugin in the **Plugin**
action category. Note that a rooted device is **not** needed to use this
part of Secure Settings.

[]{#root}

#### Why doesn\'t Tasker think my device is rooted ?

Tasker requires two things before root functionality is enabled:

1.  the `su` program must be in your path
2.  **one** of the following must be found:
    -   a superuser package
    -   the word *modversion* somewhere in the file `/system/build.prop`

If root is not being detected on your device but you are sure that root
can be used by Tasker, you can therefore probably fix that by adding a
line like:

> `# modversion this line enables Tasker root support`

to the top of the file `/system/build.prop`.

[]{#img}

#### Why doesn\'t Tasker show my Local Media images anymore ?

When you select a Local Media image, Android grants Tasker rights to
keep using it.

However, when you uninstall Tasker, Android forgets those rights and
doesn\'t reassign them when you install Tasker again. This is clearly a
failing in Android\... On some devices Android also forgets the rights
when the device is rebooted, but this is very rare and almost certainly
a problem with the particular device involved.

To fix the problem, you wil unfortunately need to reselect the Local
Media images in the Tasker UI so that Android grants it access rights
again.
