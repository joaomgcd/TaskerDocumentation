### Received Data SMS

A data SMS has been received.\
\
Data SMSs are sent to particular ports. This event will trigger on an
SMS to any port, unless a particular one is specified.\
\
Data is the Base64-encoded binary data which was received, accessible
via %evtprm3 in the resulting task.\
It can be e.g. written to a file with Write Binary or converted decoded
to a string (assuming the binary data represents a string) with the
Variable Convert action.
