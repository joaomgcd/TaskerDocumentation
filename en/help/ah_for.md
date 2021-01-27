### For

Do a set of actions to process each of a set of values.\
\
Values is a comma-separated list of items to iterate through\
\
A For loop should be ended with a matching End For action (if one is not
present, one is automatically added to the end of the task)\
\
Example Items:\
\
apple, 0, 2:4, 3:9:3, %ARR(1:2), pear\
\
This would set Variable one at a time to:\
\
apple, 0, 2, 3, 4, 3, 6, 9, %ARR1, %ARR2, pear\
\
See Flow Control in the Userguide for more info.
