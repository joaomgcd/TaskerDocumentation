---
title: 'Tasker: Time Context'
---

Time Context ![](icon_tasker.png)
---------------------------------

A *Time Context* specifies a particular range, or one (or more) points
in time. There are three major components, at least one of which must be
selected (by enabling its checkbox on the left):

-   **From Time**: the starting time of the range. If it\'s not
    specified, **00:00** is assumed.
-   **To Time**: the end time of the range, inclusive. The context will
    deactivate after the **end** of the specified minute.\
    If To Time is not specified then **23:59** is assumed i.e. the
    context deactivates at midnight.
-   **Repeat**: if no repeat is selected, the context is assumed to be a
    continuous range which starts at *From Time* and ends at *To Time*.
    If a repeat **is** specified, the first occurrence is at *From Time*
    and then every X hours or minutes until *End Time*.

When not in [Beginner Mode](beginner.html), it\'s possible to specify a
[global user variable](variables.html) as the source of the `From Time`
or `To Time` by clicking on one of the rotating-arrow icons.

The variable contents must specify the hours and minutes in **24-hour
format** and separated by a **period** (dot) or **colon** e.g. *13.45*.
Leading 0s can be ommited e.g. *9.7* for
seven-minutes-past-nine-in-the-morning.

Alternatively, the time can be specified in seconds-since-the-epoch
format, in which case only the hour and minute part of the specification
are used.

When the variable value changes, the time context is reevaluated which
may result in it activating or deactivating. If the variable value does
not specify a valid time then the profile will deactivate (if it\'s
already activated).

Note: in some cases it may be wise to disable the profile (via the
*Profile Status* action) before changing the associated variable values.
For example, if your time context is from 16.00 to 16.00 (i.e. acting as
an event) and it should be changed to 17.00,17.00, if you don\'t disable
it first then as soon as you change the first value the time context
will become a 23 hour range (17.00-16.00) and probably activate.

Notes:

-   to specify a precise time, set *From* and *To* times the same. In
    that case, the context is treated as an instant event, it it only
    active for a fraction of a second, so no setting restoration is
    done.
-   each repeat (if *Repeat* is set) is also treated like an instant
    event.
