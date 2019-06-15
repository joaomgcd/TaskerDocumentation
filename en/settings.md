---
title: 'Tasker: Settings'
---

Settings ![](icon_tasker.png)
-----------------------------

#### What\'s A Setting ?

Settings are actions like *Display Brightness* and *Ringer Volume* whose
effects are reversed by Tasker when the profile(s) which applied them
are no longer active.

Setting actions have a double arrow icon next to them.

#### Single Profile

When a setting is applied by the profile\'s Enter Task, its value is
restored after the profile becomes inactive again. For example, if the
ringer volume is at 7 and is set to 0 in the Enter Task, when the
profile becomes inactive it is automatically set back to 7.

In other words, settings are only valid for the lifetime of their
profiles.

#### Multiple Profiles

When multiple profiles that affect a setting are active simultaneously:

1.  the setting has the value from the **most recently activated**
    profile
2.  when **all** profiles are inactive, the setting has the value from
    before **any** profile was active

#### Special Cases

-   if a setting is changed by the Exit Task the profile will never save
    the setting\'s initial value.
-   settings changed in an *instant profile* (one with an event context
    or repeating/non-ranged time context) remain changed after the
    event. The reasoning is that there is no point in changing the
    setting for the half-second that the event lasts.

#### Notes

-   settings are not *actively* maintained. If something else changes
    the setting once the Enter task has run, it\'s not the case that
    this is detected and the Enter task value automatically reapplied.

Complicated, huh ?
