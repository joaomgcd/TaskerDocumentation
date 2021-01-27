FAQ: Why\... ? ![](androidlogo.png) ![](icon_tasker.png)
--------------------------------------------------------

-   [Why am I an idiot if I use a pirated copy of Tasker ?](#f)
-   [Why is GPS often scanning when I unlock my device ?](#a)
-   [Why does Tasker need so many permissions ?](#b)
-   [Why does Tasker need the INTERNET permission ?](#c)
-   [Why isn\'t Tasker shown in the Application Context list ?](#d)
-   [Why does Tasker have it\'s own music player **and** controls for
    the system music player ?](#e)
-   [Why does a Cell Near context not become inactive when I turn on
    Airplane Mode ?](#g)
-   [Why can\'t I use a downloaded icon for my shortcut task / Notify
    action ?](#h)
-   [Why does my profile have 2 enter tasks ? Why can\'t I add an exit
    task ?](#i)

------------------------------------------------------------------------

[]{#f}

#### Why am I an idiot if I use a pirated copy of Tasker ?

The hacker can do virtually anything with your phone. Record your calls
and upload them to a website, SMS your location and all your contacts,
make calls automatically, wipe your SD card, secretely record from your
microphone any time etc etc []{#a}

#### Why is GPS often scanning when I unlock my device ?

When the device wakes up, Tasker switches from a low-frequency GPS check
schedule to a higher-frequency one. Android\'s GPS software always does
an immediate scan when switching the check frequency.

It\'s not because Tasker is constantly scanning while the device is off

You can change the frequency in Menu / Prefs / Monitor.

[]{#b}

#### Why does Tasker need so many permissions ?

Because it can do so much!

Unfortunately, Android requires that an app specify it\'s permissions
even if they are never used, which means that permissions for all of the
things which the user could **potentially** ask Tasker to do need to be
specified.

If you are still concerned, consider that Tasker has over 25,000
downloads at the time of writing and any abuse taking place would
quickly be discovered.

[]{#c}

#### Why does Tasker need the INTERNET permission ?

The INTERNET permission is used solely for:

-   google maps downloading map data, only for setting up a Location
    context
-   to carry out HTTP Post/Get actions and other actions that require an
    Internet connection by their nature
-   to verify the order number, and only until it has been successfully
    verified
-   to check whether a new Tasker version is available, if configured in
    Preferences

Tasker never directly uses Internet access for **anything** else.

[]{#d}

#### Why isn\'t Tasker shown in the Application Context list ?

Because it\'s easy to get into trouble firing tasks in Tasker. For
example, if a profile is setup with a Tasker Application Context and a
task with Load App Calculator, it will not be possible to enter Tasker
anymore. []{#e}

#### Why does Tasker have it\'s own music player **and** controls for the system music player ?

-   the system music player is not guaranteed to be present or the same
    on all systems.
-   finer control can be exercised over the Tasker player e.g. starting
    the track from a preset seek point
-   Tasker\'s player is more discrete, there is no notification bar
    icon.
-   by having two players available you can do things like alternating
    audio from different music sources or even playing simiultaneously.

[]{#g}

#### Why does a Cell Near context not become inactive when I turn on Airplane Mode ?

Cell Near is *sticky*. That means that once active it stays active until
a non-matching Cell ID is seen. In Airplane Mode no Cell IDs are seen
and so the context stays active.

Many people use Airplane Mode at night e.g. to save battery. If you also
have a Cell Near profile that detects when you are home, it would become
inactive at night if Cell Near wasn\'t sticky.

A couple of points:

-   the Cell radio isn\'t being turned on by Tasker in Airplane Mode.
-   if you want a profile to become inactive for Airplane Mode, just add
    an Inverted state Airplane Mode to it.

[]{#h}

#### Why can\'t I use a downloaded icon for my shortcut task / `Notify` action ?

Some things just weren\'t meant to be (i.e. Android doesn\'t allow it).

To solve the shortcut problem, you can always use a widget though.

For notifications:

-   if you would like this to be possible one day, please star this
    [Android feature
    request](http://code.google.com/p/android/issues/detail?id=12302)
-   it would be technically possible to create \'icon pack\' APKs and
    that might happen one day

[]{#i}

#### Why does my profile have 2 enter tasks ? Why can\'t I add an exit task ?

That\'s because it\'s an [instant](faq-other.html#instant) profile.

As a convenience, the Exit task with such profiles is replaced by an
extra Enter task in case you have a lot to do with that profile.

Note that the tasks you specify execute in the order they are specified,
their actions do not alternate.
