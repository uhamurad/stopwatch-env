
# инициализация
init: build-docker

build-docker:
	docker-compose build

composer-install:
	docker-compose run --rm composer composer install

composer-dump-autoload:
	docker-compose run --rm composer composer dump-autoload

php-unit-run:
	docker-compose run --rm php-unit ./vendor/bin/phpunit tests


