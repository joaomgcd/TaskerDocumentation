---
title: 'Tasker: Intents'
---

Intents ![](icon_tasker.png)
----------------------------

Intents are Android\'s main method for allowing apps to communicate with
each other and share data. Intents are for advanced users. This document
is not intended to explain how intents work, but how to use Tasker\'s
intent facilities.

### Sending Intents

You can find information about intents and details of several built-in
Android intents on the Android SDK [Reference
Site](%20https://developer.android.com/reference/android/content/Intent.html).

Tasker allows you to send arbitraty intents using the *Send Intent*
action in the *Misc* category. This allows you to provoke behaviour in
other apps, when you know the particular form of intent they are
designed to respond to.

[]{#sendparameters}

#### Send Intent Parameters

Note that any parameter specified except Extras will reduce the set of
possible receivers of the intent.

##### Action

What the sender would like the receiver to do with the data.

Example: `android.intent.action.VIEW`

##### Cat

Gives additional information about the action.

##### Mime-Type

From the developer reference: \"This is used to create intents that only
specify a type and not data, for example to indicate the type of data to
return.\"

Can\'t be used together with a Data specification.

##### Data

The main data specification in the form of a URI.

Can\'t be used together with a Mime-Type specification.

##### Extras

Any additional data to send with the intent.

The extras must be in the form of a single **colon-separated** key and
value.

If the value can be parsed as an integer, long (integer ending in L),
floating point number, double (float ending in D) or boolean
(true/false) it will be treated as one.

The value can also be forced to a simple type (long etc) or `Uri` via
casting.

The name of a Java object created via the Java Function action which is
of type `Parcelable` can also be used (e.g. a `Bundle`)

If none of the above apply, the value will be treated as a `String`.

Examples:

-   have\_flowers:true\
    (`boolean`)
-   this.is.an.integer.example:34\
    (`int`)
-   this.is.a.double.example:34D\
    (`int`)
-   address: (Uri) http://a.b\
    (`Uri`)
-   bunchofvalues:mybundle (where mybundle is the name of a Java object
    of type Bundle)\
    (`Parcelable`)
-   simple.string.example:hello there!\
    (`String`)

##### Package, Class

Allow specification of a particular package and/or class within the
package to restrict the broadcast to.

##### Target

The type of Android component which should receive the intent.

#### Finding App Intents

Many intents that an app listens for are declared in its package
manifest (called AndroidManifest.xml). You can view details of those
intents using the *aapt* tool that comes with the Android SDK like this:

> ` aapt dump xmltree example.apk AndroidManifest.xml`

Look for Intent Filter elements.

It\'s not (easily) possible to determine which intents an app listens
for dynamically (i.e. while the app is running).

### Receiving Intents

Tasker allows you to receive a large range of intents, sent by apps or
the system, using the *Intent Received* event in the *System* category.

For each event you create, Tasker sets up a corresponding [Intent
Filter](https://developer.android.com/reference/android/content/IntentFilter.html)
object.

#### Limitations

-   Tasker can only receive intents which are sent to **broadcast
    receiver** components, not to activities or services.
-   some intent senders require that a corresponding intent filter is
    specified statically (i.e. in an Android Manifest). Those intents
    cannot be received.
-   intents which are broadcast with a specification of a particular
    package component to receive it cannot be received.

[]{#receivedparameters}

#### Intent Received Parameters

##### Action

If specified, the received intent must have also that action specified.

##### Cat

Any categories specified in the received intent must also be specified
in the Tasker event. Note that this is logically different to the
situation for the Action parameter.

##### Scheme

If any schemes are included in the filter, then an Intent\'s data must
be either one of these schemes or a matching data type. If no schemes
are included, then an Intent will match only if it includes no data.

##### Mime Type

If a type is specified, then an Intent\'s data must be the same, or
match the Scheme parameter. If no Mime Type is specified, then an Intent
will only match if it specifies no Data.

##### Priority

If the intent is part of an *ordered broadcast*, then the priority
specified here will affect whether this event will receive the intent
before or after other listeners.

##### Stop Event

If the intent is part of an *ordered broadcast*, then specifying Stop
Event will prevent it being passed to other listeners after this one.

#### Accessing Intent Data

When an intent triggers an Intent Received event, the resulting task(s)
which are executed have access to many details of the intent via local
variables (where relevant and present):

-   *%intent\_data*: the data
-   *%evtprm1*: the action
-   *%evtprm2*: the first category
-   *%evtprm3*: the second category
-   *%evtprm4*: the URI scheme
-   *%evtprm5*: the MIME type

In addition, any *extras* attached to the intent can be accessed under
their name, with the following modifications to make them valid variable
names:

-   all letters will be converted to lower-case, then
-   names of length less than 3 will have **var\_** prefixed
-   non-letter-or-digit characters will be converted to \_, then
-   names not starting with a letter will have **a** prefixed, then
-   names not ending with a letter or digit will have **a** affixed
-   if the result is the name of another extra, **\_dup** will be
    affixed until that is no longer the case

For example, an extra with key **%SOUND\_ON** will be available as
**%sound\_on**, and an extra with key **package.SOUND\_ON!**, will be
available via the local variable **%package\_sound\_on\_a**

The following extra types are presented in Tasker as local arrays:
`String [], Integer [], ArrayList, ArrayList`.

Example: a string array extra \`named \'fruits\' with values \'pear\'
and \'apple\' will result in the local variables %fruits1 (=pear) and
%fruits2 (=apple).
