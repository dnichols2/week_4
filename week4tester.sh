#!/bin/bash 
# Derek Nicholson February 2022
 
      
#This function prints a given error 
      
printError() 
      
{ 
      
    echo -e "\033[31mERROR:\033[0m $1" 
      
} 
      
 
      
#This function will get a value between the 2nd and 3rd arguments 
      
getNumber() 
      
{ 
      
    read -p "$1: " 
      
    while (( $REPLY < $2 || $REPLY> $3 )); do 
      
        printError "Input must be between $2 and $3" 
      
        read -p "$1: " 
      
    done 
      
} 
      
 
      
echo "This is a guessing game" 
      
getNumber "Please type a number between 1 and 100" 1 100 

   
echo "You entered: $REPLY"