### Variable Set

Set the variable Name to the value To.\
\
Name can be any desired string, however it\'s advisable to make it a
sequence that does not commonly occur in text otherwise it will match at
unexpected times.\
\
Names all in lower-case are *local* variables which are only visible in
the current task.\
\
If Recurse Variables is checked, all variables mentioned in the To
parameter will be repeatedly replaced until there are no variable names
left, otherwise only one round of variable replacement will take place.\
\
If Append is checked, To is added to the existing value of the
variable.\
\
If Do Maths is checked then at the time of assignment the value of To
will be evaluated as a mathematical expression.\
\
e.g.\
\
Name: %FROG\
\
To: %VOLC + 1\
\
Assuming %VOLC is 8, if Do Maths is checked, %FROG will get the value
\'9\', otherwise it will get the value \'8 + 1\'.\
\
If To cannot be numerically evaluated (e.g. it is \'cat + 3\') then the
current task will terminate.\
\
See Also: Variables section in the Userguide.
