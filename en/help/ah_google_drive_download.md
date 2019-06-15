### Google Drive Download

Get a file or folder from Google Drive for a given account.

While the content is downloading, a notification will be shown with the
progress.

::: {.inputs}
::: {.input}
::: {.title}
Output Variables
:::

::: {.text}
Array of local file paths corresponding to the files that were
downloaded
:::
:::

::: {.input}
::: {.title}
Account
:::

::: {.text}
The account you want to download the files from
:::
:::

::: {.input}
::: {.title}
Type: File Id
:::

::: {.text}
Download a file by its ID. You can get the Id after you upload the file,
or with a Google Drive List action (check the output variables)
:::
:::

::: {.input}
::: {.title}
Type: Remote Path
:::

::: {.text}
Download a file or folder by specifying its Google Drive path. If you
only specify the **Remote Folder** field, a folder will be downloaded.
If you also specify the **Remote File Name** field, only a single file
will be downloaded.
:::
:::

::: {.input}
::: {.title}
Local Path
:::

::: {.text}
Place to store the files/folders on local storage. If you are
downloading a folder, then this path must be a folder. If you are
downloading a file, this can be either a folder or file.
:::
:::
:::

**Note**: For security reasons this action can\'t be used on App Factory
generated apps.
