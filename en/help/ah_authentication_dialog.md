Authentication Dialog
---------------------

Show a dialog that allows the current user to authenticate. This can be
used to allow for secure execution of certain tasks.

**Read Result To** will set the authentication result into both a
variable and an array with that variable name:

-   **Variable**: Will contain the last authentication result. Can be
    **success** or whatever error there was in case of an error. You
    will probably use this most of the time.
-   **Array**: For advanced uses. Will contain all authentication
    results that resulted from the dialog, ie, if your finger wasn\'t
    recognized first but then it was you\'ll have an array with 2 items:
    an error and success

If you want to handle errors use the **Continue Task After Error**
option and check the result variable.

### Credentials

Works on all Android versions.

Shows the standard Android authentication dialog and asks for whatever
credentials you currently have setup on your device.

It doesn\'t work if you don\'t have any credentials setup at the moment
of running.

### Biometric

Only works for Android 9 and above

If you fail to authenticate 5 times in a row Android will block access
to this for 30 seconds
