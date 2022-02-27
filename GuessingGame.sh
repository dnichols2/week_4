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
      
    while (( $REPLY < $2 || $REPLY > $3 )); do 
      
        printError "Input must be between $2 and $3" 
      
        read -p "$1: " 
      
    done 
      
} 
      
 
      
echo "This is a guessing game" 
      
# The loop will continue to run until the number 42 is inputed.
while [ "$result" != 42 ] 
do
# The function GetNumber is run and screens out any numbers outside 1-100
    getNumber "Please type a number between 1 and 100" 1 100  
    result=$REPLY
          if (( $result < 41 )); then 
# identifies if number is too low.
            echo "Too low!"
# identifies if number is too high.
        elif (( $result > 43 )); then
            echo "Too high!"
        else 
# If 42 is inputed the script finishes.
            echo "Correct!"
        fi
   
done


# References
# Edith Cowan University. (n.d.). Scripting Lanuages.Understand and execute scripts that use multiple functions. Blackboard. 
#   https://blackboard.ecu.edu.au/ 
     