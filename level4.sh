#!/bin/bash

#set and confirm inputs
levelPassword="basic4password"
levelToBuild="basic4"
readMeLocation=$levelToBuild"/README.txt"

level_HASH=$(echo -n "$USER_ID$currentDate$newPass$levelPassword" | md5sum | grep -o '^\S\+' | base64 | cut -c 1-8)

#Create level contents
mkdir level4

cd level4

#create readme.txt
touch README.txt

echo "***************************************" >> README.txt
echo "*   Welcome to Level 4 of The PolyLinux Game     *" >> README.txt
echo "*             Good Luck!              *" >> README.txt
echo "*    You created this session on:     *" >> README.txt
echo "*             $currentDate            *" >> README.txt
echo "***************************************" >> README.txt
echo "*Use the cd and ls commands to find the password inside the directories*" >> README.txt

#create level contents

mkdir OldMain
cd OldMain
touch Bell
touch Door
touch "$level_HASH"
touch Presidents
touch Office
cd ..

mkdir BeaverStadium
mkdir Westgate
mkdir TheHub
mkdir Pegula




echo "***************************************"
echo "*   Welcome to Level 4 of The PolyLinux Game     *"
echo "*             Good Luck!              *"
echo "*    You created this session on:     *"
echo "*             $currentDate            *"
echo "***************************************"
echo "*Use the cd and ls command to find the password*"
