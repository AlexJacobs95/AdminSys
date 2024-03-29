#!/usr/bin/env bash
#Run on host
# Purpose: executes the installNodes.sh script on each node

NUMBER_OF_NODES=4

port=3022
for ((i=0; i<NUMBER_OF_NODES; i++));
do
	echo $'\n ===>Connecting to port '$port'<=== \n'
	# For this to run correctly, we needed to change sudoers beforehand so
	# that sudo'ing as admin doesn't require a password
	cat installNodes.sh | ssh -p $port user@localhost
	((port++))
done
