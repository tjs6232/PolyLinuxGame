#!/bin/bash

#Make Hash from User ID
declare USER_ID=""
echo "Enter you PSU user ID: "
read USER_ID
USER_HASH=$(echo -n "$USER_ID" | md5sum)
echo -n "$USER_HASH" > inhere.txt

mkdir Lion_Shrine Old_Main Westgate Creamery Pollock Pegula Beaver_Stadium Buckeye

cd Buckeye

touch inhere

cd ..

mv inhere.txt /home/tjs6232/Buckeye/inhere

echo "Welcome to level 4.  Use all of the commands that you have used so far to"

echo "Find the Password in the Hidden file"


#OUTDATED
