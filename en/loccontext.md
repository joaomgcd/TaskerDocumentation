---
title: 'Tasker: Location Context'
---

Location Context ![](icon_tasker.png)
-------------------------------------

A *location context* specifies a circular geographical area in which it
is active. It is formed by a centre point (*latitude, longitude*) plus a
*radius* around that point.

#### Location Providers

A location provider is a method of supplying geographical coordinates.
Tasker must use one or more location providers to be able to decide when
a location context should become active or inactive. []{#gps}

##### GPS

The most accurate provider available (around +-10m), but its performance
degrades quickly indoors and it uses a relatively large amount of power.

To set the frequency of GPS fixes, see `Menu / Preferences / Monitor`.
*GPS Check Time* determines the check frequency in seconds while the
device is awake, *Off Check Time* while the device is asleep.

GPS will only be used for a particular context if it is specified in the
location edit screen.

[]{#net}

##### Network

This provider uses a combination of cell-towers and WiFi information (if
wifi is enabled) to determine the device\'s geographical location. It is
less power-hungry than GPS, but also less accurate (sometimes +- several
kilometres) and requires data network availability.

Network will only be used for a particular context if it is specified in
the location edit screen.

See also:

-   [Location Edit Screen](activity_locselect.html)
-   [Location Without Tears](loctears.html) (guidance for choosing a
    location method)
