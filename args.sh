#!/bin/bash

# Accepting arguments 

if test "$1" = ""	# checks whether the first arguments thats passed here is empty
	then 
		echo "Provide username" 
		exit
fi

if test "$2" = ""
	then
		echo "Provide filename" 
		exit
fi 

clear
echo
echo "File owner: " $1
echo "File name: " $2


find $2 -user $1 2> $HOME/shellscripting/logs.txt	# o/p redirection. Writes all the error message of this stmt to logs.txt
find $2 -user $1 2> $HOME/null 		# o/p redirection to suppress error message




find /home -user $1 | tee /home/shubham/shellscripting/user_files1.txt
find $2 -user $1 | tee /home/shubham/shellscripting/user_files2.txt
