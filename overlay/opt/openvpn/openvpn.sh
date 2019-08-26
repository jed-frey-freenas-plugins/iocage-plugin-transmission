#!/bin/sh

# Clear
for TUN in `ifconfig | grep ^tun | cut -f1 -d':'`
do
ifconfig ${TUN} destroy
done

# Create
TUN=`ifconfig tun create`
TUN2=`ifconfig | grep ^tun | cut -f1 -d':'`

${TUN} == ${TUN2}

# Config
PIA_SERVER=`sysrc -f /root/plugin_config -n pia_server`

# Connect
openvpn --config /usr/local/etc/openvpn/${PIA_SERVER}.ovpn --config /opt/openvpn/jail_scripts.ovpn --dev ${TUN}

# Clear
ifconfig ${TUN} destroy

