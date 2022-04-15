#!/bin/bash
set -euf

MTU=$(ifconfig eth0 | grep -Po "MTU:\K.*?(?= )")
echo "::set-output name=mtu::${MTU}"
