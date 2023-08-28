#!/bin/bash

# Switch Case using ShellScripting...!

echo "Hey Welcome, this is Switch Case..! "
echo

echo "Press any option !"
echo "1 : Show Date.. "
echo "2 : List files.. "
echo "3 : Show current Dir.. "

read choice

case $choice in
	1)date;;
	2)ls -ltr;;
	3)pwd;;
	*) echo "Invalid Input "
esac


