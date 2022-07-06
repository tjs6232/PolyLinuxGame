#!/bin/bash

#set and confirm inputs
levelPassword="basic1password"
levelToBuild="basic1"
readMeLocation=$levelToBuild"/README.txt"

level_HASH=$(echo -n "$USER_ID$currentDate$newPass$levelPassword" | md5sum | grep -o '^\S\+' | base64 | cut -c 1-8)
#echo $level_HASH | base64 | cut -c 1-8 > $levelToBuild/inhere.txt

#Create the Level Contents
mkdir level1

cd level1

mkdir "$level_HASH"


echo "*" > $readMeLocation
echo "*" >> $readMeLocation
echo "*" >> $readMeLocation
echo "Use the ls command to find the password for this level" >> $readMeLocation
echo "The contents will be the password for this level." >>$readMeLocation
