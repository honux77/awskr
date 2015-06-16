#!/bin/bash
# aws s3 sync help 
aws s3 sync ./ s3://awskr/ --exclude '.git*' --exclude '.DS_Store' --dryrun
echo 'aws s3 sync ./ s3://awskr/ --exclude ".git*" --exclude ".DS_Store"'
