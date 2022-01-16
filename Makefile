up:
	docker compose up -d --build
build:
	docker compose build --no-cache --force-rm
remake:
	@make destroy
	@make init
stop:
	docker compose stop
down:
	docker compose down --remove-orphans
restart:
	@make down
	@make up
destroy:
	docker compose down --rmi all --volumes --remove-orphans
destroy-volumes:
	docker compose down --volumes --remove-orphans
nginx:
	docker compose exec nginx bash
app:
	docker compose exec app bash
migrate:
	docker compose exec app php artisan migrate --force
fresh:
	docker compose exec app php artisan migrate:fresh --force
seed:
	docker compose exec app php artisan db:seed --force
queue:
	docker compose exec app php artisan queue:work redis
horizon:
	docker compose exec app php artisan horizon
horizon-publish:
	docker compose exec app php artisan horizon:publish
cache-clear:
	docker compose exec app php artisan cache:clear
du:
	docker compose exec app composer dump-autoload
rollback-:
	docker compose exec app php artisan migrate:rollback
tinker:
	docker compose exec app php artisan tinker
test:
	docker compose exec app php artisan test
optimize:
	docker compose exec app php artisan optimize
optimize-clear:
	docker compose exec app php artisan optimize:clear
db:
	docker compose exec db bash
sql:
	docker compose exec db bash -c 'mysql -u $$MYSQL_USER -p$$MYSQL_PASSWORD $$MYSQL_DATABASE'
redis:
	docker compose exec redis redis-cli
