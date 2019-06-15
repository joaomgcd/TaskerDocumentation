FAQ: How Do I\... / Can I\... ? ![](androidlogo.png) ![](icon_tasker.png)
-------------------------------------------------------------------------

-   How can I contact the developer ?
-   How can I send the developer a bug report ?
-   How can I send the developer a long-term log ?
-   [Can I change an app\'s settings / press it\'s buttons ?](#a)
-   [Can I control / respond to events in application X with Tasker
    ?](#o)
-   [How can I stop Tasker restoring a setting ?](#cx)
-   [Can Tasker detect volume button presses ?](#c)
-   [Can Tasker be used from an external SD card ?](#d)
-   [Can I use Tasker to turn the screen on and off ?](#e)
-   [How do I create my default settings ?](#f)
-   [How can I run more than one task when a profile goes active ?](#g)
-   [Can I hide the notification list entry when Tasker is running
    ?](#h)
-   [Can I change or remove the status bar icon when Tasker is running
    ?](#h2)
-   [What if I want a repeating time context, but I need to do something
    that takes a while ?](#i)
-   [How can I do something every minute ?](#j)
-   [How do I specify *9:30AM on Monday* and *10AM on Tuesday* with the
    same profile ?](#k)
-   [How do I specify weekend night-times ?](#k2)
-   [How do I stop the screen dimming when I have the display Stay On
    set to e.g. \'With AC\' ?](#l)
-   [How can I stop Wifi Near toggling wifi on-off when the phone is in
    Airplane Mode ?](#m)
-   [Can I divert incoming calls ?](#n)
-   [How can I detect if Wifi is connected (not just enabled) ?](#p)
-   [How can I import/export individual profiles, tasks or scenes ?](#q)
-   [How do I turn off the flashing notification LED ?](#s)
-   [How do I put my phone in Silent or Vibrate mode ?](#t)
-   [Can I automate sending of an SMS / Call through Google Voice ?](#u)
-   [Can I change/remove the notification sounds for particular apps
    ?](#v)
-   Can I silence all notifications except from particular applications
    ?
-   [Can I change the input method ?](#w)
-   [How do I test whether I can reach the Internet (ping) ?](#y)
-   [How can I use whitespace (newline, tab etc) in action parameters
    ?](#y2)
-   [How can I run a task from a terminal login ?](#y3)
-   [How can I silence the camera shutter sound ?](#y4)

------------------------------------------------------------------------

[]{#z}

#### How can I contact the developer ?

There is a contact email given at **Menu / Info / Support**. In general,
this is intended for order and validation help, which is often
confidential, and other private issues.

Please post Tasker usage queries/problems in the [Tasker
Forum](http://groups.google.com/group/tasker) where the developer is
very active.

Advantages:

-   the user community has more experience than the developer with using
    Tasker
-   other people can benefit if your problem is solved
-   the developer has more time for fixing bugs and adding features,
    which benefits everyone

[]{#x}

#### How can I send the developer a bug report ?

-   go to *Android Settings* then **About Phone**
-   tap 10 or more times on the **Build Version** entry
-   go back one screen
-   select **Developer Options**
-   check the **USB Debugging** option if it\'s not already checked
-   do whatever it is that causes the problem
-   go back to **Developer Options** and tap **Take Bug Report** (the
    first entry)
-   wait a short while until the bug report is ready (a notification
    will appear)
-   share using an email application
-   the destination email address is listed in **Menu / Info / Support**
    in Tasker
-   include at the top of the email a brief description of the problem
    that the email concerns
-   disable **USB Debugging** and **Developer Options** (switch at top)

Try to make the log as soon as possible after the problem occurs.

[]{#x2}

#### How can I send the developer a long-term log ?

-   deselect **Menu / Prefs / UI / Beginner Mode** in Tasker
-   enable **Menu / Prefs / Misc / Debug to Internal Storage** in Tasker
-   when the problem has occured, email the file
    */sdcard/Tasker/log/tasker.txt* (and *tasker.txt.1*, if it exists)
    to the developer email listed at **Menu / Info / Support**
-   include at the top a brief description of the problem that the log
    concerns

[]{#a}

#### Can I change an app\'s settings / press it\'s buttons ?

Standard Android doesn\'t allow an app to change, poke, prod or peek at
anything within another app, including simulating keypresses and screen
taps.

On a rooted device, you can use some of the actions in the `Input`
category to navigate around an app, click on UI elements and enter text
automatically.

[]{#o}

#### Can I control / respond to events in application X with Tasker ?

If a Tasker user wants to automate some aspect of another program they
use, they just need to point the developer of the other app at the
[Tasker Developer Page](/developers.html) and nag at him/her a bit.

[]{#cx}

#### How can I stop Tasker restoring a setting ?

Tasker will restore any setting which is changed in the Enter task of a
profile. There are four ways to prevent this:

1.  deselect the *Restore Settings* in the Profile Properties of the
    relevant profile.
2.  if you set the same setting in the Exit task of the profile Tasker
    will take that as a hint that the previous value shouldn\'t be
    restored.
3.  create a separate task to run the settings actions and in the Enter
    task of the profile do a Perform Task action (from the category
    *Tasker*) on that separate task. This trick is known as Stefan\'s
    Setting Sidestep.
4.  you can use the corresponding Javascriptlet function instead of the
    setting action. Settings made in Javascriptlets are not restored.

[]{#c}

#### Can Tasker detect volume button presses ?

No, sorry, that\'s not possible ATM.

The closest you can get is to detect changes in a volume variable (e.g.
%VOLR for the ringer volume) via event Variable Set.

[]{#d}

#### Can Tasker be used from an external SD card ?

Prior to Android 6.0, that is not possible, even using apps2SD.

With Android 6.0+ if the external SD is being used as \'adoptable\',
\'flex\' or \'internal\' (the wording varies) storage, there should be
no issue.

[]{#e}

#### Can I use Tasker to turn the screen on and off ?

Turning on, use the Display / Turn On action. Unfortunately, that action
is inaccessible with Android 2.3+.

For turning off, you can use the Display / System Lock action with
Android 2.0+.

For Android 1.6, you can set the Display Timeout to it\'s minimum
(around 7 seconds) and then set it back to normal in response to a
Display Off event.

[]{#f}

#### How do I create my default settings ?

You don\'t have to configure \'default\' settings in Tasker. The
\'default\' settings are how your device is configured before any Tasker
profile becomes active. This \'default\' is automatically restored as
profiles become inactive.

Exception: changes to settings made in *Exit* tasks are not restored.

[]{#g}

#### How can I run more than one task when a profile goes active ?

Add an action *Perform Task* from the category *Tasker* for each task
that you want to run (don\'t click the Stop button).

**Warning:**: settings in the called tasks will not be restored by
Tasker, only settings changed directly within the Enter task.

[]{#h}

#### Can I hide the notification list entry when Tasker is running ?

If the notification is very annoying, it can be removed on many devices
by setting the icon transparent at **Menu / Prefs / Monitor /
Notification Icon**.

If that doesn\'t work, disable the Run In Foreground setting which can
be found at **Menu / Prefs / Monitor / Run In Foreground**

Please read the help text associated with this option first.

[]{#h2}

#### Can I change or remove the status bar icon when Tasker is running ?

You can change it with **Menu / Prefs / Monitor / Notification Icon**.

You can remove it with **Menu / Prefs / Monitor / Show Notification
Icon**.

[]{#i}

#### What if I want a repeating time context, but I need to do something that takes a while ?

-   GPS On
-   Wait 3 minutes
-   GPS Off

[]{#j}

#### How can I do something every minute ?

Set a repeat period of 2 minutes (the minumum allowed) and specify a
task like this:

-   Perform Task, TaDa
-   Wait 1 Minute
-   Perform Task, TaDa

[]{#k}

#### How do I specify 9:30AM on Monday and 10AM on Tuesday with the same profile ?

You can\'t, because the Time and Day subcontexts operate completely
independent of each other. You have to specify two profiles and run the
same Task(s) with each of them (by giving the task a name).

[]{#k2}

#### How do I specify weekend night-times ?

It\'s tempting to say:

> `     Time: 23 - 09     Day: Friday or Saturday`

But that won\'t work, because on Sunday at e.g. 3am the Day context (and
hence the whole profile) won\'t be active.

For this kind of situation, you need to specify a profile for which
morning you want to be active and another for which evenings. In the
example, you want Friday and Saturday night plus Saturday or Sunday
morning:

> `     Time: 23 - 24     Day: Friday or Saturday`

> `     Time: 00 - 09     Day: Saturday or Sunday`

[]{#l}

#### How do I stop the screen dimming when I have the display Stay On set to e.g. \'With AC\' ?

The screen dims around 10 seconds before the current Screen Off Timeout
value is reached. You can set Screen Timeout (for the relevant context
e.g. \'while docked\') to **Never** (set all sliders to maximum) if you
don\'t like that behaviour. []{#m}

#### How can I stop Wifi Near toggling wifi on-off when the phone is in Airplane Mode ?

Add a state **Airplane Mode** to your profile and click the **Invert**
button, which means *if Airplane Mode is off*. []{#n}

#### Can I divert incoming calls ?

It\'s not possible to divert incoming calls via Android, but most Mobile
Carriers accept special dialled sequences to do it before the call
reaches your phone.

You can then use Tasker\'s *Phone / Call* action (with *Auto Dial*
checked) to setup and cancel incoming call diversions.

The [Wikipedia page on Call
Forwarding](http://en.wikipedia.org/wiki/Call_forwarding) is a good
starting point.

[]{#p}

#### How can I detect if Wifi is connected (not just enabled) ?

The \'standard\' way is to use State *Wifi Connected* to set and clear
your own variable with an enter and exit task respectively.

An alternative trick is to match the word `connected` or `connection` in
the %WIFII variable (the actual word and lower/upper case changes with
Android version).

[]{#q}

#### How can I import/export individual profiles, tasks or scenes ?

Import:

Go to the main screen, long click on the tab for the type of thing you
want to import.

Export:

-   ensure that `Menu / Prefs / UI / Beginner Mode` is **un**checked
-   go to the main screen
-   long-click on the thing you want to export

[]{#s}

#### How do I turn off the flashing notification LED ?

Use the Audio / Notification Pulse action.

If you\'re wondering what a flashing light is doing in the Audio
section: ask Google, that\'s where they put it in Android Settings.

[]{#t}

#### \>How do I put my phone in Silent or Vibrate mode ?

Use action *Audio / Silent Mode*.

Do not try to do it with *Volume Ringer* or *Vibrate on Ringer*.

[]{#u}

#### Can I automate sending of an SMS / Call through Google Voice ?

Not directly through Tasker. However, [Steelgirder
Developments](http://sites.google.com/site/steelgirderdevelopmentsite/home)
have (non-free) plugins which you can easily use with Tasker to
accomplish this.

Steelgirder and the author of Tasker are agreed on working together
wherever further integration of these plugins and Tasker is needed e.g.
support for Tasker variables.

[]{#v}

#### Can I change/remove the notification sounds for particular apps ?

Yes, but it\'s a little complicated, please see the [relevant forum
post](http://groups.google.com/group/tasker/browse_thread/thread/4a6b6ea8b4e4cc86).
[]{#v2}

#### Can I silence all notifications except from particular applications ?

With Tasker versions from 1.0.10, you can try turning off all
notifications (e.g. via Silent Mode or setting the Notification Volume
to 0) and then using Tasker to do alerts for particular app
notifications using the `Notification` event in the UI category. []{#w}

#### Can I change the input method ?

On a rooted phone, yes, using the free Secure Settings plugin.

Consider also starring this [feature
request](http://code.google.com/p/android/issues/detail?id=11677) with
Google.

[]{#y}

#### How do I test whether I can reach the Internet (ping) ?


      HTTP Get URL (a known webpage), Continue Task On Error
      If [ %HTTPR = 200 ]
         ...
      Endif

[]{#y2}

#### How can I use whitespace (newline, tab etc) in action parameters ?

Tasker trims the start and end of all parameters to prevent whitespace
causing problems. The only exception is the `Variable Set` action.

Therefore, if you want to use whitespace you should first assign it to a
variable and then use the variable where you want the whitespace to
appear:

> ` Variable Set, %white, THISISANEWLINE Flash, Here's a newline: %white`

[]{#y3}

#### How can I run a task from a terminal login ?

    am broadcast -a net.dinglisch.android.tasker.ACTION_TASK -e task_name YOUR_TASK_NAME

That\'s only possible on a rooted phone because otherwise there will be
a permission problem.

[]{#y4}

#### How can I silence the camera shutter sound ?

This varies per device.

Try creating a new profile with an **App** context and select the Camera
app. When asked to create a task, add the following actions:

1.  *Task / Wait*, **2 seconds**
2.  *Audio / Sound Effects*, **off**
3.  *Audio / Media Volume*, **0**
4.  *Audio / System Volume*, **0**
5.  *Audio / Notification Volume*, **0**
6.  *Audio / Silent Mode*, **on**

Then go to the Camera app, wait a couple of seconds and try taking a
picture.

If you still hear the shutter sound, go back to the Tasker UI, click on
the task that you created and hit the **Play** button bottom-left to run
the task manually. Then go back to the Camera app. If you still hear the
shutter sound, then it\'s not going to be possible for Tasker to disable
it on your device.

Some manufacturers deliberately prevent disabling of the shutter sound,
perhaps for legal reasons.

Addendum

A user has reported that setting DTMF volume to 0 removes the **focus**
sound in the camera app.
