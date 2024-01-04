#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Usage: $0 <path>"
	exit 1
fi

FILES_ROOT=$1



echo "Uploading files in '$FILES_ROOT' to s3:"

find -L ${FILES_ROOT} -type f -exec shrimp --force --region us-gov-east-1 --compute-checksum {} s3://{} \;


exit 0
