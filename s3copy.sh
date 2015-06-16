#!/bin/bash
# environment file resided ~/.aws
aws s3 cp ./ s3://awskr/ --recursive --exclude * --include *.html
