### WiFi Tether

Turn on sharing of the device\'s Internet connection via wifi.\
\
If Wifi was on, it will be turned off, you will need to enable it
manually after the tether.

If the action fails for you, saying that you need to the
android.permission.TETHER\_PRIVILEGED permission you can still make it
work **if you have a rooted device**:

-   Make a a backup of your Tasker setup
-   Copy \"/data/app/net.dinglisch.android.taskerm\" folder to
    \"/system/priv-app\"
-   Uninstall Tasker and reboot
-   After the reboot Tasker should be installed as a System app.
-   Restore Tasker data
