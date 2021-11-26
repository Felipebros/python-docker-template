build-dev:
	docker-compose build --build-arg APP_ENV=development

build:
	docker-compose build --build-arg APP_ENV=production

bash:
	docker-compose run app bash

ip-postgres:
	docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' <CONTAINER_ID>

list:
	docker-compose ps

tests:
	docker-compose run app py.test

up:
	docker-compose up

down:
	docker-compose down

clean:
	docker-compose down --volumes --rmi all
