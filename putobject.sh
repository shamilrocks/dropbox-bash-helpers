#!/usr/bin/env bash
#Take file and upload to a path
#./putobject.sh <filelocation> <path/destinationforstorage>
# ./putobject.sh filename /pizzahut.txt

OBJECT_CONTENT=$1
OBJECT_PATH=$2
# OBJECT_CONTENT is param 1, which will post as a name to dropbox OBJECT_CONTENT which parameter 2
CONTENT_LENGTH=${#OBJECT_CONTENT}
# reference for getting length of string of content size=${#myvar}


curl -T $OBJECT_CONTENT --header "Content-Length: $CONTENT_LENGTH" https://content.dropboxapi.com/1/files_put/auto$OBJECT_PATH -H "Authorization:Bearer $DROPBOX_ACCESS_TOKEN"
