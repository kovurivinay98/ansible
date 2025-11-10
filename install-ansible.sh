#!/bin/bash
userid=$(id -u)
if [ $userid -eq 0 ]
    then
        dnf list installed ansible
            if [ $? -ne 0 ]
                then
                    dnf install ansible -y
                    if [ $? -eq 0 ] 
                    then
                        echo "Installed successfully"
                    else
                        echo "Installation failed"
                    fi
                else
                    echo " ALREADY INSTALLED "
            fi
    else
        echo "Not root user"


