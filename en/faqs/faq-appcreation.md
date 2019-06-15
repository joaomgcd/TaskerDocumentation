FAQ: App Creation ![](androidlogo.png) ![](icon_tasker.png)
-----------------------------------------------------------

-   [Does app creation support profiles and scenes ?](#c)
-   [Why is the app always shown as running ?](#a)
-   [How do I do initialization on the first launch ?](#b)
-   [How can my task tell if it is running in Tasker or a child app
    ?](#h)
-   [Why isn\'t my app detecting background events ?](#d)
-   [How can I send the developer a short-term App Factory log ?](#e)
-   [How can I send the developer a long-term App Factory log ?](#e2)
-   [Can I include Google Play\'s licencing service in my app ?](#f)
-   [Can I get the java source code from my created app ?](#g)

[]{#c}

#### Does app creation support profiles and scenes ?

Sure. You can export projects as apps and projects can contain profiles,
tasks and scenes.

For help accessing projects, see `Menu / Info / Help This Screen` in the
main screen.

[]{#a}

#### Why is the app always shown as running ?

Tasker tries to detect when it\'s monitor service is no longer needed
but that is not always possible. You can put a `Disable` action from the
`Tasker` category at the end of your launch task to ensure that it
happens.

The monitor will be started again automatically each time the app is
lauched from the home screen.

[]{#b}

#### How do I do initialization on the first launch ?

Setup your launch task something like this:

    If %LaunchCount = 0
       ...initialization actions...
    Else
       ...normal actions...
    Elsif
    Variable Add, %LaunchCount, 1

[]{#h}

#### How can my task tell if it is running in Tasker or a child app ?

Use the **Test App** action and select the mode **This Package**.

The resulting variable will contain the package identifier you specified
in the App Configuration screen if the task is running in a child app,
otherwise it will contain one of *net.dinglisch.android.tasker* or
*net.dinglisch.android.taskerm*.

[]{#d}

#### Why isn\'t my app detecting background events ?

One possible cause is: when an app has just been installed on Android it
is in a \'frozen\' state until there is some user interaction with it
(usually clicking the home screen icon at least once). []{#e}

#### How can I send the developer a short-term App Factory log ?

-   download aLogcat, free from Android Market
-   disable Tasker in the main screen bottom-left
-   in the App Config screen, check *Advanced Properties* and then
    *Debug*
-   create and install the new app \*twice\*
-   launch the new app from the home screen
-   reproduce whatever conditions cause the problem
-   go to aLogCat, click **Menu / Pause** then **Menu / Send**
-   the destination email is listed in **Menu / Info / User Support** in
    Tasker
-   include at the top a brief description of the problem that the email
    concerns

Try to make the log as soon as possible after the problem occurs.

[]{#e2}

#### How can I send the developer a long-term App Factory log ?

-   disable Tasker by long-clicking the icon top-left in the main screen
-   in the App Config screen, check *Advanced Properties* and then
    *Debug*
-   create and install the new app \*twice\*
-   enable the **Storage** permission for the app in Android Settings if
    necessary
-   launch the new app from the home screen
-   reproduce whatever conditions cause the problem
-   send the developer the log files in the directory NAMEOFAPP in the
    root directory of the SD card
-   the destination email is listed in **Menu / Info / User Support** in
    Tasker
-   include at the top a brief description of the problem that the email
    concerns

Try to make the log as soon as possible after the problem occurs.

[]{#f}

#### Can I include Google Play\'s licencing service in my app ?

No, this is not possible.

Tasker\'s code does not include the licencing service because of
continual problems it caused. In any case, the licensing service is
ineffectual for preventing unauthorized code distribution.

If you really want to include licensing in your app, you could e.g.
require the user to enter their order code and check via the *HTTP Get*
action on your server if that is a valid number.

Setting up such a server to download Google order details and accept
verification requests is a lot of effort and requires some technical
knowledge, however.

[]{#g}

#### Can I get the java source code from my created app ?

Short answer: no.

Long answer: when a new app is created, Tasker doesn\'t create new java
code to implement the things in your task or project configuration.
Instead, the existing Tasker code is used with the new app and executed
similarly to how it\'s executed in Tasker, but in the shell of a new
APK.
