#!/bin/bash
name=$1
if [ "$#" -lt 1 ]; then
	echo "Usage: $0 [name]"
	exit 1
fi

docker run -it --network redis-net --rm redis:5.0.7 redis-cli -p 26379 -h $name
