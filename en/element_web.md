---
title: 'Tasker: Scene Element: Web'
---

Scene Element: Web ![](icon_tasker.png)
---------------------------------------

#### About

A *Web* element is like a browser window.

#### Parameters: Mode / Source

These parameters determine how the content for the WebView is to be
acquired.

-   *URI*: the *Source* parameter refers to a URI (e.g. http://) from
    which the WebView should retrieve content.
-   *File*: the *Source* parameter contains a local file path from which
    the WebView should retrieve content.
-   *Direct*: the *Source* parameter directly specifies the HTML and/or
    JavaScript content to load

#### Parameter: Allow Phone Access

If checked, the content in the WebView is allowed access to local device
files, data stores, and can run JavaScript, including Tasker\'s
[JavaScript Interface functions](javascript.html).

This is a very powerful feature, since it allows a WebView to present a
complex and highly functional interface, but should only be enabled if
you entirely trust the source of the specified content.

Note that references to local files must be absolute (include the
directory) even when the WebView source is specified as a file e.g.
`/sdcard/myfiles/scripts.js`

#### Parameter: Self Handle Links

If checked, links will be handled by the WebView itself, otherwise they
will be passed to the system for handling e.g. by the default web
browser.

#### Parameter: Support Popups

If this parameter is **not** checked, HTML elements which generate a
popup window, for instance selection elements in forms, will crash the
scene when they are activated.

If this parameter **is** checked, when the scene is hidden and reshown,
some of its state will be lost e.g. which part of the page was being
displayed, zoom level.

#### Events

#### Related Actions

-   [Element Web Control](help/ah_scene_element_web_control.html)
-   [Element Focus](help/ah_scene_element_focus.html)
-   [Element Position](help/ah_scene_element_position.html)
-   [Element Size](help/ah_scene_element_size.html)
-   [Element Visibility](help/ah_scene_element_visibility.html)
-   [Element Depth](help/ah_scene_element_depth.html)
-   [Test Element](help/ah_scene_element_test.html)

#### See Also

The [Element Editor](activity_elementedit.html) screen.
