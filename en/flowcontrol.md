---
title: 'Tasker: Flow Control'
---

Flow Control ![](icon_tasker.png)
---------------------------------

#### Overview

Task flow control is based on the following Tasker elements:

-   [variable](variables.html) values
-   [conditions](#condition) on individual actions
-   *If / Else / Endif* actions for conditional grouping of following
    actions
-   *For / End For* to do a set of actions once for each of a set of
    elements
-   *Goto* action (jumping around within a task).
-   *Perform Task* action (calling other tasks as subroutines)
-   *Stop* action (terminate task immediately)

On the Wiki there is a detailed example of [processing a file\'s
content](http://tasker.wikidot.com/fileproc) \[External Link\].

Tip: if you accidentally create a task that never ends when
experimenting with loops, use the **Kill** button in the Task Edit
screen to end it manually.

[]{#condition}

##### Conditions

Every action can have a condition associated with it (specify this in
the Action Edit screen). If the condition does not match, the action
will be skipped.

A condition consists of an *operator* (\'equals\' etc) and two
*parameters*. The possible operators are:

-   *Equals* (eq)\
    The left parameter is identical to the right parameter.
-   *Doesn\'t Equal* (neq)\
    The left parameter is not identical to the right parameter.
-   *Matches* (\~)\
    The right parameter is a pattern which the left parameter is
    [matched against](matching.html).
-   *Not Matches* (!\~)\
    As above, but the match must fail for the action to be executed.
-   *Matches Regex* (\~R)\
    The right parameter is a regular expression which the left parameter
    is [matched against](matching.html#regex).
-   *Doesn\'t Match Regex* (!\~R)\
    As above, but the match must fail for the action to be executed.
-   *Maths: Less Than* (\<)\
    Both parameters (after variables are substitued) must be numbers or
    mathematical expressions and the first must be **less** than the
    second e.g. `3` \< `6`. See [Maths](maths.html) for more info.
-   *Maths: Greater Than* (\>)\
    As above, but the first parameter must evaluate to **more** than the
    second.
-   *Maths: Equals* (=)\
    As above, but the two parameters must be numerically equal.
-   *Maths: Isn\'t Equal To* (!=)\
    As above, but the two parameters must be **not** numerically equal.
-   *Maths: Is Even* (Even)\
    The left parameter is an even number.
-   *Maths: Is Odd* (Odd)\
    The left parameter is an odd number.
-   *Is/Isn\'t Set* (Set/!Set)\
    Whether the specified variable has a value or not.

Expressions which are not mathematically valid e.g. *I Am The Walrus \>
5* give a warning and evaluate to **false** when used with a
mathematical operator.

[]{#for}

#### Foreach Loop

Goal: perform a set of actions for each of *apple*, *pear* and *banana*.

  ----------------------- ----------------------- -----------------------
  1.                      **For**\                Loop once for each of
                          %item\                  apple, pear and banana
                          apple,pear,banana       

  2.                        **Action One**\       Example: Flash %item

  3.                        **Action Two**\       \...

  4.                      **End For**\            Return to action 1 if
                                                  we havn\'t done all the
                                                  items yet
  ----------------------- ----------------------- -----------------------

Result: Action One and Action Two are performed three times. The first
time, the variable %item is set to *apple*, the second time *pear* and
the last time *banana*.

You can insert a `Goto` action in the loop with either *Top of Loop*
(meaning continue, skip to the next item straight away) or *End of Loop*
(meaning break, stop without doing any more items) specified.

In adition to simple text, the `For` action accepts any comma-separated
combination of these Items:

-   a numeric range e.g. 1:5 (= **1,2,3,4,5**)
-   a numeric range with a jump e.g. 8:2:-2 (= **8,6,4,2**)
-   a numeric range defined by variable values e.g. *2:%end:%skip*,
    *1:%arr(\#)*
-   a variable name (which is replaced) e.g. %fruit (= **banana** maybe)
-   a [variable array](variables.html#arrays) part e.g. *%arr(1:2)* (=
    %arr1, %arr2 = **apple,banana** maybe)

A common case is to use %arr(), which performs a loop for each element
in the array %arr.

**Warning**: the *Values* parameter in the loop is reevaluated with each
iteration of the loop, meaning that modifying array variables which
appear there from within the loop can have unexpected effects. To
workaround that, it can be best to use the following sequence:

       Variables Set, %values, %arrayWhichWillChange()
       Variable Split, %values
       For, %value, %values()
          ...

#### For Loop

Goal: perform a set of actions for each of a set of elements in turn.

Use the *Foreach Loop* as described above, with the *Items* parameter
being a range specification e.g. 4:0, 100, 0:8:2 (=
**4,3,2,1,0,100,0,2,4,6,8**).

#### Until Loop

Goal: perform a Task X until some condition is met (at least once)

  ----------------------- ----------------------- -----------------------
  1.                      **Action One**\         \...

  2.                      **Action Two**\         \...

  3.                      **Goto**\               Return to action 1 if
                          1\                      runtime \< 20
                          If %qtime **\<** 20     
  ----------------------- ----------------------- -----------------------

Result: Action One and Action Two are performed until %QTIME contains
the value 20 or more i.e. until the task has been running for 20
seconds.

Note: %QTIME is a builtin local variable available in all tasks.

#### While Loop

Goal: perform a Task X while some condition is met.

  ----------------------- ----------------------- -----------------------
  1.                      **Stop**\               Stop task if it\'s not
                          \                       crunchy, otherwise go
                          If %fruit **Not         to next action
                          Matches** Apple         

  2.                      **Action One**\         \...

  3.                      **Action Two**\         \...

  4.                      **Goto**\               Go back and see if
                          1                       we\'re still crunchy
  ----------------------- ----------------------- -----------------------

Result: Action One and Action Two are performed while %fruit contains
the value Apple.

#### Counter Loop

Goal: perform a Task X a set number of times.

  ----------------------- ----------------------- -----------------------
  1.                      **Variable Set**\       Initialize the counter
                          %count, 0               

  2.                      **Action One**\         \...
                          Label: *LoopStart*      

  3.                      **Action Two**\         \...

  4.                      **Variable Add**\       Add one to %count
                          %count, 1               

  5.                      **Goto**\               Return to action 2 if
                          *LoopStart*\            count \< 10
                          If %count **\<** 10     
  ----------------------- ----------------------- -----------------------

Result: after initialization of %count to 0, the task loops around the
actions from 2-5 until %count reaches 10, at which point the condition
on the `Goto` fails and the end of the task is reached.

Note that we used a `Goto` to a **labelled** action this time. In all
but the very simplest tasks it\'s better to use a label rather than a
number. It\'s easier to work out what\'s happening and if you insert or
delete actions before the loop starts, the `Goto` will still jump to the
right place.

An alternative way to do this loop is to use a For action specified as
*0:10*.

#### If / Then / Else Condition

Goal: perform certain Tasks if conditions are met, otherwise perform a
different task.

  ----------------------- ----------------------- -----------------------
  1.                      **If**\                 **\~** is short for
                          %fruit **\~** Apple     \'matches\'

  2.                        **Action One**        \...

  3.                        **Action Two**\       \...

  4.                      **Else If**\            an `Else` action with a
                          %fruit **\~** Pear      condition

  5.                        **Action Three**      \...

  6.                      **Else**\               

  7.                        **Action Four**\      \...
  ----------------------- ----------------------- -----------------------

Result: actions One and Two are executed if %fruit matches Apple, Action
Three is executed if %fruit matches Pear, otherwise Action Four is
executed.

Notes:

-   you can have as many `Else If`s in a condition as you like
-   if your condition is in the middle of a more complicated task, you
    need to tell Tasker where the condition ends with an `End If` action

#### Subroutines

To call another task, use the `Perform Task` action. To use it as a
subroutine, you just need to ensure that the priority of the calling
task is less than the priority of the called task (more info:
[scheduling](tasks.html#scheduling)).

The parent can optionally pass values to the child and receive a result
back:

*Parent Task*

  ----------------------- ----------------------- -----------------------
  1.                        **Perform Task**\     pass 5 to the child,
                          Child,\                 expect a result in
                          Priority, 10\           %result
                          %par1, 5,\              
                          Result Value Variable,  
                          %result                 

  2.                        **Variable Flash**\   what did we get back ?
                          Result: %result         
  ----------------------- ----------------------- -----------------------

*Child Task*

  ----------------------- ----------------------- -----------------------
  1.                        **Variable Set**\     add one to the value
                          %newval, %par1 + 1, Do  that was passed
                          Maths                   

  1.                        **Return**\           set %result in the
                          %newval\                parent to the value of
                                                  %newval in the child
  ----------------------- ----------------------- -----------------------

Result: the parent flashes **6**

Notes:

-   changes made to *%par1* and *%par2* in the child task are **not**
    reflected by their changing in the parent task
-   receiving a return value is optional for the parent, even if the
    child tries to give it one
-   unlike `Return` statements in most computer languages, Tasker\'s
    does not necessarily stop the child task, so if the child and parent
    have the same priority they can both run together and the child
    return several results over time.
