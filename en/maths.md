---
title: 'Tasker: Maths'
---

Maths ![](icon_tasker.png)
--------------------------

#### Where Is Maths Used ?

-   When you do `Variable Set` and click the *Do Maths* checkbox
-   With the `If` action, if you select a mathematical comparison like
    **\<** or **=**
-   With individual action conditions when a mathematical comparison is
    selected

#### What\'s Available

Tasker uses the [MathEval](http://www.softwaremonkey.org/Code/MathEval)
library by Lawrence PC Dol.

#### Operators

-   **+ - \* /** - the basic operators
-   **%** - modulus
-   **\^** - power

##### Constants

-   **E** - the base of the natural logarithms
-   **EUL** - Euler\'s Constant
-   **LN2** - log of 2 base e
-   **LN10** - log of 10 base e
-   **LOG2E** - log of e base 2
-   **LOG10E** - log of e base 10
-   **PHI** - the golden ratio
-   **PI** - the ratio of the circumference of a circle to its diameter

##### Functions

Trigonometric functions expect a value in radians.

Functions take their argument in parenthesis e.g. sin(torad((90))

-   **abs** - absolute value
-   **acos** - arc cosine; the returned angle is in the range 0.0
    through pi
-   **asin** - arc sine; the returned angle is in the range -pi/2
    through pi/2
-   **atan** - arc tangent; the returned angle is in the range -pi/2
    through pi/2
-   **cbrt** - cube root
-   **ceil** - smallest value that is greater than or equal to the
    argument and is an integer
-   **cos** - trigonometric cosine
-   **cosh** - hyperbolic cosine
-   **exp** - Euler\'s number e raised to the power of the value
-   **expm1** - *e*x-1
-   **floor** - largest value that is less than or equal to the argument
    and is an integer
-   **getExp** - unbiased exponent used in the representation of val
-   **log** - natural logarithm (base e)
-   **log10** - base 10 logarithm
-   **log1p** - natural logarithm of (val+1)
-   **nextup** - floating-point value adjacent to val in the direction
    of positive infinity
-   **round** - closest 64 bit integer to the argument
-   **roundhe** - double value that is closest in value to the argument
    and is equal to a mathematical integer, using the half-even rounding
    method.
-   **signum** - signum function of the argument; zero if the argument
    is zero, 1.0 if the argument is greater than zero, -1.0 if the
    argument is less than zero
-   **sin** - trigonometric sine
-   **sinh** - hyperbolic sine
-   **sqrt** - correctly rounded positive square root
-   **tan** - trigonometric tangent
-   **tanh** - hyperbolic tangent
-   **todeg** - converts an angle measured in radians to an
    approximately equivalent angle measured in degrees
-   **torad** - converts an angle measured in degrees to an
    approximately equivalent angle measured in radians
-   **ulp** - size of an ulp of the argument
