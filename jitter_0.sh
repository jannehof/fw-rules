#!/bin/bash
# script for inserting 0 ms jitter on all packets.
# using interface eth0 and eth1.

tc qdisc change dev eth0 root netem delay 0ms
tc qdisc change dev eth1 root netem delay 0ms

