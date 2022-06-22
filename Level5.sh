#!/bin/bash

#trap ' ' 2 20

rc-update delete hwclock boot

rc-service hwclock restart

date +"%Y-%m-%d" > currentDate.txt

currentDate=$(head -n 1 currentDate.txt)

USER_ID=""

echo "Enter your PSU email (xyz1234@psu.edu): "

read USER_ID

echo -n "$USER_ID" > inhere.txt

USER_HASH=$(echo -n "$USER_ID$currentDate" | md5sum)

#Delete all the above once Setup1-5 is complete

mkdir Delta
cd Delta
mkdir Passenger
cd ..
mkdir Spirit
mkdir American
mkdir SouthWest
mkdir Frontier



mv inhere.txt passenger

echo "***************************************"
echo "*   Welcome to Level 5 of The PolyLinux Game     *"
echo "*             Good Luck!              *"
echo "*    You created this session on:     *"
echo "*             $currentDate            *"
echo "***************************************"
echo "*Use the find command to find the password in a text document called inhere*"
