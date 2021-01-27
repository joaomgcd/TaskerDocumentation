### Stop

Stop execution of one or more tasks after any currently running action
has finished.\
\
If a task is specified, then **all** tasks with the same name currently
executing are stopped.\
\
If no task is specified, the current task is stopped (but **not** other
tasks with the same name).\
\
If With Error is checked, the task(s) are marked as finished due to an
error.\
\
Note: to stop a different task will often require that it has a lower
priority than the task with the Stop action, since otherwise the Stop
action will perhaps never be executed.\
\
Currently running actions in a different task will not be interupted by
a Stop action, with the exception of Play Ringtone and a non-root Run
Shell.
