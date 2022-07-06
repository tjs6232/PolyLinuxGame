#!/bin/bash

#set and confirm inputs
levelPassword="basic3password"
levelToBuild="basic3"
readMeLocation=$levelToBuild"/README.txt"

level_HASH=$(echo -n "$USER_ID$currentDate$newPass$levelPassword" | md5sum | grep -o '^\S\+' | base64 | cut -c 1-8)

#Create level contents
mkdir level3

cd level3

#create readme.txt
touch README.txt

echo "***************************************" >> README.txt
echo "*   Welcome to Level 3 of The PolyLinux Game     *" >> README.txt
echo "*             Good Luck!              *" >> README.txt
echo "*    You created this session on:     *" >> README.txt
echo "*             $currentDate            *" >> README.txt
echo "***************************************" >> README.txt
echo "*Use the cat command to find the password indside a text document*" >> README.txt



touch password.txt
touch notinhere.txt
touch PennState.txt
touch Westgate

 echo "$level_HASH" >> password.txt
