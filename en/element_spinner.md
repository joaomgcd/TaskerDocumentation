---
title: 'Tasker: Scene Element: Spinner'
---

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

-   [Item Select](activity_elementedit.html#itemselect)

#### Related Actions

-   [Element Focus](help/ah_scene_element_focus.html)
-   [Element Position](help/ah_scene_element_position.html)
-   [Element Size](help/ah_scene_element_size.html)
-   [Element Visibility](help/ah_scene_element_visibility.html)
-   [Element Depth](help/ah_scene_element_depth.html)
-   [Element Value](help/ah_scene_element_value.html)
-   [Test Element](help/ah_scene_element_test.html)
