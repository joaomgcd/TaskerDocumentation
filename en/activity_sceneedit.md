---
title: 'Tasker: Scene Edit'
---

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
