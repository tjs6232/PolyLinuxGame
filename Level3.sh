#!/bin/bash

#trap ' ' 2 20

rc-update delete hwclock boot

rc-service hwclock restart

date +"%Y-%m-%d" > currentDate.txt

currentDate=$(head -n 1 currentDate.txt)

USER_ID=""

echo "Enter your PSU email (xyz1234@psu.edu): "

read USER_ID

echo -n "$USER_ID" > userID.txt

USER_HASH=$(echo -n "$USER_ID$currentDate" | md5sum)

#Delete all the above once Setup1-5 is complete

touch password.txt

"$USER_HASH" > password.txt





echo "***************************************"
echo "*   Welcome to Level 3 of The PolyLinux Game     *"
echo "*             Good Luck!              *"
echo "*    You created this session on:     *"
echo "*             $currentDate            *"
echo "***************************************"
echo "*Use the cat command on the file userID to find the password*"
