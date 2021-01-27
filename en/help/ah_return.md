### Return

Return a value to the parent of this task i.e. the one that started it
via Perform Task.\
\
The parent task must have started it\'s child at equal or higher
priority and have specified a Return Value Variable in it\'s Perform
Task action, which will then be set to the Value specified in this
Return action.\
\
If Stop is checked, this task (the child) will terminate after returning
the Value to the parent.\
\
See Flow Control in the Userguide for more info.
