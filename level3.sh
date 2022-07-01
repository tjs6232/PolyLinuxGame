#!/bin/bash

#set and confirm inputs
levelPassword="basic3password"
levelToBuild="basic3"
readMeLocation=$levelToBuild"/README.txt"

level_HASH=$(echo -n "$USER_ID$currentDate$newPass$levelPassword" | md5sum | grep -o '^\S\+' | base64 | cut -c 1-8)

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
