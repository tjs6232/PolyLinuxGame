#!/bin/bash

#set and confirm inputs
levelPassword="basic4password"
levelToBuild="basic4"
readMeLocation=$levelToBuild"/README.txt"

level_HASH=$(echo -n "$USER_ID$currentDate$newPass$levelPassword" | md5sum | grep -o '^\S\+')

#Create level contents
mkdir level4

cd level4

mkdir OldMain
cd OldMain
touch Bell
touch Door
touch "$USER_HASH"
touch Presidents
touch Office
cd ..




echo "***************************************"
echo "*   Welcome to Level 4 of The PolyLinux Game     *"
echo "*             Good Luck!              *"
echo "*    You created this session on:     *"
echo "*             $currentDate            *"
echo "***************************************"
echo "*Use the cd and ls command to find the password*"
