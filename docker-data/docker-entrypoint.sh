#!/bin/sh

if [ "$1" = 'redis-cluster' ]; then
    sleep 10
    echo "yes" | ruby /redis/src/redis-trib.rb create --replicas 1 10.5.20.55:6379 10.5.20.72:6379 10.5.20.99:6379 10.5.20.102:6379 10.5.20.118:6379 10.5.20.146:6379
    echo "DONE"
else
  exec "$@"
fi
