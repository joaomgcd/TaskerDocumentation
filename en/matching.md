---
title: 'Tasker: Pattern Matching'
---

Pattern Matching ![](icon_tasker.png)
-------------------------------------

### What\'s Pattern Matching ?

With Pattern Matching, you specify a *pattern* which tells Tasker what
text you wish to match. For instance, if you want to match any telephone
number starting with **0135**, you can specify the simple match
**0135\***. **\*** is a special character which *matches* any number of
any character.

Tasker has two type of matching, [Simple Matching](#simple) and more
advanced [Regex Matching](#regex). []{#simple}

### Simple Matching

Simple matching is designed to be easy for non-technical people to use.

#### Where\'s It Used ?

Simple Matching is used in the following places:

-   in the **If** condition of an action, when the **\~** (match) or
    **!\~** (not match) operators are specified.
-   in text paremeters of State and Event contexts
-   some other places :-)

#### Matching Rules

-   if a pattern is left blank, it will match against anything
-   if it is not blank it must match the whole target text
-   **/** means \'or\', it divides up multiple possible matches
-   a **\*** will match any number of any character. It\'s not possible
    to specifically match a **\*** character.
-   a **+** will match one or more of any character. It\'s not possible
    to specifically match a **+** character.\
    Beware: the condition \'%var matches +\' will be **true** if %var
    has not been assigned a value, because Tasker does not replace
    variables which do not have a value.
-   matching is case-insensitive (*magic* will match with *MagiC*)
    **unless** the pattern contains an upper-case letter e.g. *Magic\**
    will not match against *magically*, but it will match against *Magic
    Roundabout*
-   a **!** at the very start of a match means **not** e.g.
    *!\*Magic\*/\*Yellow\** matches anything **not** containing the
    words *Magic* or *Yellow*
-   it is not possible to specifically match a **!** character at the
    start of a target (but you could use **\*!**

Examples

-   *help* matches *help* but not *helper*.
-   *help\** matches *helper*
-   *\*the\** matches *the* (anywhere)
-   *123+* matches *123* and minimally one more character
-   *+* matches anything with at least one character (non-empty)
-   *the\*way* matches *the other way* and *the first way*, amongst
    others
-   *Help/\*shell* matchs *Help* or anything ending with *shell*,
    case-sensitively

[]{#caller}

#### Caller Matching

Caller matching (some events and states e.g. *Call*) is handled slightly
differently.

-   *C:ANY* matches the telephone number of any contact
-   *C:FAV* matches the telephone number of any favourite (starred)
    contact
-   *CG:`groupmatch`* matches the telephone number of a contact in a
    group which matches `groupmatch`
-   *Otherwise:* otherwise a match is attempted using the general
    matching rules against **both** the caller phone number and the
    associated contact\'s name (if there is one).

Examples:

-   *!C:ANY* matches a number **not** belonging to a contact
-   *077\*/Geoff\** matches a number starting with *077* or belonging to
    a contact whose names starts with *Geoff*
-   *C:FAV/0123456789* matches any favourite contact or the telephone
    number *0123456789*
-   *CG:\*Family\*/CG:Business* matches any contact in the contact
    groups *Family Members*, *My Family* or *Business*

[]{#regex}

### Regular Expression Matching

Regular expressions are similar to simple matching patterns but have
many more features and are much harder for non-technical people.

#### Where\'s It Used ?

Regex Matching is available:

-   in the **If** condition of an action, when the **\~R** or **!\~R**
    operators are specified.
-   in the *Variable Search Replace* action
-   in the condition of a *Variable Value* state
-   wherever a Simple Match is possible, by preceding the regex with
    **\~R** or **!\~R**

#### Matching Rules

Standard Java regular expression matching is applied. The Android
Developer site has a [reference
page](http://developer.android.com/reference/java/util/regex/Pattern.html).
