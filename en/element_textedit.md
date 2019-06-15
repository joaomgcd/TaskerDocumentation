---
title: 'Tasker: Scene Element: TextEdit'
---

Scene Element: TextEdit ![](icon_tasker.png)
--------------------------------------------

#### About

A standard Android box for text entry.

TextEdit elements cannot appear in Overlay scenes.

#### Parameter: Text

This is the **initial** text to show in the element, with any variables
replaced.

Note that if *Text* contains a variable, any changes in the variable
value once the element have been shown will **not** be reflected in the
visible contents of the text box. The reason for this limitation is that
the user can change the text box contents by typing at any time so it is
not possible to track where the variable contents should be, or even if
they are still there at all.

#### Parameter: Position

Where to place the text within its box

#### Parameter: Text Width Scale

Horizontal scaling factor to squash up (negative values) or stretch
(positive values) the text.

#### Events

#### Related Actions

-   [Element Text](help/ah_scene_element_text.html)
-   [Element Text Colour](help/ah_scene_element_text_colour.html)
-   [Element Border](help/ah_scene_element_border.html)
-   [Element Back Colour](help/ah_scene_element_background_colour.html)
-   [Element Focus](help/ah_scene_element_focus.html)
-   [Element Position](help/ah_scene_element_position.html)
-   [Element Size](help/ah_scene_element_size.html)
-   [Element Visibility](help/ah_scene_element_visibility.html)
-   [Element Depth](help/ah_scene_element_depth.html)
-   [Test Element](help/ah_scene_element_test.html)

#### See Also

The [Element Editor](activity_elementedit.html) screen.
