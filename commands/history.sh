#!/bin/bash

source .weburl.env

#Requests the blockchain history for the group $1
echo "Getting the blockchain history for the group $1... The output can get a little messy."
curl -X POST -H "Content-Type: application/json" -d "{\"Author\":\"0000\",\"Group\":\"${1}\",\"Commit\":\"0000\"}" ${WEB_URL}/history 