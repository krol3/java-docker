BRANCH := $(shell git rev-parse --abbrev-ref HEAD)
COMMIT := $(shell git rev-parse HEAD)
REPOSITORY=krol
PROJECT=java-sample
PORT=3000
CONTAINER_PORT=3000

build:
	echo "Image: ${REPOSITORY}/${PROJECT}:$(BRANCH)"
	docker build -t ${REPOSITORY}/${PROJECT}:$(BRANCH) .

push:
	docker push ${REPOSITORY}/${PROJECT}:$(BRANCH)

run:
	docker run -it -p ${PORT}:${CONTAINER_PORT} ${REPOSITORY}/${PROJECT}:$(BRANCH)
