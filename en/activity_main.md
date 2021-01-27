---
title: 'Tasker: Main Screen'
---

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

The task list shows the named [tasks](tasks.html) which have been
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

The scene list shows the [scenes](scenes.html) which have been created.

-   **Click** on a scene to edit it
-   **Long-click** for options or to drag scene(s) around

Scenes with a green name have been created but may be invisible
(hidden).

Click on the **Scenes** tab when it is already selected for general
scene-related options such as sorting.

[]{#variables}

#### Variables

The Variables tab is not shown if [Beginner Mode](beginner.html) is
enabled.

By default, all global [user-variables](variables.html) that Tasker
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

Not visible in [Beginner Mode](beginner.html).

##### *Overflow* Button

Click to access menu options if no menu hard-key is available on the
device. []{#menus}

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

The projects tabs are hidden in [Beginner Mode](beginner.html).

-   **Click** on a project tab to switch to viewing only things in that
    project
-   **Long-click** on a project tab for options, including adding a new
    tab. Options can also be accessed by a single click on the selected
    project tab.
-   **Long-click and Select**, then drag to a project tab, any items you
    want to move to that project

The first tab has a slightly special status, it cannot be removed and
anything which is not a member of another project is placed there.
