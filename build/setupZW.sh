#!/bin/sh
#Change HA Zwave __init__.py to not install old version of OZW
#sed -i "s/'python_openzwave==.*'//" /usr/local/lib/python3.6/site-packages/homeassistant/components/zwave/__init__.py || true
sed -i "s/'python_openzwave==.*'//" /usr/src/app/homeassistant/components/zwave/__init__.py || true
#Copy the ZWAVE options.xml to copy network key over
rm /usr/local/lib/python3.6/site-packages/python_openzwave/ozw_config/options.xml || true
ln -s /config/zwave/options.xml /usr/local/lib/python3.6/site-packages/python_openzwave/ozw_config/options.xml || true
#Create symlink for OZW Config file
LINKNAME=`ls -1 /config/zwcfg_*.xml | awk -F"/" '{print $NF}'`
ln -s /config/${LINKNAME} /usr/local/lib/python3.6/site-packages/python_openzwave/ozw_config/${LINKNAME} || true
