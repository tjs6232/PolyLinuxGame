#!/bin/bash

#set and confirm inputs
levelPassword="basic5password"
levelToBuild="basic15"
readMeLocation=$levelToBuild"/README.txt"

level_HASH=$(echo -n "$USER_ID$currentDate$newPass$levelPassword" | md5sum | grep -o '^\S\+')


#Create Level Content
mkdir level5

cd level5



mkdir Delta
cd Delta
touch inhere.txt
echo "$level_HASH" >> inhere.txt
cd ..
mkdir Spirit
mkdir American
mkdir SouthWest
mkdir Frontier




echo "***************************************"
echo "*   Welcome to Level 5 of The PolyLinux Game     *"
echo "*             Good Luck!              *"
echo "*    You created this session on:     *"
echo "*             $currentDate            *"
echo "***************************************"
echo "*Use the find command to find the password in a text document called inhere*"
