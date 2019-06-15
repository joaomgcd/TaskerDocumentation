### Device Boot

The phone has just finished turning on (after being shut down, not just
the screen blanking).\
\
It\'s advisable that any tasks linked to this event start with a Wait
action of e.g. 5 seconds, because Android is extremely busy immediately
after a boot. Note also that the SD card may not be yet mounted when
this event is received, which is another reason for delaying the task if
it relies on the SD card being present.
