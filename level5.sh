#!/bin/bash

#set and confirm inputs
levelPassword="basic5password"
levelToBuild="basic5"
readMeLocation=$levelToBuild"/README.txt"

level_HASH=$(echo -n "$USER_ID$currentDate$newPass$levelPassword" | md5sum | grep -o '^\S\+' | base64 | cut -c 1-8)

#Create level contents

mkdir level2

cd level2

mkdir BeaverStadium

cd BeaverStadium

mkdir OldMain

cd OldMain

mkdir "$level_HASH"



#PS1=">" removes the good stuff
#strip the hash to just 8 characters
#increase target data
#playme script

echo "***************************************"
echo "*   Welcome to Level 5 of The PolyLinux Game     *"
echo "*             Good Luck!              *"
echo "*    You created this session on:     *"
echo "*             $currentDate            *"
echo "***************************************"
echo "*Use the pwd command to find the password*"

