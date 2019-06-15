### Google Drive Trash

Put a file or folder from Google Drive into or out of Trash.

::: {.inputs}
::: {.input}
::: {.title}
Output Variables
:::

::: {.text}
Details about the trashed/untrashed file or folder
:::
:::

::: {.input}
::: {.title}
Account
:::

::: {.text}
The account you want to the files with
:::
:::

::: {.input}
::: {.title}
Type: File Id
:::

::: {.text}
Trash a file by its ID. You can get the Id after you upload the file, or
with a Google Drive List action (check the output variables)
:::
:::

::: {.input}
::: {.title}
Type: Remote Path
:::

::: {.text}
Trash a file or folder by specifying its Google Drive path. If you only
specify the **Remote Folder** field, a folder and its contents will be
trashed. If you also specify the **Remote File Name** field, only a
single file will be trashed.
:::
:::
:::

**Note**: For security reasons this action can\'t be used on App Factory
generated apps.
