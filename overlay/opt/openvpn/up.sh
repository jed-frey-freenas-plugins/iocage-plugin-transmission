#!/bin/sh
# IP Detection 
/usr/local/bin/transmission-remote 127.0.0.1 --add "magnet:?xt=urn:btih:7593ff7b996a23026012dc47b9c496baac19cb89&tr=https://ipleak.net/announce.php%3Fh%3D7593ff7b996a23026012dc47b9c496baac19cb89&dn=ipleak.net+torrent+detection"
# Start all torrents
/usr/local/bin/transmission-remote 127.0.0.1 --torrent all --start
echo "${0}: `date`" >> /tmp/openvpn.log

