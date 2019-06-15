---
title: 'Tasker: Tasks'
---

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
-   when the task is [turned into and app](appcreation.html)
-   for easier identification of the task within the Tasker UI

#### Deleting Tasks

Named tasks can only be deleted via the *Delete* button on the [Task
Edit](activity_taskedit.html) screen. Unnamed tasks are deleted
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
    Task](help/ah_run_task.html)), in which case the child executes
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
also how sub-tasks launched by [Perform Task](help/ah_run_task.html) are
handled.

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
