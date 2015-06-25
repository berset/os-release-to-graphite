#!/bin/sh

OS=$(grep ^ID /etc/os-release |awk -F= '{print $2}')
RELEASE=$(grep VERSION_ID /etc/os-release |awk -F= '{print $2}')
NAME=$(cat /the_hostname)

while true; do
    echo "${OS}.${NAME}.version.${RELEASE} 1 `date +%s`" | nc ${GRAPHITE} 2003;
    sleep 10;
done
