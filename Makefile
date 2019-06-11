cmd=docker-compose -f docker-compose.yml

init:
	sudo mkdir -p /data/confluence
	sudo chmod -R ug-w /data/confluence
	sudo mkdir -p /data/mysql
	sudo chmod -R ug-w /data/mysql

up:
	$(cmd) up -d --remove-orphans

down:
	$(cmd) down

ps:
	$(cmd) ps

shell:
	$(cmd) exec confluence bash

restart:
	docker restart confluence
