#!/bin/bash

 

USER_ID=""

echo "Enter your PSU User ID (xyz1234): "

read USER_ID

USER_HASH=$(echo -n "$USER_ID" | md5sum)

USER_HASH=${USER_HASH:0:32}

selectedLevel=""

 

echo "1 - ls Level"

echo "2 - pwd Level"

echo "3 - cd Level"

echo "4 - cat directory level"

echo "Enter the number of the level you wish to verify: "

read selectedLevel

 

case $selectedLevel in

    1) echo "Selected level 1 - ls level" && levelToCheck="$HOME/PolyLinuxGame/mkdirLevel";;

    2) echo "Selected level 2- pwd level" && levelToCheck="$HOME/PolyLinuxGame/touchLevel";;

    3) echo "Selected level 3 - cd level" && levelToCheck="$HOME/PolyLinuxGame/cpMvLevel";;

    4) echo "Selected level 4 - cat level" && levelToCheck="$HOME/PolyLinuxGame/rmLevel";;

    *) echo "Invalid level. Please select again." && exit;;

esac

 

preFinalHash=$((find $levelToCheck -type f -print0  | sort -z | xargs -0 md5sum;  find $levelToCheck \( -type f -o -type d \) -print0 | sort -z |    xargs -0 stat -c '%n %a') | md5sum)

 

echo $USER_HASH$preFinalHash > hashCheck.txt

preFinal=$(cut -c 1-64 hashCheck.txt)

echo $preFinal > final.txt

finalHash=$(md5sum final.txt | cut -c 1-32)

echo "*"

echo "*"

echo "*"

echo "Take this hash and input it in the grading system. Be sure to copy it exactly!"

echo "$finalHash"

rm final.txt hashCheck.txt
