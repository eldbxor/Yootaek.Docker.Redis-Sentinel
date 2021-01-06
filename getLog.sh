if [ $(id -u) -ne 0 ]; then exec sudo bash "$0" "$@"; exit; fi

#cat /var/snap/docker/common/var-lib-docker/volumes/redis-sentinel/_data/logs/redis-sentinel.log
if [ -z "$1" ]; then
	tail -f -n 100 /var/snap/docker/common/var-lib-docker/volumes/redis-sentinel/_data/logs/redis-sentinel.log
else
	tail -f -n $1 /var/snap/docker/common/var-lib-docker/volumes/redis-sentinel/_data/logs/redis-sentinel.log
fi
