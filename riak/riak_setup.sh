#!/usr/bin/bash

# Set ownership
chown riak:riak /var/lib/riak /var/log/riak
chmod 755 /var/lib/riak /var/log/riak

# Open file descriptor limit
ulimit -n 65536

# Start Riak
exec "/usr/sbin/riak start"
