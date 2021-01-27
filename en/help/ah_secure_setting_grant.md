#### [Write Secure Settings]{.name} Permission

To use this, Tasker needs to be granted permission to [Write Secure
Settings]{.name} on your device

1.  **Enable Developer Mode**: Go to Android Settings -\> About Phone
    and look for the **Build Number** option. Touch it multiple times
    until developer mode is enabled.
2.  **Enable USB Debugging**: Go to Android Settings -\> and look for
    the **Developer Options** option. In there, enable the **USB
    debugging** option.
3.  **Install ADB on your PC**: Check
    [here](https://www.xda-developers.com/google-releases-separate-adb-and-fastboot-binary-downloads/)
    for a quick way to do it.
4.  **Connect device to PC**: Connect your device to a PC and look on
    your phone. A prompt should show up asking you to allow your phone
    to be debugged by your PC. Accept this.
5.  Open the command prompt from the file folder that contains the
    extracted downloads. To do this, press the windows key and type
    **cmd**. When the prompt opens, type **cd** followed by folder your
    downloaded ADB to.
6.  **Grant permission**: Open a command line a on your PC and write

    ``` {.small}
    adb shell pm grant net.dinglisch.android.taskerm android.permission.WRITE_SECURE_SETTINGS
    ```

    If you\'re on a mac write

    ``` {.small}
    ./adb shell pm grant net.dinglisch.android.taskerm android.permission.WRITE_SECURE_SETTINGS
    ```

#### Notes:

-   On MIUI devices you may have to open developer options and enable
    the **USB debugging (Security Settings)** setting to be able to run
    the above command.
