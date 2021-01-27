### File Events

The named operation was just carried out on the specified SD card file.\
\
There will always be an OPEN event before MODIFY (if the file is
written) then CLOSE events.\
\
The file must exist when Tasker\'s UI is exited or the SD card is
inserted for this event to be active.\
\
Be very careful if you act on a file event by doing an action with the
file. For instance, if you respond to an open event by copying the file
make sure you have Abort New Task set in task properties, since the act
of copying the file will trigger another open event and an endless loop
will occur otherwise.\
\
Limitation: if a file is deleted and recreated, subsequent file events
will not be reported.
