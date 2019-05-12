#!/bin/sh
#
# Script to remove everything after #end-of-my-devices# in known_devices
#
##########################################################################
/bin/sed -i '/#end-of-my-devices#/q' /config/known_devices.yaml

