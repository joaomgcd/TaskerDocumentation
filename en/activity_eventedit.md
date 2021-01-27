---
title: 'Tasker: Event Edit'
---

Event Edit ![](icon_tasker.png)
-------------------------------

This screen allows configuration of an [Event
Context](eventcontext.html).

#### Event Name

The name of the event is given at the top of the screen. Clicking on it
allows changing to another event type.

In the top right is a button to show help for the displayed event type.

#### Priority

Only present for relevant events.

Selects the priority at which this event will be detected. An event can
be processed by other Tasker Profiles, other installed applications and
system processes.

If priority is high, then this profile will be more likely to detect the
event before other processes, and vice versa.

#### Stop Event

Only present for relevant events.

If checked, then once this profile has dealt with the event, other user
or system applications will no longer be able to see it.

You can achieve different effects by combining *Priority* and *Stop
Event*. For instance, if you want to show a Tasker menu when the camera
button is pressed, you would set *Priority* **High** and check the *Stop
Flag*, because you do not want the camera application to appear
afterwards.

#### Event Parameters

Some events have paramaters to specify more details about the event. To
get help on particular parameters, click the question-mark icon at top
right.

Text parameters are treated as [pattern matches](matching.html).

If you would like to make more complex comparions (e.g. mathematical
expressions), leave the event parameter blank and instead put a
[condition](flowcontrol.html#condition) on the first action of the task
you execute with the profile.
