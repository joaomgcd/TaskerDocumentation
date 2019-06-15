### Navigation Bar

Change the buttons on the Android navigation bar that\'s usually at the
bottom of the screen. To bring back the default buttons, run the action
with all blank fields.

### This is a Secure Setting

To use this setting, Tasker needs to be granted permission to change
secure settings on your device

Please follow the [instructions](ah_secure_setting_grant.html) to learn
how to grant the permission.

#### Important Note

If for some reason **System UI** crashes while using this action, use
the following adb command to reset the navigation bar:

``` {.small}
adb shell settings delete secure sysui_nav_bar
```

This will make the navigation bar back to what it was and make it stop
crashing.

If you can, re-configure the action and leave all the fields empty and
run it. That should make it reset as well.

#### Unsupported Devices

This action may not work on all devices. These are the ones that I\'ve
confirmed are not working correctly:

-   Some (all?) OnePlus devices
-   Some (all?) LG devices
-   Huawei P20 Lite
-   Probably a lot (if not all) of Huawei devices

Other devices may also not be compatible
