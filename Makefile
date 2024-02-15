
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

composer-validate:
	docker-compose run --rm composer composer validate

composer-dump-autoload:
	docker-compose run --rm composer composer dump-autoload

php-unit-run:
	docker-compose run --rm php-unit ./vendor/bin/phpunit --coverage-html /tmp/coverage/report

phpstan-run:
	docker-compose run --rm phpstan analyse

php-cs-fixer:
	docker-compose run --rm php-cs-fixer fix --config .php-cs-fixer.dist.php --allow-risky=yes

ci: composer-validate php-cs-fixer phpstan-run php-unit-run