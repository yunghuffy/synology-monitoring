#!/usr/bin/env bash

synology_mibs_zip_url=https://global.download.synology.com/download/Document/Software/DeveloperGuide/Firmware/DSM/All/enu/Synology_MIB_File.zip


wget "$synology_mibs_zip_url"
unzip Synology_MIB_File.zip
git clone https://github.com/prometheus/snmp_exporter.git

