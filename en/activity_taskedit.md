---
title: 'Tasker: Task Edit'
---

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

If a particular action is a [setting](settings.html), that will be
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

If an action is within a [For loop](flowcontrol.html#for) it is
displayed indented with a **grey** margin. If the `For` action has a
condition on it which is not met, the margin will be **red** (because
the actions in the loop will never execute, like an `If / End If`
block).

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
Mode](beginner.html).

##### Task Icon

Shows the icon associated with the task. Clicking on it allows changing
of the icon.

#### Menu Items

##### Action Labels

Toggle display of action labels (which are specified in the [Action
Edit](activity_actionedit.html) screen).

##### Param Names

Toggle display of the name of each action parameter.

##### Icons

Toggle display of the setting/action indicator icon for each action.
