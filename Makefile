
# инициализация
init: build-docker

build-docker:
	docker-compose build

composer-install:
	docker-compose composer composer install

