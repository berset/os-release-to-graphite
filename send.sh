#!/bin/sh

OS=$(grep ^ID /etc/os-release |awk -F= '{print $2}')
RELEASE=$(grep VERSION_ID /etc/os-release |awk -F= '{print $2}')

while true; do
    echo "${OS}.${HOSTNAME}.version.${RELEASE} 1 `date +%s`" | nc ${GRAPHITE} 2003;
    sleep 10;
done
