#!/usr/bin/env bash

#Get the metadata from the dropbox api for a file


curl https://api.dropboxapi.com/1/metadata/auto/ -H "Authorization:Bearer $DROPBOX_ACCESS_TOKEN"
