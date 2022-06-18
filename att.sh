#!/usr/bin/bash

echo "Enter Class"
read class

var=$(find /home -type d -name "$class")


var1=$(wc -l < $var/Class_Attendance/Class_Attendance.txt)
name=($(awk '{print $1}' $var/Class_Attendance/Class_Attendance.txt))

for (( c=0 ; c<$var1 ; c++ ))
do
 echo "Is ${name[$c]} Present or absent"
 read att[$c]
done

for (( d=0 ; d<$var1 ; d++ ))
do
 touch $var/Class_Attendance/file.txt
 sed -e "/${name[$d]}/s/$/ ${att[$d]}/" $var/Class_Attendance/Class_Attendance.txt > $var/Class_Attendance/file.txt
 mv $var/Class_Attendance/file.txt $var/Class_Attendance/Class_Attendance.txt
done

