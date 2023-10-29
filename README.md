# Synology Home NAS monitoring

## Background
  
Learning about Otel collector and how to monitor things with it, and learning about Grafana
lead me to a project to try to monitor my home network setup

## Materials

* Synology NAS
* Grafana Cloud account

## method

I'll use the OTEL collector as an agent to collect data from prometheus, which is gathering data from an SNMP collector
The OTEL collector will send to a prometheus receiver in Grafana.
