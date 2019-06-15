### Notify LED

Show a notification on the top bar and flash an LED.\
\
The specified title will appear on the bar initially. Notifications with
a particular (non-empty) title replace existing ones with that title.\
\
When the notification area is pulled down, the specified text will be
visible.\
\
A Number other than 0 causes that number to be included in the
notification area.\
\
Rate is the number of milliseconds the LED will flash on and then again
be off. It must be at least 1.\
\
Not all devices support all colours. Many devices will only support red
and green. In general, colours near the top of the list are more likely
to be supported.\
\
Some devices will only flash the LED when the device is off at the time
the notification is received.\
\
Up to 3 Actions can be specified which will appear in the notification
area. In some cases it may be necessary to slide down to reveal the
actions. Actions do not run as part of the notifying task.
