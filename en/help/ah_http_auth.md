### HTTP Auth

Authenticate with a web service.

#### OAuth 2.0

Allows you to sign in a user and act on behalf of that user in a web
service.

For example, if you sign in as a user on the Spotify API and give it
proper permissions, you can then add songs to the user\'s Spotify
playlists.

On most web services that use OAuth 2.0 you have to create an *app* on
that service that you can then use to sign in the user.

**Very important**: when creating the app on the web service make sure
to set the **Redirect URI** to
**https://tasker.joaoapps.com/auth.html**.

::: {.inputs}
::: {.input}
::: {.title}
Client ID and Client Secret
:::

::: {.text}
Given to you by the web service when you create an app on it
:::
:::

::: {.input}
::: {.title}
Endpoint To Get Code
:::

::: {.text}
A URL that is indicated in the web service documentation. Look for a URL
in the docs that has the **response\_type=code** parameter and use just
the base URL.
:::

::: {.text}
For example, for Google web services that support OAuth 2.0 this URL is
**https://accounts.google.com/o/oauth2/v2/auth** as you can see
[here](https://developers.google.com/identity/protocols/OAuth2WebServer).
:::
:::

::: {.input}
::: {.title}
Endpoint To Get Refresh Token
:::

::: {.text}
Also an URL that is indicated in the web service documentation. Look for
a URL in the docs that has the **grant\_type=refresh\_token** parameter
in the request body.
:::

::: {.text}
For example, for Google web services that support OAuth 2.0 this URL is
**https://www.googleapis.com/oauth2/v4/token** as you can see
[here](https://developers.google.com/identity/protocols/OAuth2WebServer).
:::
:::

::: {.input}
::: {.title}
Scopes
:::

::: {.text}
The will define the permissions that your app will request the user when
acting on his/her behalf.
:::

::: {.text}
For example, to [list a user\'s calendars in the Google Calendar
API](https://developers.google.com/calendar/v3/reference/calendarList/list)
you would need to use the
**https://www.googleapis.com/auth/calendar.readonly** scope.
:::
:::
:::
