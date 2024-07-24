#!/bin/bash -x

SERVER_IPV4=$(curl -qs --connect-timeout 5 https://api.ipify.org)
if [ "$?" -gt 0 ]; then
    SERVER_IPV4="-"
fi
export SERVER_IPV4

SERVER_IPV6=$(curl -qs --connect-timeout 5 https://api6.ipify.org)
if [ "$?" -gt 0 ]; then
    SERVER_IPV6="-"
fi
export SERVER_IPV6

envsubst < /index.html > /usr/share/nginx/html/index.html
