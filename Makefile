all: build
build:
	git submodule init
	git submodule update --recursive --remote
	docker-compose build