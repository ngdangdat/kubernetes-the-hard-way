DOCKER_IMAGE = "k8stryhard:20250407225140"
DOCKER_NAME = "k8stryhard"
HOME_PATH="/kubernetes-the-hard-way"

build:
	@docker build -f docker/Dockerfile -t ${DOCKER_IMAGE} ./docker

start:
	@docker run --rm --network=host -v ./:${HOME_PATH} --name ${DOCKER_NAME} -it ${DOCKER_IMAGE}

docker.set_permission:
	@chown 1000:1000 ${HOME_PATH} -R
