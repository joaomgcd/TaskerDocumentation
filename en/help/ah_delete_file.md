### Delete File

Delete an SD card file.\
\
The path starts in the root directory of the SD card.\
\
If Shred Level is more than 0, the contents of the file are overwritten
with random bytes the specified number of times before it is deleted.\
\
The intention is to make it (much) harder to recover the contents than
if the file was simply deleted.\
\
Security note: shredding will only provide basic protection on
\'journalling\' filesystems, but most external storage uses FAT32 at the
time of writing.
