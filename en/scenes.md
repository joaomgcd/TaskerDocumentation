---
title: 'Tasker: Scenes'
---

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
[editor](activity_sceneedit.html).

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
specified in the [scene editor](activity_sceneedit.html).

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
