### Read Line / Read Paragraph

Read a record (a line or paragraph) from a text file.\
\
Line/Paragraph is the name of a variable containing the record number to
read. If unspecified, the record after the previously read one \*in that
file\* is read. A variable is used in place of a number here to permit
e.g. reading a random record via the Variable Randomize action.\
\
If the end of the file was reached before the specified record number
was found, it will contain the value EOF. The next line number then
resets to 1.\
\
Blank lines and any newline character at the end of a file are always
ignored.\
\
Don\'t try to read a non-text file with this, the results will probably
be disastrous.\
\
The action is not very efficient for reading all the records in a file,
since it starts from the beginning each time.
