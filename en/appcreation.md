---
title: 'Tasker: App Creation'
---

App Creation ![](icon_tasker.png)
---------------------------------

-   [Introduction](#intro)
-   [Hello World Example](#example)
-   [App Configuration](#config)
-   [Signing](#sign)
-   [Target Device Requirements](#target)
-   [Miscellaneous](#misc)
-   [FAQ (External
    Link)](http://tasker.dinglisch.net/faq-appcreation.html)

[]{#intro}

### Introduction

Tasker allows creation of completely standalone apps (APK files) which
have no requirement for Tasker to be installed on the device they\'re
used on.

The intention is to allow people to create their own apps for fun, for
sale or just to share with friends. Or if you are concerned about all
the permissions Tasker needs you can create an app that has only the
permissions you require!

App creation is uncomplicated and takes only a few seconds once you\'re
setup.

To create apps, you need the following on **your** device (not
necessarily on the device(s) the app will run on):

-   Android 2.3+
-   *Tasker App Factory* (free, see below)
-   a device with an *ARM* or *x86* processor (the vast majority of
    devices have one of those)

App creation is accessed by long-clicking on a project (**not** the base
project) or task and selecting **Export** then **As App**. Any linked
resources needed (e.g. other tasks, images) are included as part of the
new app.

To export anything except a single task, you need to create a project
and put anything you wish to export in the project.

[]{#example}

### Hello World Example

Let\'s make a simple app that just pops up **Hello World!** when it\'s
launched.

#### 1. Create A Task

-   **make a new task**\
    click on the Tasks tab then click **+** to add a new task. Give it a
    name *Hello World*.
-   **give the task an icon**\
    click the grid icon at the bottom of the screen and pick any icon
-   **add the Popup action**\
    click **+** in the bottom left to add an action, select category
    **Alert** and then action **Popup**. Fill in **Hello World!** in the
    *Text* parameter, then click the accept button bottom left to accept
    the action, then again to accept the task.
-   **ask Tasker to create an app**\
    long-click on the task you just made, select **Export** then **As
    App**. A popup appears mentioning a Missing App.

#### 2. Install Tasker App Factory

To generate apps, Tasker needs a free helper app called *Tasker App
Factory*. It\'s available on Play Store and from the Tasker website.

Click the accept button on the popup to install the helper app.

#### 3. App Generation

Tasker should now start generating your app, which will take maybe 12
seconds depending on your device.

If all goes well, the Cancel button will turn into an OK button meaning
your app is ready!

We can\'t run the app straight away though because it hasn\'t been
installed. Click on the rightmost bottom button with the Android icon to
ask Android to install your app.

Once Android is done installing, you can click it\'s **Open** button to
run the app, or you can simply go to the home screen and click on the
app\'s icon in the launcher.

You should see a Hello World popup!

[]{#config}

### App Configuration

More usually, before an app is generated you will be presented with a
configuration screen which lets you specify various options for the new
app.

[]{#sign}

### App Signing

Android requires that all apps be *signed* i.e. that they certify who
created them. By default, Tasker uses an automatically-generated
insecure certificate to sign apps and doesn\'t bother mentioning it.

However, if you want to release an app via a public site (Play Store for
example), you will need to sign it with a proper (secure) certificate.
That\'s done so the site knows that it\'s you that\'s giving them the
app each time you submit a new version.

Certificates are kept in a *keystore* which is protected with a
password. To generate a keystore with a secure certificate, use
`Menu / More / Developer Options / Create Certificate`.

Once you\'ve generated the keystore, Tasker will often need to ask you
for the certificate password before app generation so that it can be
used to sign each new version of your app.

If Android\'s backup service is enabled in Android settings, Tasker
makes a backup of the keystore there.

Tasker also makes an automatic backup of the keystore to

        /sdcard/Tasker/factory/keystore.user

when it is first created and when you backup your profile data with
`Menu / Data / Backup`. It\'s highly advisable to make a copy of that
file and keep it safe away from your device.

[]{#target}

### Target Device Requirements

The device the child app is used on must meet the following
requirements:

-   the minimum SDK version specified in the Kid Config screen
-   have hardware corresponding to features specified in the Kid Config
    screen

[]{#misc}

### Miscellaneous

#### Accessibility Service

Android accessibility support changed in Android 4.1 (JellyBean). If
support is needed for accessibility services in 4.1+, the **Minimum
Android Version** in the child Configuration screen must be set to
**16** or higher. If support is required pre-4.1, it must be set to
**less than** 16.

In other words, to support both pre- and post-4.1 devices, two APKs must
be generated.

This applies to all features that rely on an Accessibility Service
(events *Notification, New Window, Button Widget Clicked, Notification
Click*, variables *%NTITLE, %WIN*, *App Context* from min version 20+)

Google Play Store allows publication of APKs targetting different
Android versions under the same package name, however this has not been
tested by the developer of Tasker.

#### Launch Task

When the specified launch task runs in the child app, the following
local variables will be available to it:

-   *%launch\_data*: the data (URI) in the intent that caused the child
    app to launch (often empty)

#### Monitor Service

Most child apps include a service which constantly monitors for events.
If you know that you don\'t need to monitor events anymore (in-between
app launches) you can use the *Disable* action in the Tasker category to
stop it.

It will be automatically started again next time the app is launched.

#### Widgets / Shortcuts

-   it\'s not possible in Android to auto-create widgets with any app
-   it\'s not possible \*currently\* to offer the user child-app
    widgets, that may be available in the future to some extent

#### Memory Problems

If you are having low memory problems during app generation, you can ask
the App Factory to use external storage for the generation process. See
`Menu / Prefs / More / Factory`.

#### Preferences

The new app does not take over any preferences from Tasker, all of the
preferences in the child app are in their default state, with a couples
of exceptions.

Despite the misleading name, you can use the *Set Tasker Pref* action in
the *Tasker* category **in the child app** to change some of the
**child\'s** preferences when it is running.

#### Available Tasker Features

Obviously, the device the new app runs on may not have the same set of
available e.g. actions as the device the app is created on.

The *Test* action in the *Misc* category allows you to check which
Tasker features are available at *run time* (when the app is being
used).

#### Images

Referenced images (even scene doodles and photos from internal storage)
are bundled in with the app.

Tip: to include a dynamic image (e.g. which you download to a file path
via HTTP Get), put the image reference in a variable, and put the
variable in the relevant action.

#### Plugins

When the new app is launched, it checks that all referenced plugins are
installed on the device and prompts the user to install missing ones.

Some plugins may not work on other devices if they themselves store
something about the action to be performed, since that data will not be
available on the other device.

Plugin authors: see also
[here](http://tasker.dinglisch.net/plugins.html#gen).

#### JavaScript actions

Scripts referenced by a *JavaScript* action are packaged with the new
app and run directly from there.

#### SL4A Scripts

Scripts referenced in a *Run Script* action are packaged with the new
app and unpacked to `/sdcard/sl4a/scripts`, prefixed with the package
name, on first run. Tasker automatically inserts the
WRITE\_EXTERNAL\_STORAGE permission for that purpose.

If SL4A is missing on the target device, the new app will prompt the
user to download when launched.

If a new version of the app is reinstalled on the target device, the new
versions of the scripts will be written if the **length** has changed.

#### Other External Components

The following external components are also checked for on launch of the
new app where necessary:

-   Speech engines (*Say, Say After*)
-   APNDroid (*Mobile Data APN*)
-   Zoom (*Zoom* action category actions)
-   apps for *3rd Party* actions
-   apps for *3rd Party* events

#### Maps

The data for Maps is provided by Google and they require a *maps key*
(v2) for each developer that uses it. If you are using Map scene
elements in your app, you need a key from Google that can be included
with your app.

Here are the steps to acquire a key:

1.  \[if necessary\] setup a [Google
    Account](http://www.google.com/accounts/)
2.  \[if necessary\] create a [developer
    account](http://developer.android.com/distribute/index.html)
3.  \[if necessary\] create a [signing keystore](#sign)
4.  get the SHA1 fingerprint of your certificate:
    `Menu / More / Developer Options / Certificate Checksum`
5.  Create an [Google API
    Project](https://developers.google.com/maps/documentation/android/start#create_an_api_project_in_the_google_apis_console)
6.  Obtain the [Maps
    key](https://developers.google.com/maps/documentation/android/start#obtain_a_google_maps_api_key)

Enter the key in the App Configuration screen when generating your app.
Note that the box will only be presented if your app uses one or more
Map scene elements.

Note that the device on which the created app is used needs Google\'s
Play Services APK installed, otherwise the map elements will not
function.

#### Variables

The new app is completely independent of Tasker, so it also does not
share any variable values.

#### Permissions

Tasker attempts to reduce the set of permissions required by the new app
to the smallest set required for the functionality it contains. For
example, no *Vibrate* permission will be requested if there is no
vibrate action used.

The WAKE\_LOCK permission is unfortunately always required for technical
reasons.

#### App Size

Generated apps are minimally around 640K but are unlikely to be
significantly larger unless a lot of images are referenced. It\'s
possible that this minimum can be reduced in the future.

#### Encryption

Code for encryption is included in any app created by App Factory,
however if you don\'t use encryption features it\'s unlikely to be a
problem in terms of export restrictions. However, that is an opinion, it
is **not legal advice**.

Note that code libraries for encryption are included with every Android
device. Tasker (and child apps) use these libraries to perform the
encryption, they do not contain encryption code themselves.

Licence

You are free to distribute and sell apps created by Tasker in any way
you wish. No licence fees to the developer of Tasker are necessary. It
would be courteous to reference Tasker and it\'s website
(http://tasker.dinglisch.net) somewhere in your new app if possible.

Please note that use of images from some Ipacks in commercial software
is prohibited by the licence terms of the image creators. You will need
to contact the image designer to request their assent in such cases.
(the origin of an Ipack\'s images is displayed in the Ipack image
selection screen).
