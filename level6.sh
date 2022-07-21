#!/bin/sh

#set and confirm inputs
levelPassword="level6password"
levelToBuild="level6"
readMeLocation=$levelToBuild"/README.txt"

level_HASH=$(echo -n "$USER_ID$currentDate$newPass$levelPassword" | md5sum | grep -o '^\S\+' | base64 | cut -c 1-8)

#Create level contents
mkdir $levelToBuild

cd $levelToBuild

#create readme.txt

echo "***************************************" > README.txt
echo "*   Welcome to Level 6 of The PolyLinux Game     *" >> README.txt
echo "*             Good Luck!              *" >> README.txt
echo "*    You created this session on:     *" >> README.txt
echo "*             $currentDate            *" >> README.txt
echo "***************************************" >> README.txt
echo "*Use the find command to discover the password inside of a file called inhere.txt*" >> README.txt

#create level contents


#---- DATA LEAK ISSUE ----


#create the first directory
mkdir StarWars
cd StarWars
echo "This location is not what you were looking for" > Vader.txt
echo "This location is not what you were looking for" > Skywalker.txt
echo "This location is not what you were looking for" > Revan.txt
cd ..
#-------------------------------------- End of Directory
mkdir BreakingBad
cd BreakingBad
echo "This location is not what you were looking for" > Walter.txt
echo "This location is not what you were looking for" > Gus.txt
echo "This location is not what you were looking for" > Jessie.txt
#Temporary Point to where I need to be
cd ..
#-------------------------------------- End of Directory
mkdir Comedians
cd Comedians
echo "This location is not what you were looking for" > BillBurr.txt
echo "This location is not what you were looking for" > KevinHart.txt
echo "This location is not what you were looking for" > Fluffy.txt
echo "This location is not what you were looking for" > RobinWilliams.txt
#Temporary Point to where I need to be
cd ..
#-------------------------------------- End of Directory
mkdir TargetData
cd TargetData
echo "This location is not what you were looking for" > Congrats.txt
echo "This location is not what you were looking for" > YouFoundIt.txt
echo "$level_HASH" > inhere.txt
echo "This location is not what you were looking for" > CatTheFile.txt
cd ..