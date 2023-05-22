#!/bin/bash

clear

echo 

#Continue after reading 6 characters
read -n 6 -p "Enter 6 digit alphanumeric project code: " project_code

echo
echo "Retrieving data for project: " $project_code
echo
