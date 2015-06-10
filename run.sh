#!/bin/bash
if [ $# -ne 2 ]; then
	echo "USAGE: $0 DIR BRANCH"
	exit 1
fi
DIR=$1
BRANCH=$2
echo "dir=$DIR"
echo "branch=$BRANCH"
cd $DIR
git checkout $BRANCH
git pull
