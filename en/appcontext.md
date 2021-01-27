---
title: 'Tasker: Application Context'
---

Application Context ![](icon_tasker.png)
----------------------------------------

An *Application Context* is activated when selected parts of one or more
application are running.

Important: in Android versions after (and including) L, app detection is
much less accurate. For some apps it may not work at all, for others it
may activate and never deactivate.

#### Controls

##### *App* button

When checked, indicates that the context will become active if any of
the selected applications is in the *foreground*, meaning it is
currently being displayed to the user.

##### *Services* button

When checked, indicates that the context will also become active if a
service associated with any of the selected applications is running.

Note that services other than the obvious ones may be running. For
example, the default Play Music app may have a download service running
even when not playing music at a particular time.

##### *Invert* button

When the context is *inverted*, it will become active when any
application **apart from** the selected ones is matched

##### *All* button

Usually only applications are shown for selection which would usually be
shown in the launcher. The All button shows certain other launchable
activities.

This button in no way affects how the context behaves.

#### Application Checking

When any profiles have application contexts specified, Tasker checks
frequently to see if one of those applications has been launched. The
default is every 1.5 seconds.

If you would like quicker response, or you suspect this is severely
increasing your battery usage, you can change this value in preferences
(select `Menu / Preferences / Monitor` from the main screen).
