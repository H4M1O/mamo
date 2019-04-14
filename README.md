# MAMO - Mac OSX Monitoring System 
# (Docker + Telegraf + InfluxDB + Grafana)

This repository use docker-compose (docker needs to be pre-installed in your machine) 
to setup a local telegraf, influxdb and grafana stack (known as TIG stack).

You can use this repository to try collect system data with telegraf, store it in influxdb 
and create graph chart in Grafana.

Thanks to [Han Xiao](https://github.com/justlaputa/collectd-influxdb-grafana-docker) for the 
initial work and [Cristian Perez Brokate](https://github.com/cristianpb/collectd-influxdb-grafana-docker) for the newer version I used.

# What's new in this fork?

I dediced to modify few things, first I needed this project to work on Mac OSX so I had to
modify few lines. Later I decided to adopt only telegraf and remove completely collectd, it
was only a personal preference mainly because there wasn't a container ready for it.
Lastly I added my versions of the Grafana Dashboard to make it more suitable for this :)

# Installation

* Copy `env-template` to `.env`

```
$ cp env-template .env
```

* Change the parameters in `.env` with the ones you like

```
$ vi .env
```

* Run the installer and have fun:

```
$ make install
```

* Then you can open <http://localhost:3000> grafana web page (login with the credentials you setup in the file .env)

# Removal

* Go inside the mamo folder and run:

```
$ make remove
```
