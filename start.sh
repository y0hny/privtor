#!/bin/sh
# comment
/usr/sbin/privoxy --user privoxy.privoxy /etc/privoxy/config
su tor -c '/usr/bin/tor'
