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
	docker-compose run --rm app go run server.go

go-build:
	docker-compose run --rm app go build server.go
