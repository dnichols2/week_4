#!/bin/bash 
# Derek Nicholson February 2022 
# Last modified 28/02/2022  
# Obtains info about networking from the ifconfig command and only displays IP Address lines 
      
ip_info="$(./IpInfo.sh)" 
# The Script IpInfo.sh is executed and the output is assigned a variable      
# The ip address lines are parsed out using sed by piping the output from IpInfo.sh into sed
# Only lines matching the pattern 'IP' are printed.    
echo "$ip_info" | sed -n /IP/p   
    
# References
# Edith Cowan University. (n.d.). Scripting Lanuages: Write scripts that can parse text in a meaningful way. Blackboard. 
#   https://blackboard.ecu.edu.au/  
# Sasikala. (2009. September 14). Unix Sed Tutorial: Printing File Lines Using Address and Patterns. TheGeekStuff. 
#   https://www.thegeekstuff.com/2009/09/unix-sed-tutorial-printing-file-lines-using-address-and-patterns/#:~:text=Linux%20Sed%20command%20allows%20you,use%20%2Dn%20command%20with%20sed  