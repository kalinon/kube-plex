
BUILD_DIR=./bin


build:
	mkdir -p ${BUILD_DIR}
	GOARCH=amd64 GOOS=linux go build -o ${BUILD_DIR}/kube-plex_linux_amd64

docker:
	docker build . -t kalinon/kube-plex:latest

docker-push:
	docker push kalinon/kube-plex:latest

all: build docker
