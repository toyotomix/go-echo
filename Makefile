all: 

build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

exec:
	docker-compose exec app /bin/bash

go-run:
	docker-compose run --service-ports --rm app go run server.go

go-version:
	docker-compose run --rm app go version
