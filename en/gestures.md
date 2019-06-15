---
title: 'Tasker: Gestures & Shaking'
---

Gestures & Shaking ![](icon_tasker.png)
---------------------------------------

#### General

*Gestures* are physical movements of the phone in space, which you first
record by creating a new Event of type *Gesture* (in the *Misc*
category).

When you later redo the gesture while using your device, Tasker will
carry out the corresponding task(s) you have attached to its profile.

Like normal events, gestures are restricted by other contexts. For
example, if you define a profile with a Gesture (Event) and Application
context, the gesture will only be recognized while using that particular
application.

Note: it might be a good idea to disable Tasker before setting up new
gestures, as otherwise you are likely to trigger previously defined
ones.

#### Recording A Gesture

##### Gesture Points

First off, it\'s important to know that Tasker only records the
particular points (which we\'ll call *inflection points*) of a gesture
that you tell it to. For example, recording a gesture involving tilting
the phone to the left and back you would record three inflection points:
the start, the tilted left position, and the end (which is the same as
the start in this case).

You can record as many points as you like, but in general it\'s best to
record only the points where the phone is not moving.

##### Recognized Movements

Tasker will only recognize changes in the **angle** of the phone i.e.
**tilting** to left or right, backwards or forwards, or rotating
vertically. Imagine three poles going through the device in the three
dimensions.

**Moving** the phone backwards or forwards, up or down or side to side
cannot be recognized.

##### Procedure

1.  create a new Gesture Event and give it a name (so you can
    differentiate between different gestures).
2.  put the phone in the position where you want the gesture to start
    and **press-and-hold** the **Call**, **Camera**, **Menu**,
    **Search** or **Volume** hardware buttons to record the point. The
    device will buzz.
3.  move to another (preferably not-moving) point on the path of your
    gesture, and press the button again (not a long press). The device
    will buzz.
4.  on the **final** inflection point, **press-and-hold** the button to
    mark the end of the gesture. The device will buzz again and the
    \"Recorded.\" message should now flash up.
5.  Press **Done**, and add a Vibrate action so you can hear when your
    pattern matches when testing it.

#### Activation

##### Calibration

Before trying to match a pattern, you probably need to calibrate the
hardware in your device. Go to `Menu / Prefs / Monitor / Gestures`.
Press the **Calibrate** button and tilt your phone around in all
directions.

Tasker now has some idea what kind of values the *accelerometer* in your
phone produces.

You only need to calibrate once.

#### Matching

Now exit Tasker and move your device through the points you previously
defined when recording. You should hear the device vibrate when it
reaches the final recorded point.

If not, try playing with the values in the Gesture Settings screen. For
instance, you could try raising the Match Radius (but be careful not to
raise it too much or you\'ll get a lot of matches by mistake).

#### Power Usage

Tasker does its best to limit power usage of gesture monitoring.

-   monitoring for gestures only takes place when all the other contexts
    in a profile are already active (and so the gesture might have a
    chance of activating the profile). For example, if you combine an
    Application and Gesture (Event) context, gesture monitoring will
    only take place while using that particular application.
-   Gesture monitoring is by default turned off when the display is off
    unless a power source is connected to the device, unless specified
    otherwise in `Menu / Prefs / Monitor / Display Off Monitoring`
-   updates from the accelerometer are at the minumum rate until the
    start of a gesture is detected.
