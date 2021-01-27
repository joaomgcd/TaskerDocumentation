---
title: 'Tasker: Event Context'
---

Event Context ![](icon_tasker.png)
----------------------------------

An *Event Context* allows specification of an event which is needed to
activate its profile e.g. SMS received, screen has gone off.

Events are a little different to other contexts because they are
*instantaneous* whereas other contexts usually have a duration.

This means that it is nonsensical to specify that e.g. the screen
brightness should be set to X for the duration of the event, so Tasker
assumes that all [settings](settings.html) actions should persist beyond
the event.

For more information about specifying events, see the [Event Edit
screen](activity_eventedit.html).

#### Event Parameters

When a task is triggered by an event, the parameters of the event that
ocurred are passed to the task so that it can make decisions based on
the event details.

The parameters are passed in the [array](variables.html#arrays)
*%evtprm*.

The order of elements of the array have values which match the order of
the parameters of the event.

Example: if an event\'s second parameter is an Application, %evtprm2 in
the launched task will be set to the label of the application which
triggered the event.
