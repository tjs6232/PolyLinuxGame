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

cd "$level_HASH"

PS1=">"
