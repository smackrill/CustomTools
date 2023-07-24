## This script executes a command or script against a list of IP's.  I use this for managing bulk quantites of thin clients.
## This can be used with a jumphost by removing the [] and replacing HOSTNAME with your jumphost.
## Be sure to remove the [] and replace USERNAME
## You can tweak the command near the bottom
## This requires the EXPECT package to be installed

#!/bin/bash
 
input=$1
 
echo "Enter password: "
read -s password
 
for ip in $(cat $input);do
        echo "============= $ip ";
 
        /usr/bin/expect << EOD
        spawn ssh [-J HOSTNAME] -l [USERNAME] $ip -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oConnectTimeout=4;
 	
        expect "Actual Username: ";
        send "$USER\r"
 
        expect "Actual Password: ";
        send "$password\r"
 
        expect "$ ";
        send "sudo reboot\r";
        
        expect "$ ";
EOD

   ## Wait a small amount of time so you don't overflow servers and hosts     
        sleep 3
done
