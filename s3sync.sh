#!/bin/bash
# aws s3 sync help 
BUCKET=awskr
DO=$1
if [ $# -gt 1 ]; then
	echo "USAGE: $0 [do]"
	exit 1
fi

echo "aws s3 sync ./ s3://$BUCKET/ --exclude \".git*\" --exclude \".DS_Store\""
if [[ $DO == "do" ]]; then
echo "apply"
aws s3 sync ./ s3://$BUCKET/ --exclude '.git*' --exclude '.DS_Store'
else
echo "dryrun"
aws s3 sync ./ s3://$BUCKET/ --exclude '.git*' --exclude '.DS_Store' --dryrun
fi
