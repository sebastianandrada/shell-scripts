#!/usr/bin/env bash
#lec_4_file
#Executing scripts with arguments

# $0 //tp get the name of the script
# $1 $(10) //to get the arguments
# $# //to count arguments
# $* to print all the arguments

courseName=$1 #//first argument to courseName
courseTimetable=$2

echo "parameters:"
echo "courseName:$courseName"
echo "courseShip:$courseTimetable"

echo "parameters number:$#"
echo "list parameters:$*"

#to execute use:
# bash lec_4_file.sh "name course" "18:00 to 20:00" "OTHER_I" "OTHER_II"