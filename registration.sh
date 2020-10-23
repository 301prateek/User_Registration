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


#Mobile format

read -p "Enter valid Mobile number: " mob
regex1="[1-9+][ ][0-9]{10}$"

if [[ $mob =~ $regex1 ]]
then
        echo "Valid number: " $mob
else
        echo "Invalid numer: " $mob
fi

#Password Validation
read -p "Enter Password 8 characters: " p

count=`echo ${#p}`

if [[ $count -lt 0 ]]
then
        echo "Lenth of the password shoud be 8 or greater"
	break
fi

echo $p | grep "[A-Z]" | grep "[a-z]" | grep "[0-9]" | grep "[@#$%^&*]"

if [[ $? -ne 0 ]]
then
	 echo "Invalid password, should contain uppercase,lowercase,number and special character : " $p

else
        echo "Valid password: " $p
fi
