#!/bin/bash

#set and confirm inputs
levelPassword="basic1password"
levelToBuild="basic1"
readMeLocation=$levelToBuild"/README.txt"

level_HASH=$(echo -n "$USER_ID$currentDate$newPass$levelPassword" | md5sum | grep -o '^\S\+')

#Create the Level Contents
mkdir level1

cd level1

mkdir "$level_HASH"


echo "***************************************"
echo "*   Welcome to Level 1 of The PolyLinux Game     *"
echo "*             Good Luck!              *"
echo "*    You created this session on:     *"
echo "*             $currentDate            *"
echo "***************************************"
echo "*Use the ls command to find the password*"
