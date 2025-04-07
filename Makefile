DOCKER_IMAGE = "k8stryhard:20250407225140"
DOCKER_NAME = "k8stryhard"

build:
	docker build -f docker/Dockerfile -t ${DOCKER_IMAGE} ./docker

start:
	docker run -v ./:/kubernetes-the-hard-way --name ${DOCKER_NAME} ${DOCKER_IMAGE}
