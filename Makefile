all: logout login run

run:
	docker-compose pull
	docker-compose up

login:
	docker login -u notificus -p c2Mwk-Mc

logout:
	docker logout