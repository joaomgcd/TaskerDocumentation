### Cell Near

One of the specified cell towers is visible to the phone.\
\
Press **Scan** to start collecting cell (tower) information. Leave Scan
on for at least 10 minutes and move around the location because many
places are covered by several cells and the phone will often swap
between them even if you\'re standing still.\
\
Tasker will keep the device on while scanning because cell detection is
more reliable then. If you turn the device off manually or change to a
different activity, scanning will stop.\
\
The first part of each line in the text box indicates the cell tower ID.
The number afterwards is the \*last seen\* signal strength to that cell.
The currently connected cell is marked with a less-than sign.\
\
This state is a very inaccurate way of determining if you are in a
particular location, but uses very little power.\
\
If active when there is no signal (e.g. during Airplane Mode) this
context will \*stay active\*.\
\
Cells specified in *Ignore Cells* can never cause the context state to
change, which can be useful if e.g. a particular cell is present in more
than one desired area.\
\
See Also: Prefs / Monitor / Use New Cell API, Prefs / Monitor / Net/Cell
Wake Screen
