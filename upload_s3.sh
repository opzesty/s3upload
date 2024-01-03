#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Usage: $0 <path>"
	exit 1
fi

FILES_ROOT=$1



echo "Uploading files in '$FILES_ROOT' to s3:"

pushd ${FILES_ROOT}
FILES=$(find . -type f)

for FILE in ${FILES}
do
	REL_FILE_PATH=$(echo ${FILE} | cut -c 3-)
	echo shrimp --force --region ${REGION} --compute-checksum ${REL_FILE_PATH} s3://${BUCKET}/${REL_FILE_PATH}
done
popd

exit 0
