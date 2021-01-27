---
title: 'Tasker: Power Usage'
---

Power Usage ![](icon_tasker.png)
--------------------------------

Internally, Tasker does its best to keep power usage down. Following are
some macro-strategies to achieve this.

#### Context Monitoring

When a profile contains multiple contexts, power is saved by only
monitoring for changes in order of the least-power-hungry first. For
example, in a profile with a Time and App context, Tasker will not
decide that it needs to monitor for a changing application unless the
Time context is active (because the profile cannot become active until
both contexts are active).

Tasker rates contexts for power-hungriness in the following (ascending)
order:

-   Other State
-   Day / Time
-   Calendar Entry State
-   Cell Near State
-   App
-   BT Near State
-   Network Location
-   Wifi Near State
-   GPS Location
-   Temperature / Humidity / Proximity / Pressure / Magnetic Field /
    Light Sensor / Gesture Event / Orientation State (accelerometer
    activation)

Items at the bottom of the list won\'t become eligible for monitoring
until all items further up the list are active.

#### Display-Off Checks

When the display is off, all necessary \'active\' checks (GPS/Net
Location, Wifi Near, App) are done at the same time so that the device
is awake for as short a time as possible. See *Display Off Timings* in
`Menu / Prefs / Monitor` for the frequency and maximum duration of these
checks.
