### HTTP Get

Send an HTTP GET request to a webserver.\
\
The response code is stored in %HTTPR. A response code of -1 indicates a
problem making the request. Any returned data is stored in the variable
%HTTPD if the content type is text-based (max 4K).\
\
Returned header fields are stored in the local variable array %header
(%header1, %header2 etc)\
\
Example: running a script\
\
Server:Port: www.big.com \[no port specified, use port 80\]\
Path: cgi-bin/palpable.pl\
Attributes: \[must be separated by newlines, no spaces please\]\
colour=pink\
scent=rosy\
Timeout: 30 \[read timeout after 30 seconds\]\
Content-Type: \[if nothing specified, use server-specified value\]\
File: results.html \[optional: store returned data in
/sdcard/results.html\]\
\
Attribute keys and values are url-encoded automatically.\
\
Server:Port can be preceeded by a) https:// to require a secure, trusted
connection b) a username:password@ to add a Basic Authorization header
field to the request.\
\
The Cookies parameter is of the form:\
\
name1=valuu1;name2=value2\
\
Ignore SSL Anchor Errors: only for https connections, ignoring such
errors leaves the connection open to man-in-the-middle attacks.
