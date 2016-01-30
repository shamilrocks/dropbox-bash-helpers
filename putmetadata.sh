#!/usr/bin/env bash
# ./putmetadata <intialpath>
OBJECT_PATH=$1
TEMPMETADATA="tempmetadata.json"
#get the metadata by providing path and calling getmetadata function
echo "Getting Metadata from DropBox!!!!"
./getmetadata.sh $OBJECT_PATH > $TEMPMETADATA
echo "File $TEMPMETADATA Created!!!!"
#take output of getmetadata and put in file called, tempmetadata

#put the object into new path, by calling putobject providing parameter 1 being tempmetadata, parameter 2 being updated from initial path

#confirm name by echo out to console then delete tempmetadata file
echo "Cleaning Up!"
rm $TEMPMETADATA
