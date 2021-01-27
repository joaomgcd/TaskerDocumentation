FAQ: Other ![](androidlogo.png) ![](icon_tasker.png)
----------------------------------------------------

-   [Do you plan to include feature X ?](#a)
-   [Should I worry about using Tasker\'s Accessibility service ?](#b)
-   [What\'s the difference between a Widget and a Shortcut
    ?](userguide/en/app_widgets.html#diff)
-   [What\'s an *Instant Profile* ?](#instant)

[]{#a}

#### Do you plan to include feature X ?

The developer has a large list of potential features and works through
it according to a mystical method based on star configurations. It\'s
difficult to say what will be done in advance, sorry. []{#b}

#### Should I worry about using Tasker\'s Accessibility service ?

Not at all.

Although the Android warning says Tasker might read passwords, in fact:

-   Android doesn\'t allow apps to see the contents of fields labelled
    *Password*
-   Tasker doesn\'t even ask Android for data about text fields, only
    buttons, windows and notifications

[]{#instant}

#### What\'s an *Instant Profile* ?

Most profiles have a duration. Their enter task fires, they are active
for a while, then they go inactive and settings may be restored or an
exit task fired. However, profiles with

-   an Event context, **or**
-   a Time context where the From parameter is the same as the To
    parameter, **or**
-   a Time context with a repeat value specified

are only active for an instant and hence it does not make sense to talk
about an exit task and restoration of settings.

There\'s no point setting brightness from 200 to 30, and then a
millisecond later back to 200, therefore settings made by an instant
profile stay at whatever value is specified.
