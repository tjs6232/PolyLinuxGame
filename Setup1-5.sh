#!/bin/bash
#trap ' ' 2 20
rc-update delete hwclock boot
rc-service hwclock restart
date +"%Y-%m-%d" > currentDate.txt
currentDate=$(head -n 1 currentDate.txt)
USER_ID=""
echo "Enter your PSU email (xyz1234@psu.edu): "
read USER_ID
echo -n "$USER_ID" > userID.txt
USER_HASH=$(echo -n "$USER_ID$currentDate" | md5sum)
echo -n "$USER_HASH" > userHash.txt

userName="polylinuxgame"
newPass="Password1"
useradd -p $newPass -m $userName

mkdir level1
mv level1.sh ~/level1
cd level1
bash level1.sh
cd ..
mkdir level2
mv level2.sh ~/level2
cd level2
bash level2.sh
cd ..
mkdir level3
mv level3.sh ~/level3
cd level3
bash level3.sh
cd ..
mkdir level4
mv level4.sh ~/level4
cd level4
bash level4.sh
cd ..
mkdir level5
mv level5.sh ~/level5
cd level5
bash level5.sh
cd ..

#rm level1.sh
#rm level2.sh
#rm level3.sh
#rm level4.sh
#rm level5.sh
#rm userHash.txt
cp -r /root/PolyLinuxGame/* /home/$userName/

rm -rf /root/PolyLinuxGame
#cp -r /root/PolyLinuxGame/dictionaries /home/$userName/
chown -R $userName /home/polylinuxgame

clear

rm setup.sh


echo "Done!" 
echo "***************************************"
echo "*   Welcome to The PolyLinux Game     *"
echo "* Use the cd command to switch Levels *"
echo "*             Good Luck!              *"
echo "*    You created this session on:     *"
echo "*             $currentDate              *"
echo "***************************************"

su -l $userName
