#!/bin/bash

# this Script for check IF ELSE ..! 


# THIS ARE SOME OPERATER'S WHICH ARE COMMONLY USE .. !  

# Equal                  : -eq / ==
# Greaterthanorequalto   : -ge
# Lessthanorequalto      : -le
# Not Equal		 : -ne / !=
# Greater Than           : -gt
# Less Than              : -lt



echo Hi user, Welcome to Election.. 
echo "Enter your Age : "
read age

echo 
echo

if [ $age -gt 18 ]
then
	echo "You Can Vote ..! "
else
	echo "You Can Not Vote..!"
fi


