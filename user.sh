#!/usr/bin/bash
echo "Enter File Sysytem"
read fs
echo "What type of user do you want to create(Student/Teacher)"
read user
echo "Enter name of user"
read name
if [[ "$user" == "Teacher" ]]; then
  sudo useradd $name
  echo "Enter class name"
  read class
  sudo chown -R $name $fs/$class
elif [[ "$user" == "Student" ]]; then
  sudo useradd $name
  echo "Enter class name"
  read class1
  #echo "Date Math History English Science History Hindi" >> /home/rithvik/code/bash/$fs/$class1/Class_Marks/$name.txt
  echo $name >> /home/rithvik/code/bash/$fs/$class1/Class_Attendance/Class_Attendance.txt
  sudo setfacl -Rm u:$name:r-x /home/rithvik/code/bash/$fs/$class1
  #sudo chmod 775 /home/rithvik/code/bash/$fs/$class1/Class_Marks/$name.txt
fi

