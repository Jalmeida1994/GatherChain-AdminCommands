#!/bin/bash

#Requests to create the network with the first group 
echo "Deleting everything in the the Blockchain Network and bringing it down. This may take a while..."
curl -X POST -H "Content-Type: application/json" -d "{\"Author\":\"0000\",\"Group\":\"0000\",\"Commit\":\"0000\"}" ${WEB_URL}/clear 

printf "Network deleted!"