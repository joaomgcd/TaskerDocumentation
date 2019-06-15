---
title: 'Tasker: Scene Properties Edit'
---

Scene Properties Edit ![](icon_tasker.png)
------------------------------------------

Allows configuration of the general properties of a scene. The different
types of property are divided into tabs.

Each basic type of scene (*Overlay, Dialog* and *Activity*) has a
different set of relevant properties. The *Property Type* parameter in
the **UI** tab determines which properties are shown for configuration.

-   [UI](#ui)
-   [Actions](#actions)
-   [Event](#event)
    -   [Key](#key)
    -   [Home Tap](#hometap)
    -   [Tab Tap](#tabtab)

[]{#ui}

### UI

Configures the visual style and content of the scene.

*Geometry* (not shown in [Beginner Mode](beginner.html)) allows precise
specifiction of the pixel size of the scene in portrait and/or landscape
modes.

*Orientation* determines how to make the decision about whether the
scene should be displayed in portrait or landscape mode. The [Android
developer
guide](https://developer.android.com/reference/android/R.attr.html#screenOrientation)
explains the various options.

The *Action Bar Style, Title, Subtitle, Icon* and *Tab Labels* are only
relevant to Activity scenes and refer to properties of the action bar.

*Icon* refers to the home icon in the top-left of the action bar. When
clixked it generates a [Home Tap](#hometap) event.

*Tab Labels* is a comma-separated list of tabs to show in the action
bar. When a tab is selected it generates a [Tab Tap](#tabtap) event.

[]{#actions}

### Actions

Only relevant for Activity scenes.

Each row configures an action item in the action bar. Starting from the
left, the controls are:

-   **icon button**\
    the icon to show for the item
-   **label text**\
    the label to show for the item
-   **action button**\
    an action to run when the item is tapped

To add an item, click the plus button at the bottom of the screen. Items
can be rearranged and deleted by click-and-dragging at the right hand
side.

Whether the items are shown in the main bar or the *Overflow Menu*
(accessed via the 3 dots in the top right of the action bar) is decided
using the following rules:

-   items with **just an icon** will always be shown in the main bar
-   items with **icon and label** will be shown if there is room
-   items with **just a label** will always be in the overflow menu

[]{#event}

### Event Tabs

Event tabs stipulate what Tasker should do when the user interacts with
the scene in some way. Most consist only of a task to specify but some
allow a filter specification so that the task only runs if the event
matches the filter.

To help the task to decide what to do with the event and to allow a
single task to handle many different events if desired, Tasker sets
certain local variables which give specific information about it. The
variables are easily accessible by clicking the usual variable tag icon
in any action in the task.

The following variables are available in all such tasks:

-   **%scene\_name**\
    the name of the scene containing the element
-   **%event\_type**\
    the name of the event (e.g. Tab Tap)

[]{#key}

#### Key

Available only for Dialog and Activity scenes.

Occurs when a key has been pressed which has **not been dealt with
elsewhere**. Note that EditText elements with focus will absorb key
presses and they won\'t generate a separate Key event.

The filter part of the Key event acts as follows:

-   *Keys*: a slash-separated (/) list limiting the keys to handle,
    other keys will be passed on to the system to handle. When no keys
    are specified, all keys will be handled.\
    The keys can be specified via code or name e.g. **back/78/a**
-   *Stop Event*: if checked, any keys handled by the scene will not be
    passed on to the system. Example use: prevent a user leaving the
    scene via the back key.

The following variables are available in tasks triggered by *Key*
events:

-   **%key\_code**\
    the unique numeric identifier
-   **%key\_name**\
    the human name of the key

Key codes and their names can be found on the Android
[KeyEvent](https://developer.android.com/reference/android/view/KeyEvent.html)
reference page. Note that Tasker removes the KEYCODE prefix in keynames
to save typing.

[]{#hometap}

#### Home Tap

Available only for Activity scenes and when an *Icon* has been specified
in the UI tab.

The event is triggered when the user taps the home icon in the top left
of the action bar.

[]{#tabtap}

#### Tab Tap

Available only for Activity scenes and when one or more *Tab Labels*
have been specified in the UI tab.

The event is triggered when the user taps a tab in the action bar.

The following variables are available in tasks triggered by *Tab Tap*
events:

-   **%tap\_index**\
    the tab number, starting at 1
-   **%tap\_label**\
    the tab label, as specified in the Tab Labels parameter of the UI
    tab
