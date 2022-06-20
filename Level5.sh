#!/bin/bash

#trap ' ' 2 20

rc-update delete hwclock boot

rc-service hwclock restart

date +"%Y-%m-%d" > currentDate.txt

currentDate=$(head -n 1 currentDate.txt)

USER_ID=""

echo "Enter your PSU email (xyz1234@psu.edu): "

read USER_ID

echo -n "$USER_ID" > inhere.txt

USER_HASH=$(echo -n "$USER_ID$currentDate" | md5sum)

#Delete all the above once Setup1-5 is complete

mkdir OldMain
cd OldMain
touch Bell
touch Door
touch Presidents
touch Office
cd ..

mkdir BeaverStadium

mkdir TheHub
cd TheHub
touch Fish
touch Food
touch Lawn
touch Rooms
cd ..

mkdir Arboretum
cd Arboretum
touch Flowers
touch Walking
touch Birds
touch Water
cd ..

mkdir Pegula
cd Pegula
touch Hockey
touch Players
touch Ice
touch Arena
cd ..

mkdir HappyValley
cd Happy Valley
touch bars
touch people
touch football
touch students
cd ..

mkdir WestGate
cd Westgate
touch Computers
touch Cybertorium
touch Professors
touch ClassRooms
cd ..

mv inhere.txt /home/BeaverStadium

echo "***************************************"
echo "*   Welcome to Level 2 of The PolyLinux Game     *"
echo "*             Good Luck!              *"
echo "*    You created this session on:     *"
echo "*             $currentDate            *"
echo "***************************************"
echo "*Use the pwd command to find the password*"
