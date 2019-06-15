### Variable Value

The named user-defined variable matches the specified operator and
value.\
\
See the userguide document on Flow Control for details of how the
operator/value comparison functions.\
\
This state can also trigger on some \'dynamic\' built-in variables: see
the *Variables* section of the Userguide for details.\
\
Warning: if you want to trigger on a variable and then take some action
which sets the thing the variable represents you should use the Variable
Set event instead. A Variable Value state will cause complications when
the state exits and tries to restore the value again.
