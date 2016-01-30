#!/usr/bin/env bash

#Get the metadata from the dropbox api for a file
# ./getmetadata.sh <path>

OBJECT_PATH=$1

curl https://api.dropboxapi.com/1/metadata/auto$OBJECT_PATH -H "Authorization:Bearer $DROPBOX_ACCESS_TOKEN"
