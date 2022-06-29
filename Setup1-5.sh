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

bash level1.sh

cd /home/$userName

bash level2.sh

cd /home/$userName

bash level3.sh

cd /home/$userName

bash level4.sh

cd /home/$userName

bash level5.sh

cd /home/$userName

rm level1.sh
rm level2.sh
rm level3.sh
rm level4.sh
rm level5.sh
#delete below after show
rm Setup1-5.sh
rm Setup6-10.sh
rm level1test.sh
rm level2test.sh
rm level3test.sh
rm level4test.sh
rm level5test.sh
rm level6.sh
rm level7.sh
rm level8.sh
rm level9.sh
rm currentDate.txt


rm userHash.txt
rm userID.txt

cp -r /root/PolyLinuxGame/* /home/$userName/

rm -rf /root/PolyLinuxGame
#cp -r /root/PolyLinuxGame/dictionaries /home/$userName/
chown -R $userName /home/polylinuxgame

clear

#rm Setup1-5.sh


echo "Done!" 
echo "***************************************"
echo "*   Welcome to The PolyLinux Game     *"
echo "* Use the cd command to switch Levels *"
echo "*             Good Luck!              *"
echo "*    You created this session on:     *"
echo "*             $currentDate              *"
echo "***************************************"

su -l $userName
