#!/bin/sh

#set and confirm inputs
levelPassword="level2password"
levelToBuild="level2"
readMeLocation=$levelToBuild"/README.txt"

level_HASH=$(echo -n "$USER_ID$currentDate$newPass$levelPassword" | md5sum | grep -o '^\S\+' | base64 | cut -c 1-8)


#Create Level Content
mkdir $levelToBuild

cd $levelToBuild

#Create the README.txt

echo "***************************************" > README.txt
echo "*   Welcome to Level 2 of The PolyLinux Game     *" >> README.txt
echo "*             Good Luck!              *" >> README.txt
echo "*    You created this session on:     *" >> README.txt
echo "*             $currentDate            *" >> README.txt
echo "***************************************" >> README.txt
echo "*Use the find command to find the password in a text document called inhere*" >> README.txt

#Go back to start and create content
#cd ..

mkdir Delta
cd Delta
echo "$level_HASH" > inhere.txt
cd ..
mkdir Spirit
cd Spirit
echo "The location is not what you were looking for" > notinhere.txt
cd ..
mkdir American
cd American
echo "The location is not what you were looking for" > notinhere.txt
cd ..
mkdir SouthWest
cd SouthWest
echo "The location is not what you were looking for" > notinhere.txt
cd ..
mkdir Frontier
cd Frontier
echo "The location is not what you were looking for" > notinhere.txt
cd ..






echo "***************************************"
echo "*   Welcome to Level 2 of The PolyLinux Game     *"
echo "*             Good Luck!              *"
echo "*    You created this session on:     *"
echo "*             $currentDate            *"
echo "***************************************"
echo "*Use the find command to find the password in a text document called inhere*"
