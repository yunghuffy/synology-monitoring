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
`node-exporter` will be used to export node-level metrics from the host.


### setup

To start the project, download the MIBs from Synology, and then generate the
configuration file using the SNMP exporter using the
[generator](https://github.com/prometheus/snmp_exporter/tree/main/generator) built into the
SNMP exporter project.

Once the `snmp.yml` is generated, replace YOURCOMMUNITY with the community string
you set up in the SNMP settings in DSM. Place this file in `snmp-synology`,
relative to the `docker-compose.yaml` file.

Next, discover the username from Grafana cloud for the external prometheus
metrics, and update the `otelcol-config.yaml` with the username and password in
the correct places. A big TBD from this project is how to get environment
variables to correctly preserve strings. My next troubleshooting time will try
to discover why I couldn't just jam these into environment variables.

## Running

Move this updated project to a memorable location

```bash
docker-compose up -d
```


## Sources
* [synology MIBs](https://global.download.synology.com/download/Document/Software/DeveloperGuide/Firmware/DSM/All/enu/Synology_MIB_File.zip
)
