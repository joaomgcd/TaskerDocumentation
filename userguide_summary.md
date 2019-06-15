*This document is a one-page compilation of the on-device userguide
intended for printing out for use as a reference.*

[]{#index.html}

Tasker Userguide ![](icon_tasker.png)
-------------------------------------

Profiles

-   [Main Screen](#activity_main.html)

<!-- -->

-   Contexts
    -   [Application](#appcontext.html)
    -   [Time](#timecontext.html)
    -   [Day](#daycontext.html)
    -   [Location](#loccontext.html)
        -   [Location Edit](#activity_locselect.html)
    -   [State](#activity_stateedit.html)
        -   [A-Z](#help/sh_index.html)
    -   [Event](#eventcontext.html)
        -   [Event Edit](#activity_eventedit.html)
        -   [A-Z](#help/eh_index.html)

Tasks

-   [General](#tasks.html)
-   [Task Edit](#activity_taskedit.html)
-   [Flow Control](#flowcontrol.html)
-   [Task Widgets / Shortcuts](#app_widgets.html)
    -   [Configuration](#activity_widget_configure.html)
-   Actions\
    -   [Action Edit](#activity_actionedit.html)
    -   [Settings](#settings.html)
    -   [A-Z](#help/ah_index.html)

Scenes

[General](#scenes.html)

[Scene Edit](#activity_sceneedit.html)

[Scene Properties](#activity_scenepropertiesedit.html)

Scene Elements\

-   [Button](#element_button.html) [CheckBox](#element_checkbox.html)
    [Doodle](#element_doodle.html) [EditText](#element_textedit.html)
    [Image](#element_image.html) [Map](#element_map.html)
    [Menu](#element_menu.html) [Number Picker](#element_picker.html)
    [Oval](#element_shape.html) [Rectangle](#element_shape.html)
    [Slider](#element_slider.html) [Spinner](#element_spinner.html)
    [Text](#element_text.html) [Toggle](#element_toggle.html)
    [Video](#element_video.html) [Web](#element_web.html)
-   [Element Edit](#activity_elementedit.html)

Variables

-   [General](#variables.html)

Miscellaneous

-   [Android System Power Management](#androidpowermanagement.html)
-   [App Creation](#appcreation.html)
-   [Beginner Mode](#beginner.html)
-   [CPU Control](#cpu.html)
-   [Encryption](#encryption.html)
-   [Gestures](#gestures.html)
-   [Intents](#intents.html)
-   [Java](#java.html)
-   [JavaScript](#javascript.html)
-   [Icons](#icons.html)
-   [Location Without Tears](#loctears.html)
-   [Maths](#maths.html)
-   [Pattern Matching](#matching.html)
-   [MIDI](#midi.html)
-   [Power Usage](#power.html)
-   [Run Log](#activity_runlog.html)

FAQs

-   [How Do I\... / Can I\... ?](#faqs/faq-how.html)
-   [Usage Problems](#faqs/faq-problem.html)
-   [Why\... ?](#faqs/faq-why.html)
-   [App Creation](#faqs/faq-appcreation.html)
-   [Other](#faqs/faq-other.html)

Web Links

-   [Wiki (Step-throughs, Recipes)](http://tasker.wikidot.com)
-   [Tour](http://tasker.dinglisch.net/tour.html)
-   [Bugs / Limitations](http://tasker.dinglisch.net/bugs.html)
-   [Plans](http://tasker.dinglisch.net/todo.html)
-   [Developers](http://tasker.dinglisch.net/developers.html)
-   [Release Notes](http://tasker.dinglisch.net/changes.html)

[]{#activity_main.html}

Main Screen ![](icon_tasker.png)
--------------------------------

This is the first screen shown when you startup Tasker. It allows you to
organize and configure Tasker\'s four main \'building blocks\':
*Profiles, Tasks, Scenes* and *Variables*.

-   Main Tabs
    -   [Profiles](#profiles)
    -   [Tasks](#tasks)
    -   [Scenes](#scenes)
    -   [Variables](#variables)
-   [Action Bar](#action)
-   [Menus](#menus)
-   [Projects](#projects)

### Main Tabs

Displayed in the action bar on most devices.

-   **Click** on a tab to view a list of the relevant things
-   **Click** on an **already selected** tab to get options for it

[]{#profiles}

#### *Profiles*

Each item in the list represents a profile. The profile links contexts
(conditions) on the left to tasks which should be run on the right. The
profile name is green if the profile is active. There are three main
parts to each profile.

##### *1. Title Bar*

This shows the profile name (or description if it has no name) and a
switch on the right shows whether the profile is enabled or not.

-   **Click** on the name to expand / collapse the profile. When
    expanded, the contexts and tasks (described below), are visible.
-   **Long-click** on the profile name to get profile options or to drag
    profile(s) around
-   **Click** on the switch to control whether the profile is enabled or
    not.

Important: the switch being set to **on** does **not** mean the profile
is **active** (will run its tasks), it means that the profile **can**
become active **if** its conditions are met.

##### *2. Contexts*

On the left hand side of the profile are an icon and text for each
context in the profile. The contexts dictate when the profile should
become active. When **all** contexts are active then the profile will be
active.

-   **Click** on the context to edit it
-   **Long-click** to show management options, such as editing or adding
    a new context

You can configure what clicks and long-clicks on contexts do in
`Menu / Prefs / UI`.

##### *3. Tasks*

On the right hand side of the profile are one or two tasks to carry out
based on its activation status.

-   **Click** on the task to edit it
-   **Long-click** to show management options.

A task indicated with a **green, right-pointing** arrow is an *entry*
task, executed when the profile first becomes active.

A task indicated with a **red, left-pointing** arrow is an *exit* task,
executed when the profile becomes inactive again.

Exception: a profile containing an event context or a repeating or
non-ranged time context has two green arrows, to denote that both tasks
are executed immediately because the profile activation and deactivation
is instantaneous.

Click on the **Profiles** tab when it is already selected for general
profile-related options such as sorting.

[]{#tasks}

#### Tasks

The task list shows the named [tasks](#tasks.html) which have been
created.

-   **Click** on a task to edit it
-   **Long-click** for options or to drag task(s) around

Note that a profile can be assigned an *anonymous* task (one without a
name) which is not accessible in the task list, only via the relevent
profile in the profile list.

Click on the **Tasks** tab when it is already selected for general
task-related options such as sorting.

[]{#scenes}

#### Scenes

The scene list shows the [scenes](#scenes.html) which have been created.

-   **Click** on a scene to edit it
-   **Long-click** for options or to drag scene(s) around

Scenes with a green name have been created but may be invisible
(hidden).

Click on the **Scenes** tab when it is already selected for general
scene-related options such as sorting.

[]{#variables}

#### Variables

The Variables tab is not shown if [Beginner Mode](#beginner.html) is
enabled.

By default, all global [user-variables](#variables.html) that Tasker
knows about are listed, which includes any that have a value set or are
mentioned somewhere in a profile, task or scene.

-   **Click** on a variable to edit it
-   **Long-click** for options

Note that variables whose names are all lower-case are *local* variables
and not shown because they are only valid within the task that refers to
them.

Click on the **Vars** tab when it is already selected for general
variable-related options such as sorting and filtering.

The filter controls function as follows:

-   **Indexed** (button)\
    includes variables whose names end in a number e.g. `%LOC3`,
    otherwise they are excluded.
-   **Empty** (button)\
    includes variables which have currently have no value assigned,
    deselect to show only variables that have a value.
-   **Referenced** (button,home project only)\
    includes variables which are referenced in profiles, tasks or
    scenes.\
    Deselect to show only \'orphan\' variables.
-   **Filter** (textbox)\
    excludes variables which don\'t contain the specified text somewhere
    in their name (case-sensitive)

In a user-created project, only variables referenced by that project are
shown.

Unlike most screens in Tasker, changes made in the variable list cannot
be cancelled.

[]{#action}

#### Action Bar

##### *Apply* Button

Save and apply any changes which have been made **without** exiting the
UI.

This is unnecessary prior to leaving the UI via the back button or home
key, it\'s just for convenience when testing changes.

Not visible in [Beginner Mode](#beginner.html).

##### *Overflow* Button

Click to access [menu options](#menus) if no menu hard-key is available
on the device. []{#menus}

### Menus

#### Menu Item: Browse Examples

Links to websites with projects, profiles etc offering solutions for
common problems. Important: once downloaded you need to import the file
into your active user data. For example, profiles are imported by
long-clicking the profile tab and selecting Import.

#### Menu Items: Data

##### Clear

Removes all data that has been created to that point. Does not remove
preferences (use `Menu / Preferences` and click **Defaults** for that)
or variables (long-click on the Variables tab for that).

##### Backup

Saves the existing user data to a backup file on external storage.

##### Restore

Options for restoring backups of various types. []{#projects}

### Projects

Tasker allows organisation of profiles, tasks, scenes and variables into
groups called *Projects*, each with a separate *Project Tab*.

The projects tabs are hidden in [Beginner Mode](#beginner.html).

-   **Click** on a project tab to switch to viewing only things in that
    project
-   **Long-click** on a project tab for options, including adding a new
    tab. Options can also be accessed by a single click on the selected
    project tab.
-   **Long-click and Select**, then drag to a project tab, any items you
    want to move to that project

The first tab has a slightly special status, it cannot be removed and
anything which is not a member of another project is placed there.

[]{#appcontext.html}

Application Context ![](icon_tasker.png)
----------------------------------------

An *Application Context* is activated when selected parts of one or more
application are running.

Important: in Android versions after (and including) L, app detection is
much less accurate. For some apps it may not work at all, for others it
may activate and never deactivate.

#### Controls

##### *App* button

When checked, indicates that the context will become active if any of
the selected applications is in the *foreground*, meaning it is
currently being displayed to the user.

##### *Services* button

When checked, indicates that the context will also become active if a
service associated with any of the selected applications is running.

Note that services other than the obvious ones may be running. For
example, the default Play Music app may have a download service running
even when not playing music at a particular time.

##### *Invert* button

When the context is *inverted*, it will become active when any
application **apart from** the selected ones is matched

##### *All* button

Usually only applications are shown for selection which would usually be
shown in the launcher. The All button shows certain other launchable
activities.

This button in no way affects how the context behaves.

#### Application Checking

When any profiles have application contexts specified, Tasker checks
frequently to see if one of those applications has been launched. The
default is every 1.5 seconds.

If you would like quicker response, or you suspect this is severely
increasing your battery usage, you can change this value in preferences
(select `Menu / Preferences / Monitor` from the main screen).

[]{#timecontext.html}

Time Context ![](icon_tasker.png)
---------------------------------

A *Time Context* specifies a particular range, or one (or more) points
in time. There are three major components, at least one of which must be
selected (by enabling its checkbox on the left):

-   **From Time**: the starting time of the range. If it\'s not
    specified, **00:00** is assumed.
-   **To Time**: the end time of the range, inclusive. The context will
    deactivate after the **end** of the specified minute.\
    If To Time is not specified then **23:59** is assumed i.e. the
    context deactivates at midnight.
-   **Repeat**: if no repeat is selected, the context is assumed to be a
    continuous range which starts at *From Time* and ends at *To Time*.
    If a repeat **is** specified, the first occurrence is at *From Time*
    and then every X hours or minutes until *End Time*.

When not in [Beginner Mode](#beginner.html), it\'s possible to specify a
[global user variable](#variables.html) as the source of the `From Time`
or `To Time` by clicking on one of the rotating-arrow icons.

The variable contents must specify the hours and minutes in **24-hour
format** and separated by a **period** (dot) or **colon** e.g. *13.45*.
Leading 0s can be ommited e.g. *9.7* for
seven-minutes-past-nine-in-the-morning.

Alternatively, the time can be specified in seconds-since-the-epoch
format, in which case only the hour and minute part of the specification
are used.

When the variable value changes, the time context is reevaluated which
may result in it activating or deactivating. If the variable value does
not specify a valid time then the profile will deactivate (if it\'s
already activated).

Note: in some cases it may be wise to disable the profile (via the
*Profile Status* action) before changing the associated variable values.
For example, if your time context is from 16.00 to 16.00 (i.e. acting as
an event) and it should be changed to 17.00,17.00, if you don\'t disable
it first then as soon as you change the first value the time context
will become a 23 hour range (17.00-16.00) and probably activate.

Notes:

-   to specify a precise time, set *From* and *To* times the same. In
    that case, the context is treated as an instant event, it it only
    active for a fraction of a second, so no setting restoration is
    done.
-   each repeat (if *Repeat* is set) is also treated like an instant
    event.

[]{#daycontext.html}

Day Context ![](icon_tasker.png)
--------------------------------

A *Day Context* allows specification of one or more months and/or days
of the week/month.

#### Month Specification

The months are listed at the top, any of which can be selected.
Selecting **no** month has the same meaning as selecting **every** month
i.e. has no restriction on when the profile will become active.

#### Day of Week/Month Specification

Days of the week (*Sunday, Monday* etc) and/or month (*1st, 9th* etc)
can be selected independently with the pulldown centre-right. This will
initially be for Week Days if there are any defined, otherwise Month
Days.

Selecting **no** day has the same meaning as selecting **every** day.

If you select **both** days of the week **and** days of the month, it
requires both conditions to be fulfilled for the profile to become
active e.g. selecting *Mon,Tue* and *11th* means the profile will become
active when the day is a *Mon* or *Tuesday* and **simultaneously** the
*11th* day of the month.

If you are unsure if you have specified the day(s) you require, click
the **Done** button and you will see a verbal description at the top of
the Profile Edit screen. You can click on this to try again if it\'s not
correct.

[]{#loccontext.html}

Location Context ![](icon_tasker.png)
-------------------------------------

A *location context* specifies a circular geographical area in which it
is active. It is formed by a centre point (*latitude, longitude*) plus a
*radius* around that point.

#### Location Providers

A location provider is a method of supplying geographical coordinates.
Tasker must use one or more location providers to be able to decide when
a location context should become active or inactive. []{#gps}

##### GPS

The most accurate provider available (around +-10m), but its performance
degrades quickly indoors and it uses a relatively large amount of power.

To set the frequency of GPS fixes, see `Menu / Preferences / Monitor`.
*GPS Check Time* determines the check frequency in seconds while the
device is awake, *Off Check Time* while the device is asleep.

GPS will only be used for a particular context if it is specified in the
location edit screen.

[]{#net}

##### Network

This provider uses a combination of cell-towers and WiFi information (if
wifi is enabled) to determine the device\'s geographical location. It is
less power-hungry than GPS, but also less accurate (sometimes +- several
kilometres) and requires data network availability.

Network will only be used for a particular context if it is specified in
the location edit screen.

See also:

-   [Location Edit Screen](#activity_locselect.html)
-   [Location Without Tears](#loctears.html) (guidance for choosing a
    location method)

[]{#activity_locselect.html}

Location Edit ![](icon_tasker.png)
----------------------------------

This screen allows configuration of a [Location
Context](#loccontext.html).

#### Map Display

The map shows the location (base of the flag icon), radius and names of
all defined location contexts

The location currently being defined has a yellow base, other location
contexts have a blue base.

#### Map Controls

-   **long-click** on the map to select a location for this context.
-   **long-click then drag** on the flag for the current location to
    drag it

Use the pull-down selector under the map to specify the radius for this
context.

**Important:** if your radius is too small compared to the accuracy of
the fixes you are receiving, your context may never go active. If you
can\'t get a fix, try increasing the radius. Typically, a good radius
would be around twice the accuracy of the fixes you are receiving.

If you have no internet available in order to retrieve the map tiles,
you can still use the **Get Fix** button (see below) to specify your
current location.

#### Action Bar Options

##### Grab (\'My Location\') Button

Acquires a location fix using the enabled and available providers (make
sure the GPS Button is clicked first if you want to use GPS).

Once a fix is acquired, the latitude, longitude and radius of this
location context are set according to it. If you reduce the radius after
a fix, Tasker may no longer accurately detect whether you are in or out
of the context.

When trying to determine current location, Tasker will keep going with
fixes until they stop improving (e.g. as the GPS locks on to more
satellites). If you get impatient you can press the Get Fix button again
to stop the process (its label is changed to **Stop** while a fix is
being acquired).

##### Address Menu Item

Allows entry of an address for which this location context should be
active.

#### Bottom Buttons

##### Net Button

The Net toggle button specifies whether to use the [Network](#net)
location provider to monitor for this location

##### GPS Button

The GPS toggle button specifies whether to use [GPS](#gps) to monitor
for this location (assuming it is available on the device). If GPS is
not used, the network will need to be available in order to query for
location fixes based on cell-towers or WiFi data.
[]{#activity_stateedit.html}

State Context ![](icon_tasker.png)
----------------------------------

A *State Context* allows specification of the continuing state of a
software or hardware entity.

The State Edit screen allows configuration of the state and its
parameters.

#### State Name

The name of the state is given at the top of the screen. Clicking on it
allows changing to another state type.

Next to the name is a button to show help for the displayed state type
and its parameters. Be sure to check the help text if you have trouble
with a particular state.

#### State Parameters

##### General Parameters

All states have parameters to specify more details about the state.

Text parameters are treated as [pattern matches](#matching.html).

##### Invert Parameter

All states have an *invert* parameter, which specifies that the context
should become active when it would usually be inactive, and vice-versa.
[]{#eventcontext.html}

Event Context ![](icon_tasker.png)
----------------------------------

An *Event Context* allows specification of an event which is needed to
activate its profile e.g. SMS received, screen has gone off.

Events are a little different to other contexts because they are
*instantaneous* whereas other contexts usually have a duration.

This means that it is nonsensical to specify that e.g. the screen
brightness should be set to X for the duration of the event, so Tasker
assumes that all [settings](#settings.html) actions should persist
beyond the event.

For more information about specifying events, see the [Event Edit
screen](#activity_eventedit.html).

#### Event Parameters

When a task is triggered by an event, the parameters of the event that
ocurred are passed to the task so that it can make decisions based on
the event details.

The parameters are passed in the [array](#arrays) *%evtprm*.

The order of elements of the array have values which match the order of
the parameters of the event.

Example: if an event\'s second parameter is an Application, %evtprm2 in
the launched task will be set to the label of the application which
triggered the event.

[]{#activity_eventedit.html}

Event Edit ![](icon_tasker.png)
-------------------------------

This screen allows configuration of an [Event
Context](#eventcontext.html).

#### Event Name

The name of the event is given at the top of the screen. Clicking on it
allows changing to another event type.

In the top right is a button to show help for the displayed event type.

#### Priority

Only present for relevant events.

Selects the priority at which this event will be detected. An event can
be processed by other Tasker Profiles, other installed applications and
system processes.

If priority is high, then this profile will be more likely to detect the
event before other processes, and vice versa.

#### Stop Event

Only present for relevant events.

If checked, then once this profile has dealt with the event, other user
or system applications will no longer be able to see it.

You can achieve different effects by combining *Priority* and *Stop
Event*. For instance, if you want to show a Tasker menu when the camera
button is pressed, you would set *Priority* **High** and check the *Stop
Flag*, because you do not want the camera application to appear
afterwards.

#### Event Parameters

Some events have paramaters to specify more details about the event. To
get help on particular parameters, click the question-mark icon at top
right.

Text parameters are treated as [pattern matches](#matching.html).

If you would like to make more complex comparions (e.g. mathematical
expressions), leave the event parameter blank and instead put a
[condition](#condition) on the first action of the task you execute with
the profile.

[]{#tasks.html}

Tasks ![](icon_tasker.png)
--------------------------

A task is simply a set of actions which are performed one after the
other.

#### Named / Anonymous Tasks

A task can be given a name. This allows:

-   the same task to be used in more than one profile
-   easier identification of what the task does
-   in the case of a [task widget/shortcut]{#app_widgets.html}, it
    provides a label for the icon on the home screen.

When creating a profile, widget or shortcut, often the associated task
will consist only of one or two actions which will not be reused. For
this case, Tasker allows you to create a task without a name (an
*Anonymous* task).

#### Task Visibility

Anonymous tasks are only visible when editing the profile that they are
associated with.

Named tasks are visible on any screen that allows task editing. Any
changes made to the set of tasks in any screen is reflected in all the
other screens.

#### Task Icon

Each task has an associated icon, by default a question mark. The icon
is used

-   to represent the task on the home screen when it is used as a
    [widget or shortcut]{#widgets.html}
-   when the task is [turned into and app](#appcreation.html)
-   for easier identification of the task within the Tasker UI

#### Deleting Tasks

Named tasks can only be deleted via the *Delete* button on the [Task
Edit](#activity_taskedit.html) screen. Unnamed tasks are deleted
automatically when the profile they are part of is deleted, or a named
task is selected for that profile.

Named tasks cannot be deleted while a profile still refers to them.

When a task is deleted that is referred to by a previously created named
widget or task, the widget will stop working.

Android does not allow Tasker to automatically remove the widget from
the Home Screen.

[]{#scheduling}

#### Task Scheduling

When there is a single task waiting to be executed, it\'s actions are
executed one-by-one until finished.

When there are several tasks in the queue at once, it\'s important to
understand how they are handled:

-   only **one action** from the same [action group](#actiongroups) can
    be executed at once to prevent interference
-   the task in the queue with the **highest priority** goes first and
    blocks lower priority tasks
-   tasks with the **same priority** take turns executing an action
    each, starting with the most recent addition to the queue **unless**
    one task is a child of the other (started via [Perform
    Task](#help/ah_run_task.html)), in which case the child executes
    first.

Task priority, 0 to 50 inclusive with 0 being lowest, is determined
according to whatever causes the task to run.

-   enter tasks run by profiles have the priority specified in Profile
    Properties, the default is 5.
-   exit tasks run by profiles have the priority specified in Profile
    Properties **plus 1001**, the default is therefore 1016
-   tasks run by **widgets** or **shortcuts** can be set in Task
    Properties when the widget/shortcut is created, the default is 7
-   tasks run from scene elements have priority **one more** than the
    task which showed the scene
-   tasks run from the **Test** button in the task edit screen have
    priority 100 by default, long-click the play buttin to choose a
    different one.

A couple of guidelines are:

-   if you want a particular task to always interrupt other tasks that
    may be executing, give it a high priority
-   if you have a task that lasts for a while, you probably want to give
    it a low priority so it doesn\'t block other tasks from being
    executed.

[]{#actiongroups}

#### Action Groups

Actions are divided into groups for scheduling based on how long the
action takes to execute and what it interferes with:

-   **Speech**: `Say, Say To File`
-   **Javascript**: `Javascript`
-   **Fix**: `Get Location`
-   **Voice**: `Get Voice`
-   **Proxy**:
    `Display Brightness, Query Action, Photo, Photo Series, Photo Series Time`
-   **Proxy Scene** Enter Key, Menu, Popup, Popup Task Buttons, Variable
    Query
-   **Other Scenes**: the name of the scene being shown
-   **Normal**: all other actions

#### Wait Actions

`Wait` and `Wait Until` are special cases. The rules for handling them
are complicated and try to do the \'best thing\' dependent on the
situation.

#### Same-Profile Tasks

Tasks launched by the same profile by default always execute in the
order in which they are launched. Other tasks from the same profile
remain completely inactive until any previous task from the same profile
is complete. The main purpose of this rule is to correctly handle rapid
changes in a profile\'s activation state.

This behaviour can be disabled by deselecting *Enforce Task Order* in
the Profile Properties dialog.

##### Example

This example demonstrates the effect of Enforce Task Order and shows
also how sub-tasks launched by [Perform Task](#help/ah_run_task.html)
are handled.

    Profile: Example
    Enter Task: Enter1
       Perform Task, Enter2
    Exit Task: Exit1
       Perform Task, Exit2

**With** Enforce Task Order:

Enter1 and Enter2 are both guaranteed to finish before either of Exit1
or Exit2. Whether Enter1 or Enter2 finishes first depends on their
relative priority. Same for Exit1 and Exit2. All 4 tasks compete based
on priority against tasks from other profiles. Exit tasks have a higher
base priority so will finish before Enter tasks.

**Without** Enforce Task Order:

If the profile goes active and inactive quickly, Enter1, Enter2, Exit1
and Exit2 will all compete purely on priority. Since Exit tasks have
higher base priority, Exit1 and Exit2 will probably finish first.

[]{#collisions}

#### Collisions

Sometimes a task needs to be executed of which a copy is already
executing. This can happen quite often e.g. when a task widget button is
pressed twice quickly, or a task contains a Wait action or shows a
dialog.

The way in which a collision is resolved is specified by the user. There
are 3 options:

-   the **new** task is ignored (the default)
-   the **existing** task is aborted and the new one starts from its
    first action. The current action of the previous task is finished if
    it is already being carried out.
-   both tasks run simultaneously

Note that the last option can lead to several copies of a task all
running at once.

[]{#stayawake}

#### Behaviour When Device Off

By default, after a few seconds of the screen being off Android will
power down the device and thus running tasks will be paused.

In the Task Properties dialog, it can be specified that a task should
keep running.

##### Dialogs

An action that shows some kind of dialog (such as a lock screen, popup,
menu) blocks execution of any other action, even one of higher priority,
until it is completed.

##### Wait / Wait Until

These are exceptions. A wait action can be interrupted by another
task\'s action and will resume (if necessary) when the other task\'s
action is finished.

#### Killing Tasks

If you have a problem with a task that never ends, you can manually end
tasks with the **Kill** button in the Task Edit screen.
[]{#activity_taskedit.html}

Task Edit ![](icon_tasker.png)
------------------------------

This dialog allows editing of the actions in a task, and various
properties of the task.

#### Action List

The main part of the screen is a list of the actions contained in the
currently selected task.

-   **Click** on an action to edit it
-   **Long-click** on an action to enter multi-select mode and for
    options
-   **Click-and-drag** at the right hand side of the action to move it
    around e.g. to the trash bin

If a particular action is a [setting](#settings.html), that will be
indicated on the right-hand side of the action.

##### Condition and Block Colours

If an action has had a condition set for it, the condition is shown with
a red or green bar next to it; **green** indicates that the condition is
currently met (the action will execute), **red** indicates the opposite.
Of course, when the task is executed it could be that it changes things
so that the condition is then met.

If an action is within an `If / End If` block it is displayed indented
with a red or green margin. The colours have the same significance as
for individual action conditions described above.

If an action is within a [For loop](#for) it is displayed indented with
a **grey** margin. If the `For` action has a condition on it which is
not met, the margin will be **red** (because the actions in the loop
will never execute, like an `If / End If` block).

#### Task Control Row

Directly underneath the action list is a row of buttons with icons.

##### Play/Step Buttons

Run the task.

The Play button will run the task right through till the end, the Step
button will run a single task each time it\'s pressed.

During tasting, the current action is shown with an arrow and the next
task with a faded arrow.

The success of each action is shown when it finishes with a green
(action OK) or red (action failed) circle.

Tasks run via the Play or Step button have priority **10**.

Long-click the Play or Test button to manually set the priority of the
task when it runs **during the test**. Please be aware that setting a
lower priority can result in interference from other tasks running which
are e.g. triggered by profiles.

Tip: pressing the Step button while a task is playing will cause the
task to switch to stepping mode when the current action finishes.

##### Add Action Button

Add an action to the end of the task. When in multi-select mode, adds an
action after the current selected item, if only one item is selected.

##### Task Properties

Show extended properties for the task. Not visible in [Beginner
Mode](#beginner.html).

##### Task Icon

Shows the icon associated with the task. Clicking on it allows changing
of the icon.

#### Menu Items

##### Action Labels

Toggle display of action labels (which are specified in the [Action
Edit](#activity_actionedit.html) screen).

##### Param Names

Toggle display of the name of each action parameter.

##### Icons

Toggle display of the setting/action indicator icon for each action.
[]{#activity_actionedit.html}

Action Edit ![](icon_tasker.png)
--------------------------------

This screen allows configuration of a single action in a Task.

#### General

At top left is the name of the action. Tapping on this allows it to be
changed.

Bottom-right is a help button. Please be sure to read the action help of
every action before you use it for the first time, there may be e.g.
device specific restrictions you should know about.

#### Action Parameters

A *parameter* gives extra detail about how the action is to be carried
out.

##### Text Parameters

-   are sometimes optional: in that case the text *Optional* will appear
    as a hint unless the entry box has already been filled in
-   sometimes have a dialog to help you fill in a value which you can
    access by clicking the magnifying glass icon next to them
-   can have [variables](#variables.html) automatically inserted by
    clicking the tag icon next to them.

##### Numeric Slider Parameters

Clicking the arrows icon next to numeric sliders allows you to specify
the number textually or use a [variable](#variables.html) for the
parameter instead, if the value will not be known until the action is
actually executed.

##### *If* (Condition) Parameter

*(most actions)*

Allows specification of one or more conditions which must match if this
action is to execute.

Single conditions consist of a *left-hand side* (usually a variable
name), an *operator* and a *right-hand-side* for example
`%number, Equals, 1` indicates that the action will be executed if the
variable %number has the value 1.

When more than one condition is specified, they must be combined via
*And* (all conditions must be true), *Or* (at least one condition must
be true) or *Xor* (exactly one must be true). These \'combiners\' are
called *boolean operators*.

Usually, 2 or 3 conditions will be combined with all *And*s or all
*Or*s, but in order to allow more complicated logic, Tasker also offers
*And* and *Or* in high-precedence versions. Of the 4 boolean operators
which are available, the selection goes from low to high precedence
ones.

The higher the precedence of a boolean operator, the further to the
right it is shown. This enables the logical groups to be visualised.

Examples:

`True | False & True | False` is the same as
`( True | False ) & ( True | False )` so is **True**.

`True & False | True & False` is the same as
`True & ( False |  True ) & False` so is **False**.

`True & False | True |+ False` is the same as
`True & ( False | ( True | False ) )` so is **True**.

Note that the order of the conditions can mean that some conditions are
never evaluated. For instance, when two conditions are present and the
one above an *And* is **false** then the condition below it will never
be evaluated. This can be advantageous if the second condition takes
relatively more resources e.g. involves matching against a lot of text.

Please see the section on [Flow Control](#flowcontrol.html) for more
information.

##### *Continue Task After Error* Parameter

*(selected actions only)*

By default, if an action fails with an error (e.g. the user specified to
delete a file that doesn\'t exist) Tasker will stop the task immediately
and the remaining actions will never be executed.

This parameter specifies that the task should continue even if this
action fails.

In addition, if it\'s checked, errors will be logged in the system log
as diagnostics instead of errors and error popups will be surpressed.

##### *Label* Parameter

*(all actions)*

A label for the action which is shown on the Task Edit screen. This
parameter could also be used to add comments to actions to help
understand how the task works.

Labels are also used with `Goto` actions to jump from one part of the
task to another.

#### Menu Options

##### *Search*

Search for and jump to a specified action. The entered term is searched
against action properties in the following order:

1.  the action number
2.  the action label if present
3.  the action name
4.  the action description, including the action parameter contents

The matching is case-insensitive. Searching starts from the current
action and wraps around. Only the header action (

If

or *For*) of closed blocks is searched.

[]{#scenes.html}

Scenes ![](icon_tasker.png)
---------------------------

### Introduction

A *scene* is a graphical user-interface consisting of a collection of
*elements* to which tasks can be attached to be run when the user
interacts with them e.g. by tapping them.

Tasker uses scenes for things like popup dialogs, menus and getting
input from the user but scenes can actually be displayed by the user
whenever desired, meaning they can be used for things like creating
simple user-designed applications or showing extra controls over the top
of (selected) existing applications.

Scenes are completely user-customisable via a drag-and-drop graphical
[editor](#activity_sceneedit.html).

### Displaying Scenes

#### Actions: `Enter Key, HTML Popup, Lock, Menu, Popup, Popup Task Buttons` and `Variable Query`

These actions use a **built-in scene** with the same name as their
action. After creating a task with such an action, the associated scene
can be found under the **Scenes** tab on the main Tasker screen. That
scene can be edited so that e.g. all `Popup` actions have the same style
because they all use the same scene.

The parameters specified in the action are applied to the scene before
it is show. For instance, if the scene has a *Title* element it will be
set to the title specified in the action and the scene resized
appropriately.

It might be desirable to have a different style for e.g. some `Popup`
actions, in which case:

1.  clone the built-in scene long-clicking on it in the **Scenes** tab
2.  edit the clone to change the contents
3.  in a `Popup` action, specify that the cloned scene should be used by
    clicking on the **Layout** parameter in the action edit screen.

#### Scene Category Actions: `Create Scene, Show Scene, Hide Scene, Destroy Scene`

These allow a completely free hand over when a scene should be displayed
and it\'s life-cycle. They all act on scenes pre-designed in the
**Scenes** tab.

Usually, only `Show Scene` and `Destroy Scene` will be used, however
sometimes it\'s useful for a scene to be created but not visible to the
user:

-   by hiding a scene instead of completely destroying it, the settings
    of the elements are retained for next time it is shown
-   the values of the elements in the scene can be changed to track
    certain events so that the scene can be immediately displayed when
    required without any configuration

### Scene Elements

Each scene is comprised of a number of elements.

An element has three main components:

#### Geometry

It\'s size and position on the screen. An element\'s geometry is
specified in the [scene editor](#activity_sceneedit.html).

#### Content

How it looks on the screen.

Specified under the **UI** tab in the element editor. Some elements also
have a Background tab. A Menu element has an additional Items tab.

#### Event Tasks

What should happen when the user interacts with the element.

Specified under the right-most tabs after clicking on the element in the
element editor. There are different events depending on the type of
element. For instance, a Button has tap and long-tap events while a
Slider has a value-set event.

Event tasks are run at priority one higher than the task which displayed
the scene

Local variables set by event tasks are visible to all tasks in the same
scene.

### Scene Element Actions

In the **Scenes** action category, there are several actions for setting
the properties of scene elements. You can use these for a wide variety
of purposes e.g.

-   when a slider value is set, change the zoom of an associated map
    element
-   set the size of an element depending on current light level
-   animate elements around a scene

Note that actions that affect scene elements can only be used when the
scene has already been created (via `Create Scene` or `Show Scene`). The
scene does not have to be visible.

[]{#activity_sceneedit.html}

Scene Edit ![](icon_tasker.png)
-------------------------------

The scene editor is used for designing custom scenes.

The editor consists of three areas:

### Display Area

The main part of the editor, where the position and size of elements are
arranged. The display area has two modes dependent on the setting of the
magnifying glass icon in the corner.

#### Preview Mode

This mode shows the scene as it will appear when displayed.

-   Click-and-drag on the **edge** of the scene to resize it

#### Editing Mode

This mode is zoomed to make editing easier.

-   **Long-click** on an **empty** area to create a new element
    positioned there
-   **Long-click** on an **element** to get options for the element
-   **Click** on an **element** to edit it.
-   **Click-and-drag** on the **centre** of an element to move it
-   **Click-and-drag** on the **edge** of an element to resize it

When moving and resizing, the sides of elements are snapped to a grid to
make alignment easier. The grid size is unique to each scene and can be
changed via **Menu / Grid Size**.

### Tool Bar

#### Touch Mode

There are four touch modes which decide the effect of taps on the
display area. *Normal Mode* is described above. *Edit Mode* is the same
as *Normal Mode* except that all controls except the Touch Mode selector
are hidden to allow access to small controls along the scene edges.
*Move Mode* is intended to make it easier to reposition elements.
*Resize* mode is for making resizing easier.

#### Element Picker

Allows selection of an element by name. This is most useful when an
element is difficult to directly click on due to other elements or
because it\'s very small.

Both short and long clicks on the element names behave the same as short
and long clicks on the element itself.

#### Undo

Allows undo of all operations, up to 20 steps in the past.

#### New Element

Create a new element in the **middle** of the scene. Useful if the scene
is already cluttered with a lot of elements so there is no free space.

### Menu Options

#### Background Colour

A complex background can be set by long-tapping an element and
specifying it as the [background element](#back). If a uniform colour is
sufficient, it can also be specified with this menu option.

However, there is a special case where it\'s a good idea to specify a
background colour even if you already have a background element. A scene
is resized to fit the container into which it\'s placed, but in some
cases (e.g. when it is shown as a full screen activity) there will be
margins left on one side of the container because the *aspect ration* of
the scene (the relative size of its width and height) of a scene is
never changed. In such a case, the margins are coloured with the
background colour specified here.

### Element Long-Click Options

[]{#back}

#### Set Background

An element which is set as the scene background is resized to always
fill the whole scene and interferes less with selection of other
elements. To reverse this, long-tap on it and select **Set Foreground**.

#### Pin

When an element is positioned satisfactorily, it can be pinned to make
it easier to select and manipulate other elements. To reverse this,
long-tap on it and select **Unpin**.

#### Set Depth

Each element has a particular depth which is unique to it. Deeper
elements are obscured by shallower elements which overlap them.

### Orientation

The geometry (**position** and **size**) of each element can be
configured independently for portrait and landscape display orientations
by rotating the device to the desired orientation in the editor.

If no geometry is configured for a particular orientation when the scene
is displayed, Tasker will attempt to fit the elements into the scene
based on the geometry of the elements in the other orientation.

[]{#element_button.html}

Scene Element: Button ![](icon_tasker.png)
------------------------------------------

#### About

A standard Android button enhanced to allow display of an icon, text or
both.

#### Parameter: Position

If both a *Label* and *Icon* are specified, the *Position* parameter
refers to the position of the *Label*. The *Icon* is then placed
opposite the *Label*.

#### Events

-   [Tap, Long Tap](#tap)

#### Related Actions

-   [Element Image](#help/ah_scene_element_image.html)
-   [Element Text](#help/ah_scene_element_text.html)
-   [Element Text Colour](#help/ah_scene_element_text_colour.html)
-   [Element Position](#help/ah_scene_element_position.html)
-   [Element Focus](#help/ah_scene_element_focus.html)
-   [Element Size](#help/ah_scene_element_size.html)
-   [Element Visibility](#help/ah_scene_element_visibility.html)
-   [Element Depth](#help/ah_scene_element_depth.html)
-   [Test Element](#help/ah_scene_element_test.html)

#### See Also

The [Element Editor](#activity_elementedit.html) screen.
[]{#element_checkbox.html}

Scene Element: CheckBox ![](icon_tasker.png)
--------------------------------------------

#### About

A standard Android checkbox to indicate e.g. an item selection state.

#### Events

-   [Change](#checkchange)

#### Related Actions

-   [Element Value](#help/ah_scene_element_value.html)
-   [Element Focus](#help/ah_scene_element_focus.html)
-   [Element Position](#help/ah_scene_element_position.html)
-   [Element Size](#help/ah_scene_element_size.html)
-   [Element Visibility](#help/ah_scene_element_visibility.html)
-   [Element Depth](#help/ah_scene_element_depth.html)
-   [Test Element](#help/ah_scene_element_test.html)

#### See Also

The [Element Editor](#activity_elementedit.html) screen.
[]{#element_doodle.html}

Scene Element: Doodle ![](icon_tasker.png)
------------------------------------------

#### About

A *Doodle* is an image created by the user with a simple finger-painting
screen.

Click the *Doodle* parameter to edit the doodle.

Doodles are stored on external storage in the directory
`/sdcard/Tasker/cache/doodles` in case they are masterpieces which
demand publishing.

#### Events

-   [Tap, Long Tap](#tap),
-   [Stroke](#stroke)

#### Related Actions

-   [Element Position](#help/ah_scene_element_position.html)
-   [Element Size](#help/ah_scene_element_size.html)
-   [Element Focus](#help/ah_scene_element_focus.html)
-   [Element Visibility](#help/ah_scene_element_visibility.html)
-   [Element Depth](#help/ah_scene_element_depth.html)
-   [Test Element](#help/ah_scene_element_test.html)

#### See Also

The [Element Editor](#activity_elementedit.html) screen.
[]{#element_image.html}

Scene Element: Image ![](icon_tasker.png)
-----------------------------------------

#### Events

-   [Tap, Long Tap](#tap)
-   [Stroke](#stroke)

#### Related Actions

-   [Element Image](#help/ah_scene_element_image.html)
-   [Element Focus](#help/ah_scene_element_focus.html)
-   [Element Position](#help/ah_scene_element_position.html)
-   [Element Size](#help/ah_scene_element_size.html)
-   [Element Visibility](#help/ah_scene_element_visibility.html)
-   [Element Depth](#help/ah_scene_element_depth.html)
-   [Test Element](#help/ah_scene_element_test.html)

#### See Also

The [Element Editor](#activity_elementedit.html) screen.
[]{#element_shape.html}

Scene Element: Oval / Rectangle ![](icon_tasker.png)
----------------------------------------------------

#### About

Shape elements are intended mostly for decoration but can also be used
as invisible \'launchpads\' for e.g. stroke events.

#### Events

-   [Tap, Long Tap](#tap)
-   [Stroke](#stroke)

#### Related Actions

-   [Element Focus](#help/ah_scene_element_focus.html)
-   [Element Position](#help/ah_scene_element_position.html)
-   [Element Size](#help/ah_scene_element_size.html)
-   [Element Visibility](#help/ah_scene_element_visibility.html)
-   [Element Depth](#help/ah_scene_element_depth.html)
-   [Test Element](#help/ah_scene_element_test.html)

#### See Also

The [Element Editor](#activity_elementedit.html) screen.
[]{#element_map.html}

Scene Element: Map ![](icon_tasker.png)
---------------------------------------

#### About

A *Map* element is a view onto the same kind of map window used by
Google Maps but is much more automateable than the standalone app.

Map elements cannot appear in Overlay scenes.

When shown with the display type *Dialog, Dim Behind* or *Dialog, Dim
Behind Heavy* the map will also be dimmed starting with Tasker 4.5, an
unfortunate side-effect of the dimming method.

#### Related Actions

-   [Element Add GeoMarker](#help/ah_scene_element_add_geomarker.html)
-   [Element Delete
    Geomarker](#help/ah_scene_element_delete_geomarker.html)
-   [Element Map Control](#help/ah_scene_element_map_control.html)
-   [Element Focus](#help/ah_scene_element_focus.html)
-   [Element Position](#help/ah_scene_element_position.html)
-   [Element Size](#help/ah_scene_element_size.html)
-   [Element Visibility](#help/ah_scene_element_visibility.html)
-   [Element Depth](#help/ah_scene_element_depth.html)
-   [Test Element](#help/ah_scene_element_test.html)

#### Events

-   [Tap, Long Tap](#tap)

#### See Also

The [Element Editor](#activity_elementedit.html) screen.
[]{#element_menu.html}

Scene Element: Menu ![](icon_tasker.png)
----------------------------------------

#### About

A menu displays a variable selection of items and can have a separate
action, text and icon defined for each item in the list.

#### Parameter: Source

Items can either be filled manually or from a variable array. In the
case of an array, the list shows all the items starting at the first
index; %var(1) %var(2) etc.

In the case of manual specification, click on the *Items* tab in the
element editor to specify the items.

#### Parameter: Selection Mode

There are three selection modes:

-   single: tapping an item deselects any other item selected
-   multi: several items can be selected at the same time
-   none: tapping an item never selects it

Selected items are highlighted. There are two ways to find out the
selected items:

-   assign a task under the **Item Tap** element event tab. Every time
    an item is tapped, the selected items are available in the local
    variable **%select\_indices**
-   query the selected items at any time using the action
    `Element Get Value`

#### Parameter: Item Layout

Specifies how each item within the list will be displayed. Each item has
exactly the same layout. To change the layout, click on it. Each Menu
element has it\'s own unique item layout.

There are two pre-defined layouts you can choose from (click the
magnifying glass icon). \'Icon and Text\' is the default.

#### Events

-   [Item Tap, Item Long Tap](#tap)

#### Related Actions

-   [Menu](#help/ah_menu.html)\
    allows easy display of a dialog with a title and showing a single
    menu element.\
    When using the Menu action, items are configured in the action
    itself rather than in the Menu element.
-   [Element Position](#help/ah_scene_element_position.html)
-   [Element Size](#help/ah_scene_element_size.html)
-   [Element Visibility](#help/ah_scene_element_visibility.html)
-   [Element Depth](#help/ah_scene_element_depth.html)
-   [Test Element](#help/ah_scene_element_test.html)

[]{#element_picker.html}

Scene Element: Number Picker ![](icon_tasker.png)
-------------------------------------------------

#### About

Allows selection of a numeric value from a specified range. Above and
below the selected number the element can be long-clicked to advance the
number series, or the number can be scrolled or flung up or down by
touch.

#### Events

-   [Value Selected](#value)

Note that the Value Selected event will only fire when scrolling has
**finished** i.e. when the user has lifted their finger and the Number
Picker has come to rest.

In contrast, long-clicking will produce an event for each number that is
cycled through.

#### Related Actions

-   [Element Value](#help/ah_scene_element_value.html)
-   [Element Focus](#help/ah_scene_element_focus.html)
-   [Element Position](#help/ah_scene_element_position.html)
-   [Element Size](#help/ah_scene_element_size.html)
-   [Element Visibility](#help/ah_scene_element_visibility.html)
-   [Element Depth](#help/ah_scene_element_depth.html)
-   [Test Element](#help/ah_scene_element_test.html)

#### See Also

The [Element Editor](#activity_elementedit.html) screen. The [Slider
Element](#element_slider.html) screen. []{#element_slider.html}

Scene Element: Slider ![](icon_tasker.png)
------------------------------------------

#### About

A standard Android \'seek bar\' enhanced to allow specification of the
thumb icon and display indicators for the min, max and current values.

#### Events

-   [Value Selected](#value)

#### Related Actions

-   [Element Value](#help/ah_scene_element_value.html)
-   [Element Focus](#help/ah_scene_element_focus.html)
-   [Element Image](#help/ah_scene_element_image.html)
-   [Element Position](#help/ah_scene_element_position.html)
-   [Element Size](#help/ah_scene_element_size.html)
-   [Element Visibility](#help/ah_scene_element_visibility.html)
-   [Element Depth](#help/ah_scene_element_depth.html)
-   [Test Element](#help/ah_scene_element_test.html)

#### See Also

-   [Element Editor](#activity_elementedit.html) screen.
-   [Number Picker Element](#element_picker.html) screen.

[]{#element_spinner.html}

Scene Element: Spinner ![](icon_tasker.png)
-------------------------------------------

#### About

A spinner allows selection of a single item from a menu. Only the
currently selected item is displayed. When tapped, the menu is shown,
when an item is selected, the menu is hidden again.

#### Parameter: Source

Items can either be filled manually or from a variable array. In the
case of an array, the list shows all the items starting at the first
index; %var(1) %var(2) etc.

In the case of manual specification, click on the *Items* tab in the
element editor to specify the items. The default (initially showing
item) is selectable via the checkboxes on the left.

Note that by default, a spinner is text only. To show also icons,
long-click the icon element in the Item Layout (see below) and select
*Show*.

#### Parameter: Item Layout

Specifies how each item within the list will be displayed. Each item has
exactly the same layout. To change the layout, click on it. Each Spinner
element has it\'s own unique item layout.

#### Parameter: Popup Background Colour

Specifies the background colour of the window which displays the
possible spinner values when the spinner is clicked.

#### Events

-   [Item Select](#itemselect)

#### Related Actions

-   [Element Focus](#help/ah_scene_element_focus.html)
-   [Element Position](#help/ah_scene_element_position.html)
-   [Element Size](#help/ah_scene_element_size.html)
-   [Element Visibility](#help/ah_scene_element_visibility.html)
-   [Element Depth](#help/ah_scene_element_depth.html)
-   [Element Value](#help/ah_scene_element_value.html)
-   [Test Element](#help/ah_scene_element_test.html)

[]{#element_text.html}

Scene Element: Text ![](icon_tasker.png)
----------------------------------------

#### About

Displays non-editable text for labels etc.

#### Parameter: Position

Where to place the text within its box

#### Parameter: Text Width Scale

A horizontal scaling factor to squash up (negative values) or stretch
(positive values) the text.

#### Parameter: Font

Specifies a custom font file to use for the text instead of the system
default. Many thousands of free font files (with the filename ending in
`.ttf` are available for download on the Internet.

#### Parameter: Vertical Fit Mode

What to do when the height of the text to display is greater than the
height of the element.

#### Parameter: Text Format

Specifies how the text should be displayed.

-   *Plain Text*\
    just show the text as-is
-   *Text With Links*\
    things that look like links are clickable (though not in the scene
    editor) e.g. URLs, email addresses, phone numbers
-   *HTML*\
    interpret the text as a piece of HTML. Only simple tags are
    interpreted and no images are displayable.

#### Events

-   [Tap, Long Tap](#tap)
-   [Stroke](#stroke)

#### Related Actions

-   [Element Text](#help/ah_scene_element_text.html)
-   [Element Text Colour](#help/ah_scene_element_text_colour.html)
-   [Element Border](#help/ah_scene_element_border.html)
-   [Element Back Colour](#help/ah_scene_element_background_colour.html)
-   [Element Focus](#help/ah_scene_element_focus.html)
-   [Element Position](#help/ah_scene_element_position.html)
-   [Element Size](#help/ah_scene_element_size.html)
-   [Element Visibility](#help/ah_scene_element_visibility.html)
-   [Element Depth](#help/ah_scene_element_depth.html)
-   [Test Element](#help/ah_scene_element_test.html)

#### See Also

The [Element Editor](#activity_elementedit.html) screen.
[]{#element_textedit.html}

Scene Element: TextEdit ![](icon_tasker.png)
--------------------------------------------

#### About

A standard Android box for text entry.

TextEdit elements cannot appear in Overlay scenes.

#### Parameter: Text

This is the **initial** text to show in the element, with any variables
replaced.

Note that if *Text* contains a variable, any changes in the variable
value once the element have been shown will **not** be reflected in the
visible contents of the text box. The reason for this limitation is that
the user can change the text box contents by typing at any time so it is
not possible to track where the variable contents should be, or even if
they are still there at all.

#### Parameter: Position

Where to place the text within its box

#### Parameter: Text Width Scale

Horizontal scaling factor to squash up (negative values) or stretch
(positive values) the text.

#### Events

#### Related Actions

-   [Element Text](#help/ah_scene_element_text.html)
-   [Element Text Colour](#help/ah_scene_element_text_colour.html)
-   [Element Border](#help/ah_scene_element_border.html)
-   [Element Back Colour](#help/ah_scene_element_background_colour.html)
-   [Element Focus](#help/ah_scene_element_focus.html)
-   [Element Position](#help/ah_scene_element_position.html)
-   [Element Size](#help/ah_scene_element_size.html)
-   [Element Visibility](#help/ah_scene_element_visibility.html)
-   [Element Depth](#help/ah_scene_element_depth.html)
-   [Test Element](#help/ah_scene_element_test.html)

#### See Also

The [Element Editor](#activity_elementedit.html) screen.
[]{#element_toggle.html}

Scene Element: Toggle ![](icon_tasker.png)
------------------------------------------

#### About

A button with two states with an indicator light and a label for each
state.

#### Events

-   [Change](#checkchange)

#### Related Actions

-   [Element Value](#help/ah_scene_element_value.html)
-   [Element Focus](#help/ah_scene_element_focus.html)
-   [Element Position](#help/ah_scene_element_position.html)
-   [Element Size](#help/ah_scene_element_size.html)
-   [Element Visibility](#help/ah_scene_element_visibility.html)
-   [Element Depth](#help/ah_scene_element_depth.html)
-   [Test Element](#help/ah_scene_element_test.html)

#### See Also

The [Element Editor](#activity_elementedit.html) screen.
[]{#element_web.html}

Scene Element: Web ![](icon_tasker.png)
---------------------------------------

#### About

A *Web* element is like a browser window.

#### Parameters: Mode / Source

These parameters determine how the content for the WebView is to be
acquired.

-   *URI*: the *Source* parameter refers to a URI (e.g. http://) from
    which the WebView should retrieve content.
-   *File*: the *Source* parameter contains a local file path from which
    the WebView should retrieve content.
-   *Direct*: the *Source* parameter directly specifies the HTML and/or
    JavaScript content to load

#### Parameter: Allow Phone Access

If checked, the content in the WebView is allowed access to local device
files, data stores, and can run JavaScript, including Tasker\'s
[JavaScript Interface functions](#javascript.html).

This is a very powerful feature, since it allows a WebView to present a
complex and highly functional interface, but should only be enabled if
you entirely trust the source of the specified content.

Note that references to local files must be absolute (include the
directory) even when the WebView source is specified as a file e.g.
`/sdcard/myfiles/scripts.js`

#### Parameter: Self Handle Links

If checked, links will be handled by the WebView itself, otherwise they
will be passed to the system for handling e.g. by the default web
browser.

#### Parameter: Support Popups

If this parameter is **not** checked, HTML elements which generate a
popup window, for instance selection elements in forms, will crash the
scene when they are activated.

If this parameter **is** checked, when the scene is hidden and reshown,
some of its state will be lost e.g. which part of the page was being
displayed, zoom level.

#### Events

#### Related Actions

-   [Element Web Control](#help/ah_scene_element_web_control.html)
-   [Element Focus](#help/ah_scene_element_focus.html)
-   [Element Position](#help/ah_scene_element_position.html)
-   [Element Size](#help/ah_scene_element_size.html)
-   [Element Visibility](#help/ah_scene_element_visibility.html)
-   [Element Depth](#help/ah_scene_element_depth.html)
-   [Test Element](#help/ah_scene_element_test.html)

#### See Also

The [Element Editor](#activity_elementedit.html) screen.
[]{#activity_elementedit.html}

Scene Element Edit ![](icon_tasker.png)
---------------------------------------

Allows configuration of the properties of a scene element. The different
types of property are divided into tabs.

-   [UI](#ui)
-   [Items](#items)
-   [Background](#background)
-   [Event](#event)
    -   [Change](#checkchange)
    -   [Focus](#focus)
    -   [Tap, Long Tap](#tap)
    -   [Item Select](#itemselect)
    -   [Value Selected](#value)
    -   [Item Tap](#itemtap)
    -   [Stroke](#stroke)
    -   [Text Changed](#text)
    -   [Link Tap](#linktap)
    -   [Page Loaded](#pageloaded)
    -   [Video](#video)

Not all elements have all tabs.

[]{#ui}

### UI

For the most part, configures the visual style of the element.
[]{#items}

### Items

Only relevant to Menu and Spinner elements.

Each row configures an item in the menu/spinner. Starting from the left,
the controls are:

-   **selection checkbox**\
    this is only present when *Selection Mode* is set to **Single** or
    **Multi**. It stipulates whether the item will be shown as selected
    when the menu is displayed.
-   **icon button**\
    the icon to show for the item. If you don\'t want to show an icon,
    hide the icon element in the Layout parameter in the UI tab
-   **label text**\
    the label to show for the item. If you don\'t want to show a label,
    hide the label element in the Layout parameter in the UI tab
-   **action button**\
    an action to run when the item is tapped

To add an item, click the plus button at the bottom of the screen. Items
can be rearranged and deleted by click-and-dragging at the right hand
side.

[]{#background}

### Background

Configures a rectangle shape to be used as the background for the
element when it is displayed. The background will be stretched to fit
the size of the element.

If you want to use an image for a background, create a separate Image
element and place it underneath. []{#event}

### Event Tabs

Event tabs stipulate what Tasker should do when the user interacts with
the element in some way. When the scene is showing, the event will also
occur if an action (probably Element Value) sets the element.

Most events consist only of a task to specify but some allow a filter
specification so that the task only runs if the event matches the
filter.

To help the task to decide what to do with the event and to allow a
single task to handle many different events if desired, Tasker sets
certain local variables which give specific information about it. The
variables are easily accessible by clicking the usual variable tag icon
in any action in the task.

The following variables are available in all such tasks:

-   **%scene\_name**\
    the name of the scene containing the element
-   **%element\_name**\
    the name of the element that the user interacted with (e.g. Button1)
-   **%element\_type**\
    the type of element (e.g. Button)
-   **%event\_type**\
    the name of the event (e.g. Tap)

[]{#text}

#### Text Changed

Elements: *TextEdit*

This event is triggered whenever the text changes e.g. because a letter
key has been pressed while the element had focus.

-   **%new\_val**\
    the new text
-   **%old\_val**\
    the old text

Text entry is buffered so that it may be up to 1 or 2 seconds before new
input is seen, and that input may include several accumulated changes.

[]{#checkchange}

#### Change

Elements: *CheckBox, Toggle*

-   **%new\_val**\
    the new state of the element (*on* or *off*)
-   **%old\_val**\
    the last state (*on* or *off*)

[]{#focus}

#### Focus

This event is triggered when the element gains or loses focus, probably
because the user has tapped it or another focusable element.

Elements: *TextEdit*

-   **%focused**\
    whether the element now has focus (*true*) or not (*false*)

[]{#tap}

#### Tap, Long Tap

Elements: *Button, Doodle, Image, Map, Oval, Rectangle, Text*

In a *Map* element, the following variables are available:

-   **%coord**\
    the latitute,longitude of the tapped location on the map
-   **%label**\
    the label of the tapped GeoMarker (if any). You can add GeoMarkers
    to a Map element with the action Scene / Element Add GeoMarker

[]{#value}

#### Value Selected

Elements: *Number Picker, Slider*

-   **%new\_val**\
    the new value of the element (e.g. 50)
-   **%old\_val**\
    the last selected value (e.g. 43)

[]{#itemtap}

#### Item Tap, Item Long Tap

Elements: *Menu*

-   **%select\_indices**\
    a comma-separated list of currently selected items in the list (e.g.
    3,4)
-   **%select\_labels**\
    a comma-separated list of the labels of currently selected items in
    the list (e.g. Blue,Yellow)
-   **%tap\_index**\
    the index of the item that was tapped to cause this event (e.g. 3)
-   **%tap\_label**\
    the label of the item that was tapped to cause this event (e.g.
    Blue)

[]{#stroke}

#### Stroke

Elements: *Doodle, Image, Oval, Rectangle, Text*

A stroke has two filter parameters.

-   **Direction**\
    the direction from the start point of the stroke to the end point
-   **Length**\
    minimum distance in (approximate) pixels from the start point of the
    stroke to the end point

If either of these parameters don\'t match the event, the task will not
run.

-   **%stroke\_dir**\
    Direction, as described above
-   **%stroke\_len**\
    Length, as described above

[]{#itemselect}

#### Item Select

Elements: *Spinner*

Occurs when a **new** item is selected.

-   **%tap\_index**\
    the index of the item that was selected
-   **%tap\_label**\
    the label of the item that was selected

[]{#linktap}

#### Link Tap

Elements: *WebView*

A Link Tap has two filter parameters:

-   **URL**\
    the URL of the tapped link. If entered, the tapped URL must
    [match](#matching.html) the entry (e.g. http://\*.fruit.com) for the
    task to run
-   **Stop Event**\
    whether to stop the WebView following the link

<!-- -->

-   **%url**\
    URL as described above

[]{#pageloaded}

#### Page Loaded

Elements: *WebView*

-   **%url**\
    the URL of the page (e.g. http://i.hate.fruit/except/mangos.html)

[]{#video}

#### Video

Elements: *Video*

Occurs when the state of the video playback changes.

-   **%event\_subtype**\
    the type of the video event, possible values being: *Prepared,
    BufferStart, BufferEnd, RenderStart, Lagging, Finished*

Note that the **Finished** event will never occur if the Video element
has the `Loop` parameter checked.

[]{#androidpowermanagement.html}

Android System Power Management ![](icon_tasker.png)
----------------------------------------------------

Starting with Android 5.0, many devices will act aggressively to try and
save system battery power. Unless certain steps are taken, Tasker may
not function as expected, either because Android is not sending it the
needed signals in order to save power or because Android is even killing
Tasker.

A commonly noticed symptom is that profiles with Time contexts don\'t
activate or deactivate at the expected time.

### Tasker Run In Foreground Preference

Make sure that `Menu / Prefs / Monitor / General / Run In Foreground` is
**checked**.

### Tasker Reliable Alarms Preference (Android 5.0+)

In `Menu / Prefs / Monitor / General / Use Reliable Alarms`, make sure
**When Off** or **Always** is selected.

If **Never** is selected, Android may group alarms together so they go
off too late. On some devices, Android may even kill Tasker at times if
**Never** is selected.

### Android Battery Optimization Setting

If you have reliability problems, Tasker might need to be whitelisted so
that it is not *battery-optimized* by Android.

###### Vanilla Android Devices (Android 6.0+)

The location of the setting may vary per device, but a common method is
to launch the *Android Settings* app, select **Apps**, click the cog
icon top-right, then **Battery optimization**. Click **All apps**, then
Tasker, then **Don\'t optimize**.

On a rooted device, it may be possible to change the battery optimiation
parameters depending on the functionality you need from Tasker. An
example app for this purpose is
[Naptime](https://play.google.com/store/apps/details?id=com.franco.doze).

###### Samsung (Android 5.1.1+)

Some Samsung devices have a *Smart Manager* app. Launch the app, press
the battery quarter of the screen, under **App optimisation** press
**DETAIL** where you can adjust the settings for each app. It\'s
advisable to disable this for Tasker if you are having reliablity
problems.

###### MIUI 7

Launch Settings app, select Additional settings -\> Battery &
performance -\> Manage apps battery usage -\> OFF []{#appcreation.html}

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
launched. This example assumes that you are in *Beginner Mode*, please
make sure that `Menu / Prefs / UI / Beginner Mode` is checked before you
start.

#### 1. Create A Task

-   **make a new task**\
    click on the Tasks tab then click **+** to add a new task. Give it a
    name *Hello World*.
-   **give the task an icon**\
    long-click on the colourful icon in the bottom right and pick any
    icon
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

When in Beginner Mode, and if you only have one task to install, Tasker
will make guesses about how to configure the resulting app.

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

[]{#app_widgets.html}

Task / Shortcut Widgets ![](icon_tasker.png)
--------------------------------------------

The standard way of running a Tasker task is by attaching it to a
profile which performs it when the profile becomes active. However,
tasks can be directly assigned to icons on the home screen called
*Widgets* or *Shortcuts*.

#### Standard Widgets / Shortcuts

These consist of an icon (the Task icon) with a label (the Task name)
underneath, and look identical to the normal application icons in the
home screen.

Clicking on the icon runs the associated Task.

#### Task Timer Widgets

This type consists of an icon and label, like the standard widgets, but
also has a countdown timer display which counts down Days, Hours,
Minutes and Seconds.

When the timer expires (reaches 0) the associated Task is run.

Tapping on the **icon** of the widget shows a configuration screen where
the timer can be configured.

Tapping on the **timer section** of the widget will pause, restart or
reset the timer, depending on its current state.

Note that the timer updates more rarely when it is still a long way from
expiry in order to minimize power usage.

See Also:

-   action [Timer Widget Control](#help/ah_timer_widget_control.html)
-   action [Timer Widget Set](#help/ah_timer_widget_set.html)
-   action [Test Tasker](#help/ah_test_tasker.html)
-   event [Timer Change](#help/eh_timer_change.html)

#### Creating a Widget / Shortcut

1.  Click and hold in an empty space on the Android home screen, until a
    dialog appears.
2.  Select **Widgets** or **Shortcuts**
3.  Select **Task** or **Task Timer** (Widgets only)
4.  Pick an existing task or create a new one. When creating a new one,
    if you do not expect to change the function of the widget/shortcut
    select One-Time to avoid it cluttering your list of tasks.
5.  Use the [Configuration Screen](#activity_widget_configure.html) to
    configure what should happen when the icon is clicked (or the timer
    expires, in the case of a Task Timer widget). Take care to select an
    appropriate name and icon for the task, as these will appear on the
    home screen.

#### Changing a Widget / Shortcut

The function of widgets or shortcuts created from one-time tasks cannot
be changed, it must be deleted and recreated.

On the other hand, if you associate a normal named task with a widget or
shortcut then when the task is changed (via the Task Edit screen) the
function of the widget or shortcut also changes.

There are also some actions which will change the appearance of any
widget:

-   *Tasker/Change Icon Set*: changes the icon of a set of widgets to a
    different style.
-   *Tasker/Set Widget Icon*: changes the icon of a particular widget
-   *Tasker/Set Widget Label*: changes the label of a particular widget

The latter two you could use to visually show the status of something
e.g. WiFi.

#### Deleting a Widget / Shortcut

Click and hold on the icon in the Android home screen until the dustbin
icon appears. Drag the widget or shortcut icon to the dustbin icon and
release.

[]{#diff}

#### Differences Between Widgets and Shortcuts

##### Advantages of Shortcuts

-   they can be created in some places that widgets can\'t e.g. in home
    screen folders
-   their layout probably better matches the default launcher layout
-   long shortcut labels will scroll when selected in the default
    launcher

##### Advantages of Widgets

-   their icon and label can be dynamically changed after creation via
    the *Set Widget Icon* and *Set Widget Label* actions.
-   timer widgets are possible
-   they can be created without a label

So a shortcut should be used unless the extra configuration
possibilities of a widget are necessary.

#### General

-   you can create as many Tasker widgets and shortcuts as you like. You
    can even have several Timer widgets running at the same time.
-   Timer Task widgets continue to update even when the screen is off.

[]{#beginner.html}

Beginner Mode ![](icon_tasker.png)
----------------------------------

When Tasker first starts, *Beginner Mode* is enabled.

In Beginner Mode, Tasker attempts to simplify things for inexperienced
users, mostly by UI elements which are unlikely to be needed by
inexperienced users.

Beginner Mode can be disabled by unchecking the option:

> ` Menu / Prefs / UI / Beginner Mode`

Some of the changes made in Beginner Mode are:

-   main screen, Variables tab removed
-   main screen, export options removed
-   main screen, project tab not accessible
-   task edit screen, task properties icon removed
-   action edit screen, Label, Continue On Error parameters removed
-   prefs screen, many options removed
-   various places, variable selection not possible

In the userguide, when references are found to things which do not
appear on the screen. It\'s worth disabling Beginner Mode to see if
that\'s the problem.

[]{#cpu.html}

CPU Control ![](icon_tasker.png)
--------------------------------

------------------------------------------------------------------------

**Note:** CPU control can damage your hardware e.g. by the CPU
overheating. As for all Tasker functions, you use it at your own risk!

------------------------------------------------------------------------

### General

On a rooted device (only) Tasker is able to control the CPU frequency of
an Android device to some extent. This is usually done either to save
battery or make the device more responsive depending on the
circumstances.

The relevant control action is **CPU** in the **Misc** category. You can
monitor the current state with the variables **%CPUFREQ** and
**%CPUGOV**.

There are two aspects which can be controlled, the Frequency Range and
the CPU Governor. You will need to experiment with combinations of these
to achieve the best results.

### Frequency Range

You can set the minimum and maximum frequency which the CPU is allowed
to run at. Only certain frequencies are valid, depending on the CPU
(click on the magnifying glass button to select a valid value).

The maximum frequency is probably initially set lower than the maximum
frequency that the CPU can actually handle. If that is the case, you
should be very cautious about setting it higher. Tasker will warn you
the first time you try to do configure an action to do that, assuming
you have not been using other apps to change the maximum frequency
limit.

### CPU Governor

The active *governor* decides what the CPU frequency should be set to at
a particular time, within the frequency range you have set. Each has
it\'s own unique strategy. Here are the most common governors:

-   *Performance*\
    keeps the CPU frequency always at the maximum. Most power-hungry,
    most responsive.
-   *Powersave*\
    keeps the CPU frequency always at the minimum. Least power-hungry,
    least responsive.
-   *Ondemand*\
    when the CPU is needed, immediately sets it to maximum frequency.
    Slowly reduces the frequency back down to the minimum as time
    passes. Responsive, reasonable power usage.
-   *Interactive*\
    like Ondemand, but more responsive with slightly more battery usage.
-   *Conservative*\
    when the CPU load is needed, slowly increases the frequency to
    maximum. When the CPU is no longer needed, immediately drops back to
    the minimum. Less power-usage than Ondemand or Interactive, less
    responsive.

Not all governors are available on all ROM versions. Your device may
also have a governor not described here. You can still set that governor
with Tasker.

### CPU Action Not Available

Common problems are:

-   *root not recognized*\
    Tasker decides that a device is rooted if
    `/system/app/Superuser.apk` is present and `su` is present in one of
    the directories of \$PATH
-   *no available frequencies*\
    Tasker needs to know what frequencies it can set the CPU to. It
    looks for the files
    `/sys/devices/system/cpu/cpuX/cpufreq/scaling_available_frequencies, /sys/devices/system/cpu/cpuX/cpufreq/stats/time_in_state`
    and `/system/etc/scaling_available_frequencies` (in that order). If
    you know what your CPU frequencies are, you could write them
    (space-separated, in numerical order) to the first (any number of
    CPUs) or last (1 CPU only) of those files.

[]{#activity_widget_configure.html}

Widget / Shortcut Configuration ![](icon_tasker.png)
----------------------------------------------------

This screen allows selection and configuration of a task which will be
performed when an icon is clicked on the Android home screen or a timer
elapses.

Please read about [Task Widgets / Shortcuts](#app_widgets.html) before
venturing further on this screen.

The layout of the Configuration screen is nearly identical to that of
the [Task Edit](#activity_taskedit.html) screen.

When creating a Task Timer widget, you\'ll find a different button in
the bottom right which allows initialization of the timer. You can use
this, or wait till the widget is created and then click on the icon to
configure the timer.

[]{#flowcontrol.html}

Flow Control ![](icon_tasker.png)
---------------------------------

#### Overview

Task flow control is based on the following Tasker elements:

-   [variable](#variables.html) values
-   [conditions](#condition) on individual actions
-   *If / Else / Endif* actions for conditional grouping of following
    actions
-   *For / End For* to do a set of actions once for each of a set of
    elements
-   *Goto* action (jumping around within a task).
-   *Perform Task* action (calling other tasks as subroutines)
-   *Stop* action (terminate task immediately)

On the Wiki there is a detailed example of [processing a file\'s
content](http://tasker.wikidot.com/fileproc) \[External Link\].

Tip: if you accidentally create a task that never ends when
experimenting with loops, use the **Kill** button in the Task Edit
screen to end it manually.

[]{#condition}

##### Conditions

Every action can have a condition associated with it (specify this in
the Action Edit screen). If the condition does not match, the action
will be skipped.

A condition consists of an *operator* (\'equals\' etc) and two
*parameters*. The possible operators are:

-   *Equals* (eq)\
    The left parameter is identical to the right parameter.
-   *Doesn\'t Equal* (neq)\
    The left parameter is not identical to the right parameter.
-   *Matches* (\~)\
    The right parameter is a pattern which the left parameter is
    [matched against](#matching.html).
-   *Not Matches* (!\~)\
    As above, but the match must fail for the action to be executed.
-   *Matches Regex* (\~R)\
    The right parameter is a regular expression which the left parameter
    is [matched against](#regex).
-   *Doesn\'t Match Regex* (!\~R)\
    As above, but the match must fail for the action to be executed.
-   *Maths: Less Than* (\<)\
    Both parameters (after variables are substitued) must be numbers or
    mathematical expressions and the first must be **less** than the
    second e.g. `3` \< `6`. See [Maths](#maths.html) for more info.
-   *Maths: Greater Than* (\>)\
    As above, but the first parameter must evaluate to **more** than the
    second.
-   *Maths: Equals* (=)\
    As above, but the two parameters must be numerically equal.
-   *Maths: Isn\'t Equal To* (!=)\
    As above, but the two parameters must be **not** numerically equal.
-   *Maths: Is Even* (Even)\
    The left parameter is an even number.
-   *Maths: Is Odd* (Odd)\
    The left parameter is an odd number.
-   *Is/Isn\'t Set* (Set/!Set)\
    Whether the specified variable has a value or not.

Expressions which are not mathematically valid e.g. *I Am The Walrus \>
5* give a warning and evaluate to **false** when used with a
mathematical operator.

[]{#for}

#### Foreach Loop

Goal: perform a set of actions for each of *apple*, *pear* and *banana*.

  ----------------------- ----------------------- -----------------------
  1.                      **For**\                Loop once for each of
                          %item\                  apple, pear and banana
                          apple,pear,banana       

  2.                        **Action One**\       Example: Flash %item

  3.                        **Action Two**\       \...

  4.                      **End For**\            Return to action 1 if
                                                  we havn\'t done all the
                                                  items yet
  ----------------------- ----------------------- -----------------------

Result: Action One and Action Two are performed three times. The first
time, the variable %item is set to *apple*, the second time *pear* and
the last time *banana*.

You can insert a `Goto` action in the loop with either *Top of Loop*
(meaning continue, skip to the next item straight away) or *End of Loop*
(meaning break, stop without doing any more items) specified.

In adition to simple text, the `For` action accepts any comma-separated
combination of these Items:

-   a numeric range e.g. 1:5 (= **1,2,3,4,5**)
-   a numeric range with a jump e.g. 8:2:-2 (= **8,6,4,2**)
-   a numeric range defined by variable values e.g. *2:%end:%skip*,
    *1:%arr(\#)*
-   a variable name (which is replaced) e.g. %fruit (= **banana** maybe)
-   a [variable array](#arrays) part e.g. *%arr(1:2)* (= %arr1, %arr2 =
    **apple,banana** maybe)

A common case is to use %arr(), which performs a loop for each element
in the array %arr.

**Warning**: the *Values* parameter in the loop is reevaluated with each
iteration of the loop, meaning that modifying array variables which
appear there from within the loop can have unexpected effects. To
workaround that, it can be best to use the following sequence:

       Variables Set, %values, %arrayWhichWillChange()
       Variable Split, %values
       For, %value, %values()
          ...

#### For Loop

Goal: perform a set of actions for each of a set of elements in turn.

Use the *Foreach Loop* as described above, with the *Items* parameter
being a range specification e.g. 4:0, 100, 0:8:2 (=
**4,3,2,1,0,100,0,2,4,6,8**).

#### Until Loop

Goal: perform a Task X until some condition is met (at least once)

  ----------------------- ----------------------- -----------------------
  1.                      **Action One**\         \...

  2.                      **Action Two**\         \...

  3.                      **Goto**\               Return to action 1 if
                          1\                      runtime \< 20
                          If %qtime **\<** 20     
  ----------------------- ----------------------- -----------------------

Result: Action One and Action Two are performed until %QTIME contains
the value 20 or more i.e. until the task has been running for 20
seconds.

Note: %QTIME is a builtin local variable available in all tasks.

#### While Loop

Goal: perform a Task X while some condition is met.

  ----------------------- ----------------------- -----------------------
  1.                      **Stop**\               Stop task if it\'s not
                          \                       crunchy, otherwise go
                          If %fruit **Not         to next action
                          Matches** Apple         

  2.                      **Action One**\         \...

  3.                      **Action Two**\         \...

  4.                      **Goto**\               Go back and see if
                          1                       we\'re still crunchy
  ----------------------- ----------------------- -----------------------

Result: Action One and Action Two are performed while %fruit contains
the value Apple.

#### Counter Loop

Goal: perform a Task X a set number of times.

  ----------------------- ----------------------- -----------------------
  1.                      **Variable Set**\       Initialize the counter
                          %count, 0               

  2.                      **Action One**\         \...
                          Label: *LoopStart*      

  3.                      **Action Two**\         \...

  4.                      **Variable Add**\       Add one to %count
                          %count, 1               

  5.                      **Goto**\               Return to action 2 if
                          *LoopStart*\            count \< 10
                          If %count **\<** 10     
  ----------------------- ----------------------- -----------------------

Result: after initialization of %count to 0, the task loops around the
actions from 2-5 until %count reaches 10, at which point the condition
on the `Goto` fails and the end of the task is reached.

Note that we used a `Goto` to a **labelled** action this time. In all
but the very simplest tasks it\'s better to use a label rather than a
number. It\'s easier to work out what\'s happening and if you insert or
delete actions before the loop starts, the `Goto` will still jump to the
right place.

An alternative way to do this loop is to use a For action specified as
*0:10*.

#### If / Then / Else Condition

Goal: perform certain Tasks if conditions are met, otherwise perform a
different task.

  ----------------------- ----------------------- -----------------------
  1.                      **If**\                 **\~** is short for
                          %fruit **\~** Apple     \'matches\'

  2.                        **Action One**        \...

  3.                        **Action Two**\       \...

  4.                      **Else If**\            an `Else` action with a
                          %fruit **\~** Pear      condition

  5.                        **Action Three**      \...

  6.                      **Else**\               

  7.                        **Action Four**\      \...
  ----------------------- ----------------------- -----------------------

Result: actions One and Two are executed if %fruit matches Apple, Action
Three is executed if %fruit matches Pear, otherwise Action Four is
executed.

Notes:

-   you can have as many `Else If`s in a condition as you like
-   if your condition is in the middle of a more complicated task, you
    need to tell Tasker where the condition ends with an `End If` action

#### Subroutines

To call another task, use the `Perform Task` action. To use it as a
subroutine, you just need to ensure that the priority of the calling
task is less than the priority of the called task (more info:
[scheduling](#scheduling)).

The parent can optionally pass values to the child and receive a result
back:

*Parent Task*

  ----------------------- ----------------------- -----------------------
  1.                        **Perform Task**\     pass 5 to the child,
                          Child,\                 expect a result in
                          Priority, 10\           %result
                          %par1, 5,\              
                          Result Value Variable,  
                          %result                 

  2.                        **Variable Flash**\   what did we get back ?
                          Result: %result         
  ----------------------- ----------------------- -----------------------

*Child Task*

  ----------------------- ----------------------- -----------------------
  1.                        **Variable Set**\     add one to the value
                          %newval, %par1 + 1, Do  that was passed
                          Maths                   

  1.                        **Return**\           set %result in the
                          %newval\                parent to the value of
                                                  %newval in the child
  ----------------------- ----------------------- -----------------------

Result: the parent flashes **6**

Notes:

-   changes made to *%par1* and *%par2* in the child task are **not**
    reflected by their changing in the parent task
-   receiving a return value is optional for the parent, even if the
    child tries to give it one
-   unlike `Return` statements in most computer languages, Tasker\'s
    does not necessarily stop the child task, so if the child and parent
    have the same priority they can both run together and the child
    return several results over time.

[]{#encryption.html}

Encryption ![](icon_tasker.png)
-------------------------------

------------------------------------------------------------------------

**Note:** encryption functions are not available to new customers or in
Play Store versions of Tasker due to US export restrictions.

------------------------------------------------------------------------

Tasker has the ability to encrypt and decrypt files. The relevant
actions are in the *Encryption* action category.

Since decryption can be automated, you have the possibility to keep data
files encrypted outside of certain times, locations, applications etc.

**Warning**: make backups of your files while setting up encryption
until you understand how the system works and are sure the
encryption/decryption process does not cause any corruption.

**Tip**: Tasker does not give progress reports while it\'s doing
encryption, if you want to know when an long decryption operation is
finished, just put a *Vibrate* action or similar after the
*Encrypt/Decrypt* action.

#### Keys

Tasker uses a system of named *keys*. All of the encryption actions can
specify a key name so that you can use different keys with different
files (if desired).

If no key name is specified, **default** is used.

Once a passphrase for a key is entered, the ciphers it generated are
stored in memory until explicitly deleted. The deletion might be
specified after an *Encrypt/ Decrypt File* action, or explicitly with
the *Clear Key* action.

#### Setting Up Encryption

##### General Preferences

First thing to do is check whether the encryption preferences for
**Encryption Iterations** and **Encryption Algorithm** are as you wish.
Once you start encryping things, it\'s time consuming to start again
with new encryption preferences.

The preferences can be found at `Menu / Prefs / Action`. Be sure to have
a look at the help text for each item.

##### Initial Encryption

To start with, you probably want to encrypt some files which are in a
particular directory, which you can then decrypt as they are needed.

To do that, create a task called **Encrypt** or similar and add one or
more *Encrypt File* or *Encrypt Dir* actions to it.

By default, the key is cleared once the file is encrypted, so click
\'Leave Key\' for all but the last action, otherwise you\'ll have to
enter your passphrase for each file.

Next, [create a Tasker shortcut](#app_widgets.html) on the home screen,
using the *Encrypt* task. Tap the widget to encrypt your files. Notice
how you are only asked for the passphrase for the first one, because it
is stored until cleared.

The encrypted files will all receive an extension *.tec* and the
original files are deleted.

#### Decryption

Once you have a set of encrypted files, you need to setup the contexts
in which they will be decrypted.

Create another task called *Decrypt* or similar, and add *Decrypt*
actions to it to match the encrypt actions you setup previously.

**Don\'t** click Clear Key, otherwise you\'ll have to enter your
passphrase for every file (and at the start of encryption).

Now you can use your *Encrypt* and *Decrypt* tasks whenever you like.
For instance, you could create a profile with a Location Context and run
your *Decrypt* task when entering the location (assign Decrypt as the
Enter task) and your *Encrypt* task when leaving the location (assign
*Encrypt* as the Exit task).

**Important**: when you use the *Decrypt* action, it recreates the
original file from the encrypted copy, but does **not** delete the
encrypted version.

When you re-encrypt the file, if it has not changed it is simply deleted
since we already have an encrypted copy. If it **has** changed, it is
re-encrypted.

The purpose of this method of operation is to:

-   avoid the lengthy encryption process when unnecessary
-   prevent accidental double-encryption (encrypting the same file
    twice)

#### *Enter Key* Action

It\'s not always convenient to enter the key at the point at which de-
or encryption takes place. This action allows you to specify the
passphrase for a key at a different point.

If you don\'t wish to double-enter a key when encrypting, you can also
use this action before an Encrypt action and not select *Confirm*.

#### *Set Key* Action

To allow full-automation of en/decryption, the passphrase for a key can
also be set without user interaction. However, this is much less secure
tham `Enter Key` because:

-   the passphrase (as part of the action) is stored in **clear text**
    in device memory and could be read by the root user if the device OS
    is compromised
-   although the passphrase is itself encrypted when a backup is made to
    SD, the parameters for that encryption can be recovered from the
    java code in the Tasker apk file

#### Security

##### Algorithm

Tasker uses symmetric encryption, meaning the same passphrase is used
both to encrypt and decrypt the data.

The default algorithm is \"PBEWithMD5And128BitAES-CBC-OpenSSL\". PBE
stands for password-based encryption, see [RFC
2898](http://www.ietf.org/rfc/rfc2898.txt).

A salt is combined with the passphrase several hundreds of times using
the MD5 algorithm to produce a key which is used for the 128-bit
(default setting) AES algorithm.

The number of iterations and algorithm can be set in
`Menu / Prefs / Action`.

##### Pass Phrases

The longer the passphrase, the more secure the data. Minimally 8
characters of mixed alphabetic, numeric and punctuation characters is
recommended.

##### Clearing Keys

While a key\'s ciphers are in memory, anyone can use the key for
decryption or encryption if your device is lost or stolen, so it may be
wise to setup a *Clear Key* action e.g. when the device is turned off
(see Screen Off in the Event Context) or at a particular time (Time
Context), depending on what you are using the encryption for.

##### Manually Encrypting/Decrypting

You can use Tasker\'s file browser (action Browse Files) to
encrypt/decrypt files directly, via a long-click on the file.
[]{#gestures.html}

Gestures & Shaking ![](icon_tasker.png)
---------------------------------------

#### General

*Gestures* are physical movements of the phone in space, which you first
record by creating a new Event of type *Gesture* (in the *Misc*
category).

When you later redo the gesture while using your device, Tasker will
carry out the corresponding task(s) you have attached to its profile.

Like normal events, gestures are restricted by other contexts. For
example, if you define a profile with a Gesture (Event) and Application
context, the gesture will only be recognized while using that particular
application.

Note: it might be a good idea to disable Tasker before setting up new
gestures, as otherwise you are likely to trigger previously defined
ones.

#### Recording A Gesture

##### Gesture Points

First off, it\'s important to know that Tasker only records the
particular points (which we\'ll call *inflection points*) of a gesture
that you tell it to. For example, recording a gesture involving tilting
the phone to the left and back you would record three inflection points:
the start, the tilted left position, and the end (which is the same as
the start in this case).

You can record as many points as you like, but in general it\'s best to
record only the points where the phone is not moving.

##### Recognized Movements

Tasker will only recognize changes in the **angle** of the phone i.e.
**tilting** to left or right, backwards or forwards, or rotating
vertically. Imagine three poles going through the device in the three
dimensions.

**Moving** the phone backwards or forwards, up or down or side to side
cannot be recognized.

##### Procedure

1.  create a new Gesture Event and give it a name (so you can
    differentiate between different gestures).
2.  put the phone in the position where you want the gesture to start
    and **press-and-hold** the **Call**, **Camera**, **Menu**,
    **Search** or **Volume** hardware buttons to record the point. The
    device will buzz.
3.  move to another (preferably not-moving) point on the path of your
    gesture, and press the button again (not a long press). The device
    will buzz.
4.  on the **final** inflection point, **press-and-hold** the button to
    mark the end of the gesture. The device will buzz again and the
    \"Recorded.\" message should now flash up.
5.  Press **Done**, and add a Vibrate action so you can hear when your
    pattern matches when testing it.

#### Activation

##### Calibration

Before trying to match a pattern, you probably need to calibrate the
hardware in your device. Go to `Menu / Prefs / Monitor / Gestures`.
Press the **Calibrate** button and tilt your phone around in all
directions.

Tasker now has some idea what kind of values the *accelerometer* in your
phone produces.

You only need to calibrate once.

#### Matching

Now exit Tasker and move your device through the points you previously
defined when recording. You should hear the device vibrate when it
reaches the final recorded point.

If not, try playing with the values in the Gesture Settings screen. For
instance, you could try raising the Match Radius (but be careful not to
raise it too much or you\'ll get a lot of matches by mistake).

#### Power Usage

Tasker does its best to limit power usage of gesture monitoring.

-   monitoring for gestures only takes place when all the other contexts
    in a profile are already active (and so the gesture might have a
    chance of activating the profile). For example, if you combine an
    Application and Gesture (Event) context, gesture monitoring will
    only take place while using that particular application.
-   Gesture monitoring is by default turned off when the display is off
    unless a power source is connected to the device, unless specified
    otherwise in `Menu / Prefs / Monitor / Display Off Monitoring`
-   updates from the accelerometer are at the minumum rate until the
    start of a gesture is detected.

[]{#icons.html}

Icons ![](icon_tasker.png)
--------------------------

Tasker can use four categories of icons: [Application](#app),
[Built-In](#builtin), [Ipack](#ipack), [User-Installed](#user).

In some places it\'s also possible to use any image stored on local
media as an icon.

[]{#app}

#### Application Icons

These are taken from applications installed on the device.

Minor note: if the icon of the application changes, an update of
previously created widgets/shortcuts can be forced by creating a single
widget with the new icon and then rebooting.

[]{#builtin}

#### Built-In Icons

These come with Tasker and are kept in the device\'s memory. []{#ipack}

#### Ipack Icon Sets

[Ipack](http://ipack.dinglisch.net) is a free, open format for sharing
of icon sets between Android applications. Ipack icon sets can be either
installed from [Play Store](http://market.android.com/search?q=ipack) or
from the [Ipack website](http://ipack.dinglisch.net/download.html).

When setting an icon, you will notice an item labelled *Download More
Icons*. Clicking on it will use the appropriate source depending on
which version of Tasker you have.

[]{#user}

#### User-Installed Icons

You can also install your own icons directly into Tasker\'s icon
directory `/sdcard/Tasker/.icn/`. Make sure the icons are in a
subdirectory. The subdirectory should also only be one level deep (no
subsubdirectories).

Icons must be in PNG format.

Example: a two-icon set called *Christmas* would have the two files in
these locations:

> `/sdcard/Tasker/.icn/Christmas/santa.png`\
> `/sdcard/Tasker/.icn/Christmas/snowman.png`

[]{#intents.html}

Intents ![](icon_tasker.png)
----------------------------

Intents are Android\'s main method for allowing apps to communicate with
each other and share data. Intents are for advanced users. This document
is not intended to explain how intents work, but how to use Tasker\'s
intent facilities.

### Sending Intents

You can find information about intents and details of several built-in
Android intents on the Android SDK [Reference
Site](#%20https://developer.android.com/reference/android/content/Intent.html).

Tasker allows you to send arbitraty intents using the *Send Intent*
action in the *Misc* category. This allows you to provoke behaviour in
other apps, when you know the particular form of intent they are
designed to respond to.

#### Send Intent Parameters

Note that any parameter specified except Extras will reduce the set of
possible receivers of the intent.

##### Action

What the sender would like the receiver to do with the data.

Example: `android.intent.action.VIEW`

##### Cat

Gives additional information about the action.

##### Mime-Type

From the developer reference: \"This is used to create intents that only
specify a type and not data, for example to indicate the type of data to
return.\"

Can\'t be used together with a Data specification.

##### Data

The main data specification in the form of a URI.

Can\'t be used together with a Mime-Type specification.

##### Extras

Any additional data to send with the intent.

The extras must be in the form of a single **colon-separated** key and
value.

If the value can be parsed as an integer, long (integer ending in L),
floating point number, double (float ending in D) or boolean
(true/false) it will be treated as one.

The value can also be forced to a simple type (long etc) or `Uri` via
casting.

The name of a Java object created via the Java Function action which is
of type `Parcelable` can also be used (e.g. a `Bundle`)

If none of the above apply, the value will be treated as a `String`.

Examples:

-   have\_flowers:true\
    (`boolean`)
-   this.is.an.integer.example:34\
    (`int`)
-   this.is.a.double.example:34D\
    (`int`)
-   address: (Uri) http://a.b\
    (`Uri`)
-   bunchofvalues:mybundle (where mybundle is the name of a Java object
    of type Bundle)\
    (`Parcelable`)
-   simple.string.example:hello there!\
    (`String`)

##### Package, Class

Allow specification of a particular package and/or class within the
package to restrict the broadcast to.

##### Target

The type of Android component which should receive the intent.

#### Finding App Intents

Many intents that an app listens for are declared in its package
manifest (called AndroidManifest.xml). You can view details of those
intents using the *aapt* tool that comes with the Android SDK like this:

> ` aapt dump xmltree example.apk AndroidManifest.xml`

Look for Intent Filter elements.

It\'s not (easily) possible to determine which intents an app listens
for dynamically (i.e. while the app is running).

### Receiving Intents

Tasker allows you to receive a large range of intents, sent by apps or
the system, using the *Intent Received* event in the *System* category.

For each event you create, Tasker sets up a corresponding [Intent
Filter](https://developer.android.com/reference/android/content/IntentFilter.html)
object.

#### Limitations

-   Tasker can only receive intents which are sent to **broadcast
    receiver** components, not to activities or services.
-   some intent senders require that a corresponding intent filter is
    specified statically (i.e. in an Android Manifest). Those intents
    cannot be received.
-   intents which are broadcast with a specification of a particular
    package component to receive it cannot be received.

#### Send Intent Parameters

##### Action

If specified, the received intent must have also that action specified.

##### Cat

Any categories specified in the received intent must also be specified
in the Tasker event. Note that this is logically different to the
situation for the Action parameter.

##### Scheme

If any schemes are included in the filter, then an Intent\'s data must
be either one of these schemes or a matching data type. If no schemes
are included, then an Intent will match only if it includes no data.

##### Mime Type

If a type is specified, then an Intent\'s data must be the same, or
match the Scheme parameter. If no Mime Type is specified, then an Intent
will only match if it specifies no Data.

##### Priority

If the intent is part of an *ordered broadcast*, then the priority
specified here will affect whether this event will receive the intent
before or after other listeners.

##### Stop Event

If the intent is part of an *ordered broadcast*, then specifying Stop
Event will prevent it being passed to other listeners after this one.

#### Accessing Intent Data

When an intent triggers an Intent Received event, the resulting task(s)
which are executed have access to many details of the intent via local
variables (where relevant and present):

-   *%intent\_data*: the data
-   *%evtprm1*: the action
-   *%evtprm2*: the first category
-   *%evtprm3*: the second category
-   *%evtprm4*: the URI scheme
-   *%evtprm5*: the MIME type

In addition, any *extras* attached to the intent can be accessed under
their name, with the following modifications to make them valid variable
names:

-   all letters will be converted to lower-case, then
-   names of length less than 3 will have **var\_** prefixed
-   non-letter-or-digit characters will be converted to \_, then
-   names not starting with a letter will have **a** prefixed, then
-   names not ending with a letter or digit will have **a** affixed
-   if the result is the name of another extra, **\_dup** will be
    affixed until that is no longer the case

For example, an extra with key **%SOUND\_ON** will be available as
**%sound\_on**, and an extra with key **package.SOUND\_ON!**, will be
available via the local variable **%package\_sound\_on\_a**

The following extra types are presented in Tasker as local arrays:
`String [], Integer [], ArrayList, ArrayList`.

Example: a string array extra \`named \'fruits\' with values \'pear\'
and \'apple\' will result in the local variables %fruits1 (=pear) and
%fruits2 (=apple).

[]{#java.html}

Java Support ![](icon_tasker.png)
---------------------------------

-   [Introduction](#intro)
-   [The `Java Function` Action](#javafunction)
    -   Using The Action
    -   Parameters
    -   Return Values
-   [Objects](#objects)
    -   Creating An Object
    -   Object Naming, Local And Global
    -   Built-in Objects
    -   Assigning Values
    -   Other Actions Supporting Objects
-   [Other Topics](#other)
    -   Casting
    -   Constants
    -   Generic Classes
    -   Permissions
    -   Service Thread
    -   Static Fields

[]{#intro}

### Introduction

Android has hundreds of thousands of functions which apps can use. It\'s
not possible for Tasker to present all of those to the user, so Tasker
allows the advanced user to directly call those Java functions and work
with Java objects themselves.

It does **not** allow you to \'write Java code\'\... but the combination
of Tasker\'s logic and flow control with direct access to the Android
API is sufficient for most automation purposes.

This page assumes you have a basic familiarity with the Java concepts of
*objects* and *classes*.

Developer information on the Android API is available from
[Google](http://developer.google.com/develop).

#### Example

1.  `Variable Set`, %service, wifi
2.  `Java Function`, wiman = CONTEXT.getSystemService( %service )
3.  `Java Function`, %enabled = wiman.isWifiEnabled()
4.  `Java Function`, wiman.setEnabled( true ), If %enabled eq false

This example task turns wifi on if it is not already enabled.

Action 2 demonstrates that Tasker variables can be used in Java function
calls. *wiman* is a Java object resulting from the function call which
is stored by Tasker for use in subsequent actions. *CONTEXT* is also
such a variable but is built-in and always accessible to
`Java Function`.

Action 3 demonstrates that results of `Java Function` can also be
assigned to Tasker variables. Since all Tasker variables are strings,
some conversion needs to take place depending on what type of object the
Java function returns. In this case it\'s a boolean, and so %enabled
will be **true** or **false**.

Action 4 demonstrates taking a decision based on the result of previous
Java function call.

[]{#javafunction}

### The `Java Function` Action

#### Using The Action

1.  enter an object or class (to access static functions) into the first
    parameter.

    The magnifying glass icon will show a class selector for classes
    known in the latest Android API. Some may be coloured red, as not
    all classes are available on all devices.

    The coffee-cup icon allows quick selection of known Java objects

    The question mark icon will attempt to link to the relevant Android
    reference page for the object or class.

2.  click the magnifying class next to the `Function` parameter to
    select a function to execute appropriate to the object or class from
    step 1.

    In most cases, Tasker will be able to guess which class an object
    is, and hence which functions are available, if not, see
    [casting](#casting) below.

    Functions listed in red are private, meaning they can be used, but
    the author didn\'t intend them to be.

3.  if the function returns a value, you can enter a Java [object
    name](#names) to assign it to, or a Tasker variable, see
    [below](#return).
4.  enter any parameters required for the function, see
    [below](#params). The type of object the function expects for the
    parameter is displayed above the text entry field. The magnifying
    glass will list any fields associated with the current entry in the
    text box, where possible.

[]{#params}

#### Parameters

If you don\'t enter a value for a parameter, `null` will be used for
that parameter when the function is called.

If you enter the name of a variable array, Tasker will attempt to
convert the array values into the type of object (an array or
collection) which the function expects.

Other Tasker variables will be replaced in the usual way.

Here can also be entered Java objects, or their fields, either built-in
or created by previous calls to `Java Function` (e.g. `wiman` or
`arr[0].length`)

[]{#return}

#### Return Values

When a Java function returns a value, it can be placed in either a
Tasker variable or a Java object (or ignored).

If it\'s placed into a Tasker variable, it\'s converted to a piece of
text and the object itself is lost and can no longer be accessed. Note
that if the Java object is an array or list, it will be assigned to
multiple Tasker variables in the usual way e.g. %val1, %val2\...

When the returned value is placed into a Java object, you can access the
object at a later time in another `Java Function` and some other (see
later) actions.

Note that return value classes are inferred from the function, so object
names can refer to different classes at different times. It\'s not
recommended to reuse names in this way however!

[]{#objects}

### Objects

#### Creating An Object

New objects of most types can be created by filling in the class name,
hitting the function selector and selecting a function called `new`.

It\'s worth noting that many classes in the Android API have special
static functions for getting a new object of that class called e.g.
`getInstance` or similar.

Arrays (also multidimensional) can be created by adding `[]` to the
class name (or e.g. `[][]`).

Here\'s an example of creating a 3x5 string array:

1.  `Java Function`, arr = new String\[\]\[\]( 3 )
2.  `For`, %rowno, 0:2
3.     `Java Function`, arr\[%rowno\] = new String\[\]( 5 )

Creating an array is also possible natively via the `newInstance`
function in the the class `Array`.

Array components can be accessed as in normal Java (`arr[0][1]`)
wherever Java objects are [supported](#support).

[]{#names}

#### Object Naming, Local and Global

Object names can consist of any any combination of upper or lower case
letters and underscore and, unlike Tasker variable names, may start with
underscore. The first letter may not be upper-case, as this is a
convention used to distinguish objects from classes.

Analogous to Tasker variables, Java objects are either local to the
current task if their name is all lower case, or global (available to
any other task) if there are any upper-case characters in the name.
All-upper-case names represent final (fixed) global objects which cannot
be modified.

There are three important things to remember about global Java objects:

-   it\'s important to delete them once they are no longer needed,
    because they can take up a lot of memory.
-   unlike global Tasker variables, they are lost when Tasker is killed
    e.g. because the device was restarted
-   their names can only contain upper- or lower-case letters or
    underscore.

#### Built-in Objects

-   **Android Context** (class `Context`)\
    *CONTEXT*\
    Many funtions in Android require a context object. In tasks running
    **directly** as a result of a scene element event, this is the
    Activity object which is displaying the scene, otherwise it\'s
    Tasker\'s Application context.
-   **Image Buffer** (class `Bitmap`)\
    *IBUFFER* The object manipulated by functions in Tasker\'s *Image*
    action category.\

#### Assigning Values

When writing Java code, to make a name refer to the same object as
another name, you would use something like:

        String a = "hello";
        String b = a;

Now both a and b refer to the same object.

To achieve that in Tasker, you use the special `assignTo` function after
selecting the object to assign.

        Java Function, a, "hello", assign (or a = "hello".assign())
        Java Function, b, a, assign (or b = a.assign())

[]{#support}

#### Other Actions Supporting Objects

##### If

A Java object can be directly referenced in a condition. Null-value
objects are replaced with text representation `null`.

Examples:

        If, arr[0][0] eq 45
        If, arr[0].length > 3 
        If, lightlevel Equals null

You cannot make function calls e.g. str.charAt( 5 )

##### For

The *Value* parameter in the For action can include Java object
references as for *If*.

        For, %value, arr

Will repeat once for each value in the array *arr*. This will also work
for string lists and simple objects (boolean etc)

[]{#other}

### Other Topics

[]{#casting}

#### Casting

*Casting* in Tasker is used only to tell Tasker the type of a particular
object. That can be useful so that e.g. Tasker can show functions which
are appropriate to it.

In the example at the top of the page, the `getSystemService` function
returns an Object:

        Java Function, wiman = CONTEXT.getSystemService( %service )

Since the object could be one of many kinds of managers, Tasker is not
able to list the WifiManager functions for easy selection when creating
the next `Java Function` action in the task.

You can tell Tasker the actual type by adding a cast in brackets before
the name:

        Java Function, (WifiManager) wiman = CONTEXT.getSystemService( %service )

#### Constants

Tasker support the usual naming conventions for Java constants.

-   **L** a long integer e.g. `300L`
-   **F** a floating-point number e.g. `45.6D`
-   **D** a double-length float e.g. `45.6D`
-   **double quotes** indicate a string e.g. `"hello"`, though in many
    cases Tasker will infer that a string was intended anyway
-   **single quotes** indicate a character e.g. `'x'`

Tasker will attempt to convert numbers without affixes to a Java type in
the following order: `int, long, float, double`.

#### Generic Classes

Tasker only supports fully the following generic classes: ``

-   ArrayList\<String\>
-   ArrayList\<View\>
-   ArrayList\<Bundle\>
-   ArrayList\<Integer\>
-   ArrayList\<Long\>
-   ArrayList\<Double\>
-   ArrayList\<Float\>

Create them by selecting their class in the class selector, clicking the
function selector and clicking *new*.

Generic classes mixed with arrays cannot be handled by Tasker, though
you can pass such objects around from function to function.

#### Permissions

For some function calls, Android requires that the calling app have
declared a permission otherwise the call will fail. This means that a
Java Function call will fail if the permission is not one of the ones
pre-declared by Tasker.

Unfortunately, Android does not allow permissions to be added
dynamically, so if you wish to use a function requiring a permission
that Tasker does not already have, the only option is to generate a
child app to run the function (see [App Creation](#appcreation.html)).
In the child configuration screen you can add any permissions which your
Java Function call needs to the child app.

#### Service Thread

Java code is executed with a non-UI thread by a service.

Some implications are:

-   things which require an activity will not work e.g. showing a dialog
-   sending intents will in some cases require the flag
    `Intent.FLAG_FROM_BACKGROUND` and possibly also
    `Intent.FLAG_ACTIVITY_NEW_TASK`

#### Static Fields

Static fields (e.g. `ContentResolver.EXTRA_SIZE`) are not currently
supported by Tasker.

A workaround is to use reflection to get (or set) the value:

        res = CONTEXT.getContentResolver();
        cls = res.getClass();
        fld = cls.getField( EXTRA_SIZE );
        %val = fld.get( null );

[]{#javascript.html}

JavaScript Support ![](icon_tasker.png)
---------------------------------------

-   [Introduction](#intro)
-   [Local Variables](#localvars)
-   [Global Variables](#globalvars)
-   [Arrays](#array)
-   [Settings](#settings)
-   [Execution](#exe)
-   [Working Off-Device](#offdevice)
-   [Builtin Functions](#builtin)\
    [alarmVol](#alarmVol) [audioRecord](#audioRecord)
    [audioRecordStop](#audioRecordStop)\
    [btVoiceVol](#btVoiceVol) [browseURL](#browseURL) [button](#button)\
    [call](#call) [callBlock](#callBlock) [callDivert](#callDivert)
    [callRevert](#callRevert) [callVol](#callVol) [carMode](#carMode)
    [clearKey](#clearKey) [composeEmail](#composeEmail)
    [composeMMS](#composeMMS) [composeSMS](#composeSMS)
    [convert](#convert) [createDir](#createDir)
    [createScene](#createScene) [cropImage](#cropImage)\
    [decryptDir](#decryptDir) [decryptFile](#decryptFile)
    [deleteDir](#deleteDir) [deleteFile](#deleteFile)
    [destroyScene](#destroyScene)
    [displayAutoBright](#displayAutoBright)
    [displayAutoRotate](#displayAutoRotate)
    [displayTimeout](#displayTimeout) [dpad](#dpad) [dtmfVol](#dtmfVol)\
    [elemBackColour](#elemBackColour) [elemBorder](#elemBorder)
    [elemPosition](#elemPosition) [elemText](#elemText)
    [elemTextColour](#elemTextColour) [elemTextSize](#elemTextSize)
    [elemVisibility](#elemVisibility) [enableProfile](#enableProfile)
    [encryptDir](#encryptDir) [encryptFile](#encryptFile)
    [endCall](#endCall) [enterKey](#enterKey) [exit](#exit)\
    [filterImage](#filterImage) [flash](#flash) [flashLong](#flashLong)
    [flipImage](#flipImage)\
    [getLocation](#getLocation) [getVoice](#getVoice) [global](#global)
    [goHome](#goHome)\
    [haptics](#haptics) [hideScene](#hideScene)\
    [listFiles](#listFiles) [loadApp](#loadApp) [loadImage](#loadImage)
    [local](#local) [lock](#lock)\
    [mediaControl](#mediaControl) [mediaVol](#mediaVol)
    [micMute](#micMute) [mobileData](#mobileData)
    [musicBack](#musicBack) [musicPlay](#musicPlay)
    [musicSkip](#musicSkip) [musicStop](#musicStop)\
    [nightMode](#nightMode) [notificationVol](#notificationVol)\
    [performTask](#performTask) [popup](#popup)
    [profileActive](#profileActive) [pulse](#pulse)\
    [readFile](#readFile) [reboot](#reboot) [resizeImage](#resizeImage)
    [ringerVol](#ringerVol) [rotateImage](#rotateImage)\
    [saveImage](#saveImage) [say](#say) [scanCard](#scanCard)
    [sendIntent](#sendIntent) [sendSMS](#sendSMS)
    [setAirplaneMode](#setAirplaneMode)
    [setAirplaneRadios](#setAirplaneRadios) [setAlarm](#setAlarm)
    [setAutoSync](#setAutoSync) [setBT](#setBT) [setBTID](#setBTID)
    [setClip](#setClip) [setGlobal](#setGlobal) [setKey](#setKey)
    [setLocal](#setLocal) [settings](#settings)
    [setWallpaper](#setWallpaper) [setWifi](#setWifi) [shell](#shell)
    [showScene](#showScene) [shutdown](#shutdown)
    [silentMode](#silentMode) [sl4a](#sl4a)
    [soundEffects](#soundEffects) [speakerphone](#speakerphone)
    [statusBar](#statusBar) [stayOn](#stayOn)
    [stopLocation](#stopLocation) [systemLock](#systemLock)
    [systemVol](#systemVol)\
    [takeCall](#takeCall) [takePhoto](#takePhoto)
    [taskRunning](#taskRunning) [type](#type)\
    [usbTether](#usbTether) [unzip](#unzip)\
    [vibrate](#vibrate) [vibratePattern](#vibratePattern)\
    [wait](#wait) [wifiTether](#wifiTether) [writeFile](#writeFile)\
    [zip](#zip)
-   [Function Notes](#notes)

[]{#intro}

### Introduction

Tasker supports running JavaScript code in tasks or
[WebView](#element_web.html) scene elements. Most Tasker actions can be
accessed direct from the JavaScript. JSON and XMLHTTPRequest are also
directly available from the JavaScript code.

#### JavaScript in Tasks

JavaScript can be embedded inline in tasks via the *JavaScriptlet*
(direct specification of JavaScript to run) or *JavaScript* (load script
from file) actions.

In both cases, the JavaScript executes in sequence with the other
actions in the task and variables are transparently converted so pieces
of JavaScript can be interwoven throughout the task.

#### Embedded in HTML

WebView elements allow specification of mixed HTML and JS for the
element content.

> ` <H1 onClick="setWifi( false )">ClickMeToTurnOffWifi</H1>`

This allows a single WebView to present a complete user-interface.

[]{#localvars}

### Local Variables

In `JavaScript(let)` actions, local variables (all lower case, e.g.
**%myvar**) are directly accessible in the JavaScript without the % sign
(e.g. **myvar**). If the script changes the value, the new value is
transparently used by subsequent actions in the task.

The values of new (all lower case) variables declared in JavaScript
(with the `var` keyword) are also available to subsequent actions, with
the exception of those which are chain-declared e.g.
`var one = 'aval', two = 'bval';`

In JavaScript embedded in HTML, the functions [local](#local) and
[setLocal](#setLocal) must be used to access variables local to the
scene hosting the WebView.

[]{#globalvars}

### Global Variables

Tasker global variables need to be accessed via [global()](#global) and
set via [setGlobal()](#setGlobal). Global arrays are not supported due
to an Android limitation. []{#array}

### Arrays

Local Tasker arrays are transparently available in *Javascript(let)*s
and vice-versa. They are not available in WebViews.

Arrays which are not existing Tasker arrays must be declared in the JS
as such i.e. in this case *arr* will not be visible to the remainder of
the task:

        var arr = getSomeArray();

Whereas in this case it will:

        var arr = [];
        arr = getSomeArray();

Note that:

-   JavaScript array indices start at 0, whereas Tasker array indices
    start at 1
-   JavaScript uses `[]` while Tasker uses `()`

So, for example, `%arr(1)` (Tasker) is equivalent to `arr[0]`
(JavaScript).

[]{#settings}

### Settings

Unlike normal Tasker actions, settings which are changed in JavaScript
as part of a profile\'s enter task are **not** restored when the profile
exits. []{#exe}

### Execution

#### Execution Instances

Only one script can execute at one time. Once a piece of JavaScript is
executing, it cannot be interrupted by another piece. []{#offdevice}

#### Working Off-Device

You might wish to develop long and/or complicated tasks off-device e.g.
on a PC. There are two strategies for that:

#### 1. `JavaScript` action

For off-device testing, use
`Menu / More / Developer / Save JS Library Template` to get dummy
definitions for the built in functions. Include that file when
developing on your PC.

To test in your JavaScript code whether you\'re on-device or not, use

> ` var onAndroid = ( global( 'sdk' ) > 0 );`

By using the `JavaScript` action rather than `JavaScriptlet` you can
easily access a file synced from PC to a file on the Android device.

#### 2. Using WebView

If you specify a website URL as the content for your WebView, then
testing the code on the target device is a simple matter of pushing the
new version to your webserver and reloading the WebView on the device
(see action [Element Web
Control](#help/ah_scene_element_web_control.html))

#### Builtin Function Execution

Calls to most Tasker builtin functions (see below) are executed as
normal single-action tasks and thus may be blocked by other executing
tasks.

They execute at the priority of the task that executed the JavaScript
**plus two**.

#### JavaScript(let): Alert,Confirm,Prompt

Scripts using these functions require a \'user-interface\' and may cause
interference with the currently running app (though in most cases they
will not).

#### JavaScript(let): Auto Exit

By default, the `JavaScript(let)` action will end when the main
execution sequence is finished.

If you are using asynchronous code e.g. via *setTimeout()* or other
callbacks, you should deselect *Auto Exit*. You are then responsible
yourself for telling Tasker to continue the task by calling *exit()*.

In any case, execution will stop when the timeout configured for the
action is reached.

#### JavaScript(let): Libraries

You can specify as many libraries as you want in the *Libraries*
parameter, separated by newlines.

Several popular libraries are pre-selectable.

You may wish to download them manually to your local storage and change
the *http* URL to a *file* URL so that Internet is not required to run
your script.

Warning: library code will have access to local files, data providers
etc. on the device

Important: if you are using your own libraries developed on Windows, you
may need to convert CRLF style line endings to Unix style LF.

[]{#builtin}

### Builtin Functions

Tasker makes most of it\'s actions available via functions which can be
called directly via name in `JavaScript(let)` actions and WebView
elements.

Exceptions:

-   in WebView content where mode is set to **URL**, the functions must
    be prefixed by **tk** e.g. `tk.flash('Woo!')`
-   when executing code via *eval* the functions must be prefixed by
    **tk.**

[]{#alarmVol} []{#btVoiceVol} []{#callVol} []{#dtmfVol} []{#mediaVol}
[]{#notificationVol} []{#systemVol} []{#ringerVol}

##### alarmVol / btVoiceVol / callVol / dtmfVol / mediaVol / notificationVol / systemVol / ringerVol

`var ok = alarmVol( int level, bool display, bool sound )`

Set the relevant system volume to *level*.

If *display* is true, the new level will be flashed up on-screen.

If *sound* is true, a tone will sound at the new level.

[]{#audioRecord}

##### audioRecord

`var ok = audioRecord( str destPath, str source, str codec, str format )`

-   *destPath*: where to put the recording. Note that a file extension
    is not necessary, it will correspond to the selected *format*.
-   *source*: **def, mic, call, callout** or **callin**
-   *codec*: **amrn, amrw** or **aac**
-   *format*: **mp4, 3gpp, amrn** or **amrw**

The JavaScript does **not** wait for the audio recording to complete.

See also: [audioRecordStop()](#audioRecordStop).

[]{#audioRecordStop}

##### audioRecordStop

`var ok = audioRecordStop()`

Stop recording previously initiated by [audioRecord()](#audioRecord).

[]{#browseURL}

##### browseURL

`var ok = browseURL( str URL )`

Open the default browser at the specifed URL.

[]{#button}

##### button

`var ok = button( str name )`

Simulate a press of the named button.

*name* must be one of **back, call, camera, endcall, menu, volup,
voldown** or **search**.

This function requires a rooted device.

[]{#call}

##### call

`var ok = call( str num, bool autoDial )`

Make a phone call.

If *autoDial* is **false**, the phone app will be brought up with the
number pre-inserted, if **true** the number will also be dialed.

[]{#callBlock}

##### callBlock

`var ok = callBlock( str numMatch, bool showInfo )`

Block **outgoing** calls [matching](#matching.html) *numMatch*.

If *showInfo* is set, Tasker will flash a message when a call is
blocked.

[]{#callDivert}

##### callDivert

`var ok = callDivert( str fromMatch, str to, bool showInfo )`

Divert **outgoing** calls [matching](#matching.html) *fromMatch* to the
number *to*.

If *showInfo* is set, Tasker will flash a message when a call is
diverted.

[]{#callRevert}

##### callRevert

`var ok = callRevert( str numMatch )`

Stop blocking or diverting outgoing calls previously specified with
[callBlock](#callBlock) or [callDivert](#callDivert).

[]{#carMode}

##### carMode

`var ok = carMode( bool onFlag )`

Turn on or off Android Car Mode.

[]{#clearKey}

##### clearKey

`var ok = clearKey( str keyName  )`

Clear the passphrase for the specified *keyName*.

See Also: [Encryption](#encryption.html) in the Userguide.

[]{#composeEmail}

##### composeEmail

`var ok = composeEmail( str to, str subject, str message  )`

Show an email composition dialog with any specified fields pre-filled.

The JavaScript does **not** wait for the email to be sent before
continuing.

[]{#composeMMS}

##### composeMMS

`var ok = composeMMS( str to, str subject, str message, str attachmentPath )`

Show an MMS composition dialog with any specified fields pre-filled.

The JavaScript does **not** wait for the MMS to be sent before
continuing.

[]{#composeSMS}

##### composeSMS

`var ok = composeSMS( str to, str message )`

Show an SMS composition dialog with any specified fields pre-filled.

The JavaScript does **not** wait for the SMS to be sent before
continuing.

[]{#convert}

##### convert

`var result = convert( str val, str conversionType )`

Convert from one type of value to another.

*conversionType* must be one of the string constants: **byteToKbyte,
byteToMbyte, byteToGbyte, datetimeToSec, secToDatetime, secToDatetimeM,
secToDatetimeL, htmlToText, celsToFahr, fahrToCels, inchToCent,
metreToFeet, feetToMetre, kgToPound, poundToKg, kmToMile, mileToKm,
urlDecode, urlEncode, binToDec, decToBin, hexToDec, decToHex,
base64encode base64decode, toMd5, toSha1, toLowerCase, toUpperCase,
toUpperCaseFirst**.

See also: action [Variable Convert](#help/ah_convert_variable.html).

[]{#createDir}

##### createDir

`var ok = createDir( str dirPath, bool createParent, bool useRoot )`

Create the named *dirPath*. If *createParent* is specified and any
parent directory does not exist, it will also be created.

If *useRoot* is specified, the operation will be performed as the root
user (where available).

[]{#createScene}

##### createScene

`var ok = createScene( str sceneName )`

Create the named [scene](#scenes.html) without displaying it.

[]{#cropImage}

##### cropImage

`var ok = cropImage( int fromLeftPercent, int fromRightPercent, int fromTopPercent, int fromBottomPercent )`

Crop an image in Tasker\'s image buffer previously loaded via
[loadImage](#loadImage).

[]{#decryptDir}

##### decryptDir

`var ok = decryptDir( str path, str key, bool removeKey )`

As [decryptFile()](#decryptFile), but decrypts each file in the
specified directory in turn.

[]{#decryptFile}

##### decryptFile

`var ok = decryptFile( str path, str key, bool removeKey )`

Decrypt the specified file using the encryption parameters specified in
`Menu / Prefs / Action`.

If *removeKey* is not set, the entered passphrase will be reapplied
automatically to the next encryption/decryption operation with the
specified *keyName*.

See Also: [Encryption](#encryption.html) in the Userguide, [Decrypt
File](#help/ah_decrypt_file.html) action.

[]{#deleteDir}

##### deleteDir

`var ok = deleteDir( str dirPath, bool recurse, bool useRoot )`

Delete the named *dirPath*. *recurse* must be specified if the directory
is not empty.

If *useRoot* is specified, the operation will be performed as the root
user (where available).

[]{#deleteFile}

##### deleteFile

`var ok = deleteFile( str filePath, int shredTimes, bool useRoot )`

Delete the named *filePath*.

*shredTimes* has range 0-10.

If *useRoot* is specified, the operation will be performed as the root
user (where available).

See also: action [Delete File](#help/ah_delete_file.html)

[]{#destroyScene}

##### destroyScene

`var ok = destroyScene( str sceneName )`

Hide the named [scene](#scenes.html) if it\'s visible, then destroy it.

[]{#displayAutoBright}

##### displayAutoBright

`var ok = displayAutoBright( bool onFlag )`

Whether the display brightness should automatically adjust to the
ambient light or not.

[]{#displayAutoRotate}

##### displayAutoRotate

`var ok = displayRotate( bool onFlag )`

Whether the display orientation should change based on the physical
orientation of the device.

[]{#displayTimeout}

##### displayTimeout

`var ok = displayTimeout( int hours, int minutes, int seconds )`

How long the period of no-activity should be before the display is
turned off.

[]{#dpad}

##### dpad

`var ok = dpad( str direction, int noRepeats )`

Simulate a movement or press of the hardware dpad (or trackball).

*direction* must be one of **up, down, left, right** or **press**.

This function requires a rooted device.

[]{#enableProfile}

##### enableProfile

`var ok = enableProfile( str name, boolean enable )`

Enable or disable the named Tasker profile.

[]{#encryptDir}

##### encryptDir

`var ok = encryptDir( str path, str keyName, bool rememberKey, bool shredOriginal )`

As [encryptFile()](#encryptFile), but encrypts each file in the
specified directory in turn.

[]{#elemBackColour}

##### elemBackColour

`var ok = elemBackColour( str scene, str element, str startColour, str endColour )`

Set the background [colour](#colour) of the specified
[scene](#scenes.html) element.

See also: action [Element Back
Colour](#help/ah_scene_element_background_colour.html).

[]{#elemBorder}

##### elemBorder

`var ok = elemBorder( str scene, str element, int width, str colour )`

Set the border [colour](#colour) and width of the specified
[scene](#scenes.html) element.

[]{#elemPosition}

##### elemPosition

`var ok = elemPosition( str scene, str element, str orientation, int x, int y, int animMS )`

Move an element within it\'s scene.

*orientation* must be one of **port** or **land**. *animMS* indicates
the duration of the corresponding animation in MS. A zero-value
indicates no animation.

See also: action [Element
Position](#help/ah_scene_element_position.html).

[]{#elemText}

##### elemText

`var ok = elemText( str scene, str element, str position, str text )`

Set the text of the specified [scene](#scenes.html) element.

*pos* must be one of **repl** (replace existing text completely),
**start** (insert before existing text) or **end** (append after
existing text).

See also: action [Element Text](#help/ah_scene_element_text.html).

[]{#elemTextColour}

##### elemTextColour

`var ok = elemTextColour( str scene, str element, str colour )`

Set the text [colour](#colour) of the specified [scene](#scenes.html)
element.

See also: action [Element Text
Colour](#help/ah_scene_element_text_colour.html).

[]{#elemTextSize}

##### elemTextSize

`var ok = elemTextSize( str scene, str element, int size )`

Set the text size of the specified [scene](#scenes.html) element.

See also: action [Element Text
Size](#help/scene_element_text_size.html).

[]{#elemVisibility}

##### elemVisibility

`var ok = elemVisibility( str scene, str element, boolean visible, int animationTimeMS )`

Make the specified [scene](#scenes.html) element visible or invisible.

See also: action [Element
Visibility](#help/ah_scene_element_visibility.html).

[]{#endCall}

##### endCall

`var ok = endCall()`

Terminate the current call (if there is one).

[]{#encryptFile}

##### encryptFile

`var ok = encryptFile( str path, str keyName, bool rememberKey, bool shredOriginal )`

Encrypt the specified file using the encryption parameters specified in
`Menu / Prefs / Action`.

If *rememberKey* is set, the entered passphrase will be reapplied
automatically to the next encryption/decryption operation with the
specified *keyName*.

If *shredOriginal* is specified, the original file will be overwritten
several times with random bits if encryption is successful.

See Also: [Encryption](#encryption.html) in the Userguide, [Encrypt
File](#help/ah_encrypt_file.html) action.

[]{#enterKey}

##### enterKey

`var ok = enterKey( str title, str keyName, bool showOverKeyguard, bool confirm, str background, str layout, int timeoutSecs )`

Show a dialog to enter the passphrase for the specified *keyName*. The
JavaScript waits until the dialog has been dismissed or the timeout
reached.

-   *confirm*: if set, the passphrase must be entered twice to ensure it
    is correct.
-   *background*: \[optional\] a file path or file URI to a background
    image.
-   *layout*: the name of a user-created [scene](#scenes.html) to use in
    place of the built-in scene.

See Also: [Encryption](#encryption.html) in the Userguide

[]{#filterImage}

##### filterImage

`bool ok = filterImage( str mode, int value )`

Filter an image previously loaded into Tasker\'s image buffer via
[loadImage()](#loadImage)

Possible values of *mode* are:

-   **bw**: convert to black & white, using *value* as a threshold
-   **eblue**: enhance blue values by *value*
-   **egreen**: enhance green values by *value*
-   **ered**: enhance red values by *value*
-   **grey**: convert to greyscale, *value* is unused
-   **alpha**: set pixel alpha (opposite of transparency) to *value*

*value* should be 1-254.

[]{#flipImage}

##### flipImage

`bool ok = flipImage( bool horizontal )`

Flip an image previously loaded into Tasker\'s image buffer via
[loadImage()](#loadImage)

If *horizontal* is false, the image is flipped vertically.

[]{#exit}

##### exit

`exit()`

Stop execution of the JavaScript.

[]{#flash}

##### flash

`flash( str message )`

Flash a short-duration Android \'Toast\' message. []{#flashLong}

##### flashLong

`flashLong( str message )`

Flash a long-duration Android \'Toast\' message. []{#getLocation}

##### getLocation

`var ok = getLocation( str source, bool keepTracking, int timeoutSecs )`

Try to get a fix of the current device location.

*source* must be one of **gps, net** or **any**.

If *keepTracking* is set, the specified source(s) will be left tracking
with the purpose of providing a much quicker fix next time the function
is called.

Fix coordinates are stored in the global Tasker variables **%LOC** (GPS)
and/or **%LOCN** (Net). The value can be retrieved with the
[global](#global) function. Several other parameters of the fix are also
available, see [Variables](#variables.html).

Example


        var lastFix = global( 'LOC' );
        if ( 
            getLocation( 'gps' ) &&
            ( global( 'LOC' ) != lastFix ) 
        ) {
            flash( "New fix: " + global( 'LOC' ) );
        }

See also: action [Get Location](#help/ah_get_fix.html), function
[stopLocation](#stopLocation).

[]{#getVoice}

##### getVoice

`str result = getVoice( str prompt, str languageModel, int timeout )`

Get voice input and convert to text.

*result* is \'undefined\' if the voice acquisition failed, otherwise
it\'s an array of possible matching texts.

*prompt* is a label for the dialog that is shown during voice
acquisition.

*languageMode* gives the speech recognition engine a clue as to the
context of the speech. It must be one of **web** for \'web search\' or
**free** for \'free-form\'.

[]{#goHome}

##### goHome

`goHome( int screenNum )`

Go to the Android home screen. *screenNum* is not supported by all home
screens.

[]{#haptics}

##### haptics

`var ok = haptics( bool onFlag )`

Enable/disable system setting Haptic Feedback.

[]{#hideScene}

##### hideScene

`var ok = hideScene( str sceneName )`

Hide the named [scene](#scenes.html) if it\'s visible.

[]{#global}

##### global

`var value = global( str varName )`

Retrieve the value of a Tasker global variable. Prefixing the name with
% is optional.

Example:

        flash( global( '%DogName' ) );

[]{#listFiles}

##### listFiles

`str files = listFiles( str dirPath, bool hiddenToo )`

List all files in the specified *dirPath*.

*files* is a newline-separated list of subfiles.

If no files or found or an error occurs, the returned value will be
`undef`.

If *hiddenToo* is specified, files starting with period are included,
otherwise they are not.

Example:

        var files = listFiles( '/sdcard' );
        var arr = files.split( '\n' );
        flash( 'Found ' + arr.length + ' files' );

[]{#loadApp}

##### loadApp

`var ok = loadApp( str name, str data, bool excludeFromRecents )`

Start up the named app.

*Name* can be a package name or app label, it\'s tested first against
known package names. **Note**: app label could be localized to another
language if the script is used in an exported app.

*Data* is in URI format and app-specific.

When *excludeFromRecents* is true, the app will not appear in the home
screen \'recent applications\' list.

[]{#loadImage}

##### loadImage

`var ok = loadImage( str uri )`

Load an image into Tasker\'s internal image buffer.

The following uri formats are currently supported:

-   *file://* followed by a local file path

See also [Load Image](#help/ah_load_image.html) action.

[]{#lock}

##### lock

`var ok = lock( str title, str code, bool allowCancel, bool rememberCode, bool fullScreen, str background, str layout )`

Show a lock screen, preventing user interaction with the covered part of
the screen. The JavaScript waits until the code has been entered or the
lock cancelled (see below).

-   *code*: the numeric code which must be entered for unlock
-   *allowCancel*: show a button to remove the lockscreen, which causes
    a return to the Android home screen
-   *rememberCode*: the code will be remembered and automatically
    entered when the lock screen is show in future, until the display
    next turns off
-   *background*: \[optional\] a file path or file URI to a background
    image.
-   *layout*: the name of a user-created [scene](#scenes.html) to use in
    place of the built-in lock scene

[]{#local}

##### local

`var value = local( str varName )`

Retrieve the value of a Tasker scene-local variable. The name should
**not** be prefixed with *%*.

This function is only for use by JavaScript embedded in HTML and
accessed via a WebView scene element.

[]{#mediaControl}

##### mediaControl

`var ok = mediaControl( str action )`

Control media via simulation of hardware buttons.

Possible *action*s are **next, pause, prev, toggle, stop** or **play**.

[]{#micMute}

##### micMute

`var ok = micMute( bool shouldMute )`

Mute or unmute the device\'s microphone (if present),

[]{#mobileData}

##### mobileData

`var ok = mobileData( bool set )`

Enable or disable the system Mobile Data setting.

See also: action [Mobile Data](#help/ah_mobile_data_direct.html)
[]{#musicBack}

##### musicBack

`var ok = musicBack( int seconds )`

Skip back by *seconds* during playback of a music file previously
started by [musicPlay](#musicPlay).

See also: [musicSkip](#musicSkip), [musicStop](#musicStop)

[]{#musicPlay}

##### musicPlay

`var ok = musicPlay( str path, int offsetSecs, bool loop, str stream )`

Play a music file via Tasker\'s internal music player.

*stream* to which [audio stream](#streams) the music should be played

This function does **not** not wait for completion.

The last 3 arguments may be ommitted, in which case they default to
**0**, **false** and **media** respectively.

See also: [musicStop](#musicStop), [musicBack](#musicBack),
[musicSkip](#musicSkip)

[]{#musicSkip}

##### musicSkip

`var ok = musicSkip( int seconds )`

Skip forwards by *seconds* during playback of a music file previously
started by [musicPlay](#musicPlay).

See also: [musicBack](#musicBack), [musicStop](#musicStop)

[]{#musicStop}

##### musicStop

`var ok = musicStop()`

Stop playback of a music file previously started by
[musicPlay](#musicPlay).

See also: [musicBack](#musicBack), [musicSkip](#musicSkip)

[]{#nightMode}

##### nightMode

`var ok = nightMode( bool onFlag )`

Turn on or off Android Night Mode.

[]{#popup}

##### popup

`var ok = popup( str title, str text, bool showOverKeyguard, str background, str layout, int timeoutSecs )`

Show a popup dialog. The JavaScript waits until the popup has been
dismissed or the timeout reached.

-   *background*: \[optional\] a file path or file URI to a background
    image.
-   *layout*: the name of a user-created [scene](#scenes.html) to use in
    place of the built-in popup scene.

[]{#performTask}

##### performTask

`var ok = performTask( str taskName, int priority, str parameterOne, str parameterTwo )`

Run the Tasker task *taskName*.

Note that the JavaScript does not wait for the task to complete.

[]{#profileActive}

##### profileActive

`bool active = profileActive( str profileName )`

Whether the named Tasker profile is currently active. Returns false if
the profile name is unknown.

[]{#pulse}

##### pulse

`bool ok = pulse( bool onFlag )`

Enable or disable the Android Notification Pulse system setting.

[]{#readFile}

##### readFile

`var contents = readFile( str path )`

Read the contents of a text file.

[]{#reboot}

##### reboot

`var ok = reboot( str type )`

Reboot the device.

*type* is one of **normal, recovery** or **bootloader**. It can be
ommitted and defaults to **normal**.

Requires a rooted device.

See also: function [shutdown](#shutdown) []{#resizeImage}

##### resizeImage

`var ok = resizeImage( int width, int height )`

Scale the current image in Tasker\'s image buffer to the specified
dimensions.

[]{#rotateImage}

##### rotateImage

`var ok = rotateImage( str dir, int degrees )`

Rotate the current image in Tasker\'s image buffer.

*dir* must be one of **left** or **right**. *degrees* must be one of
**45, 90, 135** or **180**.

[]{#saveImage}

##### saveImage

`var ok = saveImage( str path, int qualityPercent, bool deleteFromMemoryAfter  )`

Save the current image in Tasker\'s image buffer to the specified file
*path*.

[Save Image](#help/ah_save_image.html) action.

[]{#say}

##### say

`var ok = say( str text, str engine, str voice, str stream, int pitch, int speed )`

Cause the device to say *text* out loud.

-   *engine*: the speech engine e.g. **com.svox.classic** Defaults to
    the system default (specify *undefined* for that)
-   *voice*: the voice to use (must be supported by *engine*). Defaults
    to the current system language (specify *undefined* for that)
-   *stream*: to which [audio stream](#streams) the speech should be
    made
-   *pitch*: 1-10
-   *speed*: 1-10

The script waits for the speech to be finished.

[]{#sendIntent}

##### sendIntent

`var ok = sendIntent( str action, str targetComp, str package, str class, str category, str data, str mimeType, str[] extras );`

Send an intent. Intents are Android\'s high-level application
interaction system.

Any parameter may be specified as undefined.

-   *targetComp*: the type of application component to target, one of
    **receiver, activity** or **service**. Defaults to **receiver**.
-   *package*: the application package to limt the intent to
-   *class*: the application class to limit the intent to
-   *category*: one of **none, alt, browsable, cardock, deskdock, home,
    info, launcher, preference, selectedalt, tab** or **test**, defaults
    to **none**
-   *extras*: extra data to pass, in the format key:value. May be
    undefined. Maximum length 2.

See also: action [Send Intent](#help/ah_send_intent.html).

[]{#sendSMS}

##### sendSMS

`var ok = sendSMS( str number, str text, boolean storeInMessagingApp );`

Send an SMS.

See also: action [Send SMS](#help/ah_send_sms.html)

[]{#setAirplaneMode}

##### setAirplaneMode

`var ok = setAirplaneMode( bool setOn )`

Enable or disable Airplane Mode.

Get the current value with:

` var enabled = global( 'AIR' );`

See also: function [setAirplaneRadios](#setAirplaneRadios)

[]{#setAirplaneRadios}

##### setAirplaneRadios

`var ok = setAirplaneRadios( str disableRadios )`

Specify the radios which will be **disabled** when the device enters
Airplane Mode.

*disableRadios* is a comma-separated list with radio names from the
following set: **cell, nfc, wifi, wimax, bt**.

Get the current value with:

` var radios = global( 'AIRR' );`

See also: function [setAirplaneMode](#setAirplaneMode)

[]{#setAlarm}

##### setAlarm

`var ok = setAlarm( int hour, int min, str message, bool confirmFlag )`

Create an alarm in the default alarm clock app.

*confirmFlag* specifies whether the app should confirm that the alarm
has been set.

*message* is optional.

Requires Android version 2.3+.

[]{#setAutoSync}

##### setAutoSync

`var ok = setAutoSync( bool setOn )`

Enable or disable the global auto-sync setting.

[]{#scanCard}

##### scanCard

`var ok = scanCard( str path )`

Force the system to scan the external storage card for new/deleted
media.

If *path* is defined, only that will be scanned.

See also: action [Scan Card](#help/ah_scan_card.html)

[]{#setBT}

##### setBT

`var ok = setBT( bool setOn )`

Enable or disable the Bluetooth radio (if present).

Test BT state with:

` if ( global( 'BLUE' ) == "on" ) { doSomething(); }`

[]{#setBTID}

##### setBTID

`var ok = setBTID( str toSet )`

Set the bluetooth adapter ID (the name as seen by other devices).

[]{#setGlobal}

##### setGlobal

`setGlobal( str varName, str newValue )`

Set the value of a Tasker global user variable. Prefixing varName with %
is optional.

Arrays are **not** supported due to limitations of the Android JS
interface.

[]{#setKey}

##### setKey

`var ok = setKey( str keyName, str passphrase  )`

Set the passphrase for the specified *keyName*.

See Also: [Encryption](#encryption.html) in the Userguide.

[]{#setLocal}

##### setLocal

`setLocal( str varName, str newValue )`

Set the value of a Tasker **scene-local** user variable. Variable names
should **not** be prefixed with *%*.

This function is only for use by JavaScript embedded in HTML and
accessed via a WebView scene element.

[]{#setClip}

##### setClip

`var ok = setClip( str text, bool appendFlag )`

Set the global system clipboard.

Test the value with:

` var clip = global( 'CLIP' );`

[]{#settings}

##### settings

`var ok = settings( str screenName )`

Show an Android System Settings screen.

*screenName* must be one of **all, accessibility, addacount,
airplanemode, apn, app, batteryinfo, appmanage bluetooth, date,
deviceinfo, dictionary, display, inputmethod, internalstorage, locale,
location, memorycard, networkoperator, powerusage, privacy, quicklaunch,
security, mobiledata, search, sound, sync, wifi, wifiip** or
**wireless**.

[]{#setWallpaper}

##### setWallpaper

`var ok = setWallpaper( str path )`

Set the system home screen wallpaper.

[]{#setWifi}

##### setWifi

`var ok = setWifi( bool setOn )`

Enable or disable the Wifi radio (if present).

Test wifi state with:

` if ( global( 'WIFI' ) == "on" ) { doSomething(); }`

[]{#shell}

##### shell

`var output = shell( str command, bool asRoot, int timoutSecs )`

Run the shell command *command*.

*asRoot* will only have effect if the device is rooted.

*output* is \'undefined\' if the shell command failed. It\'s maximum
size is restricted to around 750K.

[]{#showScene}

##### showScene

`var ok = showScene( str name, str displayAs, int hoffset, int voffset, bool showExitIcon, bool waitForExit )`

Show the named [scene](#scenes.html), creating it first if necessary.

-   *displayAs*: options:
    `Overlay, OverBlocking, OverBlockFullDisplay, Dialog, DialogBlur, DialogDim,              ActivityFullWindow, ActivityFullDisplay, ActivityFullDisplayNoTitle`
-   *hoffset, voffset*: percentage vertical and horizontal offset for
    the scene -100% to 100% (not relevant for full screen/window display
    types)
-   *showExitIcon*: display a small icon in the bottom right which
    destroys the scene when pressed
-   *waitForExit*: whether to wait for the scene to exit before
    continuing the script

[]{#shutdown}

##### shutdown

`var ok = shutdown()`

Shutdown the device.

Requires a rooted device.

See also: [reboot](#reboot)

[]{#silentMode}

##### silentMode

`var ok = silentMode( str mode )`

Set the system silent (\'ringer\') mode.

*mode* must be one of **off, vibrate** or **on**

[]{#sl4a}

##### sl4a

`var ok = sl4a( str scriptName, boolean inTerminal )`

Run a previously created
[SL4A](https://code.google.com/p/android-scripting/) script.

[]{#soundEffects}

##### soundEffects

`var ok = soundEffects( bool setTo )`

Setting the system *Sound Effects* setting (sound from clicking on
buttons etc.

[]{#speakerphone}

##### speakerphone

`var ok = speakerPhone( bool setFlag )`

Enable or disable the speakerphone function.

[]{#statusBar}

##### statusBar

`var ok = statusBar( bool expanded )`

Expand or contract the system status bar.

[]{#stayOn}

##### stayOn

`var ok = stayOn( str mode )`

Specify whether the device should remain on when power is connected.

Possible *mode*s are **never, ac, usb, any**.

[]{#stopLocation}

##### stopLocation

`var ok = stopLocation()`

Stop tracking a location provider. This is only relevant when a
[getLocation](#getLocation) function has been previously called with the
*keepTracking* parameter set.

[]{#systemLock}

##### systemLock

`var ok = systemLock()`

Turn off the display and activate the keyguard.

Requires Tasker\'s Device Administrator to be enabled in Android
settings.

[]{#taskRunning}

##### taskRunning

`bool running = taskRunning( str taskName )`

Whether the named Tasker task is currently running. Returns false if the
task name is unknown.

[]{#takeCall}

##### takeCall

`bool ok = takeCall();`

Auto-accept an incoming call (if there is one).

[]{#takePhoto}

##### takePhoto

`bool ok = takePhoto( int camera, str fileName, str resolution, bool insertGallery )`

Take a photo with the builtin camera.

-   *camera*: 0 = rear camera, 1 = front camera
-   *resolution*: format WxH e.g. 640x840
-   *insertGallery*: whether to insert the resulting picture in the
    Android Gallery application

See also: action [Take Photo](#help/ah_take_photo.html)

[]{#type}

##### type

`var ok = type( str text, int repeatCount )`

Simulate keyboard typing.

Requires a rooted device.

[]{#unzip}

##### unzip

`boolean ok = unzip( str zipPath, bool deleteZipAfter )`

Unpack a Zip archive into the parent directory of the archive.

*deleteZip* causes the zip archive to be deleted after successful
unpacking.

[]{#usbTether}

##### usbTether

`usbTether( bool set )`

Enable or disable USB tethering.

See also: action [USB Tether](#help/ah_tether_usb.html)

[]{#vibrate}

##### vibrate

`vibrate( int durationMilliseconds )`

Cause the device to vibrate for the specified time.

[]{#vibratePattern}

##### vibratePattern

`vibratePattern( str pattern )`

Cause the device to vibrate following the specified *pattern*, which
consists of a sequence of off then on millisecond durations e.g.

`500,1000,750,1000`

wait for 500ms, vibrates 1000ms, wait for 750ms, then vibrate for
1000ms.

[]{#wait}

##### wait

`wait( int durationMilliseconds )`

Pause the script for the specified time.

Warning: may cause some preceeding functions not to complete in some
situations. If in doubt, use JavaScript setTimeout() instead.

[]{#wifiTether}

##### wifiTether

`var ok = wifiTether( bool set )`

Enable or disable Wifi tethering.

See also: action [Wifi Tether](#help/ah_tether_wifi.html)

[]{#writeFile}

##### writeFile

`var ok = writeFile( str path, str text, bool append )`

Write *text* to file *path*.

If *append* is specified, the text will be attached to the end of the
existing file contents (if there are any).

[]{#zip}

##### zip

`boolean ok = zip( str path, int level, bool deleteOriginalAfter )`

Zip a file or directory.

*level* is the desired compression level from 1-9, with 9 resulting in
the smallest file and the longest compression time.

*deleteOriginal* causes *path* to be deleted if the zip operation is
successful.

[]{#notes}

### Notes

[]{#streams}

#### Audio Streams

Must be one of **call, system, ringer, media, alarm** or
**notification** []{#colour}

#### Colours

Colours are specified in *AARRGGBB* hexadecimal format, with solid white
being **FFFFFFFF**. []{#paths}

#### File Paths

File paths can be specified as either absolute (start with **/**) or
relative (don\'t start with **/**).

Relative file paths are relative to the root of the internal storage
media. So, for example, `pics/me.jpg` might resolve to
`/sdcard/pics/me.jpg`.

[]{#loctears.html}

Location Without Tears ![](icon_tasker.png)
-------------------------------------------

This is an overview guide to choosing a method for fixing your location
with Tasker. At the end are some [advanced power-saving
strategies](#adv).

Power / Accuracy Comparison
---------------------------

  Method                             Power Usage   Acc             Network   Wifi   BT
  ---------------------------------- ------------- --------------- --------- ------ ----
  [State: Cell Near](#cell)          \*            \*                               
  [State: BT Near](#btnear)          \*\*          \*\*\*\*\*                       Y
  [Location: Net](#net)              \*\*          \*\*            Y                
  [Location: Net & Wifi](#netwifi)   \*\*\*        \*/\*\*\*\*\*   Y         Y      
  [State: Wifi Near](#near)          \*\*\*\*      \*\*\*\*\*                Y      
  [Location: GPS](#gps)              \*\*\*\*\*    \*\*\*\*\*      Y                

More stars mean higher power usage or higher accuracy (Acc).

Detail Comparison
-----------------

[]{#cell}

### State: Cell Near

##### Setup

Create a **state context**, select **Phone** then **Cell Near**. Click
Update and walk around a bit to scan for cell towers nearby.

##### About

Uses information about the cell towers the phone uses for telephony to
record and match a location.

When the display is off, frequency of checks is controlled by
`Prefs / Monitor / Display Off All Checks`.

If your profile keeps deactivating, go back to the Cell Near state and
click the magnifying glass icon to check for cells you may have missed
in your scan.

##### Plus / Minus

-   (+) virtually no extra power on top of power needed for normal phone
    service
-   (+) when the display is on, context updates as soon as the tower is
    visible
-   (+) when the display is off, only one check period is needed to
    determine context exit
-   (-) highly inaccurate
-   (-) must be physically at the location in order to record it

##### Other Settings

-   `Monitor / General Monitoring / Use New Cell API`: if you\'re not
    seeing any cells at all when scanning on a modern device, try
    checking this
-   `Monitor / Display Off Monitoring / Cell Workaround`: if things
    aren\'t working when the display is off
-   `Monitor / Display Off Monitoring / Cell Wake Screen`: second
    possible workaround when the display is off

[]{#btnear}

### State: BT Near

##### Setup

Create a **State context**, click **BT Near** (in the Net category),
fill in the name or address of a bluetooth device near the location you
want to identify.

##### About

BT Near does regular bluetooth Scans and will activate when it
recognizes a device you have configured is nearby. Note: you don\'t have
to connect to the device, so it doesn\'t have to be a device you own.

Frequency of checks is controlled by `Prefs / Monitor / BT Scan Seconds`
(screen on) and `Prefs / Monitor / Display Off All Checks` (screen off).

Check the **BT Toggle** box if you don\'t want bluetooth enabled all the
time. It will then be toggled when Tasker needs to do a scan.

If your target device is a low-energy device, deselect **Standard
Devices** to reduce energy usage. If you can pair with the target
device, you can have a major reduction in power usage and scan times by
not selecting **Non-Paired Devices**.

##### Plus / Minus

-   (+) very good accuracy, reliability
-   (+) modest power usage, especially for paired devices
-   (+) works indoors too
-   (-) need a known device nearby

##### Other Settings

-   `Prefs / Monitor / Display Off Monitoring / Motion Detection`: if
    available on your device, will need to be disabled if you wish to
    detect a nearby BT device that may move or turn off or on

[]{#net}

### Location: Net

##### Setup

Create a location context, and deselect GPS.

##### About

Net location accuracy varies greatly. It\'s **very important** that you
create a **large radius** around the spot you wish to detect.

Frequency of checks is controlled by
`Prefs / Monitor / Network Location Check` (screen on) and
`Prefs / Monitor / Display Off All Checks`.

[More Info](#loccontext.html).

##### Plus / Minus

-   (+) extremely low (extra) power (IF network is available anyway)
-   (-) requires network and phone service
-   (-) highly inaccurate and variable fixes

[]{#netwifi}

### Location: Net & Wifi

##### Setup

Create a location context and deselect GPS. Make sure your device\'s
Wifi is turned on when you want a more accurate location fix.

##### About

Net location can be assisted by nearby access points when Wifi is turned
on (Google has a map of APs for many areas).

Turn Wifi off when not needed to conserve power e.g. use a Time context
to turn wifi off at night.

##### Plus / Minus

-   (+) very good accuracy in built-up areas for relatively low power
    usage
-   (-) must be physically at the location in order to record it

[]{#near}

### State: Wifi Near

##### Setup

Create a **State context**, click **Wifi Near** (in the Net category),
fill in the SSID of an Access Point (AP) with the best signal near where
you want to identify.

##### About

Wifi Near does regular Wifi Scans and will activate when it recognizes
an AP you have configured is nearby. Note: you don\'t have to connect to
the AP. You could configure e.g. the neighbours AP if the signal is
strong enough.

Frequency of checks is controlled by
`Prefs / Monitor / Wifi Scan Seconds` (screen on) and
`Prefs / Monitor / Display Off All Checks` (screen off).

Check the **Wifi Toggle** box if you don\'t want wifi on all the time.
It will then be toggled when Tasker needs to do a scan. This isn\'t
needed in In Android 4.4+ if you select `Scanning Always Available` in
Advanced Wifi Settings and will save power.

##### Plus / Minus

-   (+) very good accuracy and reliability
-   (+) less power than GPS
-   (+) works indoors too
-   (-) need an AP nearby

##### Other Settings

-   `Prefs / Monitor / Display Off Monitoring / Motion Detection`: if
    available on your device, will need to be disabled if you wish to
    detect an AP that may turn off and on.

[]{#gps}

##### Location: GPS

##### Setup

Create a location context, and deselect Net.

##### About

Frequency of GPS checks is controlled by `Prefs / Monitor / GPS Check`
(screen on) and `Prefs / Monitor / Display Off All Checks`. Higher
frequencies mean more battery usage but that location changes will be
noticed more quickly.

When indoors, GPS will try a long time to get a signal, using a lot of
battery. Adjust it at `Prefs / Monitor / GPS Timeout`. Make the timeout
as low as you can until you start losing effectiveness.

[More Info](#loccontext.html).

##### Plus / Minus

-   (+) highly accurate in the open air
-   (-) functions very poorly or not at all indoors. A bad side effect
    is that if you enter a building e.g. office while between the check
    times, it may never detect your new location until you leave.
-   (-) extreme power usage
-   (-) needs network to get a first fix

##### Other Settings

-   `Prefs / Monitor / Display Off Monitoring / Motion Detection`: if
    available on your device, will need to be disabled if you wish to
    detect changes of location on the order of a few meters.

[]{#adv}

### Advanced Strategies

##### Motion Detection

Some devices have a low-power accelerometer that can be active while the
rest of the device is sleeping.

For such devices, Tasker will not do location checks with the display
off unless it detects that significant movement has taken place since
the last check, resulting in lower power usage and faster response times
when the device does eventually move.

##### Multiple Contexts

Tasker does not check high-power contexts until all lower-power contexts
in the same profile are active. You can use this to reduce power
consumption. For instance, if you use the Wifi Near state to detect
coming home, you could add a Location: Net context to the same profile,
so that wifi scanning will only take place when you are in the right
neighbourhood.

##### Location Control

Disable GPS/Net location when they\'re not needed by creating a separate
profile with e.g. a Time context which disables GPS during the night.

This works because Location contexts assume you are in the same location
until there is a fix which says otherwise.

[]{#matching.html}

Pattern Matching ![](icon_tasker.png)
-------------------------------------

### What\'s Pattern Matching ?

With Pattern Matching, you specify a *pattern* which tells Tasker what
text you wish to match. For instance, if you want to match any telephone
number starting with **0135**, you can specify the simple match
**0135\***. **\*** is a special character which *matches* any number of
any character.

Tasker has two type of matching, [Simple Matching](#simple) and more
advanced [Regex Matching](#regex). []{#simple}

### Simple Matching

Simple matching is designed to be easy for non-technical people to use.

#### Where\'s It Used ?

Simple Matching is used in the following places:

-   in the **If** condition of an action, when the **\~** (match) or
    **!\~** (not match) operators are specified.
-   in text paremeters of State and Event contexts
-   some other places :-)

#### Matching Rules

-   if a pattern is left blank, it will match against anything
-   if it is not blank it must match the whole target text
-   **/** means \'or\', it divides up multiple possible matches
-   a **\*** will match any number of any character. It\'s not possible
    to specifically match a **\*** character.
-   a **+** will match one or more of any character. It\'s not possible
    to specifically match a **+** character.\
    Beware: the condition \'%var matches +\' will be **true** if %var
    has not been assigned a value, because Tasker does not replace
    variables which do not have a value.
-   matching is case-insensitive (*magic* will match with *MagiC*)
    **unless** the pattern contains an upper-case letter e.g. *Magic\**
    will not match against *magically*, but it will match against *Magic
    Roundabout*
-   a **!** at the very start of a match means **not** e.g.
    *!\*Magic\*/\*Yellow\** matches anything **not** containing the
    words *Magic* or *Yellow*
-   it is not possible to specifically match a **!** character at the
    start of a target (but you could use **\*!**

Examples

-   *help* matches *help* but not *helper*.
-   *help\** matches *helper*
-   *\*the\** matches *the* (anywhere)
-   *123+* matches *123* and minimally one more character
-   *+* matches anything with at least one character (non-empty)
-   *the\*way* matches *the other way* and *the first way*, amongst
    others
-   *Help/\*shell* matchs *Help* or anything ending with *shell*,
    case-sensitively

[]{#caller}

#### Caller Matching

Caller matching (some events and states e.g. *Call*) is handled slightly
differently.

-   *C:ANY* matches the telephone number of any contact
-   *C:FAV* matches the telephone number of any favourite (starred)
    contact
-   *CG:`groupmatch`* matches the telephone number of a contact in a
    group which matches `groupmatch`
-   *Otherwise:* otherwise a match is attempted using the general
    matching rules against **both** the caller phone number and the
    associated contact\'s name (if there is one).

Examples:

-   *!C:ANY* matches a number **not** belonging to a contact
-   *077\*/Geoff\** matches a number starting with *077* or belonging to
    a contact whose names starts with *Geoff*
-   *C:FAV/0123456789* matches any favourite contact or the telephone
    number *0123456789*
-   *CG:\*Family\*/CG:Business* matches any contact in the contact
    groups *Family Members*, *My Family* or *Business*

[]{#regex}

### Regular Expression Matching

Regular expressions are similar to simple matching patterns but have
many more features and are much harder for non-technical people.

#### Where\'s It Used ?

Regex Matching is available:

-   in the **If** condition of an action, when the **\~R** or **!\~R**
    operators are specified.
-   in the *Variable Search Replace* action
-   in the condition of a *Variable Value* state
-   wherever a Simple Match is possible, by preceding the regex with
    **\~R** or **!\~R**

#### Matching Rules

Standard Java regular expression matching is applied. The Android
Developer site has a [reference
page](http://developer.android.com/reference/java/util/regex/Pattern.html).
[]{#maths.html}

Maths ![](icon_tasker.png)
--------------------------

#### Where Is Maths Used ?

-   When you do `Variable Set` and click the *Do Maths* checkbox
-   With the `If` action, if you select a mathematical comparison like
    **\<** or **=**
-   With individual action conditions when a mathematical comparison is
    selected

#### What\'s Available

Tasker uses the [MathEval](http://www.softwaremonkey.org/Code/MathEval)
library by Lawrence PC Dol.

#### Operators

-   **+ - \* /** - the basic operators
-   **%** - modulus
-   **\^** - power

##### Constants

-   **E** - the base of the natural logarithms
-   **EUL** - Euler\'s Constant
-   **LN2** - log of 2 base e
-   **LN10** - log of 10 base e
-   **LOG2E** - log of e base 2
-   **LOG10E** - log of e base 10
-   **PHI** - the golden ratio
-   **PI** - the ratio of the circumference of a circle to its diameter

##### Functions

Trigonometric functions expect a value in radians.

Functions take their argument in parenthesis e.g. sin(torad((90))

-   **abs** - absolute value
-   **acos** - arc cosine; the returned angle is in the range 0.0
    through pi
-   **asin** - arc sine; the returned angle is in the range -pi/2
    through pi/2
-   **atan** - arc tangent; the returned angle is in the range -pi/2
    through pi/2
-   **cbrt** - cube root
-   **ceil** - smallest value that is greater than or equal to the
    argument and is an integer
-   **cos** - trigonometric cosine
-   **cosh** - hyperbolic cosine
-   **exp** - Euler\'s number e raised to the power of the value
-   **expm1** - *e*x-1
-   **floor** - largest value that is less than or equal to the argument
    and is an integer
-   **getExp** - unbiased exponent used in the representation of val
-   **log** - natural logarithm (base e)
-   **log10** - base 10 logarithm
-   **log1p** - natural logarithm of (val+1)
-   **nextup** - floating-point value adjacent to val in the direction
    of positive infinity
-   **round** - closest 64 bit integer to the argument
-   **roundhe** - double value that is closest in value to the argument
    and is equal to a mathematical integer, using the half-even rounding
    method.
-   **signum** - signum function of the argument; zero if the argument
    is zero, 1.0 if the argument is greater than zero, -1.0 if the
    argument is less than zero
-   **sin** - trigonometric sine
-   **sinh** - hyperbolic sine
-   **sqrt** - correctly rounded positive square root
-   **tan** - trigonometric tangent
-   **tanh** - hyperbolic tangent
-   **todeg** - converts an angle measured in radians to an
    approximately equivalent angle measured in degrees
-   **torad** - converts an angle measured in degrees to an
    approximately equivalent angle measured in radians
-   **ulp** - size of an ulp of the argument

[]{#power.html}

Power ![](icon_tasker.png)
--------------------------

Internally, Tasker does its best to keep power usage down. Following are
some macro-strategies to achieve this.

#### Context Monitoring

When a profile contains multiple contexts, power is saved by only
monitoring for changes in order of the least-power-hungry first. For
example, in a profile with a Time and App context, Tasker will not
decide that it needs to monitor for a changing application unless the
Time context is active (because the profile cannot become active until
both contexts are active).

Tasker rates contexts for power-hungriness in the following (ascending)
order:

-   Other State
-   Day / Time
-   Calendar Entry State
-   Cell Near State
-   App
-   BT Near State
-   Network Location
-   Wifi Near State
-   GPS Location
-   Temperature / Humidity / Proximity / Pressure / Magnetic Field /
    Light Sensor / Gesture Event / Orientation State (accelerometer
    activation)

Items at the bottom of the list won\'t become eligible for monitoring
until all items further up the list are active.

#### Display-Off Checks

When the display is off, all necessary \'active\' checks (GPS/Net
Location, Wifi Near, App) are done at the same time so that the device
is awake for as short a time as possible. See *Display Off Timings* in
`Menu / Prefs / Monitor` for the frequency and maximum duration of these
checks. []{#settings.html}

Settings ![](icon_tasker.png)
-----------------------------

#### What\'s A Setting ?

Settings are actions like *Display Brightness* and *Ringer Volume* whose
effects are reversed by Tasker when the profile(s) which applied them
are no longer active.

Settings have a cog icon next to them. Normal actions have a lightning
bolt.

#### Single Profile

When a setting is applied by the profile\'s Enter Task, its value is
restored after the profile becomes inactive again. For example, if the
ringer volume is at 7 and is set to 0 in the Enter Task, when the
profile becomes inactive it is automatically set back to 7.

In other words, settings are only valid for the lifetime of their
profiles.

#### Multiple Profiles

When multiple profiles that affect a setting are active simultaneously:

1.  the setting has the value from the **most recently activated**
    profile
2.  when **all** profiles are inactive, the setting has the value from
    before **any** profile was active

#### Special Cases

-   if a setting is changed by the Exit Task the profile will never save
    the setting\'s initial value.
-   settings changed in an *instant profile* (one with an event context
    or repeating/non-ranged time context) remain changed after the
    event. The reasoning is that there is no point in changing the
    setting for the half-second that the event lasts.

#### Notes

-   settings are not *actively* maintained. If something else changes
    the setting once the Enter task has run, it\'s not the case that
    this is detected and the Enter task value automatically reapplied.

Complicated, huh ? []{#variables.html}

Variables ![](icon_tasker.png)
------------------------------

#### General

A variable is a named value which changes over time e.g. the level of
the battery, the time of day.

When Tasker encounters a variable name in a text, it replaces the name
with the current value of the relevant variable before carrying out the
action.

The main purposes of variables are:

-   *dynamic binding*: doing something with an action with data which
    is unknown when the task is created e.g. respond to an SMS; the
    sender is not known until the SMS is received.
-   allow [flow control](#flowcontrol.html) within and between tasks
-   record data for some future use e.g. passing data between tasks

#### Global vs. Local Variables

Variables which have an **all-lower-case** name (e.g. %fruit\_bar) are
*local*, meaning that their value is specific to the task or scene in
which they are used.

Variables which have one or more capital letters in their name (e.g.
%Car, %WIFI) are *global*, meaning that wherever they are accessed from
the same value is returned.

#### Built-In Variables

The values of built-In variables are updated automatically by Tasker.

##### Local Built-In Variables

-   **Action Error**\
    *%err*\
    Is set to an integer if an error occurred when running the last
    action. The actual number can signify the error which occurred, but
    is usually 1 for most Tasker actions (notable exception: `Run Shell`
    and plugins).
-   **Action Error Description**\
    *%errmsg*\
    A description of the error which **last resulted in %err being
    set**. Currently never set by Tasker but possibly by some plugin
    actions.
-   **Task Priority**\
    *%priority*\
    The priority of the running task. The priority determines which task
    executes its next action when several tasks are running together.\
    See also: [Task Scheduling](#scheduling)
-   **Task Queue Time**\
    *%qtime*\
    How long (seconds) the running task has been running.\
    Note that tasks can be interrupted by higher priority tasks, so this
    number is not necessarily the total run-time of the task.\
-   **Task Caller**\
    *%caller*\
    A variable array tracing the origin of the current running task.
    *%caller1* gives the origin of the current task, *%caller2* the
    origin of *%caller1* etc.

    Example: if task A uses action `Perform Task` to start task B, then
    when task A is run by pressing the Play button in the task edit
    screen, *%caller1* in task B will show **task=A**, *%caller2* will
    show **ui**.

    The format of each entry in the array is
    *callertype*(**=***callername*(**:***subcallername*))

    Caller types ares detailed below:

    -   **profile**\
        a profile (when it\'s state changes). *callername* is either
        **enter** or **exit** depending on whether the profile activated
        or deactivated. *subcallername* is the name of the profile, if
        it has one, otherwise **anon**
    -   **scene**\
        a scene event, with *callername* being the scene name. For
        element events, *subcallername* is the element name. For action
        bar button presses, *subcallername* is the label if one was
        given. For scene-global events (e.g. Key), *subcallername* is
        event type
    -   **ui**\
        the Play button in the task edit screen in the Tasker UI
    -   **launch**\
        clicking a child application icon in the launcher
    -   **nbutton**\
        a notification action button, either from Tasker\'s permanent
        notification or one created with one of the Notify actions.
        *callername* specifies the label of the button if present.
    -   **external**\
        an external application
    -   **qstile**\
        a Quick Settings tile. *callername* specifies the label of the
        tile.
    -   **appshort**\
        an app shortcut (accessed via long-click on the Tasker icon).
        *callername* specifies the label of the tile.
    -   **task**\
        another task, from a Perform Task action. *subcallername* is the
        task name, if it has one, otherwise **anon**

##### Global Built-In Variables

-   **Airplane Mode Status**\
    `(dynamic)`\
    *%AIR*\
    Whether Airplane Mode is **on** or **off**
-   **Airplane Radios**\
    *%AIRR*\
    A comma-separated list of the radios which will be **disabled** when
    entering Airplane Mode.\
    Common radio names are: *bluetooth, cell, nfc, wifi, wimax*.
-   **Battery Level**\
    *%BATT*\
    Current device battery level from 0-100.
-   **Bluetooth Status** `(dynamic)`\
    *%BLUE* Whether Bluetooth is **on** or in some other state
    (**off**).\
-   **Calendar List**\
    *%CALS*\
    Newline-separated list of calendars available on the device.\
    Each entry is in the format *calendarprovider:calendarname*.\
    Example usage:

           Variable Set, %newline, \n
            Variable Split, %CALS, %newline
            Flash, %CALS(#) calendars, first one is %CALS(1)

    For the sign *\\n*, press carriage-return on the keyboard.

-   **Calendar Event Title / Descr / Location** *%CALTITLE / %CALDESCR /
    %CALLOC*\
    The title, description and location of the **current** calendar
    event, if there is one. If there are multiple current calendar
    events the variables refer to the **shortest**.\
    Tip: find other details about the current event(s) using the
    `Misc / Test` action, specifying %TIMES for the data.
-   **Call Name / Number/ Date / Time (In)** `(dynamic, monitored)`\
    *%CNAME / %CNUM / %CDATE / %CTIME*\
    The caller name, number, date and time of the current (if a call is
    in progress) or last call received.\
    Caller number is **0** if it\'s unknown.\
    Caller name is **?** if it\'s unknown (probably because the caller
    number was blocked) and set to the caller number if the contact
    couldn\'t be looked up. It\'s unavailable on Android versions prior
    to 2.0.
-   **Call Name / Number/ Date / Time / Duration
    (Out)**`(dynamic, monitored)`\
    *%CONAME / %CONUM / %CODATE / %COTIME / %CODUR*\
    The called name, number, date and time of the last (**not** the
    current) outgoing call made.\
    Called Name is set to the called number if the contact couldn\'t be
    looked up. It\'s unavailable on Android versions prior to 2.0.
-   **Cell ID** `(dynamic,monitored)`\
    *%CELLID*\
    The current cell tower ID if known.\
    If you are using a Cell Near state, note that sometimes the Cell
    Near state will stay active even though %CELLID reports that the
    tower ID is unknown or invalid; that is because Cell Near only
    responds to valid IDs to prevent the state becoming inactive e.g.
    due to a service interruption.\
    For backwards compatibility, UMTS cells are reported with a GSM
    prefix.\
    From Android 4.2, Tasker version 4.3+, cells could be found from 2
    different network types simultaneously. In that case, the value is
    reported with preference for the network type leftmost on the list:
    GSM, CDMA, UMTS, LTE.
-   **Cell Signal Strength** `(dynamic,monitored)`\
    *%CELLSIG*\
    The current phone signal level from 0-8 inclusive on a rougly linear
    scale. On some phones, the level will rise in steps of 2
    (0,2,4,6,8). The value is -1 if the value is unknown or there is
    e.g. no service.\
    From Android 4.2, Tasker version 4.3+, cells could be found from 2
    different network types simultaneously. In that case, the value is
    reported with preference for the network type leftmost on the list:
    GSM, CDMA, UMTS, LTE.\
    There is a bug with some Android versions that the reported signal
    strength is not updated until the device is turned off and on.
-   **Cell Service State** `(dynamic,monitored)`\
    *%CELLSRV*\
    The current phone service state. One of *unknown, service,
    noservice, emergency, nopower*.
-   **Clipboard Contents**\
    `(dynamic,monitored)` *%CLIP*\
    The current contents of the system clipboard.
-   **CPU Frequency**\
    *%CPUFREQ*\
    The current frequency CPU 0 is running at. See also: [CPU
    Control](#cpu.html).
-   **CPU Governor**\
    *%CPUGOV*\
    The current governor controlling the frequency of CPU 0. See also:
    [CPU Control](#cpu.html).
-   **Date**\
    *%DATE*\
    Current human-readable date.
-   **Day of the Month**\
    *%DAYM*\
    Current Day of the Month, starting at 1.
-   **Day of the Week**\
    *%DAYW*\
    Current Day of the Week starting with Sunday.
-   **Device ID / Manufacturer / Model / Product**\
    *%DEVID / %DEVMAN / %DEVMOD / %DEVPROD*\
    The ID, manufacturer, model and product name of the device.\
    Note: ID is **not** a unique identifier for the device, but rather
    for the hardware of the device. See also: %DEVTID.
-   **Device Telephony ID**\
    *%DEVTID*\
    Returns the unique telephony-based ID for the device (e.g. for GSM
    the IMEI, for CDMA the MEID or ESN).\
    Not available on all devices.
-   **Display Brightness** *%BRIGHT* Current screen brightness, 0-255.
    On some devices, if the Android setting Auto Brightness is enabled,
    the value will always be 255.
-   **Display Timeout** *%DTOUT* Current system screen timeout
    (seconds).
-   **Email From / Cc / Subject / Date / Time** `(dynamic)`\
    *%EFROM / %ECC / %ESUBJ / %EDATE / %ETIME*\
    The From, Cc, Subject, Received Date and Received Time of the last
    email received by the K9 email agent.
-   **Free Memory**\
    *%MEMF*\
    System free memory remaining in MB.
-   **GPS Status**\
    (monitored,dynamic Gingerbread+) *%GPS*\
    Whether the system GPS receiver is **on** or **off**.
-   **Heart Rate** `(monitored,dynamic)`\
    *%HEART*\
    The current detected heart rate in beats per minute.\
    See also: state *Heart Rate*.\
    The value will be negative for no contact (-1), accuracy unreliable
    (-2) or some other problem (-3)
-   **HTTP Response Code / Data / Content Length**\
    `(dynamic)`) *%HTTPR / %HTTPD / %HTTPL*\
    Values from the last HTTP POST/GET action.\
    If the server doesn\'t return a content length, %HTTPL will be
    calculated from the returned data where possible.
-   **Input Method**\
    *%IMETHOD*\
    The current active input method. Consists of 4 parts separated by
    commas: Method Name, SubType Name, Mode, Locale.\
    To access particular parts, use the *Variable Split* action.
-   **Interrupt Mode** `(dynamic)`\
    *%INTERRUPT*\
    Only available on Android 5.0+, **requires Tasker\'s notification
    access service to be enabled**, see Android\'s Sound & Notification
    settings.\
    \
    Android 5.0+: the current state of interruptions mode on the device:
    **none**, **priority** or **all**\
    See Also: action *Interrupt Mode*\
    \
    Android 6.0+: the current state of Do Not Disturb mode on the
    device: **none**, **priority**, **all** or **alarms**\
    See Also: action *Do Not Disturb*
-   **Keyguard Status**\
    *%KEYG*\
    Whether the Keyguard is **on** or **off**
-   **Last Application**\
    *%LAPP*\
    The name of the application that was in the foreground before the
    current one e.g. Maps.
-   **Last Photo**\
    *%FOTO*\
    The filesystem path to the last photo taken by Tasker or the
    standard system camera application.
-   **Light Level** `(dynamic,monitored)`\
    *%LIGHT*\
    The last recorded light level in lux.\
    Note that Android does not return a value until the light level
    changes, so to test the sensor is working you should put it near a
    bright light initially.\
    May not change when the device display is off, see
    `Menu / Prefs / More / Display Off Monitoring / Light Sensor`.
-   **Location** `(dynamic)`\
    *%LOC*\
    The latitude and longitude of the last GPS fix.\
    [See note](#locnote).
-   **Location Accuracy** `(dynamic)`\
    *%LOCACC*\
    The accuracy in metres of the last GPS fix.\
    [See note](#locnote).
-   **Location Altitude** `(dynamic)`\
    *%LOCALT*\
    The altitude in metres of the last GPS fix, or 0 if unavailable.\
    [See note](#locnote).
-   **Location Speed** `(dynamic)`\
    *%LOCSPD*\
    The speed in metres/second at the last GPS position fix or 0 if
    unavailable.\
    [See note](#locnote).
-   **Location Fix Time Seconds** `(dynamic)`\
    *%LOCTMS*\
    The time in seconds of the last GPS fix. To get age of fix, take
    this away from %TIMES.\
    This value is not set until an offset of the GPS time from the fixed
    time has been calculated (should be after the first GPS fix) because
    the value is meaningless until that point.\
    [See note](#locnote).
-   **Location (Net)** `(dynamic)`\
    *%LOCN*\
    The latitude and longitude of the last network location fix.\
    [See note](#locnote).
-   **Location Accuracy (Net)** `(dynamic)`\
    *%LOCNACC*\
    The accuracy in metres of the last network location fix.\
    [See note](#locnote).
-   **Location Fix Time (Net)** `(dynamic)`\
    *%LOCNTMS*\
    The time in seconds of the last net location fix. To get age of fix,
    take this away from %TIMES.\
    [See note](#locnote).
-   **Magnetic Field Strength** `(monitored,dynamic)`\
    *%MFIELD*\
    The total magnitudes in micro-Teslas of the magnetic fields acting
    on all three axis of the devices sensor.\
    Updated once per second.\
    See Also: state `Magnetic Field`.
-   **Music Track** `(dynamic,monitored))`)\
    *%MTRACK*\
    The current playing music track, supported for:
    -   Tasker actions *Music Play* and *Music Play Dir*
    -   Built-in Android music-player, probably not on all devices
        however
    -   Power AMP
    -   BeyondPod (Tasker v1.2.1+)
    -   Phantom Music Control Pro
    -   Media Utilities

    Priority: if both Tasker and one of the other supported apps are
    playing simultaneously, the non-Tasker track will be shown. If more
    than one of the other supported apps is playing simultaneuosly,
    behaviour is unspecified.\
    Notes:
    -   if you don\'t have a supported player, you could try Phantom
        Music Control Pro or Media Utilities, which support a lot of
        players and should pass the info on to Tasker
    -   pausing a track clears the variable, unpausing sets it again
    -   your music player may need an option enabled in order to
        broadcast the track information, or the broadcast may only be
        available in a \'pro\' version

-   **Muted**\
    *%MUTED*\
    Whether the microphone is currently muted (**on**) or not (**off**).
-   **Night Mode**\
    *%NIGHT*\
    The current Android Night Mode.\
    One of **on**, **off** or **auto**.\
    If **auto**, Android will decide whether it should be in Night Mode
    itself.
-   **Notification Title** `(monitored, dynamic)`\
    *%NTITLE*\
    The title of the last notification shown in the status bar. Prior to
    KitKat, requires Tasker\'s accessibility server to be running (see
    Android Accessibility Settings). From KitKat, requires Tasker\'s
    Notification Listener service to be running instead.\
    In a task running as a result of a `Notification` or
    `Notification Removed` event, use variable %evtprm2 instead of
    %NTITLE. This is much more reliable and you have access to other
    parts of the notification (%evtprm3 etc)\
    Notifications generated by Tasker are not shown.
-   **Phone Number**\
    *%PNUM*\
    The current phone number of the device, if it\'s in service.\
    On some phones it doesn\'t work (Android limitation), seems related
    to the type of SIM.
-   **Pressure** `(monitored,dynamic)`\
    *%PRESSURE*\
    The current air pressure on the device in millibars.\
    May not change when the device display is off, see
    `Menu / Prefs / Monitor / Display Off Monitoring / Pressure Sensor`.
-   **Profiles Active** `(dynamic)`\
    *%PACTIVE*\
    A comma-separated list of the currently active, named profiles in
    activation order. Duplicate names will appear on the list only once.
    The list always starts and ends with a comma to make matching
    easier, if it\'s not empty.
-   **Profiles Enabled** `(dynamic)`\
    *%PENABLED*\
    A comma-separated list of the currently enabled, named profiles in
    creation order. Duplicate names will appear on the list only once.
    The list always starts and ends with a comma to make matching
    easier, if it\'s not empty.
-   **Roaming**\
    *%ROAM*\
    **on** if device is roaming on the current telephone network,
    otherwise **off**.
-   **Root Available**\
    *%ROOT*\
    **yes** if root functions are available on this device, otherwise
    **no**.
-   **Screen** `(dynamic)`\
    *%SCREEN*\
    Whether the screen is on (value **on**) or off (value **off**).
-   **SDK Version**\
    *%SDK*\
    The numeric Android [SDK
    version](http://developer.android.com/reference/android/os/Build.VERSION_CODES.html)
    of the device.
-   **Silent Mode** `(dynamic)`\
    *%SILENT*\
    The current state of silent mode: **off**, **vibrate** or **on**.\
    From Android 5.0+ this variable is intended to only reflect whether
    the device is in vibrate mode (**vibrate**) or not (any other
    value), but the **on** value is included for backwards compatibility
    and set when the device is not in vibrate mode and the interrupt
    mode is **none** or **priority**.\
    See Also: variable *%INTERRUPT*, actions *Silent Mode* and
    *Interrupt Mode*.
-   **SIM Serial Number**\
    *%SIMNUM*\
    The serial number of the SIM card, if one is present and
    accessible.\
    If the SIM has not been unlocked it will not be available.
-   **SIM State**\
    *%SIMSTATE*\
    The current state of the SIM card.\
    One of **unknown**, **absent**, **pinrequired**, **pukrequired**,
    **netlocked** or **ready**.
-   **Speakerphone**\
    *%SPHONE*\
    Whether the speakerphone is **on** or **off**
-   **Speech** `(dynamic)`\
    *%SPEECH*\
    The current utterance as a result of a *Say* or *Say File* action,
    if applicable.
-   **Tasks Running** `(dynamic)`\
    *%TRUN*\
    A comma-separated list of any named tasks which are currently
    running. The list always starts and ends with a comma to make
    matching easier, if it\'s not empty.
-   **Telephone Network** `(dynamic, monitored)`\
    *%TNET*\
    The current telephony network operator the device is using.\
    May be unreliable on CDMA networks
-   **Temperature** `(monitored,dynamic)`\
    *%TEMP*\
    The current ambient temperature in degrees Celsius.\
    May not change when the device display is off, see
    `Menu / Prefs / Monitor / Display Off Monitoring / Temp. Sensor`.\
    See also: state *Temperature*.
-   **Text From/Date/Subject/Time** `(monitored)`\
    *%SMSRF / %SMSRN / %SMSRB / %MMSRS / %SMSRD / %SMSRT*\
    The sender address, name, body, subject, date and time of the last
    text (SMS or MMS) received.\
    These variables will be empty until the first time a text is
    received after they have been referenced because Tasker does not
    monitor texts unless it\'s needed.\
    *Name* is set to sender address of no contact could be looked up.
    It\'s unavailable on Android versions prior to 2.0.\
    *Body* (%SMSRB) is only set for SMSs.\
    *Subject* (%MMSRS) is only set for MMSs.
-   **Time**\
    *%TIME*\
    Current human-readable time separated by a period e.g. 10.59
-   **Tether** (dynamic)\
    *%TETHER*\
    A comma-separated list of enabled tethering forms i.e. connections
    over which another device can connect to this one in order to use
    its internet connection.\
    The possible forms are **wifi**, **usb** or **bt**.\
    BT will only be present when an actual client is connected via BT
    for using the devices network connection, whereas the others will be
    present as soon as the functionality is enabled (Android
    bug/limitation).
-   **Time MilliSeconds**\
    *%TIMEMS*\
    The current time in milliseconds.\
    (milliseconds since some time in January, 1970, if you must know).
-   **Time Seconds**\
    *%TIMES*\
    The current time in seconds.\
    (seconds since some time in January, 1970, if you must know).
-   **UI Mode** `(dynamic,monitored)`\
    *%UIMODE*\
    The current Android UI mode.\
    One of **car**, **desk**, **appliance**, **tv** (television),
    **watch**, **undef** (undefined) or **normal**.
-   **Uptime Seconds**\
    *%UPS*\
    The number of seconds since the device last booted.
-   **Volume - Alarm/Call/DTMF/Media/Notification/Ringer/System**
    `(dynamic)`\
    *%VOLA / %VOLC / %VOLD / %VOLM / %VOLN / %VOLR / %VOLS*\
    Current audio channel volume level.\
    On some devices, volume changes are not picked up dynamically, on
    others not when using the phone app.
-   **WiFi Info**\
    *%WIFII*\
    When connected to an Access Point (AP), shows human-readable data
    about the AP. When not connected, show details of the most recent
    Wifi scan results for nearby APs.
-   **WiFi Status** `(dynamic)`\
    *%WIFI*\
    Whether WiFi is **on** or **off**. Note: if WiFi is enabling or
    disabled, in fact anything but enabled, it\'s classed as off.
-   **Wimax Status**\
    *%WIMAX*\
    Whether Wimax is **on** or **off**. Note: if Wimax is enabling or
    disabled, in fact anything but enabled, it\'s classed as off.
-   **Window Label** `(monitored)`\
    *%WIN*\
    The label of the current window, which could be a full-screen
    activity or a dialog.\
    Not set if the label is unknown.\
    For some windows, the label might be that of the first item in the
    window e.g. a menu entry or even a button.

##### General Notes

Variables marked `dynamic` in the list above trigger changes in
*Variable Value* states and *Variable Set* events whenever their value
changes.

Variables marked `monitored` will cause the relevant monitor to startup
to track their state when they are used in contexts or tasks which are
used by widgets or **enabled** profiles. For instance, %CELLID used in a
Flash action will cause cell location to be tracked.

Limitation: monitored variables cannot be detected in anonymous
shortcuts.

[]{#locnote}

##### Note On Location Variables

When the relevant provider (Net or GPS) of a location context is active,
these variables report the values from the provider, which may be more
recent than Tasker has seen if other applications are asking for
location.

When the relevant provider is **not** active, these variables report the
last values **seen by Tasker**, which could be the result of a
`Get Location` action or of monitoring for a `Location Context`.

That means the the reported fix times could **go backwards**, if you
turn off the location provider between two uses of the variables.

Location variables can also be manually updated by running the
`Get Location` action.

#### User Variables

The action *Variable Set* (and several others) can be used to create new
variables. Variable names have the following restrictions:

-   they must start with the **%** character
-   they are case-sensitive
-   then must at least a further **3** alphanumeric characters
-   they can also contain the underscore character (\_) but not start or
    end with it

In general, it\'s best to use local variables wherever possible because:

-   you know they won\'t be interfered with by other tasks or scenes
-   they are more efficient in several ways

Note: multiple copies of the same task running at the same time each
have their own separate copy of their local variables.

###### Scene-Local Variables

Each scene has its own set of local variables which it shares with the
task that created it; both the scene and task see changes to the
variables made by either.

Any task which starts as a result of a scene event (e.g. a tap on an
element) also shares the variables of the scene (and thus of the
original task which created the scene).

As a consequence, a task started by a scene event (e.g. Tap on an
element) which shows a new scene e.g. via the *Show Scene* action, will
result in the second scene sharing the variables of the first scene.

When a task shows a scene that was created by a different task (or a
different copy of the same task) and subsequently hidden, the task\'s
variables are **copied** to the scene variables (overriding values of
variables which already exist) but the task does **not share** the scene
variables and cannot see changes to them.

##### Escaping Variable Names

If you want to prevent a variable name being replaced, put a **\\** in
front of it e.g.

> `Variable Set, %new, \%old`

Will set the value of *%new* to *%old*, **not** the **value** of *%old*.

In order to precede a variable name with a **\\** you can escape the
backslash e.g.

> `Variable Set, %new, \\%old`

Will set the value of *%new* to **\\** followed by the **value** of
*%old*.

##### Variable References

It\'s possible to indirectly refer to variables by preceeding one or
more extra **%** signs to the start of the variable name. For example:

> ` Variable Set, %colour, red Variable Set, %varname, colour Flash %%varname`

\... will flash **red**.

Using this notation it\'s possible to assign variables whose name is not
known beforehand:

> ` Read File, variablename.txt, To Var, %varname Variable Set, %%varname, red`

This will set the variable whose name is stored in the file
`variablename.txt` to **red**.

You can nest references as deeply as you like (e.g. `%%%%var`) but
mental stress and bugs are sure to follow.

If any part of the chain has an invalid variable name then the original
reference will be returned. In the first example, if `%varname` is set
to `!!!`, then **%%varname** will be flashed instead of **red**.

##### Variable Lifetime

The value a **global** variable holds lasts until Tasker is uninstalled
if it is not changed by any task.

**Local** variables are lost at the end of the task they were created
in, or when the parent scene is destroyed in the case of tasks called
from scenes.

##### Uninitialized Variables

User-variables which have not had a value assigned do not have
replacements carried out e.g. in the expression *I love %fruit*, if
%fruit is uninitialized, the expression remains as it is, otherwise
%fruit is replaced with the value.

Exception: uninitialized variables used in mathematical expressions are
replaced with 0.

#### Variables In Plugins

Plugin developers can tell Tasker to replace variables it finds in
plugin strings with their current Tasker value. If you have a plugin
which doesn\'t support this, send the developer this URL

> <http://tasker.dinglisch.net/plugins.html>

which has the relevant details.

[]{#arrays}

#### Variable Arrays

Tasker supports pseudo-arrays.

They are especially useful when used with the `For` action, since you
can perform a set of actions on each element in turn e.g. list a set of
files then test each one.

##### Examples

If the four variables **%arr1, %arr2, %arr3, %arr4** hold respectively
**a, b, c** and **d** then we have an array with 4 *elements*. These
variables can be used just like any other, however it is also possible
to access them in special ways. Here are some examples:

-   **%arr(\#)**\
    The number of defined array elements (**4** in this case)
-   **%arr(\#\>)**\
    The index of the first defined array element, or **0** if none are
    defined (**1**).
-   **%arr(\#\<)**\
    The index of the last defined array element, or **0** if none are
    defined (**4**)
-   **%arr(\#?b/c)**\
    A comma-separated list of the array indices (lowest to highest) with
    matching values, or **0** if none match (**2,3** in the example)
-   **%arr(\>)**\
    The contents of the first defined array element (**a**)
-   **%arr(\<)**\
    The contents of the last defined array element (**d**)
-   **%arr()** or **%arr(:)**\
    All of the array elements separated by commas (**a,b,c,d**)
-   **%arr(2)** or just **%arr2**\
    The content of the element with index 2 (**b**)
-   **%arr(2:4)**\
    Contents of defined elements with indices 2 to 4 (**b,c,d**)
-   **%arr(:3)**\
    All the defined elements with indices up to 3 (**a,b,c**)
-   **%arr(3:)**\
    All the defined elements with indices starting from 3 (**c,d**)
-   **%arr(1:2)**\
    All the defined elements with indices from 1 to 2 (**a,b**)

Notes:

-   arrays will virtually always have all their elements defined so e.g.
    %arr(\>) will be the same as %arr(1), %arr(\#) will be the same as
    %arr(\#\<)
-   index specifiers can themselves be variables (e.g. %arr(1:%MAX) or
    %arr(\#?%FINDME)) but **not** variable arrays

##### Creating An Array

1.  using `Array Set`:\
    **Array Set, %arr, a b c d**
2.  using `Variable Split` on an existing (simple) variable:\
    **Variable Set %arr a b c d**\
    **Variable Split %arr**\
3.  by assigning individual elements with `Variable Set`:\
    **Variable Set, %arr3, c**.
4.  using `Array Push` to add an initial element
5.  some other actions also create arrays for their results e.g.
    `List Files`.

##### Inserting Elements

Use the `Array Push` action.

The *Fill Spaces* parameter might need more explanation. It is only
relevant if one or more of the array elements are undefined. As an
example, if we have the array elements %arr1 and %arr3 containing
**apple** and **banana**:

-   **Array Push %arr1, 1, pear**\
    leaves %arr1, %arr2 and %arr4 containing **pear**, **apple** and
    **banana**.\
-   but **Array Push %arr2, 1, pear, Fill Spaces**\
    leaves %arr1, %arr2 and %arr3 containing **pear**, **apple** and
    **banana**.

##### Removing Elements

Use the `Array Pop` action. Note the difference between `Array Pop` and
`Variable Clear`: `Pop` reduces the number of elements in the array,
while `Clear` merely changes elements to undefined.

Example: if we have the array elements %arr1, %arr2, %arr3 containing
**apple**,**pear** and **banana**:

-   **Variable Clear %arr2**\
    leaves %arr1 and %arr3 containing **apple** and **banana**.\
-   but **Array Pop %arr2**\
    leaves %arr1 and %arr2 containing **apple** and **banana**.

##### Deleting An Array

Use `Array Clear`.

In most cases you could also use **Variable Clear %arr\*** with Pattern
Matching checked, but that would also delete variables called e.g.
%arrTOODEETOO so `Array Clear` is safer.

##### Sorting

The `Array Process` action offers various sorting options, amongst other
things.

##### Array Efficiency

Arrays are intended for convenience when processing high-level data, not
for e.g. processing astronomical data. Doing thousands of array actions
will likely take several seconds (although mostly due to the
housekeeping work done by Tasker in-between each action rather than due
to the array operations themselves).

In terms of storage efficiency, they are also fairly hopeless. You
probably do not want to store tens of thousands of items in an array.

FAQ: How Do I\... / Can I\... ? ![](androidlogo.png) ![](icon_tasker.png)
-------------------------------------------------------------------------

-   How can I contact the developer ?
-   How can I send the developer a bug report ?
-   How can I send the developer a long-term log ?
-   [Can I change an app\'s settings / press it\'s buttons ?](#a)
-   [Can I control / respond to events in application X with Tasker
    ?](#o)
-   [How can I stop Tasker restoring a setting ?](#cx)
-   [Can Tasker detect volume button presses ?](#c)
-   [Can Tasker be used from an external SD card ?](#d)
-   [Can I use Tasker to turn the screen on and off ?](#e)
-   [How do I create my default settings ?](#f)
-   [How can I run more than one task when a profile goes active ?](#g)
-   [Can I hide the notification list entry when Tasker is running
    ?](#h)
-   [Can I change or remove the status bar icon when Tasker is running
    ?](#h2)
-   [What if I want a repeating time context, but I need to do something
    that takes a while ?](#i)
-   [How can I do something every minute ?](#j)
-   [How do I specify *9:30AM on Monday* and *10AM on Tuesday* with the
    same profile ?](#k)
-   [How do I specify weekend night-times ?](#k2)
-   [How do I stop the screen dimming when I have the display Stay On
    set to e.g. \'With AC\' ?](#l)
-   [How can I stop Wifi Near toggling wifi on-off when the phone is in
    Airplane Mode ?](#m)
-   [Can I divert incoming calls ?](#n)
-   [How can I detect if Wifi is connected (not just enabled) ?](#p)
-   [How can I import/export individual profiles, tasks or scenes ?](#q)
-   [How do I turn off the flashing notification LED ?](#s)
-   [How do I put my phone in Silent or Vibrate mode ?](#t)
-   [Can I automate sending of an SMS / Call through Google Voice ?](#u)
-   [Can I change/remove the notification sounds for particular apps
    ?](#v)
-   Can I silence all notifications except from particular applications
    ?
-   [Can I change the input method ?](#w)
-   [How do I test whether I can reach the Internet (ping) ?](#y)
-   [How can I use whitespace (newline, tab etc) in action parameters
    ?](#y2)
-   [How can I run a task from a terminal login ?](#y3)
-   [How can I silence the camera shutter sound ?](#y4)

------------------------------------------------------------------------

[]{#z}

#### How can I contact the developer ?

There is a contact email given at **Menu / Info / Support**. In general,
this is intended for order and validation help, which is often
confidential, and other private issues.

Please post Tasker usage queries/problems in the [Tasker
Forum](http://groups.google.com/group/tasker) where the developer is
very active.

Advantages:

-   the user community has more experience than the developer with using
    Tasker
-   other people can benefit if your problem is solved
-   the developer has more time for fixing bugs and adding features,
    which benefits everyone

[]{#x}

#### How can I send the developer a bug report ?

-   go to *Android Settings* then **About Phone**
-   tap 10 or more times on the **Build Version** entry
-   go back one screen
-   select **Developer Options**
-   check the **USB Debugging** option if it\'s not already checked
-   do whatever it is that causes the problem
-   go back to **Developer Options** and tap **Take Bug Report** (the
    first entry)
-   wait a short while until the bug report is ready (a notification
    will appear)
-   share using an email application
-   the destination email address is listed in **Menu / Info / Support**
    in Tasker
-   include at the top of the email a brief description of the problem
    that the email concerns
-   disable **USB Debugging** and **Developer Options** (switch at top)

Try to make the log as soon as possible after the problem occurs.

[]{#x2}

#### How can I send the developer a long-term log ?

If your problem covers a longer time-frame, you\'ll need an SD card log
because the system log fills up very quickly:

-   you\'ll need an SD card inserted
-   deselect **Menu / Prefs / UI / Beginner Mode** in Tasker
-   enable **Menu / Prefs / Misc / Debug to SD Card** in Tasker
-   when the problem has occured, email the file
    */sdcard/Tasker/log/tasker.txt* to the developer email listed at
    **Menu / Info / Support**
-   include at the top a brief description of the problem that the log
    concerns

[]{#a}

#### Can I change an app\'s settings / press it\'s buttons ?

Standard Android doesn\'t allow an app to change, poke, prod or peek at
anything within another app, including simulating keypresses and screen
taps.

On a rooted device, you can use some of the actions in the `Input`
category to navigate around an app, click on UI elements and enter text
automatically.

[]{#o}

#### Can I control / respond to events in application X with Tasker ?

If a Tasker user wants to automate some aspect of another program they
use, they just need to point the developer of the other app at the
[Tasker Developer Page](#/developers.html) and nag at him/her a bit.

[]{#cx}

#### How can I stop Tasker restoring a setting ?

Tasker will restore any setting which is changed in the Enter task of a
profile. There are four ways to prevent this:

1.  deselect the *Restore Settings* in the Profile Properties of the
    relevant profile.
2.  if you set the same setting in the Exit task of the profile Tasker
    will take that as a hint that the previous value shouldn\'t be
    restored.
3.  create a separate task to run the settings actions and in the Enter
    task of the profile do a Perform Task action (from the category
    *Tasker*) on that separate task. This trick is known as Stefan\'s
    Setting Sidestep.
4.  you can use the corresponding Javascriptlet function instead of the
    setting action. Settings made in Javascriptlets are not restored.

[]{#c}

#### Can Tasker detect volume button presses ?

No, sorry, that\'s not possible ATM.

The closest you can get is to detect changes in a volume variable (e.g.
%VOLR for the ringer volume) via event Variable Set.

[]{#d}

#### Can Tasker be used from an external SD card ?

Prior to Android 6.0, that is not possible, even using apps2SD.

With Android 6.0+ if the external SD is being used as \'adoptable\',
\'flex\' or \'internal\' (the wording varies) storage, there should be
no issue.

[]{#e}

#### Can I use Tasker to turn the screen on and off ?

Turning on, use the Display / Turn On action. Unfortunately, that action
is inaccessible with Android 2.3+.

For turning off, you can use the Display / System Lock action with
Android 2.0+.

For Android 1.6, you can set the Display Timeout to it\'s minimum
(around 7 seconds) and then set it back to normal in response to a
Display Off event.

[]{#f}

#### How do I create my default settings ?

You don\'t have to configure \'default\' settings in Tasker. The
\'default\' settings are how your device is configured before any Tasker
profile becomes active. This \'default\' is automatically restored as
profiles become inactive.

Exception: changes to settings made in *Exit* tasks are not restored.

[]{#g}

#### How can I run more than one task when a profile goes active ?

Add an action *Perform Task* from the category *Tasker* for each task
that you want to run (don\'t click the Stop button).

**Warning:**: settings in the called tasks will not be restored by
Tasker, only settings changed directly within the Enter task.

[]{#h}

#### Can I hide the notification list entry when Tasker is running ?

If the notification is very annoying, it can be removed on many devices
by setting the icon transparent at **Menu / Prefs / Monitor /
Notification Icon**.

If that doesn\'t work, disable the Run In Foreground setting which can
be found at **Menu / Prefs / Monitor / Run In Foreground**

Please read the help text associated with this option first.

[]{#h2}

#### Can I change or remove the status bar icon when Tasker is running ?

You can change it with **Menu / Prefs / Monitor / Notification Icon**.

You can remove it with **Menu / Prefs / Monitor / Show Notification
Icon**.

[]{#i}

#### What if I want a repeating time context, but I need to do something that takes a while ?

-   GPS On
-   Wait 3 minutes
-   GPS Off

[]{#j}

#### How can I do something every minute ?

Set a repeat period of 2 minutes (the minumum allowed) and specify a
task like this:

-   Perform Task, TaDa
-   Wait 1 Minute
-   Perform Task, TaDa

[]{#k}

#### How do I specify 9:30AM on Monday and 10AM on Tuesday with the same profile ?

You can\'t, because the Time and Day subcontexts operate completely
independent of each other. You have to specify two profiles and run the
same Task(s) with each of them (by giving the task a name).

[]{#k2}

#### How do I specify weekend night-times ?

It\'s tempting to say:

> `     Time: 23 - 09     Day: Friday or Saturday`

But that won\'t work, because on Sunday at e.g. 3am the Day context (and
hence the whole profile) won\'t be active.

For this kind of situation, you need to specify a profile for which
morning you want to be active and another for which evenings. In the
example, you want Friday and Saturday night plus Saturday or Sunday
morning:

> `     Time: 23 - 24     Day: Friday or Saturday`

> `     Time: 00 - 09     Day: Saturday or Sunday`

[]{#l}

#### How do I stop the screen dimming when I have the display Stay On set to e.g. \'With AC\' ?

The screen dims around 10 seconds before the current Screen Off Timeout
value is reached. You can set Screen Timeout (for the relevant context
e.g. \'while docked\') to **Never** (set all sliders to maximum) if you
don\'t like that behaviour. []{#m}

#### How can I stop Wifi Near toggling wifi on-off when the phone is in Airplane Mode ?

Add a state **Airplane Mode** to your profile and click the **Invert**
button, which means *if Airplane Mode is off*. []{#n}

#### Can I divert incoming calls ?

It\'s not possible to divert incoming calls via Android, but most Mobile
Carriers accept special dialled sequences to do it before the call
reaches your phone.

You can then use Tasker\'s *Phone / Call* action (with *Auto Dial*
checked) to setup and cancel incoming call diversions.

The [Wikipedia page on Call
Forwarding](http://en.wikipedia.org/wiki/Call_forwarding) is a good
starting point.

[]{#p}

#### How can I detect if Wifi is connected (not just enabled) ?

The \'standard\' way is to use State *Wifi Connected* to set and clear
your own variable with an enter and exit task respectively.

An alternative trick is to match the word `connected` or `connection` in
the %WIFII variable (the actual word and lower/upper case changes with
Android version).

[]{#q}

#### How can I import/export individual profiles, tasks or scenes ?

Import:

Go to the main screen, long click on the tab for the type of thing you
want to import.

Export:

-   ensure that `Menu / Prefs / UI / Beginner Mode` is **un**checked
-   go to the main screen
-   long-click on the thing you want to export

[]{#s}

#### How do I turn off the flashing notification LED ?

Use the Audio / Notification Pulse action.

If you\'re wondering what a flashing light is doing in the Audio
section: ask Google, that\'s where they put it in Android Settings.

[]{#t}

#### \>How do I put my phone in Silent or Vibrate mode ?

Use action *Audio / Silent Mode*.

Do not try to do it with *Volume Ringer* or *Vibrate on Ringer*.

[]{#u}

#### Can I automate sending of an SMS / Call through Google Voice ?

Not directly through Tasker. However, [Steelgirder
Developments](http://sites.google.com/site/steelgirderdevelopmentsite/home)
have (non-free) plugins which you can easily use with Tasker to
accomplish this.

Steelgirder and the author of Tasker are agreed on working together
wherever further integration of these plugins and Tasker is needed e.g.
support for Tasker variables.

[]{#v}

#### Can I change/remove the notification sounds for particular apps ?

Yes, but it\'s a little complicated, please see the [relevant forum
post](http://groups.google.com/group/tasker/browse_thread/thread/4a6b6ea8b4e4cc86).
[]{#v2}

#### Can I silence all notifications except from particular applications ?

With Tasker versions from 1.0.10, you can try turning off all
notifications (e.g. via Silent Mode or setting the Notification Volume
to 0) and then using Tasker to do alerts for particular app
notifications using the `Notification` event in the UI category. []{#w}

#### Can I change the input method ?

On a rooted phone, yes, using the free Secure Settings plugin.

Consider also starring this [feature
request](http://code.google.com/p/android/issues/detail?id=11677) with
Google.

[]{#y}

#### How do I test whether I can reach the Internet (ping) ?


      HTTP Get URL (a known webpage), Continue Task On Error
      If [ %HTTPR = 200 ]
         ...
      Endif

[]{#y2}

#### How can I use whitespace (newline, tab etc) in action parameters ?

Tasker trims the start and end of all parameters to prevent whitespace
causing problems. The only exception is the `Variable Set` action.

Therefore, if you want to use whitespace you should first assign it to a
variable and then use the variable where you want the whitespace to
appear:

> ` Variable Set, %white, THISISANEWLINE Flash, Here's a newline: %white`

[]{#y3}

#### How can I run a task from a terminal login ?

    am broadcast -a net.dinglisch.android.tasker.ACTION_TASK -e task_name YOUR_TASK_NAME

That\'s only possible on a rooted phone because otherwise there will be
a permission problem.

[]{#y4}

#### How can I silence the camera shutter sound ?

This varies per device.

Try creating a new profile with an **App** context and select the Camera
app. When asked to create a task, add the following actions:

1.  *Task / Wait*, **2 seconds**
2.  *Audio / Sound Effects*, **off**
3.  *Audio / Media Volume*, **0**
4.  *Audio / System Volume*, **0**
5.  *Audio / Notification Volume*, **0**
6.  *Audio / Silent Mode*, **on**

Then go to the Camera app, wait a couple of seconds and try taking a
picture.

If you still hear the shutter sound, go back to the Tasker UI, click on
the task that you created and hit the **Play** button bottom-left to run
the task manually. Then go back to the Camera app. If you still hear the
shutter sound, then it\'s not going to be possible for Tasker to disable
it on your device.

Some manufacturers deliberately prevent disabling of the shutter sound,
perhaps for legal reasons.

Addendum

A user has reported that setting DTMF volume to 0 removes the **focus**
sound in the camera app.

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

FAQ: Usage Problems ![](androidlogo.png) ![](icon_tasker.png)
-------------------------------------------------------------

-   [Why won\'t Android let me uninstall Tasker ?](#0)
-   [Why doesn\'t the Kill App action work in Android 2.2 like it used
    to ?](#a)
-   [Why isn\'t GPS coming on for my profile with Time And GPS Location
    contexts ?](#c)
-   [Why can\'t I select Tasker for an application context ?](#d)
-   [Why does it take my Wifi Near state so long to exit ?](#e)
-   [Why isn\'t Tasker detecting when my Location Context changes ?](#f)
-   [Why does Tasker mess up the app launching when I have an
    Application Context for it ?](#g)
-   [Why does my profile not do anything ?](#h)
-   [Why aren\'t my settings restored ?](#w)
-   Why does nothing happen when I click a Tasker widget ?
-   [Why does Tasker crash when I try to create a Location Context
    ?](#j)
-   [Why can\'t I see any Tasker widgets in the home screen widget
    selector ?](#k)
-   [Why doesn\'t my repeating Time Context work ?](#l)
-   [Why aren\'t my exit tasks run / settings restored before the device
    shuts down ?](#m)
-   [Why does my location exit task fire multiple times ?](#n)
-   [Why does my Cell Near state keep going inactive ?](#o)
-   [Why doesn\'t Notify LED work ?](#p)
-   [Why do Tasker widgets disappear after a reboot on my Wildfire
    ?](#q)
-   [Why isn\'t my docking station detected ?](#r)
-   [Why aren\'t I getting any cell data for the Cell Near state ?](#s)
-   [Why isn\'t there a green light for the On/Off radio button on the
    main screen ?](#t)
-   [Why does the action Display Brightness cause my keyboard or
    application to close ?](#u)
-   [Why is the date in Tasker\'s notification list completely wrong
    ?](#v)
-   [Why won\'t Tasker install on my custom ROM ?](#w)
-   [Why doesn\'t my `Perform Task` action work when I Test it ?](#x)
-   [Why doesn\'t my App Context work ?](#app)
-   [Why doesn\'t the Keyguard action work properly ?](#keyguard)
-   [Why doesn\'t Tasker think my device is rooted ?](#root)

------------------------------------------------------------------------

[]{#0}

#### Why won\'t Android let me uninstall Tasker ?

It\'s probably because you\'re using an action which needs Tasker\'s
device administrator function (e.g. `Display / System Lock`).

You can disable it by going to
`Android Settings / Location & Security / Device Administration`.

[]{#a}

#### Why doesn\'t the Kill App action work in Android 2.2 like it used to ?

Google decided that the feature was being abused and causing more
problems than it solved and it was therefore watered down.

From Tasker version 1.0.21 it\'s more effective again if you have a
rooted device.

[]{#c}

#### Why isn\'t GPS coming on for my profile with Time And GPS Location contexts ?

In order to save power, Tasker only activates context detection as it is
needed. Therefore it will not attempt to fix your GPS location unless
the Time context is active.

See the [Power Usage](#userguide/en/power.html) section of the userguide
for more details.

[]{#d}

#### Why can\'t I select Tasker for an application context ?

This is considered too dangerous. A mistake could easily result in being
unable to enter Tasker and therefore being unable to rectify the
mistake. []{#e}

#### Why does it take my Wifi Near state so long to exit ?

Wifi Near requires **two** check periods to pass without seeing the
Access Point before the profile exits. This is intended to avoid the
context activating and deactivating if the AP is briefly not visible.

Note also that there are different check periods for when the device is
on or off, and by default the off-period is much longer than the
on-period. See Menu / Preferences / Monitor/ Display On/Off Timings.

[]{#f}

#### Why isn\'t Tasker detecting when my Location Context changes ?

Your radius is probably too small.

As an example, if you are not using GPS the accuracy of your fixes is
probably around += 2km, so your radius should be also minimally 2km.

If you \*are\* using GPS, the accuracy may still be only +-400m in
built-up areas.

Here\'s a good way to create a location context:

-   go to the geographical location you want a context for
-   make a new location context
-   deselect GPS if you don\'t want to use it
-   press Grab Fix, and wait till it\'s done

This will set your radius appropriate to the accuracy of the location
providers at that spot.

If there\'s still nothing happening:

-   check GPS is on in Android Settings, if you\'re using GPS.
-   check your device has a view of the sky, if you\'re using GPS
-   network connectivity is often needed to get GPS started, and always
    needed for a Net location context.
-   realize that location is only checked every 10 minutes by default
    when the Display is off (to save power). You can check more often by
    changing `Menu / Prefs / Monitor / Display Off Timings / All Checks`
-   try the [general \'nothing happens\'](#h) tips
-   look at [other possibilities for detecting your
    location](#userguide/en/loctears.html)

[]{#g}

#### Why does Tasker mess up the app launching when I have an Application Context for it ?

Some applications are sensitive like this. Probably all you have to do
is put as the first action in the **Enter** task the action *Wait* and
give as a parameter e.g. 300ms. If that doesn\'t work keep increasing
the value until it does.

That gives the application time to finish initializing before messing
around with the screen brightness etc.

[]{#w}

#### Why aren\'t my settings restored ?

Some possibilities:

-   if your profile sets setting x to *on*, then if x is already *on*
    when the profile goes active, it will be left at *1* when the
    profile exits. Test for this by putting an Alert / Notify action in
    the enter task to see what the original value was.
-   some other apps installed on the system can cause Tasker to be
    killed and therefore the original settings being forgotten e.g. this
    has been reported to be a problem with Titanium Backup.
-   similarly, if the system is rebooted suddenly, some devices aren\'t
    fast enough to save all the settings before the system turns off.

[]{#h}

#### Why does my profile not do anything ?

Firstly, if are you using any of these other apps which have been
reported as interfering try disabling or temporarily uninstalling them:

-   \'Task Killers\'
-   Quick System Info
-   Autostarts

After that:

-   is the profile enabled ? It should have a green tick next to it.
-   have you clicked the *On* button in the [Profile List
    screen](#userguide/en/activity_summary.html) before leaving Tasker ?
    It should be showing a **green light**.
-   is the profile shown as active in the status bar pulldown ? If so,
    it\'s probably your task that\'s not working.
-   make sure the Monitor service running in the foreground (see
    `Menu / Prefs / Monitor`)
-   how\'s your available memory, see
    `Android Settings / Application / Running Services / Available Memory`.
    Are you maybe getting Tasker\'s low-memory notifications ?

If your profile is activating but the task doesn\'t seem to do anything:

-   perhaps you are running a pirated version of Tasker ?
-   try enabling **Menu / Prefs / More / Popup Warning/Errors** to see
    if any errors are occuring (they may not be shown till you go back
    to the Tasker UI)
-   look in **Menu / More / Run Log** to see if the task is being
    carried out.
-   try a simple task like *Alert / Vibrate* or *Alert / Flash*
-   perhaps another profile is interfering: do **Menu / Data / Backup**,
    then delete all other profiles except the one that\'s not working

[]{#i}

#### Why does nothing happen when I click a Tasker widget ?

Usually this is due to Tasker not being enabled, see the *On/Off* button
in the first UI screen. []{#j}

#### Why does Tasker crash when I try to create a Location Context ?

The likely cause is that you are running a non-standard Android ROM
which doesn\'t contain the correct (or maybe any) Google Maps library.
[]{#k}

#### Why can\'t I see any Tasker widgets in the home screen widget selector ?

This is almost always because you have Tasker installed on the SD card,
which is just not possible due to several reasons related to how Tasker
works. []{#l}

#### Why doesn\'t my repeating Time Context work ?

It\'s important to understand that a repeating time context is a
**series of instant events**.

Trying to combine a repeating time context with another context that
does active monitoring usually won\'t work e.g.

> `     Time: Repeating Every 5 Minutes      Task: Enable Wifi (no toggle)`

> `     State: Wifi Near      Task: XXX`

Wifi Near is checked on a static schedule. You currently can\'t change
the schedule dynamically, so the above two profiles will only do XXX
when the 5 minute repeat happens to coincide with when Tasker is doing
it\'s Wifi Near check.

[]{#m}

#### Why aren\'t my exit tasks run / settings restored before the device shuts down ?

Android gives an app very little time to perform cleanup during
shutdown, this is especially a problem on slow devices.

Therefore (as of 1.0.9), Tasker only attempts to run *Variable Set,
Clear, Add* and *Subtract* actions when the device shuts down, since
they take relatively little time.

In the future, Tasker will have some concept of default values which
will then be restored when it starts after the device has booted again.

On Android 1.5 devices, Tasker cannot do anything at shutdown because
the system does not send a notification.

[]{#n}

#### Why does my location exit task fire multiple times ?

Probably the location Android reports is *bouncing* between a point
inside your location radius and one outside. This is relatively unusual
because Tasker has some built-in mechanisms to try and prevent it.

A quick fix is to add a *Cooldown* to your profile. Click on a context,
select Profile then Properties and slide the Cooldown Time to 30
minutes.

The profile is then prevented from going active more than once every 30
minutes.

[]{#o}

#### Why does my Cell Near state keep going inactive ?

Even when your phone is motionless, it will probably still often switch
between different cell towers. Going to a different room in your house
may involve a whole different set of cell towers.

When you notice your Cell Near state going inactive at your location
(and assuming you still have a signal), launch Tasker, click on the Cell
Near context and edit it. Click **Scan** and you should immediately see
a new Cell added to the list. Click **Done** and then **Apply** and your
context should go active again.

Sometimes the new cell will only be visible for a few seconds and will
not appear when you press scan. In that case, press the **Recent**
button and select it manually from the list.

[]{#p}

#### Why doesn\'t Notify LED work ?

From the action help (hint hint):

-   not all devices support all colours. Many devices will only support
    red and green. In general, colours near the top of the list are more
    likely to be supported.
-   some devices will only flash the LED when the device is off at the
    time the notification is received.

[]{#q}

#### Why do Tasker widgets disappear after a reboot on my Wildfire ?

This is a bug on some Wildfire firmware version.

It\'s not possible for the Tasker developer to work around, but is
reported as fixed in version 1.25.405.1 of the firmware.

[]{#r}

#### Why isn\'t my docking station detected ?

Some docking stations just aren\'t recognized as such (Android doesn\'t
indicate that a docking station has been connected).

Depending on other things you connect your device to, you might be able
to use one of the following as a workaround:

-   State: USB connected
-   State: Power
-   State: BT Connected (if it\'s a BT dock)

[]{#s}

#### Why aren\'t I getting any cell data for the Cell Near state ?

A user reports being able to fix this issue as follows:

    I was able to fix this issue by going into the EPST menues using
    ##DATA# on the keypad and changing the EVDO Preferred mode from HDR to
    Automatic.

It\'s possible that you will only be able to receive, not make, phone
calls as another symptom of this problem.

[]{#t}

#### Why isn\'t there a green light for the On/Off radio button on the main screen ?

A user discovered that this happens when the DPI value of the Android
build is set to particulart values (e.g. 200,240 is OK, 220 the light
disappears). []{#u}

#### Why does the action Display Brightness cause my keyboard or application to close ?

Normally Android does not effect changes to brightness immediately, so
Tasker has to use a trick to make it happen. That trick can sometimes
have the side effect that e.g. some dialogs like the soft keyboard may
close.

To avoid that, you can deselect the Immediate Effect checkbox in the
Display Brightness action.

[]{#v}

#### Why is the date in Tasker\'s notification list completely wrong ?

This occurs if you select a transparent *Notification Icon* at
`Menu / Prefs / Monitor`, but don\'t specify a *Custom Notification
Layout*.

Changing to a non-transparent icon or a custom layout will fix the
problem.

[]{#w}

#### Why won\'t Tasker install on my custom ROM ?

The most likely reason is that you don\'t have Google Maps installed on
the device. With several custom ROMs that comes as a separate package.
[]{#x}

#### Why doesn\'t my `Perform Task` action work when I Test it ?

When task (a) runs a `Perform Task` action to start task (b), the order
in which the two tasks are executed depends on their relative
priorities.

A feature of the Test button is that the tested task (a) runs at
extremely high priority to ensure that the task runs even if other tasks
are running in the background.

So testing `Perform Task` with the Test button will only work as
expected if in actual usage task (a) will always have higher priority
than task (b) or the `Perform Task` action has **Stop** specified.

[]{#app}

#### Why doesn\'t my App Context work ?

If you are using Android 5.0+, make sure Tasker\'s Accessibility Service
is enabled in Android Settings (Accessibility section).

If you are using Nova Launcher, set
`Settings / App & Widget Drawer / Advanced / Automatically Close` to
**off**.

Some apps (very few) aren\'t detected by Tasker, usually due to their
internal structure.

Some custom Android ROMs also have special configurations which prevent
Tasker\'s app detection working.

For the latter problem, there are a few things you can try:

-   look for special settings in your ROM that relate to \'keeping the
    launcher in memory\'. They should be **disabled**.
-   change the build properties file. Look in `/system/build.prop` (or
    possibly `/system/local.prop` or `/data/local.prop`) for a line
    like:

    > ro.HOME\_APP\_ADJ=-17

    Change it in a terminal program to look like this:

    > ro.HOME\_APP\_ADJ=1

    If you didn\'t find an existing line, just add the new line as
    above.

    Note: you will first need to make `/system` writeable. You can do
    that e.g. with Tasker\'s `Remount` action. Remember to make it
    not-writeable again after making the change.

-   try detecting apps with a state using the **%WIN** (*window title*)
    variable; create a new state

    > `Variable Value, %WIN, Matches, TITLE`

    where TITLE is the title of the window of the app you are interested
    in. For this solution to work, you also need to enable Tasker\'s
    *Accessibility Service* in Android Settings.

    You can check what %WIN shows for the app you are interested in with
    this profile:

    > Event: Variable Set, %WIN\
    > Alert / Flash, Win is now %WIN

[]{#keyguard}

#### Why doesn\'t the Keyguard action work properly ?

Android does not officially support toggling of the Keyguard by an app.
The Keyguard action was introduced in an early version of Tasker when a
reliable workaround was possible.

In more recent Android versions, the workaround is no longer so reliable
due to internal changes made within Android. If Keyguard works at all,
there may be disturbing side-effects.

The Keyguard action will likely be most reliablewhen the display is on
and and the Keyguard is already unlocked.

Some people have more luck with the same functionality provided by the
[Secure Settings
plugin](https://play.google.com/store/apps/details?id=com.intangibleobject.securesettings.plugin).
After install, you can find the Secure Settings plugin in the **Plugin**
action category. Note that a rooted device is **not** needed to use this
part of Secure Settings.

[]{#root}

#### Why doesn\'t Tasker think my device is rooted ?

Tasker requires two things before root functionality is enabled:

1.  the `su` program must be in your path
2.  **one** of the following must be found:
    -   a superuser package
    -   the word *modversion* somewhere in the file `/system/build.prop`

If root is not being detected on your device but you are sure that root
can be used by Tasker, you can therefore probably fix that by adding a
line like:

> `# modversion this line enables Tasker root support`

to the top of the file `/system/build.prop`.

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

FAQ: Why\... ? ![](androidlogo.png) ![](icon_tasker.png)
--------------------------------------------------------

-   [Why am I an idiot if I use a pirated copy of Tasker ?](#f)
-   [Why is GPS often scanning when I unlock my device ?](#a)
-   [Why does Tasker need so many permissions ?](#b)
-   [Why does Tasker need the INTERNET permission ?](#c)
-   [Why isn\'t Tasker shown in the Application Context list ?](#d)
-   [Why does Tasker have it\'s own music player **and** controls for
    the system music player ?](#e)
-   [Why does a Cell Near context not become inactive when I turn on
    Airplane Mode ?](#g)
-   [Why can\'t I use a downloaded icon for my shortcut task / Notify
    action ?](#h)
-   [Why does my profile have 2 enter tasks ? Why can\'t I add an exit
    task ?](#i)

------------------------------------------------------------------------

[]{#f}

#### Why am I an idiot if I use a pirated copy of Tasker ?

The hacker can do virtually anything with your phone. Record your calls
and upload them to a website, SMS your location and all your contacts,
make calls automatically, wipe your SD card, secretely record from your
microphone any time etc etc []{#a}

#### Why is GPS often scanning when I unlock my device ?

When the device wakes up, Tasker switches from a low-frequency GPS check
schedule to a higher-frequency one. Android\'s GPS software always does
an immediate scan when switching the check frequency.

It\'s not because Tasker is constantly scanning while the device is off

You can change the frequency in Menu / Prefs / Monitor.

[]{#b}

#### Why does Tasker need so many permissions ?

Because it can do so much!

Unfortunately, Android requires that an app specify it\'s permissions
even if they are never used, which means that permissions for all of the
things which the user could **potentially** ask Tasker to do need to be
specified.

If you are still concerned, consider that Tasker has over 25,000
downloads at the time of writing and any abuse taking place would
quickly be discovered.

[]{#c}

#### Why does Tasker need the INTERNET permission ?

The INTERNET permission is used solely for:

-   google maps downloading map data, only for setting up a Location
    context
-   to carry out HTTP Post/Get actions and other actions that require an
    Internet connection by their nature
-   to verify the order number, and only until it has been successfully
    verified
-   to check whether a new Tasker version is available, if configured in
    Preferences

Tasker never directly uses Internet access for **anything** else.

[]{#d}

#### Why isn\'t Tasker shown in the Application Context list ?

Because it\'s easy to get into trouble firing tasks in Tasker. For
example, if a profile is setup with a Tasker Application Context and a
task with Load App Calculator, it will not be possible to enter Tasker
anymore. []{#e}

#### Why does Tasker have it\'s own music player **and** controls for the system music player ?

-   the system music player is not guaranteed to be present or the same
    on all systems.
-   finer control can be exercised over the Tasker player e.g. starting
    the track from a preset seek point
-   Tasker\'s player is more discrete, there is no notification bar
    icon.
-   by having two players available you can do things like alternating
    audio from different music sources or even playing simiultaneously.

[]{#g}

#### Why does a Cell Near context not become inactive when I turn on Airplane Mode ?

Cell Near is *sticky*. That means that once active it stays active until
a non-matching Cell ID is seen. In Airplane Mode no Cell IDs are seen
and so the context stays active.

Many people use Airplane Mode at night e.g. to save battery. If you also
have a Cell Near profile that detects when you are home, it would become
inactive at night if Cell Near wasn\'t sticky.

A couple of points:

-   the Cell radio isn\'t being turned on by Tasker in Airplane Mode.
-   if you want a profile to become inactive for Airplane Mode, just add
    an Inverted state Airplane Mode to it.

[]{#h}

#### Why can\'t I use a downloaded icon for my shortcut task / `Notify` action ?

Some things just weren\'t meant to be (i.e. Android doesn\'t allow it).

To solve the shortcut problem, you can always use a widget though.

For notifications:

-   if you would like this to be possible one day, please star this
    [Android feature
    request](http://code.google.com/p/android/issues/detail?id=12302)
-   it would be technically possible to create \'icon pack\' APKs and
    that might happen one day

[]{#i}

#### Why does my profile have 2 enter tasks ? Why can\'t I add an exit task ?

That\'s because it\'s an [instant](#instant) profile.

As a convenience, the Exit task with such profiles is replaced by an
extra Enter task in case you have a lot to do with that profile.

Note that the tasks you specify execute in the order they are specified,
their actions do not alternate.

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

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

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

FAQ: Other ![](androidlogo.png) ![](icon_tasker.png)
----------------------------------------------------

-   [Do you plan to include feature X ?](#a)
-   [Should I worry about using Tasker\'s Accessibility service ?](#b)
-   [What\'s the difference between a Widget and a Shortcut ?](#diff)
-   [What\'s an *Instant Profile* ?](#instant)

[]{#a}

#### Do you plan to include feature X ?

The developer has a large list of potential features and works through
it according to a mystical method based on star configurations. It\'s
difficult to say what will be done in advance, sorry. []{#b}

#### Should I worry about using Tasker\'s Accessibility service ?

Not at all.

Although the Android warning says Tasker might read passwords, in fact:

-   Android doesn\'t allow apps to see the contents of fields labelled
    *Password*
-   Tasker doesn\'t even ask Android for data about text fields, only
    buttons, windows and notifications

[]{#instant}

#### What\'s an *Instant Profile* ?

Most profiles have a duration. Their enter task fires, they are active
for a while, then they go inactive and settings may be restored or an
exit task fired. However, profiles with

-   an Event context, **or**
-   a Time context where the From parameter is the same as the To
    parameter, **or**
-   a Time context with a repeat value specified

are only active for an instant and hence it does not make sense to talk
about an exit task and restoration of settings.

There\'s no point setting brightness from 200 to 30, and then a
millisecond later back to 200, therefore settings made by an instant
profile stay at whatever value is specified.
