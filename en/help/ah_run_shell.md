### Run Shell

Run a system shell command under linux.\
\
Most commands require root, so be aware of that.\
\
If Timeout is 0, the command will never time-out.\
\
Store Output In is a variable name for the output (stdout) of the
command.\
\
Similarly, Store Errors In is for error output (stderr).\
\
A result code of 256 indicates a technical failure executing the
command, 257 indicates that the specified Timeout value was exceeded,
258 indicates the process was interrupted.\
\
Any non-zero result code will cause the task to stop, unless Continue On
Error is checked, otherwise the result code will be stored in %err.
