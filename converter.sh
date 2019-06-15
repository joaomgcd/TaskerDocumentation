#!/bin/bash

for file in $(find . -name "*.html")
do 
	basefile=`basename $file`	
	withoutextension=${basefile%.html}
	therealpath=`realpath $file`
	relativedir=`realpath --relative-to=$PWD $therealpath`
	echo "Converting $basefile"
	pandoc $therealpath -f html -t markdown -s -o $(dirname ${relativedir})/${withoutextension}.md
done