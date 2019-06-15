---
title: 'Tasker: Scene Element: Video'
---

Scene Element: Video ![](icon_tasker.png)
-----------------------------------------

#### About

Displays a video from file or URI.

The playback state is maintained during rotation or hiding of the scene.

#### Parameters: Source

Determines where to acquire the content for the video.

A source which starts with a **/** or does not contain a **:** is
treated as a local file path.

Anything else is treated as a URI.

#### Parameter: Start Automatically

If checked, whenever a new video is loaded it will begin play
immediately. If not checked, the video must be started via the [Element
Video Control](help/ah_element_video_control.html) action.

#### Parameter: Loop

If checked, the video will start playing again from the start when the
end is reached.

#### Parameter: Adapt To Fit

What to do when the video size does not exactly match the element size.

-   *Stretch*\
    The video is stretched (or shrunk) to fill the element, probably
    changing the aspect ratio in the process
-   *Scale*\
    The video is scaled up or down while maintaining the aspect ratio
    until it horizontally or vertically matches the element size. As a
    result, the video will not completely fill the element on the other
    side.

#### Events

-   [Tap, Long Tap](activity_elementedit.html#tap)
-   [Stroke](activity_elementedit.html#stroke)
-   [Video](activity_elementedit.html#video)

#### Related Actions

-   [Element Video Control](help/ah_scene_element_video_control.html)
-   [Element Focus](help/ah_scene_element_focus.html)
-   [Element Position](help/ah_scene_element_position.html)
-   [Element Size](help/ah_scene_element_size.html)
-   [Element Visibility](help/ah_scene_element_visibility.html)
-   [Element Depth](help/ah_scene_element_depth.html)
-   [Test Element](help/ah_scene_element_test.html)

Note on `Test Element`: testing the element *Value* returns the current
playback position in Milliseconds, *Maximum Value* returns the duration
of the current video. In both cases, the video must be already in the
\'Prepared\' (see the [Video event](activity_elementedit.html#video))
state before running the test.

#### See Also

The [Element Editor](activity_elementedit.html) screen.
