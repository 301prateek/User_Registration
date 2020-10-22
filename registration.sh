#!/bin/bash -x
#Author: Prateek Patil
#User Registration 

shopt -s extglob

read -p "Enter Valid first name: " fname

#first name validation.

regex="^[A-Z]{1}[a-z]{2,}$"

if [[ $fname =~ $regex ]]
then
        echo "Valid : " $fname
else
        echo "Invalid : " $fname
fi

