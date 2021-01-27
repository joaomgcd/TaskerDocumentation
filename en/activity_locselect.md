---
title: 'Tasker: Location Edit'
---

Location Edit ![](icon_tasker.png)
----------------------------------

This screen allows configuration of a [Location
Context](loccontext.html).

#### Map Display

The map shows the location (base of the flag icon), radius and names of
all defined location contexts

The location currently being defined has a yellow base, other location
contexts have a blue base.

#### Map Controls

-   **long-click** on the map to select a location for this context.
-   **long-click then drag** on the flag for the current location to
    drag it

Use the pull-down selector under the map to specify the radius for this
context.

**Important:** if your radius is too small compared to the accuracy of
the fixes you are receiving, your context may never go active. If you
can\'t get a fix, try increasing the radius. Typically, a good radius
would be around twice the accuracy of the fixes you are receiving.

If you have no internet available in order to retrieve the map tiles,
you can still use the **Get Fix** button (see below) to specify your
current location.

#### Action Bar Options

##### Grab (\'My Location\') Button

Acquires a location fix using the enabled and available providers (make
sure the GPS Button is clicked first if you want to use GPS).

Once a fix is acquired, the latitude, longitude and radius of this
location context are set according to it. If you reduce the radius after
a fix, Tasker may no longer accurately detect whether you are in or out
of the context.

When trying to determine current location, Tasker will keep going with
fixes until they stop improving (e.g. as the GPS locks on to more
satellites). If you get impatient you can press the Get Fix button again
to stop the process (its label is changed to **Stop** while a fix is
being acquired).

##### Address Menu Item

Allows entry of an address for which this location context should be
active.

#### Bottom Buttons

##### Net Button

The Net toggle button specifies whether to use the
[Network](loccontext.html#net) location provider to monitor for this
location

##### GPS Button

The GPS toggle button specifies whether to use
[GPS](loccontext.html#gps) to monitor for this location (assuming it is
available on the device). If GPS is not used, the network will need to
be available in order to query for location fixes based on cell-towers
or WiFi data.
