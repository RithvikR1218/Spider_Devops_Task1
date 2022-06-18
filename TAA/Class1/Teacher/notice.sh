#!/usr/bin/bash

echo "Enter Class"
read class
var=$(find / -type d -name "$class")

echo "Enter Text You want to keep in notice"
read text

date=$(date +%d-%b)
if [ "$text" != "" ]; then
  touch $var/Class_Notices/$date.txt
  chmod 774 $var/Class_Notices/$date.txt
  echo $text >> $var/Class_Notices/$date.txt
else
  echo "Please enter text next time"
fi
