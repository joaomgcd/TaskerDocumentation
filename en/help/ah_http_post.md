### HTTP Post

Send an HTTP POST request to a webserver.\
\
The response code is stored in %HTTPR. A response code of -1 indicates a
problem making the request. Any returned data is stored in the variable
%HTTPD if the content type is text-based (max 4K).\
\
Returned header fields are stored in the local variable array %header
(%header1, %header2 etc)\
\
Example: sending a script some data\
\
Server:Port www.small.com \[no port specified, use port 80\]\
Path: cgi-bin/grinder.pl\
Data:\
name=Fred\
hair=Blond\
Timeout: 30 \[read timeout after 30 seconds\]\
Content-Type: \[default is: x-www-form-urlencoded, if not specified
server value is used\]\
File: results.html \[optional: store returned data in
/sdcard/results.html\]\
\
If Content-Type is x-www-form-urlencoded, the data must be formatted as
in the example and the keys and values will be encoded automatically.\
\
Server:Port can be preceeded by a) https:// to require a secure, trusted
connection b) username:password@ which will add a Basic Authorization
header field to the request.\
\
The Cookies parameter is of the form:\
\
name1=valuu1;name2=value2\
\
Ignore SSL Anchor Errors: only for https connections, ignoring such
errors leaves the connection open to man-in-the-middle attacks.
