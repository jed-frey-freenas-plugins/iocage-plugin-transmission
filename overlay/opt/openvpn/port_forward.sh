#!/bin/sh

until ping -c1 209.222.18.222 >/dev/null 2>&1
do sleep 1;done

CLIENT_ID=$(head -n 100 /dev/urandom | sha256 | tr -d " -")
URL="http://209.222.18.222:2000/?client_id=$CLIENT_ID"
TUN=`ifconfig | grep ^tun | cut -f1 -d':'`

echo ${CLIENT_ID}
echo ${URL}
echo ${TUN}

curl --silent ${URL} >/tmp/portforward.log

PORT=`grep -o -E -e '[0-9]+' /tmp/portforward.log`

/usr/local/bin/transmission-remote localhost --port ${PORT}
sleep 5
/usr/local/bin/transmission-remote localhost --torrent all --start
