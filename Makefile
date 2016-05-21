MARATHON_CURL = curl -s -X PUT -H "Content-type: application/json" -d @-

DOCKER_IP ?= 127.0.0.1
export DOCKER_IP

.PHONY: run
deploy:
	cat apps/hello-flask.json | $(MARATHON_CURL) http://${DOCKER_IP}:8080/v2/apps/hello-flask

.PHONY: run
run:
	docker-compose up

.PHONY: start
start:
	docker-compose up -d

.PHONY: stop
stop:
	docker-compose stop

.PHONY: destroy
destroy: stop
	docker-compose rm -fv
