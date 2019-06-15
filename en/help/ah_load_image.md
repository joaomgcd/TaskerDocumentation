### Load Image

Load an image into the image store, overwriting any image there
previously.\
\
The image store is an image held in the device memory on which all
actions from the Image category act.\
\
Once finished manipulating an image, it can be saved to a file with the
Save Image action.\
\
However, it could also be used to e.g. directly set an image element in
a scene.\
\
Max Width Or Height: if specified, the image is scaled as it is loaded
so that no dimension is more than the specified number of pixels. Useful
when memory is an issue.\
\
Respect EXIF Orientation: if the specified image is JPG format, it will
be automatically adjusted after loading dependent on the EXIF meta-data
tag, if present.
