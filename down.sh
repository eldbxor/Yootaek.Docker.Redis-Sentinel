#!/bin/bash
name=$1
if [ "$#" -lt 1 ]; then
	echo "Usage: $0 [name]"
	exit 1
fi

docker stop $name && docker rm $name
