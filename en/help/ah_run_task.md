### Perform Task

Run the selected Tasker task.\
\
You can \'nest\' as many tasks as you wish.\
\
When this action is used as part of an Enter task, the settings it
contains are \*not\* restored when the profile exits.\
\
When a task is started from an existing task, the existing task
continues unless the Stop parameter is set.\
\
If you set the priority lower than the current task, the current task
will finish before the new one starts.\
\
If you set the priority the same or higher than the current task (a good
way to do this is to specify \'%priority+1\'), the new task will
completely execute before the current one resumes.\
\
Values assigned to %par1 and %par2 are available in the child task as
normal variables.\
\
If the child does a Return action, the Return Value Variable in the
parent task is set to the Value specified in that Return action, however
note that the value will not be returned if the Perform Task is the last
action of the parent.\
\
See Flow Control in the Userguide for more info.
