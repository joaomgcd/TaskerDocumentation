---
title: 'Tasker: CPU Control'
---

CPU Control ![](icon_tasker.png)
--------------------------------

------------------------------------------------------------------------

**Note:** CPU control can damage your hardware e.g. by the CPU
overheating. As for all Tasker functions, you use it at your own risk!

------------------------------------------------------------------------

### General

On a rooted device (only) Tasker is able to control the CPU frequency of
an Android device to some extent. This is usually done either to save
battery or make the device more responsive depending on the
circumstances.

The relevant control action is **CPU** in the **Misc** category. You can
monitor the current state with the variables **%CPUFREQ** and
**%CPUGOV**.

There are two aspects which can be controlled, the Frequency Range and
the CPU Governor. You will need to experiment with combinations of these
to achieve the best results.

### Frequency Range

You can set the minimum and maximum frequency which the CPU is allowed
to run at. Only certain frequencies are valid, depending on the CPU
(click on the magnifying glass button to select a valid value).

The maximum frequency is probably initially set lower than the maximum
frequency that the CPU can actually handle. If that is the case, you
should be very cautious about setting it higher. Tasker will warn you
the first time you try to do configure an action to do that, assuming
you have not been using other apps to change the maximum frequency
limit.

### CPU Governor

The active *governor* decides what the CPU frequency should be set to at
a particular time, within the frequency range you have set. Each has
it\'s own unique strategy. Here are the most common governors:

-   *Performance*\
    keeps the CPU frequency always at the maximum. Most power-hungry,
    most responsive.
-   *Powersave*\
    keeps the CPU frequency always at the minimum. Least power-hungry,
    least responsive.
-   *Ondemand*\
    when the CPU is needed, immediately sets it to maximum frequency.
    Slowly reduces the frequency back down to the minimum as time
    passes. Responsive, reasonable power usage.
-   *Interactive*\
    like Ondemand, but more responsive with slightly more battery usage.
-   *Conservative*\
    when the CPU load is needed, slowly increases the frequency to
    maximum. When the CPU is no longer needed, immediately drops back to
    the minimum. Less power-usage than Ondemand or Interactive, less
    responsive.

Not all governors are available on all ROM versions. Your device may
also have a governor not described here. You can still set that governor
with Tasker.

### CPU Action Not Available

Common problems are:

-   *root not recognized*\
    Tasker decides that a device is rooted if
    `/system/app/Superuser.apk` is present and `su` is present in one of
    the directories of \$PATH
-   *no available frequencies*\
    Tasker needs to know what frequencies it can set the CPU to. It
    looks for the files
    `/sys/devices/system/cpu/cpuX/cpufreq/scaling_available_frequencies, /sys/devices/system/cpu/cpuX/cpufreq/stats/time_in_state`
    and `/system/etc/scaling_available_frequencies` (in that order). If
    you know what your CPU frequencies are, you could write them
    (space-separated, in numerical order) to the first (any number of
    CPUs) or last (1 CPU only) of those files.
