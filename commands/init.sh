#!/bin/bash

# Arg 1: Virtual Machine Password configured in the ARM template (https://github.com/Jalmeida1994/GatherChain-ARM-Template)

source .weburl.env

#Requests to create the network with the first group 
echo "Standing up the Blockchain Network. This may take a while... Better go brew a coffee and take a seat."

if curl --fail -X POST -H "Content-Type: application/json" -d "{\"Author\":\"${1}\",\"Group\":\"0000\",\"Commit\":\"0000\"}" ${WEB_URL}/init; then
printf "Network launched!"
else
printf "Error launching the network."
fi;

