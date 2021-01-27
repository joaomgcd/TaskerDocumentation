### Get Location

Get a location fix.\
\
GPS: a value will be set when the accuracy stops improving. \'Use GPS
Satellites\' must be enabled in Android Location Settings.\
\
Net: a value will returned upon the first fix.\'Use Wireless Networks\'
must be enabled in Android Location Settings.\
\
Continue Task Immediately: move on to the next action in the task as
soon as the fixing has started.\
\
Keep Tracking: don\'t stop tracking the location source(s) when a value
is returned This will use more power but enables faster fixes after the
first one. When using this option, tracking can be stopped by the action
Stop Location or doing Get Location without the option checked.\
\
It will stop automatically if at any time no tasks are left to execute
or the Get Location times out.\
\
Note: the fix data are stored in the relevant %LOC variables, see the
Variables section of the userguide.
