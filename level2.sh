#!/bin/bash

#set and confirm inputs
levelPassword="basic1password"
levelToBuild="basic1"
readMeLocation=$levelToBuild"/README.txt"

level_HASH=$(echo -n "$USER_ID$currentDate$newPass$levelPassword" | md5sum | grep -o '^\S\+')

#Create level contents

mkdir level2

cd level2

mkdir BeaverStadium

cd BeaverStadium

mkdir OldMain

cd OldMain

mkdir "$USER_HASH"

cd "$USER_HASH"



echo "***************************************"
echo "*   Welcome to Level 2 of The PolyLinux Game     *"
echo "*             Good Luck!              *"
echo "*    You created this session on:     *"
echo "*             $currentDate            *"
echo "***************************************"
echo "*Use the pwd command to find the password*"
