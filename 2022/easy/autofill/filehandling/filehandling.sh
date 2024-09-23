#!/bin/bash

echo "Hello this is bashaway" > file.txt # add or overwrite
echo "Append a line" >> file.txt #append
echo "this is a test file" >> file.txt
echo "checkout the guidance report
filehandling.md" >> file.txt


cat file.txt  #display all content of file
echo ""
head -n 3 file.txt #display first 3 lines
echo ""
tail -n 2 file.txt #display last 2 lines
echo ""

# check if file exist
if [ -e file.txt ]; then
    echo "file.txt exist"
else
    echo "Doesn't exist"
fi