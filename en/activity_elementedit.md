---
title: 'Tasker: Scene Element Edit'
---

Scene Element Edit ![](icon_tasker.png)
---------------------------------------

Allows configuration of the properties of a scene element. The different
types of property are divided into tabs.

-   [UI](#ui)
-   [Items](#items)
-   [Background](#background)
-   [Event](#event)
    -   [Change](#checkchange)
    -   [Focus](#focus)
    -   [Tap, Long Tap](#tap)
    -   [Item Select](#itemselect)
    -   [Value Selected](#value)
    -   [Item Tap](#itemtap)
    -   [Stroke](#stroke)
    -   [Text Changed](#text)
    -   [Link Tap](#linktap)
    -   [Page Loaded](#pageloaded)
    -   [Video](#video)

Not all elements have all tabs.

[]{#ui}

### UI

For the most part, configures the visual style of the element.
[]{#items}

### Items

Only relevant to Menu and Spinner elements.

Each row configures an item in the menu/spinner. Starting from the left,
the controls are:

-   **selection checkbox**\
    this is only present when *Selection Mode* is set to **Single** or
    **Multi**. It stipulates whether the item will be shown as selected
    when the menu is displayed.
-   **icon button**\
    the icon to show for the item. If you don\'t want to show an icon,
    hide the icon element in the Layout parameter in the UI tab
-   **label text**\
    the label to show for the item. If you don\'t want to show a label,
    hide the label element in the Layout parameter in the UI tab
-   **action button**\
    an action to run when the item is tapped

To add an item, click the plus button at the bottom of the screen. Items
can be rearranged and deleted by click-and-dragging at the right hand
side.

[]{#background}

### Background

Configures a rectangle shape to be used as the background for the
element when it is displayed. The background will be stretched to fit
the size of the element.

If you want to use an image for a background, create a separate Image
element and place it underneath. []{#event}

### Event Tabs

Event tabs stipulate what Tasker should do when the user interacts with
the element in some way. When the scene is showing, the event will also
occur if an action (probably Element Value) sets the element.

Most events consist only of a task to specify but some allow a filter
specification so that the task only runs if the event matches the
filter.

To help the task to decide what to do with the event and to allow a
single task to handle many different events if desired, Tasker sets
certain local variables which give specific information about it. The
variables are easily accessible by clicking the usual variable tag icon
in any action in the task.

The following variables are available in all such tasks:

-   **%scene\_name**\
    the name of the scene containing the element
-   **%element\_name**\
    the name of the element that the user interacted with (e.g. Button1)
-   **%element\_type**\
    the type of element (e.g. Button)
-   **%event\_type**\
    the name of the event (e.g. Tap)

[]{#text}

#### Text Changed

Elements: *TextEdit*

This event is triggered whenever the text changes e.g. because a letter
key has been pressed while the element had focus.

-   **%new\_val**\
    the new text
-   **%old\_val**\
    the old text

Text entry is buffered so that it may be up to 1 or 2 seconds before new
input is seen, and that input may include several accumulated changes.

[]{#checkchange}

#### Change

Elements: *CheckBox, Toggle*

-   **%new\_val**\
    the new state of the element (*on* or *off*)
-   **%old\_val**\
    the last state (*on* or *off*)

[]{#focus}

#### Focus

This event is triggered when the element gains or loses focus, probably
because the user has tapped it or another focusable element.

Elements: *TextEdit*

-   **%focused**\
    whether the element now has focus (*true*) or not (*false*)

[]{#tap}

#### Tap, Long Tap

Elements: *Button, Doodle, Image, Map, Oval, Rectangle, Text*

In a *Map* element, the following variables are available:

-   **%coord**\
    the latitute,longitude of the tapped location on the map
-   **%label**\
    the label of the tapped GeoMarker (if any). You can add GeoMarkers
    to a Map element with the action Scene / Element Add GeoMarker

[]{#value}

#### Value Selected

Elements: *Number Picker, Slider*

-   **%new\_val**\
    the new value of the element (e.g. 50)
-   **%old\_val**\
    the last selected value (e.g. 43)

[]{#itemtap}

#### Item Tap, Item Long Tap

Elements: *Menu*

-   **%select\_indices**\
    a comma-separated list of currently selected items in the list (e.g.
    3,4)
-   **%select\_labels**\
    a comma-separated list of the labels of currently selected items in
    the list (e.g. Blue,Yellow)
-   **%tap\_index**\
    the index of the item that was tapped to cause this event (e.g. 3)
-   **%tap\_label**\
    the label of the item that was tapped to cause this event (e.g.
    Blue)

[]{#stroke}

#### Stroke

Elements: *Doodle, Image, Oval, Rectangle, Text*

A stroke has two filter parameters.

-   **Direction**\
    the direction from the start point of the stroke to the end point
-   **Length**\
    minimum distance in (approximate) pixels from the start point of the
    stroke to the end point

If either of these parameters don\'t match the event, the task will not
run.

-   **%stroke\_dir**\
    Direction, as described above
-   **%stroke\_len**\
    Length, as described above

[]{#itemselect}

#### Item Select

Elements: *Spinner*

Occurs when a **new** item is selected.

-   **%tap\_index**\
    the index of the item that was selected
-   **%tap\_label**\
    the label of the item that was selected

[]{#linktap}

#### Link Tap

Elements: *WebView*

A Link Tap has two filter parameters:

-   **URL**\
    the URL of the tapped link. If entered, the tapped URL must
    [match](matching.html) the entry (e.g. http://\*.fruit.com) for the
    task to run
-   **Stop Event**\
    whether to stop the WebView following the link

<!-- -->

-   **%url**\
    URL as described above

[]{#pageloaded}

#### Page Loaded

Elements: *WebView*

-   **%url**\
    the URL of the page (e.g. http://i.hate.fruit/except/mangos.html)

[]{#video}

#### Video

Elements: *Video*

Occurs when the state of the video playback changes.

-   **%event\_subtype**\
    the type of the video event, possible values being: *Prepared,
    BufferStart, BufferEnd, RenderStart, Lagging, Finished*

Note that the **Finished** event will never occur if the Video element
has the `Loop` parameter checked.
