#!/bin/sh

rc-update delete hwclock boot
rc-service hwclock restart
date +"%Y-%m-%d" > currentDate.txt
currentDate=$(head -n 1 currentDate.txt)
USER_ID=""
echo "Enter your PSU email (xyz1234@psu.edu): "
read USER_ID
echo -n "$USER_ID" > userID.txt
USER_HASH=$(echo -n "$USER_ID$currentDate" | md5sum)


userName="polylinuxgame"
newPass="password1"
useradd -p $newPass -m $userName

bash level1.sh

bash level2.sh

bash level3.sh

bash level4.sh

bash level5.sh



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
rm Level6.sh
rm Level7.sh
rm Level8.sh
rm Level9.sh
rm test.sh
rm currentDate.txt


rm userHash.txt
rm userID.txt

cp -r /root/PolyLinuxGame/* /home/$userName/

#cp -r /root/PolyLinuxGame/dictionaries /home/$userName/
chown -R $userName /home/polylinuxgame

clear

#rm Setup1-5.sh


echo "Done!" 
echo "***************************************"
echo "*          Welcome to The PolyLinux Game     *"
echo "*      Type cd level1 to begin the game     *"
echo "*   Then type cat README.txt to find out how to play  *"
echo "*         You created this session on:     *"
echo "*             $currentDate              *"
echo "***************************************"

su -l $userName
