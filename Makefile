BRANCH := $(shell git rev-parse --abbrev-ref HEAD)
COMMIT := $(shell git rev-parse HEAD)
REPOSITORY=krol
PROJECT=java-sample

build:
	echo "Image: ${REPOSITORY}/${PROJECT}:$(BRANCH)"
	docker build -t ${REPOSITORY}/${PROJECT}:$(BRANCH) .

push:
	docker push ${REPOSITORY}/${PROJECT}:$(BRANCH)

run:
	docker run -it ${REPOSITORY}/${PROJECT}:$(BRANCH) bash
