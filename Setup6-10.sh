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

bash Level6.sh
bash Level7.sh
bash Level8.sh
bash Level9.sh
bash Level10.sh

rm Level6.sh
rm Level7.sh
rm Level8.sh
rm Level9.sh
rm Level10.sh
rm -rf dictionaries
rm README.md
rm userHash.txt
cp -r /root/PolyLinuxGame/* /home/$userName/
#rm /home/polylinuxgame/level1Verify.sh
#rm /home/polylinuxgame/level2Verify.sh
#rm /home/polylinuxgame/level3Verify.sh
#rm /home/polylinuxgame/level4Verify.sh
rm -rf /root/PolyLinuxGame
#cp -r /root/PolyLinuxGame/dictionaries /home/$userName/
chown -R $userName /home/polylinuxgame

clear

#rm setup.sh
echo "Done!" 
echo "***************************************"
echo "*   Welcome to The PolyLinux Game     *"
echo "*             Good Luck!              *"
echo "*    You created this session on:     *"
echo "*             $currentDate              *"
echo "***************************************"
su -l $userName
