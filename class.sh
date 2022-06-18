#!/usr/bin/bash
echo "File System Name"
read fs
mkdir $fs
echo "Enter class name: "
read class
mkdir -p $fs/$class
mkdir -p $fs/$class/Class_Marks $fs/$class/Class_Notices $fs/$class/Class_Attendance
mkdir -p $fs/$class/Teacher
cp att.sh $fs/$class/Teacher/
cp marks.sh $fs/$class/Teacher/
cp notice.sh $fs/$class/Teacher/

touch /home/rithvik/code/bash/$fs/$class/Class_Attendance/Class_Attendance.txt
sudo chmod  -R 771 /home/rithvik/code/bash/$fs/$class
