#!/bin/bash

# this is for generate password... 


echo "Hey, Welcome to Generating Password...!"
echo

echo "Enter the length of the password : "
read len

echo
echo "Enter how many password Generating : "
read mny

for i in $(seq 1 $mny);
do
	openssl rand -base64 48 | cut -c1-$len
done

