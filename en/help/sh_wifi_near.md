### Wifi Near

The device is near a Wifi Access Point (AP).\
\
On recent Android versions wifi scanning is only available for apps with
the location permission, so that\'s why Tasker asks for it.\
\
If any of the parameters are specified, the AP must match that
parameter, otherwise any AP will match.\
\
SSID: the SSID of the AP e.g. SKY34312\
\
MAC: the MAC address of the AP e.g. 00:1f:35:34:43:4a\
\
Capabilities: e.g. \[WPA-PSK-TKIP\]\
\
Min Activate Signal Level: the minimum signal strength to activate the
context. It\'s ignored once the context is active.\
\
Channel: the frequency channel.\
\
Toggle Wifi: if Wifi on the device is disabled, enable it for the period
of the scan, probably around 15 seconds. On Android 6+ this is rarely
needed, unless you disabled the *Scanning Always Available* option in
Android settings. Toggling cannot take place when the Wifi Tether
(Hotspot) is enabled on the device. On Android 4.3+ devices, consider
enabling *Scanning Always Available* in Android advanced wifi settings,
instead of toggling.\
\
A seen AP which is no longer visible for approximately two times the
scan period is forgetten. This is to help prevent the profile bouncing
on and off at the edge of the signal reception area.\
\
The period for Wifi scanning is specified in
Menu-\>Preferences-\>Monitor-\>Wifi Scan Time.\
\
You can use the variable Wifi Info to see information about nearby APs
(when not connected).\
\
When any profile has a Wifi Near state context, it will do regular scans
for nearby APs (see Menu-\>Preferences-\>Monitor-\>Wifi Scan Period.
This requires the device\'s Wifi radio to be enabled.
