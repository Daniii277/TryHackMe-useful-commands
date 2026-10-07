#HOW TO CREATE SCRIPTS IN LINUX SHELL


#########   Shebang     ##########

#Defines the name of the interpreter to use (In this case, the script is going to run in bash)

#!/bin/bash

#######     VARIABLES      ########

#We can store values in variables like this

read name
age = 30

#We can use variables with $variable_name
echo "Welcome, $name , Im $age old"


#########      LOOPS      #########

for i in {1..10};
do
echo $i 
done



#########       CONDITIONAL STATMENTS       ###########

if [ "$name" = "John"]; then
     echo "Welcome John!"
else
    echo "Sorry! You are not authorized to access"
fi