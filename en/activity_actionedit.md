---
title: 'Tasker: Action Edit'
---

Action Edit ![](icon_tasker.png)
--------------------------------

This screen allows configuration of a single action in a Task.

#### General

At top left is the name of the action. Tapping on this allows it to be
changed.

Bottom-right is a help button. Please be sure to read the action help of
every action before you use it for the first time, there may be e.g.
device specific restrictions you should know about.

#### Action Parameters

A *parameter* gives extra detail about how the action is to be carried
out.

##### Text Parameters

-   are sometimes optional: in that case the text *Optional* will appear
    as a hint unless the entry box has already been filled in
-   sometimes have a dialog to help you fill in a value which you can
    access by clicking the magnifying glass icon next to them
-   can have [variables](variables.html) automatically inserted by
    clicking the tag icon next to them.

##### Numeric Slider Parameters

Clicking the arrows icon next to numeric sliders allows you to specify
the number textually or use a [variable](variables.html) for the
parameter instead, if the value will not be known until the action is
actually executed.

##### *If* (Condition) Parameter

*(most actions)*

Allows specification of one or more conditions which must match if this
action is to execute.

Single conditions consist of a *left-hand side* (usually a variable
name), an *operator* and a *right-hand-side* for example
`%number, Equals, 1` indicates that the action will be executed if the
variable %number has the value 1.

When more than one condition is specified, they must be combined via
*And* (all conditions must be true), *Or* (at least one condition must
be true) or *Xor* (exactly one must be true). These \'combiners\' are
called *boolean operators*.

Usually, 2 or 3 conditions will be combined with all *And*s or all
*Or*s, but in order to allow more complicated logic, Tasker also offers
*And* and *Or* in high-precedence versions. Of the 4 boolean operators
which are available, the selection goes from low to high precedence
ones.

The higher the precedence of a boolean operator, the further to the
right it is shown. This enables the logical groups to be visualised.

Examples:

`True | False & True | False` is the same as
`( True | False ) & ( True | False )` so is **True**.

`True & False | True & False` is the same as
`True & ( False |  True ) & False` so is **False**.

`True & False | True |+ False` is the same as
`True & ( False | ( True | False ) )` so is **True**.

Note that the order of the conditions can mean that some conditions are
never evaluated. For instance, when two conditions are present and the
one above an *And* is **false** then the condition below it will never
be evaluated. This can be advantageous if the second condition takes
relatively more resources e.g. involves matching against a lot of text.

Please see the section on [Flow Control](flowcontrol.html) for more
information.

##### *Continue Task After Error* Parameter

*(selected actions only)*

By default, if an action fails with an error (e.g. the user specified to
delete a file that doesn\'t exist) Tasker will stop the task immediately
and the remaining actions will never be executed.

This parameter specifies that the task should continue even if this
action fails.

In addition, if it\'s checked, errors will be logged in the system log
as diagnostics instead of errors and error popups will be surpressed.

##### *Label* Parameter

*(all actions)*

A label for the action which is shown on the Task Edit screen. This
parameter could also be used to add comments to actions to help
understand how the task works.

Labels are also used with `Goto` actions to jump from one part of the
task to another.

#### Menu Options

##### *Search*

Search for and jump to a specified action. The entered term is searched
against action properties in the following order:

1.  the action number
2.  the action label if present
3.  the action name
4.  the action description, including the action parameter contents

The matching is case-insensitive. Searching starts from the current
action and wraps around. Only the header action (

If

or *For*) of closed blocks is searched.
