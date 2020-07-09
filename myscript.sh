#!/bin/bash
# assignment number: Lab 9
# student name: Tran Bich Ngoc Phan
# student number: 040973054
# course: cst8102 section 330
# script file name: myscript.sh
# submission date: March 26
# description: this program is for the purpose of user and group management 

choice="n"
while [ "$choice" != "Q" ] && [ "$choice" != "q" ]
do
	clear	
	echo "Create a user account: A"
	echo "Delete a user account: B"
	echo "Change supplementary group for a user account: C"
	echo "Change initial group for a user account: D"
	echo "Change default login shell for a user account: E"
	echo "Change account expiration date for a user account: F"
	echo "Quit: Q"
	read -p "Choice: " choice
	echo "You entered $choice"
	if [ $choice = "A" ] || [ $choice = "a" ]
	then
		read -p "Username: " username
		read -p "User's home directory: " home_directory
		read -p "Default login shell: " shell
		sudo useradd -d $home_directory -m -s $shell $username
	elif [ $choice = "B" ] || [ $choice = "b" ]
	then	
		read -p "Username: " username
		sudo userdel -r $username
	elif [ $choice = "C" ] || [ $choice = "c" ]
	then
		read -p "Username: " username
		read -p "Supplementary group: " second_group
		sudo groupadd -f $second_group
               	sudo usermod -G $second_group $username
	elif [ $choice = "D" ] || [ $choice = "d" ]
        then
                read -p "Username: " username
                read -p "Initial group: " initial_group
		sudo groupadd -f $initial_group
                sudo usermod -g $initial_group $username
	elif [ $choice = "E" ] || [ $choice = "e" ]
        then
                read -p "Username: " username
                read -p "Shell name: " shell
                sudo usermod -s $shell $username
	elif [ $choice = "F" ] || [ $choice = "f" ]
        then
                read -p "Username: " username
                read -p "Expiration date: " date
                sudo usermod -e $date $username	
	elif [ $choice = "Q" ] || [ $choice = "q" ]
        then
		break
	else
		echo "Invalid choice."

	fi
	sleep 3
done	


