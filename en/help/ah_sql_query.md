### SQL Query

Query an SQL database in a file or URI.\
\
In Raw mode, the Query must be entered as a full SQL statement.\
\
In Table URI mode the URI refers to a specific table rather than a DB;
an example is content://com.android.contacts/groups.\
\
In both Formatted modes, SQL directives (SELECT, WHERE etc) should be
ommitted.\
\
Selection refers to the WHERE directive (\'column \> 5\', \'column =
?\')\
\
Selection Args specifies content that fills each ? in Selection in the
order they appear.\
\
The result rows of the query are stored in the specified array with a
row at each index. The columns within each row are separated by the
Output Column Divider.\
\
Null DB values are represented as , BLOBs as , problems with \<???\>\
\
When making several transactions on a DB on external storage or which
needs root to access, it will be much more efficient to first move the
DB file to internal storage (Move File action) and operate on it there.\
\
In Raw mode, only the following directives requiring writeable DB access
are supported: INSERT INTO, UPDATE, CREATE TABLE, DELETE FROM, ALTER
TABLE.
