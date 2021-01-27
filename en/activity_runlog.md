---
title: 'Tasker: Run Log'
---

Run Log ![](icon_tasker.png)
----------------------------

The *Run Log* shows profile status changes and task/action execution to
help when things aren\'t working as expected. Log entries will only be
recorded when the log is enabled by the switch in the top right.

Items are colour-coded according to what they refer to:

-   purple: a task
-   orange: a profile
-   light blue: an action
-   black/white: the monitor or execution service

Most items are long-clickable for options e.g. to view the corresponding
item from the user configuration.

### Details Column

Displays the thing which the entry refers to. For example, `MyTask.Wait`
refers to a *Wait* action in the task *MyTask*.

Some notable details are:

-   `System` refers to a task created by Tasker, usually to restore a
    [setting](settings.html) when a profile deactivates.
-   `Anon` refers to an *anonymous* task (has no name) which is the
    entry or exit task of a profile.
-   actions with a variable paramater show (after the action name) what
    the value of the variable was **after** the action has completed

### ID Column

Shows Tasker\'s internal ID for the thing which the entry refers to.
This is most useful for actions e.g. `2.4` refers to the fourth action
in the task with ID 2.

Some task or action ID entries may also have a number after a colon;
since multiple copies of a particular task can run at the same time,
each task also receives a unique *execution* ID to distinguish it from
others with the same *data* ID. The execution ID is shown with a colon
e.g. a task with ID`2:3` is the task with data ID 2 and execution ID 3.

Usually, the execution service will start up, run a task and then stop,
so most tasks have execution ID 1. The Run Log doesn\'t show the
execution ID in that case.

### Status Column

Describes the new status of whatever has changed which caused a log
entry to be made. A status which is erronous (a problem occured) is
displayed in red text.

##### Services

-   *Start*\
    the service has started. Unexpected *Start* entries for the Monitor
    service are usually caused by Android killing the service because
    the `Run In Foreground` has been disabled in Tasker\'s Monitor
    preferences
-   *Stop*\
    the service has stopped
-   *Restart*\
    the service was restarted, usually because new data must be loaded
    due to the user changing the configuration.

##### Profiles

-   *Active*\
    the profiles conditions were met so it became active
-   *Inactive*\
    the profiles conditions were no longer all met, so became
    deactivated
-   *Instant*\
    an [instant profile](faq-other.html#instant) had a momentary
    activation

##### Tasks

-   *RejBad*\
    task was rejected because it was malformed task e.g. had no actions
-   *RejCopy*\
    task was rejected because it\'s a second copy of a task which has
    *Abort New Task* set for *Collision Handling* in its preferences
-   *RejMaxQ*\
    the maximum number of queued tasks (determined in Action
    preferences) has been reached
-   *RejOff*\
    Tasker was disabled at the time the task was submitted
-   *Running*\
    the task has been entered in the run queue. Other tasks may still
    have their actions executed before this one (see [Task
    Scheduling](tasks.html#scheduling))
-   *ExitErr*\
    the task has stopped after an error
-   *ExitOK*\
    the task has finished all its actions and stopped
-   *ExitRep*\
    the task has stopped because a second copy of it has arrived and
    *Abort Existing Task* s specified for its *Collision Handling*
    preferences
-   *ExitKill*\
    the task has been stopped because the execution service is stopping

##### Actions

-   *Disabled*\
    the action was disabled via the UI so was skipped
-   *Err*\
    an error occurred while running the action, causing the task to stop
-   *ErrIgnore*\
    an error occurred, but the task could continue (probably because
    *Continue On Error* was specified in the action parameters
-   *Exception*\
    a totally unexpected error occurred (things like bugs in Tasker or
    Android), causing the action to fail and the task to stop
-   *OK*: the action completed OK

### Pause/Play Indicator

The Pause/Play indicator shows whether the list of entries is updating.
That\'s only the case when the list is at the top i.e. the most recent
chronological entries are showing.

### Filter Controls

Below the list of log entries are some filter controls.

Profiles, tasks and action entries are only shown if the corresponding
button is toggled on.

If a filter text is entered in the text box, entries will only be
displayed if they have text which matches the filter.

When an entry is excluded by the filter controls, it\'s shown as a small
bar on the left side of the list.
