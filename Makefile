up:
	docker-compose up -d
log:
	docker-compose logs -f --tail=100
clean:
	docker-compose rm -fv pogobot
build:
	docker-compose build
stop:
	docker-compose stop
down:
	docker-compose down
pull:
	git pull
