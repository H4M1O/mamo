# The Makefile defines all builds/tests steps

# we run outside the CI. include .env file
include .env

# compose command to merge production file and and dev/tools overrides
COMPOSE?=docker-compose -f docker-compose.yml 

install:
	# run containers in the background
	$(COMPOSE) up -d

install-dev:
	# run containers in the foreground
	$(COMPOSE) up

stop:
	# stop compose
	#$(COMPOSE) down --remove-orphans
	$(COMPOSE) down

remove:
	# clean local folders
	rm -Rf grafana-storage influxdb-data
	# remove docker stuff
	$(COMPOSE) rm --stop --force
	# clean docker volumes
	docker volume prune -f || true
	# clean docker networks
	docker network prune -f || true
