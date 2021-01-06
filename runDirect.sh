#!/bin/bash
name=$1
if [ "$#" -lt 1 ]; then
	echo "Usage: $0 [name]"
	exit 1
fi

docker run -d -p 26379:26379 --name $name -e REDIS_MASTER_HOST=172.31.5.45 -e REDIS_MASTER_SET=mymaster -e REDIS_MASTER_PASSWORD=thekeywe1101@ -e REDIS_SENTINEL_DOWN_AFTER_MILLISECONDS=3000 -e REDIS_SENTINEL_FAILOVER_TIMEOUT=60000 --net=redis-net -v redis-sentinel:/bitnami bitnami/redis-sentinel:latest
