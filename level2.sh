#!/bin/bash

#set and confirm inputs
levelPassword="basic2password"
levelToBuild="basic2"
readMeLocation=$levelToBuild"/README.txt"

level_HASH=$(echo -n "$USER_ID$currentDate$newPass$levelPassword" | md5sum | grep -o '^\S\+' | base64 | cut -c 1-8)


#Create Level Content
mkdir level2

cd level2



mkdir Delta
cd Delta
touch inhere.txt
echo "$level_HASH" >> inhere.txt
cd ..
mkdir Spirit
cd Spirit
touch notinhere.txt
cd ..
mkdir American
cd American
touch notinhere.txt
cd ..
mkdir SouthWest
cd SouthWest
touch notinhere.txt
cd ..
mkdir Frontier
cd Frontier
touch notinhere.txt
cd ..
#add more target data
#add notinhere text
#cut hash to 8 characters



echo "***************************************"
echo "*   Welcome to Level 2 of The PolyLinux Game     *"
echo "*             Good Luck!              *"
echo "*    You created this session on:     *"
echo "*             $currentDate            *"
echo "***************************************"
echo "*Use the find command to find the password in a text document called inhere*"
