### Google Drive List

Get details about files and folders on your Google Drive.

::: {.inputs}
::: {.input}
::: {.title}
Output Variables
:::

::: {.text}
Arrays of details about your files and folders. Each position on each
array corresponds to one item. For example, position **1** on
**%gd\_id()** corresponds to position **1** on **%gd\_name**, etc.
:::
:::

::: {.input}
::: {.title}
Account
:::

::: {.text}
The account you want to list the files from
:::
:::

::: {.input}
::: {.title}
Type: Remote Folder
:::

::: {.text}
List files inside a folder on your Google Drive
:::
:::

::: {.input}
::: {.title}
Type: Query
:::

::: {.text}
List the files using a custom query. For example, you can use **name
contains \'My doc\'** to search for files that contain the words \'My
doc\' in their name. Check
[here](https://developers.google.com/drive/api/v3/search-parameters) for
complete documentation.
:::
:::
:::

**Note**: For security reasons this action can\'t be used on App Factory
generated apps.
