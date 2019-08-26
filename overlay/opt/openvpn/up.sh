#!/bin/sh
/usr/local/bin/transmission-remote 127.0.0.1 --torrent all --start
echo "${0}: `date`" >> /tmp/openvpn.log

