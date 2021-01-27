### Notify

Show a notification on the top bar.\
\
The specified Title will appear on the bar initially with the Icon.\
\
Notifications with a particular (non-empty) title replace existing ones
with that title.\
\
When the notification area is pulled down, the specified Text will be
visible.\
\
If Permanent is checked, the notification will not be removed by
clicking on it or pressing the Clear button. It \*can\* be removed using
the Notify Cancel action.\
\
A common use of creating a permanent notification is to allow permanent
quick access to e.g. a Menu Task through the Notification Bar. Specify a
task to run when the notification is clicked by creating a profile with
a Notification Click event.\
\
Up to 3 Actions can be specified which will appear in the notification
area. In some cases it may be necessary to slide down to reveal the
actions. Actions do not run as part of the notifying task.

#### BETA ONLY

::: {.inputs}
::: {.input}
::: {.title}
Category
:::

::: {.text}
If you use Android 8 or above you have to use the new **Notification
Category** system.
:::

::: {.text}
A notification category is a mandatory feature of notifications that
allows users to change notification features in Android Settings.
:::

::: {.text}
The first time the **Category** field is used in a **Notify** action,
the category will be created in Android Settings with the settings
(Sound, Vibration, LED, etc) set to those that are configured in the
action. Subsequent uses of the same category will use the same settings,
even if changed in the Tasker action.
:::

::: {.text}
To make it perfectly clear, an Android Notification Category\'s settings
can never be changed by Tasker after it\'s first created. Only you, the
user, can change those settings in the Android System Settings for
Tasker.
:::

::: {.text}
By default Tasker will use the **User Notifications** category if the
**Category** field is not filled in.
:::

::: {.text}
You will be warned if you create a notification without a category
because, as mentioned above, the **User Notifications** category will be
used and that category will be set up with default settings that can not
be changed by Tasker.
:::
:::
:::
