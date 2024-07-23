#!/bin/bash

delete_user(){
        echo "We are deleting the user"
        read -p "Enter the username for delete:" username
        if id "$username" &/dev/null; then
                echo "This user does not exist... You can try again"
                read -p "Try different user for deletion" username
                if id "$username" &/dev/null; then
                        echo "The user is exist"
                fi
        fi
                sudo userdel -r "$username"


}

delete_user
