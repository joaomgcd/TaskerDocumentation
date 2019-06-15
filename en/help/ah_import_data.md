### Import Data

Dynamically load a task into the active configuration or replace the
whole active configuration.\
\
Usually the data to be loaded is first read into a variable via the Read
File action.\
\
When a new configuration is successfully loaded, the task (and all
others) will be stopped and the monitor service also restarted.\
\
Tip: the action Variable Convert / To MD5 Sum, can be used to validate
the loaded data after Read File.
