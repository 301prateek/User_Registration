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


read -p "Enter Valid last name: " lname

#Last name validation.

regex="^[A-Z]{1}[a-z]{2,}$"

if [[ $lname =~ $regex ]]
then
        echo "Valid : " $lname
else
        echo "Invalid : " $lname
fi


#Email validation.

read -p "Enter Valid email address: " email

regex="^[a-zA-Z0-9]+([-+.]?)([a-zA-Z0-9]?)+@[a-zA-Z0-9]+.+[a-z]+([.]?)([a-z]?)$"

if [[ $email =~ $regex ]]
then
        echo "Valid : " $email
else
        echo "Invalid : " $email
fi
