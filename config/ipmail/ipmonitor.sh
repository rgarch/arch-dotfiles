#ipmonitor.sh
#!/bin/bash
#
#Get the WAN IP
exip=`lynx -dump http://www.networksecuritytoolkit.org/nst/tools/ip.php | head -n 2`
echo $exip - `date` > /home/ricky/.scripts/ipmail/ipmonitor
#
# Subject
SUBJECT="System IP"
# Email To....
EMAIL="rs87428@gmail.com"
# Message
EMAILMESSAGE="/home/ricky/.scripts/ipmail/ipmonitor"
# Send email
mail -s "$SUBJECT" "$EMAIL" < $EMAILMESSAGE
