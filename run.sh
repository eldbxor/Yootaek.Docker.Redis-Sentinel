#!/bin/bash
name=$1
if [ "$#" -lt 1 ]; then
		echo "Usage: $0 [name]"
			exit 1
		fi

docker run -d -p 26379:26379 --network redis-net --name $name -v redis-sentinel:/redis-sentinel redis-sentinel:1.0.0
