#!/usr/bin/bash

mkdir /data

# Open file descriptor limit
ulimit -n 65536

# Start Riak
service riak start

# Tail to keep it in the foreground
tail -f /var/log/riak/console.log

