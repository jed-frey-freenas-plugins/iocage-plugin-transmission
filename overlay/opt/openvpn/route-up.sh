#!/bin/sh

nohup -- /opt/openvpn/port_forward.sh & 2>/dev/null

echo "$0: `date`" >> /tmp/openvpn.log
