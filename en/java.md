---
title: 'Tasker: Java Support'
---

Java Support ![](icon_tasker.png)
---------------------------------

-   [Introduction](#intro)
-   [The `Java Function` Action](#javafunction)
    -   Using The Action
    -   Parameters
    -   Return Values
-   [Objects](#objects)
    -   Creating An Object
    -   Object Naming, Local And Global
    -   Built-in Objects
    -   Assigning Values
    -   Other Actions Supporting Objects
-   [Other Topics](#other)
    -   Casting
    -   Constants
    -   Generic Classes
    -   Permissions
    -   Service Thread
    -   Static Fields

[]{#intro}

### Introduction

Android has hundreds of thousands of functions which apps can use. It\'s
not possible for Tasker to present all of those to the user, so Tasker
allows the advanced user to directly call those Java functions and work
with Java objects themselves.

It does **not** allow you to \'write Java code\'\... but the combination
of Tasker\'s logic and flow control with direct access to the Android
API is sufficient for most automation purposes.

This page assumes you have a basic familiarity with the Java concepts of
*objects* and *classes*.

Developer information on the Android API is available from
[Google](http://developer.google.com/develop).

#### Example

1.  `Variable Set`, %service, wifi
2.  `Java Function`, wiman = CONTEXT.getSystemService( %service )
3.  `Java Function`, %enabled = wiman.isWifiEnabled()
4.  `Java Function`, wiman.setEnabled( true ), If %enabled eq false

This example task turns wifi on if it is not already enabled.

Action 2 demonstrates that Tasker variables can be used in Java function
calls. *wiman* is a Java object resulting from the function call which
is stored by Tasker for use in subsequent actions. *CONTEXT* is also
such a variable but is built-in and always accessible to
`Java Function`.

Action 3 demonstrates that results of `Java Function` can also be
assigned to Tasker variables. Since all Tasker variables are strings,
some conversion needs to take place depending on what type of object the
Java function returns. In this case it\'s a boolean, and so %enabled
will be **true** or **false**.

Action 4 demonstrates taking a decision based on the result of previous
Java function call.

[]{#javafunction}

### The `Java Function` Action

#### Using The Action

1.  enter an object or class (to access static functions) into the first
    parameter.

    The magnifying glass icon will show a class selector for classes
    known in the latest Android API. Some may be coloured red, as not
    all classes are available on all devices.

    The coffee-cup icon allows quick selection of known Java objects

    The question mark icon will attempt to link to the relevant Android
    reference page for the object or class.

2.  click the magnifying class next to the `Function` parameter to
    select a function to execute appropriate to the object or class from
    step 1.

    In most cases, Tasker will be able to guess which class an object
    is, and hence which functions are available, if not, see
    [casting](#casting) below.

    Functions listed in red are private, meaning they can be used, but
    the author didn\'t intend them to be.

3.  if the function returns a value, you can enter a Java [object
    name](names) to assign it to, or a Tasker variable, see
    [below](#return).
4.  enter any parameters required for the function, see
    [below](#params). The type of object the function expects for the
    parameter is displayed above the text entry field. The magnifying
    glass will list any fields associated with the current entry in the
    text box, where possible.

[]{#params}

#### Parameters

If you don\'t enter a value for a parameter, `null` will be used for
that parameter when the function is called.

If you enter the name of a variable array, Tasker will attempt to
convert the array values into the type of object (an array or
collection) which the function expects.

Other Tasker variables will be replaced in the usual way.

Here can also be entered Java objects, or their fields, either built-in
or created by previous calls to `Java Function` (e.g. `wiman` or
`arr[0].length`)

[]{#return}

#### Return Values

When a Java function returns a value, it can be placed in either a
Tasker variable or a Java object (or ignored).

If it\'s placed into a Tasker variable, it\'s converted to a piece of
text and the object itself is lost and can no longer be accessed. Note
that if the Java object is an array or list, it will be assigned to
multiple Tasker variables in the usual way e.g. %val1, %val2\...

When the returned value is placed into a Java object, you can access the
object at a later time in another `Java Function` and some other (see
later) actions.

Note that return value classes are inferred from the function, so object
names can refer to different classes at different times. It\'s not
recommended to reuse names in this way however!

[]{#objects}

### Objects

#### Creating An Object

New objects of most types can be created by filling in the class name,
hitting the function selector and selecting a function called `new`.

It\'s worth noting that many classes in the Android API have special
static functions for getting a new object of that class called e.g.
`getInstance` or similar.

Arrays (also multidimensional) can be created by adding `[]` to the
class name (or e.g. `[][]`).

Here\'s an example of creating a 3x5 string array:

1.  `Java Function`, arr = new String\[\]\[\]( 3 )
2.  `For`, %rowno, 0:2
3.     `Java Function`, arr\[%rowno\] = new String\[\]( 5 )

Creating an array is also possible natively via the `newInstance`
function in the the class `Array`.

Array components can be accessed as in normal Java (`arr[0][1]`)
wherever Java objects are [supported](#support).

[]{#names}

#### Object Naming, Local and Global

Object names can consist of any any combination of upper or lower case
letters and underscore and, unlike Tasker variable names, may start with
underscore. The first letter may not be upper-case, as this is a
convention used to distinguish objects from classes.

Analogous to Tasker variables, Java objects are either local to the
current task if their name is all lower case, or global (available to
any other task) if there are any upper-case characters in the name.
All-upper-case names represent final (fixed) global objects which cannot
be modified.

There are three important things to remember about global Java objects:

-   it\'s important to delete them once they are no longer needed,
    because they can take up a lot of memory.
-   unlike global Tasker variables, they are lost when Tasker is killed
    e.g. because the device was restarted
-   their names can only contain upper- or lower-case letters or
    underscore.

#### Built-in Objects

-   **Android Context** (class `Context`)\
    *CONTEXT*\
    Many funtions in Android require a context object. In tasks running
    **directly** as a result of a scene element event, this is the
    Activity object which is displaying the scene, otherwise it\'s
    Tasker\'s Application context.
-   **Image Buffer** (class `Bitmap`)\
    *IBUFFER* The object manipulated by functions in Tasker\'s *Image*
    action category.\

#### Assigning Values

When writing Java code, to make a name refer to the same object as
another name, you would use something like:

        String a = "hello";
        String b = a;

Now both a and b refer to the same object.

To achieve that in Tasker, you use the special `assignTo` function after
selecting the object to assign.

        Java Function, a, "hello", assign (or a = "hello".assign())
        Java Function, b, a, assign (or b = a.assign())

[]{#support}

#### Other Actions Supporting Objects

##### If

A Java object can be directly referenced in a condition. Null-value
objects are replaced with text representation `null`.

Examples:

        If, arr[0][0] eq 45
        If, arr[0].length > 3 
        If, lightlevel Equals null

You cannot make function calls e.g. str.charAt( 5 )

##### For

The *Value* parameter in the For action can include Java object
references as for *If*.

        For, %value, arr

Will repeat once for each value in the array *arr*. This will also work
for string lists and simple objects (boolean etc)

[]{#other}

### Other Topics

[]{#casting}

#### Casting

*Casting* in Tasker is used only to tell Tasker the type of a particular
object. That can be useful so that e.g. Tasker can show functions which
are appropriate to it.

In the example at the top of the page, the `getSystemService` function
returns an Object:

        Java Function, wiman = CONTEXT.getSystemService( %service )

Since the object could be one of many kinds of managers, Tasker is not
able to list the WifiManager functions for easy selection when creating
the next `Java Function` action in the task.

You can tell Tasker the actual type by adding a cast in brackets before
the name:

        Java Function, (WifiManager) wiman = CONTEXT.getSystemService( %service )

#### Constants

Tasker support the usual naming conventions for Java constants.

-   **L** a long integer e.g. `300L`
-   **F** a floating-point number e.g. `45.6D`
-   **D** a double-length float e.g. `45.6D`
-   **double quotes** indicate a string e.g. `"hello"`, though in many
    cases Tasker will infer that a string was intended anyway
-   **single quotes** indicate a character e.g. `'x'`

Tasker will attempt to convert numbers without affixes to a Java type in
the following order: `int, long, float, double`.

#### Generic Classes

Tasker only supports fully the following generic classes: ``

-   ArrayList\<String\>
-   ArrayList\<View\>
-   ArrayList\<Bundle\>
-   ArrayList\<Integer\>
-   ArrayList\<Long\>
-   ArrayList\<Double\>
-   ArrayList\<Float\>

Create them by selecting their class in the class selector, clicking the
function selector and clicking *new*.

Generic classes mixed with arrays cannot be handled by Tasker, though
you can pass such objects around from function to function.

#### Permissions

For some function calls, Android requires that the calling app have
declared a permission otherwise the call will fail. This means that a
Java Function call will fail if the permission is not one of the ones
pre-declared by Tasker.

Unfortunately, Android does not allow permissions to be added
dynamically, so if you wish to use a function requiring a permission
that Tasker does not already have, the only option is to generate a
child app to run the function (see [App Creation](appcreation.html)). In
the child configuration screen you can add any permissions which your
Java Function call needs to the child app.

#### Service Thread

Java code is executed with a non-UI thread by a service.

Some implications are:

-   things which require an activity will not work e.g. showing a dialog
-   sending intents will in some cases require the flag
    `Intent.FLAG_FROM_BACKGROUND` and possibly also
    `Intent.FLAG_ACTIVITY_NEW_TASK`

#### Static Fields

Static fields (e.g. `ContentResolver.EXTRA_SIZE`) are not currently
supported by Tasker.

A workaround is to use reflection to get (or set) the value:

        res = CONTEXT.getContentResolver();
        cls = res.getClass();
        fld = cls.getField( EXTRA_SIZE );
        %val = fld.get( null );
