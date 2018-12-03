all: logout login run

run:
	docker-compose pull
	docker-compose up -d

down:
	docker-compose down

login:
	docker login -u notificus -p c2Mwk-Mc

logout:
	docker logout

push: login
	docker push notificus/test-image

attach:
	docker attach test-image
