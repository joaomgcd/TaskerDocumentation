### Wifi Connected

The device is connected to a Wifi Access Point (AP).\
\
If any of the parameters are specified, the AP must match that
parameter, otherwise any AP will match.\
\
SSID: the SSID of the AP e.g. SKY34312\
\
MAC: the MAC address of the AP e.g. 00:1f:35:34:43:4a\
\
IP: the IP address of the AP e.g. 192.156.98.4\
\
You can use the variable Wifi Info to see information about the current
AP (when connected).\
\
The Active parameter specifies whether or not the wifi network must be
the network currently in use in order to match. Setting it to **Yes**
means the WiFi must be the default route to the internet. If **Yes** and
you enable VPN, the WiFi state rightfully becomes inactive, as that WiFi
connection is only used to route traffic to the VPN. The VPN has default
route to internet. Any means it doesn\'t matter if WiFi is route to
internet or not, as long as you are connected to a WiFi.
