#!/bin/bash
# YOU SHOULD update <<somthing>> 
# also uncomment below 2 line
exit 1

if [ $# -ne 1 ]; then
	echo "USAGE: $0 BRANCH"
	exit 1
fi

BRANCH=$1
KEY="<<your key file here>>"
MYIPS="<<IPS HERE>>"
# MYIPS="8.8.8.8 127.0.0.1"
CMD="<<your cmd here>>"
for IP in $MYIPS
do
	echo "UPDATE $IP"
	ssh -i $KEY ec2-user@$IP $CMD
	echo "DONE"
done
