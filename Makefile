up:
	docker-compose up -d --build

install:
	docker-compose exec app composer $(cmd) install
	docker-compose exec app php artisan $(cmd) migrate
	docker-compose exec app php artisan $(cmd) db:seed

down:
	docker-compose down

restart:
	docker-compose down
	docker-compose up -d --build

logs:
	docker-compose logs -f

bash-app:
	docker-compose exec app bash

bash-node:
	docker-compose exec node /bin/sh

artisan:
	docker-compose exec app php artisan $(cmd)

composer:
	docker-compose exec app composer $(cmd)

npm:
	docker-compose exec node npm run $(script)

fix:
	docker-compose exec app composer $(cmd) fix