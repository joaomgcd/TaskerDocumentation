---
title: 'Tasker: Scene Element: Menu'
---

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

-   [Item Tap, Item Long Tap](activity_elementedit.html#tap)

#### Related Actions

-   [Menu](help/ah_menu.html)\
    allows easy display of a dialog with a title and showing a single
    menu element.\
    When using the Menu action, items are configured in the action
    itself rather than in the Menu element.
-   [Element Position](help/ah_scene_element_position.html)
-   [Element Size](help/ah_scene_element_size.html)
-   [Element Visibility](help/ah_scene_element_visibility.html)
-   [Element Depth](help/ah_scene_element_depth.html)
-   [Test Element](help/ah_scene_element_test.html)
