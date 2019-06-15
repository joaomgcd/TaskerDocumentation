---
title: 'Tasker: Task / Shortcut Widgets'
---

Task / Shortcut Widgets ![](icon_tasker.png)
--------------------------------------------

The standard way of running a Tasker task is by attaching it to a
profile which performs it when the profile becomes active. However,
tasks can be directly assigned to icons on the home screen called
*Widgets* or *Shortcuts*.

#### Standard Widgets / Shortcuts

These consist of an icon (the Task icon) with a label (the Task name)
underneath, and look identical to the normal application icons in the
home screen.

Clicking on the icon runs the associated Task.

#### Task Timer Widgets

This type consists of an icon and label, like the standard widgets, but
also has a countdown timer display which counts down Days, Hours,
Minutes and Seconds.

When the timer expires (reaches 0) the associated Task is run.

Tapping on the **icon** of the widget shows a configuration screen where
the timer can be configured.

Tapping on the **timer section** of the widget will pause, restart or
reset the timer, depending on its current state.

Note that the timer updates more rarely when it is still a long way from
expiry in order to minimize power usage.

See Also:

-   action [Timer Widget Control](help/ah_timer_widget_control.html)
-   action [Timer Widget Set](help/ah_timer_widget_set.html)
-   action [Test Tasker](help/ah_test_tasker.html)
-   event [Timer Change](help/eh_timer_change.html)

#### Creating a Widget / Shortcut

1.  Click and hold in an empty space on the Android home screen, until a
    dialog appears.
2.  Select **Widgets** or **Shortcuts**
3.  Select **Task** or **Task Timer** (Widgets only)
4.  Pick an existing task or create a new one. When creating a new one,
    if you do not expect to change the function of the widget/shortcut
    select One-Time to avoid it cluttering your list of tasks.
5.  Use the [Configuration Screen](activity_widget_configure.html) to
    configure what should happen when the icon is clicked (or the timer
    expires, in the case of a Task Timer widget). Take care to select an
    appropriate name and icon for the task, as these will appear on the
    home screen.

#### Changing a Widget / Shortcut

The function of widgets or shortcuts created from one-time tasks cannot
be changed, it must be deleted and recreated.

On the other hand, if you associate a normal named task with a widget or
shortcut then when the task is changed (via the Task Edit screen) the
function of the widget or shortcut also changes.

There are also some actions which will change the appearance of any
widget:

-   *Tasker/Change Icon Set*: changes the icon of a set of widgets to a
    different style.
-   *Tasker/Set Widget Icon*: changes the icon of a particular widget
-   *Tasker/Set Widget Label*: changes the label of a particular widget

The latter two you could use to visually show the status of something
e.g. WiFi.

#### Deleting a Widget / Shortcut

Click and hold on the icon in the Android home screen until the dustbin
icon appears. Drag the widget or shortcut icon to the dustbin icon and
release.

[]{#diff}

#### Differences Between Widgets and Shortcuts

##### Advantages of Shortcuts

-   they can be created in some places that widgets can\'t e.g. in home
    screen folders
-   their layout probably better matches the default launcher layout
-   long shortcut labels will scroll when selected in the default
    launcher

##### Advantages of Widgets

-   their icon and label can be dynamically changed after creation via
    the *Set Widget Icon* and *Set Widget Label* actions.
-   timer widgets are possible
-   they can be created without a label

So a shortcut should be used unless the extra configuration
possibilities of a widget are necessary.

#### General

-   you can create as many Tasker widgets and shortcuts as you like. You
    can even have several Timer widgets running at the same time.
-   Timer Task widgets continue to update even when the screen is off.
