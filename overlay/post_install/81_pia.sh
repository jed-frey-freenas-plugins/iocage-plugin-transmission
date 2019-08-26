#!/bin/sh

fetch -o /tmp/openvpn-strong.zip https://www.privateinternetaccess.com/openvpn/openvpn-strong.zip

rm -rf /usr/local/etc/openvpn
mkdir -p /usr/local/etc/openvpn

unzip -d /usr/local/etc/openvpn /tmp/openvpn-strong.zip

# Hack
/usr/local/bin/renamex -"s/ /_/g" /usr/local/etc/openvpn/*.ovpn
pkg remove -y rename

# Neutral
sysrc -f /root/plugin_config pia_server=Switzerland
