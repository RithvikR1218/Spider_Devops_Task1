#!/usr/bin/bash

echo "Enter Class"
read class
var=$(find / -type d -name "$class")

echo "Enter name of student: "
read name

declare -a arr=( "math" "english" "science" "history" "hindi" )
date=$(date +%d-%b)

for (( c=0; c<"${#arr[@]}"; c++ ))
do
  echo "Enter marks for ${arr[$c]}: "
  read b[$c]
done
echo -n $date >> $var/Class_Marks/$name.txt
for (( c=0; c<"${#b[@]}"; c++ ))
do
  echo -n " ${b[$c]}" >> $var/Class_Marks/$name.txt
done
echo -e "" >> $var/Class_Marks/$name.txt

chmod 770 $var/Class_Marks/$name.txt
setfacl -m u:$name:r-- $var/Class_Marks/$name.txt
