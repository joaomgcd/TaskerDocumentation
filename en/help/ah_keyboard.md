### Keyboard

Make Tasker send keyboard presses to whatever app is in the foreground.

::: {.inputs}
::: {.input}
::: {.title}
Input
:::

::: {.text}
Comma separated list of key presses.
:::

::: {.text}
The following formats are allowed for each key press:
:::

-   **write(Some Text)**: will directly insert the text (in this case
    **Some Text**) in a text box but only if a text box in an app has
    focus
-   **replace(Some Text)**: will replace all the text in the focused
    text box with the selected text (in this case **Some Text**)
-   **wait(400)**: will wait for the time (in this case **400 ms**)
    before moving on to the next key press
-   **select(Some Text)**: will select the first occurrence of the text
    (in this case **Some Text**) in a text box but only if a text box in
    an app has focus
-   **selectPositions(1,10)**: will select the text in a focused text
    box starting and ending in the selected positions (in this case
    **start in 1** and **end in 10**)
-   **cursor(1)**: will set the cursor position (in this case **position
    1**) in a focused text box.
-   **selectAll()**: will select all the text in a focused text box.
-   **delete(Some Text)**: will delete the first occurrence of the text
    (in this case **Some Text**) in a text box but only if a text box in
    an app has focus
-   **deleteAll()**: will delete all the text in a focused text box.
-   **\'29\'**: will use the key code between single quotes (in this
    case **29**, which corresponds to the **A** keycode) directly. Check
    out all the standard keycodes
    [here](https://developer.android.com/reference/android/view/KeyEvent.html#KEYCODE_0).
    Look for the **Constant Value** value of all the constants that
    start with **KEYCODE\_**.
-   **Tab**: if none of the above special characters surround the key
    press, the keycode corresponding to the text will be sent (in this
    case, the **Tab** key will be sent). You can find a list of these by
    using the magnifying glass near the **Input** field in this action.

::: {.title}
Modifiers
:::

::: {.text}
The following modifiers are allowed for each key press (applies to
custom key codes and direct key):
:::

-   **Control+Shift+C**: will press **C**, with the **Control** and
    **Shift** modifiers
:::
:::
