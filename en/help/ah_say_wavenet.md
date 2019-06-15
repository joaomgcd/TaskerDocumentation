#### Say WaveNet

Allows you to make Tasker say something out loud using advanced [WaveNet
Voices](https://cloud.google.com/text-to-speech/).

To use this action, you\'ll have to have a Google Cloud project on your
Google account and use an API Key from that project.

<div>

To do that:

</div>

-   Select or create a Google Cloud project
    [here](https://console.cloud.google.com/cloud-resource-manager).
-   Enable billing for your project
    [here](https://console.cloud.google.com/billing/linkedaccount).
    (Note: even though billing is enabled, you\'ll only be charged if
    you go over the [free
    quota](https://cloud.google.com/text-to-speech/pricing).)
-   Enable the Text-to-Speech API
    [here](https://console.cloud.google.com/flows/enableapi?apiid=texttospeech.googleapis.com).
-   Go to the
    [Credentials](https://console.cloud.google.com/apis/credentials)
    page, click on **Create credentials** \> **API key**.
-   Copy and paste the API Key into Tasker \> Preferences \> Misc \>
    Google API Key.
-   Alternatively you can set the **Override API Key** field in every
    **Say WaveNet** action.

::: {.inputs}
::: {.input}
::: {.title}
Continue Task Immediately
:::

::: {.text}
Enable if you don\'t want the task to wait for it to finish speaking.
You must select this in order to do a Shut Up action later.
:::
:::

::: {.input}
::: {.title}
File
:::

::: {.text}
If set, will write the speech to a file with the mp3 format
:::
:::

::: {.input}
::: {.title}
Override API Key
:::

::: {.text}
If set will override the key entered in the main Tasker Preferences.
:::
:::
:::
