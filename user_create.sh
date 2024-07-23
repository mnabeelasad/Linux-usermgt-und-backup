#!/bin/bash


create_user(){ 

	echo "We are creating the user: "
	read -p "Enter user name you want to create:" username
	if id "$username" &>/dev/null; then
		echo "The username $username already exits"	
		read -p "Try different user:" username
		if id "$username" &>/dev/null; then
			echo "The username $username is new"
		fi
	fi 
		read -s -p -e  "Enter Password" Password
		echo "Now creating user"
	        sudo useradd -m "$username"
 		sudo passwd $username		
}
create_user
