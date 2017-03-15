#!/usr/bin/bash

# Set ownership
#chown riak:riak /var/lib/riak /var/log/riak
#chmod 755 /var/lib/riak /var/log/riak

# Open file descriptor limit
ulimit -n 65536

# Start Riak
service riak start

# Tail to keep it in the foreground
tail -f /var/log/riak/console.log

