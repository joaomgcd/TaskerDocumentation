#### NFC Tag

Allows you to read and/or write data from and to an NFC Tag.

You have a list of pre-defined variables that this action will create.
These are visible in the configuration screen.

Check out [this video
example](https://www.youtube.com/watch?v=PMbj7bRoSKI) to see this in
action.

::: {.inputs}
::: {.input}
::: {.title}
Payload To Write
:::

::: {.text}
Optionally allows you to write data to the tag. If you leave this empty,
data will just be read. Select different **Payload Types** and then use
the magnifying glass to help selecting a payload for the selected type.
:::
:::

::: {.input}
::: {.title}
Payload Type
:::

::: {.text}
Optinally set a type for the payload. If none is set, the **Text** type
will be automatically used.
:::

::: {.text}
Different Payload Types will have different behaviours when the tag is
later scanned:
:::

-   **Text**: The system will not react to this. You\'ll have to
    implement your own behaviour by using the **NFC Tag Event**.
-   **Application**: The system will automatically open the selected
    app, even on a device that doesn\'t have Tasker installed.
-   **Uri**: The system will automatically open the selected Uri (like a
    web URL for example), even on a device that doesn\'t have Tasker
    installed.
:::
:::
