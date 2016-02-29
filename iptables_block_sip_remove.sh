#!/bin/bash
# script for removing iptables rule that drop sip 
# SIP goes over UDP or TCP on port 5060
# and on port 5061 for SIP-TLS (sometimes called SIPS)

iptables -D FORWARD -p tcp --dport 5060 -j DROP
iptables -D FORWARD -p udp --dport 5060 -j DROP
iptables -D FORWARD -p tcp --dport 5061 -j DROP


