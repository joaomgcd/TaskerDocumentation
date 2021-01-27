#### Volume Long Press

Allows you to react to long pressing the physical volume buttons on your
device.

To use this event you need to grant the special
**SET\_VOLUME\_KEY\_LONG\_PRESS\_LISTENER** permission. Check out how to
do so [here](ah_volume_long_press_grant.html).

**Important Note:** This doesn\'t seem to work reliably with the screen
off in all situations. It seems to work very reliably if music is
playing and less reliably otherwise. This is due to system limitations
on those devices and it\'s not something Tasker can control.

**Important Note 2:** If you\'re using Lineage OS or similar make sure
to disable its own handling of long pressing the volume keys when the
screen is off or it won\'t work at all with Tasker.

To check out an example of how this can be used check out [this
video](https://www.youtube.com/watch?v=x-z-RvREF5E).

::: {.inputs}
::: {.input}
::: {.title}
Type
:::

::: {.text}
The button you want to react to. Unfortunately it\'s not possible to
react to both being pressed at the same time. Android doesn\'t send that
event to Tasker.
:::
:::

::: {.input}
::: {.title}
Additional Time
:::

::: {.text}
**Important Note:** Only works with the screen on.
:::

::: {.text}
Use the magnifying glass to help you setup this field.
:::

::: {.text}
Check how much additional time you held the button down in the task by
checking **%evtprm(2)**.
:::

::: {.text}
If not set, Tasker will simply trigger the event once, when it detects
the long press on the selected volume button.
:::

::: {.text}
If set, will make Tasker only react only in certain conditions:
:::

::: {.text}
-   **Number**: Only trigger after the button has been pressed for those
    many seconds after the long press is detected. For example, setting
    it to **3** will make the event only trigger if you press the volume
    button for a bit more than 3 seconds
-   **Continuous Mode**: Only trigger after the button has been pressed
    for x many seconds after the long press is detected and then trigger
    again for each additional second that the button is held. For
    example, setting it to **continuous(0)** will make the event trigger
    right after the long press is detected and then trigger again each
    second until you release the button. Another example: setting it to
    **continuous(3)** will wait 3 seconds before it starts triggering
    continuously.
:::

::: {.text}
Check out a video example of using the **Additional Time** feature
[here](https://www.youtube.com/watch?v=E9yvAykDg0U).
:::
:::
:::
