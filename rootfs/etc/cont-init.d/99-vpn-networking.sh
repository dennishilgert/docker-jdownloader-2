#!/bin/sh

set -e # Exit immediately if a command exits with a non-zero status.
set -u # Treat unset variables as an error.

# Delete the existing default route
ip route del default

# Add the desired default route via the VPN sidecar container
ip route add default via 172.69.0.2

# vim:ft=sh:ts=4:sw=4:et:sts=4