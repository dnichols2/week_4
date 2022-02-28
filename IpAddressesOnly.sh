#!/bin/bash 
# Derek Nicholson February 2022      
# Obtains info about networking from the ifconfig command only only displays IP Address lines 
      
ip_info="$(IpInfo.sh)" 
      
#parse out the ip address lines using sed 
      
echo "$ip_info" | sed -n /IP/p   

      
#format output 
      
#echo -e "IP addresses on this computer are:\n$addresses" 
     
# References
# Edith Cowan University. (n.d.). Scripting Lanuages: Write scripts that can parse text in a meaningful way. Blackboard. 
#   https://blackboard.ecu.edu.au/     