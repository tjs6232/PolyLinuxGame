#!/bin/bash

#set and confirm inputs
levelPassword="basic1password"
levelToBuild="basic1"
readMeLocation=$levelToBuild"/README.txt"

level_HASH=$(echo -n "$USER_ID$currentDate$newPass$levelPassword" | md5sum | grep -o '^\S\+')

#Create level contents
mkdir level3

cd level3

touch password.txt

 echo "$level_HASH" >> password.txt





echo "***************************************"
echo "*   Welcome to Level 3 of The PolyLinux Game     *"
echo "*             Good Luck!              *"
echo "*    You created this session on:     *"
echo "*             $currentDate            *"
echo "***************************************"
echo "*Use the cat command on the file userID to find the password*"
