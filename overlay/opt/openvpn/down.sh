#!/bin/sh
/usr/local/bin/transmission-remote 127.0.0.1 --torrent all --stop
echo "${0}: `date`" >> /tmp/openvpn.log

