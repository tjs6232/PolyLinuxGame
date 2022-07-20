#!/bin/sh

#set and confirm inputs
levelPassword="level7password"
levelToBuild="level7"
readMeLocation=$levelToBuild"/README.txt"

level_HASH=$(echo -n "$USER_ID$currentDate$newPass$levelPassword" | md5sum | grep -o '^\S\+' | base64 | cut -c 1-8)

#Create level contents
mkdir $levelToBuild

cd $levelToBuild

#create readme.txt

echo "***************************************" > README.txt
echo "*   Welcome to Level 7 of The PolyLinux Game     *" >> README.txt
echo "*             Good Luck!              *" >> README.txt
echo "*    You created this session on:     *" >> README.txt
echo "*             $currentDate            *" >> README.txt
echo "***************************************" >> README.txt
echo "*Use the find command to discover the password inside of a hidden file called inhere.txt*" >> README.txt

#create level contents


#---- DATA LEAK ISSUE ----


#create the first directory
mkdir Philadelphia
cd Philadelphia
echo "This location is not what you were looking for" > Art.txt
echo "This location is not what you were looking for" > Buildings.txt
echo "This location is not what you were looking for" > Stadiums.txt
cd ..
#-------------------------------------- End of Directory
mkdir SouthPhilly
cd SouthPhilly
echo "This location is not what you were looking for" > Food.txt
echo "This location is not what you were looking for" > Italy.txt
echo "This location is not what you were looking for" > People.txt
#Temporary Point to where I need to be
cd ..
#-------------------------------------- End of Directory
mkdir Sports
cd Sports
echo "This location is not what you were looking for" > Phillies.txt
echo "This location is not what you were looking for" > Eagles.txt
echo "This location is not what you were looking for" > 76ers.txt
echo "This location is not what you were looking for" > Flyers.txt
#Temporary Point to where I need to be
cd ..
#-------------------------------------- End of Directory
mkdir TargetData
cd TargetData
echo "This location is not what you were looking for" > IWonderWhereItIs.txt
echo "This location is not what you were looking for" > LookCloser.txt
echo  ."$level_HASH" > inhere.txt
echo "This location is not what you were looking for" > ItsInHereSomewhere.txt

cd..

