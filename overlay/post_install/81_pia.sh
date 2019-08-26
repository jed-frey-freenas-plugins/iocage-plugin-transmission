#!/bin/sh

fetch -o /tmp/openvpn-strong.zip https://www.privateinternetaccess.com/openvpn/openvpn-strong.zip

rm -rf /usr/local/etc/openvpn
mkdir -p /usr/local/etc/openvpn

unzip -d /usr/local/etc/openvpn /tmp/openvpn-strong.zip

#pkg install -y rename
/usr/local/bin/renamex -"s/ /_/g" /usr/local/etc/openvpn/*.ovpn
#pkg remave -y rename
