### Keyguard

Whether the keyguard is enabled or disabled.\
\
The keyguard is the dialog requiring some sort of unlock action when the
device is turned on.\
\
Note: while keyguard is disabled, your SIM pin unlock screen may
disappear after a few seconds after a reboot.\
\
WARNING: while keyguard is disabled, the \'lock pattern\' mechanism is
also disabled, so your phone is unprotected if it is lost. There is also
the possibility of interference with other applications that manipulate
the keyguard.\
\
On Android 2.2+, this action should probably only be used when the
device is on and unlocked, unless the unlock method in Android settings
is set to None.\
\
Side-effect: coming out of Airplane Mode with Keyguard disabled may
leave the SIM unrecognized until Keyguard is toggled again.\
\
See also: action Keyguard Pattern.
