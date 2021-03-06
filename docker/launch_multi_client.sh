#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Enter the number of client as an argument"
	exit 1
fi

CLIENT_NUM=$1
UPPERPORT=$(( $CLIENT_NUM + 9999 ))
export UPPERPORT=$(( $CLIENT_NUM + 9999 ))
echo "The range of the port is 10000-$UPPERPORT"
echo "docker-compose starts"

docker-compose up --scale marlo_client=$CLIENT_NUM
