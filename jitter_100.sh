#!/bin/bash
# script for inserting jitter on all packets.
# using interface eth0 and eth1

tc qdisc add dev eth0 root netem delay 100ms
tc qdisc add dev eth1 root netem delay 100ms
tc qdisc change dev eth0 root netem delay 100ms 100ms
tc qdisc change dev eth1 root netem delay 100ms 100ms

