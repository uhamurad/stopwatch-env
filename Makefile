
# инициализация
init: build-docker make-dirs

build-docker:
	docker-compose build

make-data-dirs:
	mkdir -p -m777 ./data/xdebug/profiler ./data/xdebug/trace

clear-data-dirs:
	rm -fR ./data

composer-install:
	docker-compose run --rm composer composer install

composer-dump-autoload:
	docker-compose run --rm composer composer dump-autoload

php-unit-run:
	docker-compose run --rm php-unit ./vendor/bin/phpunit tests


