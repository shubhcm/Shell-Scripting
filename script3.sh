#! /bin/bash

# Working with variables 

declare -i intvar	# -i denotes integer variable here
intvar=123	#valid stmt
# intvar = 123	invalid stmt; this stmt gives error because of the space in-between
echo
echo $intvar
echo "$intvar"     # echo inside \"\" works fine

# intvar=1.5   invalid stmt; intvar is declared as an integer

declare -r readonlyvar="delhi"		# -r denotes read-only; variable declaration and assignation of value in the same stmt is fine
echo "Read only variable: " $readonlyvar


costcenter="bangalore"
echo $costcenter 

unset costcenter	
echo $costcenter


randomvar="random value" 

echo ${randomvar-"alternate value"}	# if randomvar is empty, it will print \"alternate value\" 
unset randomvar
echo ${randomvar-"alternate value"}

echo "Number of chars in env variable PATH: " ${#PATH}		#counts no of char of any variable
echo "Deleting all chars upto 'e' from \"$readonlyvar\": " ${readonlyvar#*e}

